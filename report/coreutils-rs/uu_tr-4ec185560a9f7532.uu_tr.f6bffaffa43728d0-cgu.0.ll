Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a
  %i.afh = inttoptr i64 %.sroa.56.6.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afh, i64 noundef %.sroa.44.6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1675
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i

bb.ig:                                            ; preds = %bb.ie
  %i.afi = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

bb.ih:                                            ; preds = %bb.ie
  %i.afj = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i: ; preds = %bb.ih, %bb.ig, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i, %bb.if, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.afk = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.afk, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.afm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i ] ; 2 uses
  %i.afl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i.i ; 5 uses
  %i.afm = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.afn = load i32, ptr %i.afl, align 8, !range !26, !alias.scope !1678, !noalias !1679, !noundef !11 ; 2 uses
  %i.afo = icmp eq i32 %i.afn, -1
  br i1 %i.afo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  switch i32 %i.afn, label %bb.ij [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 1, label %bb.ik
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 5, label %bb.il
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %.val.i.i.i.i.i.i105.i = load i64, ptr %i.afp, align 8, !range !12, !alias.scope !1681, !noalias !1679, !noundef !11 ; 2 uses
  %i.afq = icmp eq i64 %.val.i.i.i.i.i.i105.i, 0
  br i1 %i.afq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.il, %bb.ik, %bb.ij
  %.val.i4.sink.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i, %bb.ik ], [ %.val.i4.i.i.i.i.i.i, %bb.il ], [ %.val.i.i.i.i.i.i105.i, %bb.ij ]
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.afr, align 8, !alias.scope !1682, !noalias !1679, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i, i64 noundef %.val.i4.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1683
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %.val.i1.i.i.i.i.i.i = load i64, ptr %i.afs, align 8, !range !12, !alias.scope !1684, !noalias !1679, !noundef !11 ; 2 uses
  %i.aft = icmp eq i64 %.val.i1.i.i.i.i.i.i, 0
  br i1 %i.aft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.ii
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.afu, align 8, !range !12, !alias.scope !1685, !noalias !1679, !noundef !11 ; 2 uses
  %i.afv = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.afv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i: ; preds = %bb.il, %bb.ik, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i, %bb.ij, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %bb.ii, %.lr.ph.i.i.i.i
  %i.afw = icmp eq i64 %i.afm, %.sroa.12.0.i
  br i1 %i.afw, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  %i.afx = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.afx, label %bb.ir, label %.sink.split

bb.im:                                            ; preds = %bb.ib
  unreachable

.thread.loopexit.i:                               ; preds = %bb.cw, %bb.ab, %bb.j, %bb.g
  %.sroa.7.0.ph.i.i.i.lcssa.sink.i = phi ptr [ %.sroa.030.0.copyload.i.i.i.i.i, %bb.j ], [ %.sroa.036.0.copyload.i8.i.i.i.i, %bb.ab ], [ %i.ps, %bb.cw ], [ %.sroa.7.0.ph.i.i.i.i, %bb.g ]
  %i.afy = ptrtoint ptr %.sroa.7.0.ph.i.i.i.lcssa.sink.i to i64
  br label %.thread.i

.thread303.i:                                     ; preds = %bb.ib, %.thread124.i
  %.sroa.19.0.insert.ext = zext nneg i8 %.sroa.63.6.ph.fr.i to i64
  %.sroa.19.1.insert.ext = zext i56 %.sroa.79.6.ph.i to i64
  %.sroa.19.1.insert.shift = shl nuw i64 %.sroa.19.1.insert.ext, 8
  %.sroa.19.1.insert.insert = or disjoint i64 %.sroa.19.1.insert.shift, %.sroa.19.0.insert.ext
  %i.afz = inttoptr i64 %.sroa.19.1.insert.insert to ptr
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ib, %.thread.loopexit.i, %.thread89, %.thread303.i
  %.sroa.19.0 = phi ptr [ %i.afz, %.thread303.i ], [ undef, %.thread89 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.ib ] ; 2 uses
  %.sroa.16.0 = phi i64 [ %.sroa.56.6.ph.i, %.thread303.i ], [ undef, %.thread89 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.ib ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.44.6.ph.i, %.thread303.i ], [ %.sroa.044.0.copyload.i.pre, %.thread89 ], [ %i.afy, %.thread.loopexit.i ], [ %.sroa.44.6.ph.i, %bb.ib ] ; 2 uses
  %.sroa.627.0 = phi i64 [ 2, %.thread303.i ], [ 0, %.thread89 ], [ 0, %.thread.loopexit.i ], [ 0, %bb.ib ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.aga = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.aga, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i, label %.lr.ph.i.i.i108.i

.lr.ph.i.i.i108.i:                                ; preds = %.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
  %.sroa.0.03.i.i.i109.i = phi i64 [ %i.agc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i ], [ 0, %.thread.i ] ; 2 uses
  %i.agb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i109.i ; 5 uses
  %i.agc = add nuw nsw i64 %.sroa.0.03.i.i.i109.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.agd = load i32, ptr %i.agb, align 8, !range !26, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.age = icmp eq i32 %i.agd, -1
  br i1 %i.age, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i, label %bb.in

bb.in:                                            ; preds = %.lr.ph.i.i.i108.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  switch i32 %i.agd, label %bb.io [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 1, label %bb.ip
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 5, label %bb.iq
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i
  ]

bb.io:                                            ; preds = %bb.in
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %.val.i.i.i.i.i.i118.i = load i64, ptr %i.agf, align 8, !range !12, !alias.scope !1691, !noalias !1689, !noundef !11 ; 2 uses
  %i.agg = icmp eq i64 %.val.i.i.i.i.i.i118.i, 0
  br i1 %i.agg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i114.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i114.i: ; preds = %bb.iq, %bb.ip, %bb.io
  %.val.i4.sink.i.i.i.i.i115.i = phi i64 [ %.val.i1.i.i.i.i.i117.i, %bb.ip ], [ %.val.i4.i.i.i.i.i113.i, %bb.iq ], [ %.val.i.i.i.i.i.i118.i, %bb.io ]
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %.val1.i5.i.i.i.i.i116.i = load ptr, ptr %i.agh, align 8, !alias.scope !1692, !noalias !1689, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i116.i, i64 noundef %.val.i4.sink.i.i.i.i.i115.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1693
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i

bb.ip:                                            ; preds = %bb.in
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %.val.i1.i.i.i.i.i117.i = load i64, ptr %i.agi, align 8, !range !12, !alias.scope !1694, !noalias !1689, !noundef !11 ; 2 uses
  %i.agj = icmp eq i64 %.val.i1.i.i.i.i.i117.i, 0
  br i1 %i.agj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i114.i

bb.iq:                                            ; preds = %bb.in
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %.val.i4.i.i.i.i.i113.i = load i64, ptr %i.agk, align 8, !range !12, !alias.scope !1695, !noalias !1689, !noundef !11 ; 2 uses
  %i.agl = icmp eq i64 %.val.i4.i.i.i.i.i113.i, 0
  br i1 %i.agl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i114.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i: ; preds = %bb.iq, %bb.ip, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i114.i, %bb.io, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %bb.in, %.lr.ph.i.i.i108.i
  %i.agm = icmp eq i64 %i.agc, %.sroa.12.0.i
  br i1 %i.agm, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i, label %.lr.ph.i.i.i108.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i110.i, %.thread.i
  %i.agn = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.agn, label %bb.ir, label %.sink.split

.sink.split:                                      ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i
  %.sroa.19.1.ph.ph = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.19.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ]
  %.sroa.16.1.ph.ph = phi i64 [ %.sroa.3.0.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.16.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ]
  %.sroa.12.1.ph.ph = phi i64 [ %i.aff, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.12.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ]
  %.sroa.627.1.ph.ph = phi i64 [ 1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.627.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ]
  %i.ago = shl nuw i64 %.sroa.02.0.i, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i, i64 noundef %i.ago, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1549
  br label %bb.ir

bb.ir:                                            ; preds = %.sink.split, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i
  %.sroa.19.1.ph = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.19.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ], [ %.sroa.19.1.ph.ph, %.sink.split ]
  %.sroa.16.1.ph = phi i64 [ %.sroa.3.0.i, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.16.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ], [ %.sroa.16.1.ph.ph, %.sink.split ]
  %.sroa.12.1.ph = phi i64 [ %i.aff, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.12.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ], [ %.sroa.12.1.ph.ph, %.sink.split ]
  %.sroa.627.1.ph = phi i64 [ 1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i ], [ %.sroa.627.0, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i111.i ], [ %.sroa.627.1.ph.ph, %.sink.split ]
  %i.agp = ptrtoint ptr %.sroa.19.1.ph to i64
  %i.agq = inttoptr i64 %.sroa.16.1.ph to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1696
  store i64 %.sroa.627.1.ph, ptr %i.bv, align 8, !noalias !1697
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.12.1.ph, ptr %.sroa.618.0..sroa_idx19, align 8, !noalias !1697
  %.sroa.821.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.agq, ptr %.sroa.821.0..sroa_idx22, align 8, !noalias !1697
  %.sroa.9.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i64 %i.agp, ptr %.sroa.9.0..sroa_idx24, align 8, !noalias !1697
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #33, !noalias !1696
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit: ; preds = %bb.ia, %bb.ib, %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.agr = icmp ult i64 %.sroa.12.0.i, 288230376151711744
  call void @llvm.assume(i1 %i.agr)
  %.idx = shl nuw nsw i64 %.sroa.12.0.i, 5
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %.not19.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i1

.lr.ph.i.i.i.i.i.i.i.i1:                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit, %bb.it
  %.sroa.4.020.i.i.i.i.i.i.i.i = phi ptr [ %i.agw, %bb.it ], [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ] ; 3 uses
  %i.agt = phi ptr [ %i.agu, %bb.it ], [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.agt, align 8, !noalias !1699
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 32 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2 = icmp eq i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2, label %bb.it, label %bb.is

bb.is:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i1
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agt, i64 24
  %.sroa.613.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1699
  %.sroa.6.i.i.i.i.i.i.i.sroa.6.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %.sroa.6.i.i.i.i.i.i.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.i.i.i.i.i.i.i.sroa.6.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !1699
  %.sroa.6.i.i.i.i.i.i.i.sroa.5.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %.sroa.6.i.i.i.i.i.i.i.sroa.5.0.copyload.i = load i64, ptr %.sroa.6.i.i.i.i.i.i.i.sroa.5.0..sroa.512.0..sroa_idx.i.i.i.i.i.i.i.sroa_idx.i, align 8, !noalias !1699
  %3 = load <2 x i32>, ptr %i.agt, align 8, !noalias !1699
  br label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i

bb.it:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i1
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.020.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.agv, i64 16, i1 false), !noalias !1699
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.4.020.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9 = icmp eq ptr %i.agu, %i.ags
  br i1 %.not.i.i.i.i.i.i.i.i9, label %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i1

_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i: ; preds = %bb.it, %bb.is, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit
  %.sroa.12.0.i3 = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.613.0.copyload.i.i.i.i.i.i.i.i, %bb.is ], [ undef, %bb.it ]
  %.sroa.11.0.i = phi ptr [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.6.i.i.i.i.i.i.i.sroa.6.0.copyload.i, %bb.is ], [ undef, %bb.it ]
  %.sroa.8.0.i = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.6.i.i.i.i.i.i.i.sroa.5.0.copyload.i, %bb.is ], [ undef, %bb.it ]
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ false, %bb.is ], [ true, %bb.it ]
  %.val2.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %i.agu, %bb.is ], [ %i.agu, %bb.it ] ; 3 uses
  %.sroa.4.020.i.pn.i.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %.sroa.4.020.i.i.i.i.i.i.i.i, %bb.is ], [ %i.agw, %bb.it ]
  %4 = phi <2 x i32> [ <i32 -1, i32 undef>, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit ], [ %3, %bb.is ], [ <i32 -1, i32 undef>, %bb.it ]
  %i.agx = ptrtoint ptr %i.ags to i64
  %i.agy = ptrtoint ptr %.val2.i.i.i.i.i.i to i64
  %i.agz = sub nuw i64 %i.agx, %i.agy
  %i.aha = lshr exact i64 %i.agz, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.ahb = icmp eq ptr %i.ags, %.val2.i.i.i.i.i.i
  br i1 %i.ahb, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i, label %.lr.ph.i.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i.i5:                            ; preds = %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.ahd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i ], [ 0, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i ] ; 2 uses
  %i.ahc = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 5 uses
  %i.ahd = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.ahe = load i32, ptr %i.ahc, align 8, !range !26, !alias.scope !1702, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahf = icmp eq i32 %i.ahe, -1
  br i1 %i.ahf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i5
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  switch i32 %i.ahe, label %bb.iv [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 1, label %bb.iw
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 5, label %bb.ix
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i
  ]

bb.iv:                                            ; preds = %bb.iu
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahg, align 8, !range !12, !alias.scope !1705, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahh = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %bb.ix, %bb.iw, %bb.iv
  %.val.i4.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i.i.i.i, %bb.iw ], [ %.val.i4.i.i.i.i.i.i.i.i.i, %bb.ix ], [ %.val.i.i.i.i.i.i.i.i.i.i, %bb.iv ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %.val1.i5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ahi, align 8, !alias.scope !1706, !noalias !1703, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i4.sink.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i

bb.iw:                                            ; preds = %bb.iu
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %.val.i1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahj, align 8, !range !12, !alias.scope !1708, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahk = icmp eq i64 %.val.i1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i

bb.ix:                                            ; preds = %bb.iu
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %.val.i4.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ahl, align 8, !range !12, !alias.scope !1709, !noalias !1703, !noundef !11 ; 2 uses
  %i.ahm = icmp eq i64 %.val.i4.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ahm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i: ; preds = %bb.ix, %bb.iw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i.i.i.i, %bb.iv, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %bb.iu, %.lr.ph.i.i.i.i.i.i.i5
  %i.ahn = icmp eq i64 %i.ahd, %i.aha
  br i1 %i.ahn, label %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i, label %.lr.ph.i.i.i.i.i.i.i5

_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i.i.i.i, %_RNvXs0_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtNtNtCs6JMX4GRUq9U_4core4iter8adapters12GenericShuntINtNtB7_9into_iter8IntoIterINtNtBW_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB2w_11BadSequenceEEIB29_NtNtBW_7convert10InfallibleB3b_EEINtB5_18SpecInPlaceCollectB2u_BP_E16collect_in_placeB2y_.exit.i.i.i.i.i
  br i1 %.sroa.0.0.i4, label %bb.ja, label %bb.iy

bb.iy:                                            ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i
  store <2 x i32> %4, ptr %0, align 8, !alias.scope !1710
  %.sroa.5.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.i, ptr %.sroa.5.0..sroa_idx.i8, align 8, !alias.scope !1710
  %.sroa.6.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0.i, ptr %.sroa.6.0..sroa_idx14.i, align 8, !alias.scope !1710
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0.i3, ptr %.sroa.716.0..sroa_idx.i, align 8, !alias.scope !1710
  %i.aho = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.aho, label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB22_11BadSequenceEEB20_IB1F_NtNtB6_7convert10InfallibleB2H_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB2H_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3Z_EB24_.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ahp = shl nuw i64 %.sroa.02.0.i, 5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i, i64 noundef %i.ahp, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1711
  br label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB22_11BadSequenceEEB20_IB1F_NtNtB6_7convert10InfallibleB2H_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB2H_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3Z_EB24_.exit

bb.ja:                                            ; preds = %_RNCINvXso_NtCs6JMX4GRUq9U_4core6resultINtB8_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENtB1m_11BadSequenceEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtBQ_9into_iter8IntoIterB36_EE0B1o_.exit.i
  %i.ahq = shl nuw i64 %.sroa.02.0.i, 1
  %i.ahr = ptrtoint ptr %.sroa.4.020.i.pn.i.i.i.i.i.i.i to i64
  %i.ahs = ptrtoint ptr %.sroa.9.0.i to i64
  %i.aht = sub nuw i64 %i.ahr, %i.ahs
  %i.ahu = lshr exact i64 %i.aht, 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ahq, ptr %i.ahv, align 8, !alias.scope !1713
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !1713
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ahu, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !1713
  store i32 -1, ptr %0, align 8, !alias.scope !1714
  br label %_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB22_11BadSequenceEEB20_IB1F_NtNtB6_7convert10InfallibleB2H_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB2H_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3Z_EB24_.exit

_RINvNtNtCs6JMX4GRUq9U_4core4iter8adapters11try_processINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtB6_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB22_11BadSequenceEEB20_IB1F_NtNtB6_7convert10InfallibleB2H_ENCINvXso_B1H_IB1F_INtBV_3VecB20_EB2H_EINtNtNtB4_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0B3Z_EB24_.exit: ; preds = %bb.iy, %bb.iz, %bb.ja
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1q_11BadSequenceEE8grow_oneB1s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1717
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1717
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32) #32, !noalias !1717
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !1717, !noundef !11
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !1717, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1717
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1717, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1717
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1717
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1717
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1720
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1720
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8) #32, !noalias !1720
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !1720, !noundef !11
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !1720, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1720
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1720, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1720
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1720
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1720
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_15DeleteOperation3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 1 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !alias.scope !1725
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = icmp samesign eq i64 %i.e, 0
  br i1 %i.g, label %_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.02.i.prol = phi ptr [ %i.j, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.h = load i8, ptr %.sroa.0.02.i.prol, align 1, !alias.scope !1726, !noundef !11
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.prol, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  store i8 1, ptr %i.k, align 1, !alias.scope !1725
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1724

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.02.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.j, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.e, 8
  br i1 %i.l, label %_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.sroa.0.02.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.m = load i8, ptr %.sroa.0.02.i, align 1, !alias.scope !1726, !noundef !11
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 1, ptr %i.p, align 1, !alias.scope !1725
  %i.q = load i8, ptr %i.o, align 1, !alias.scope !1726, !noundef !11
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i8 1, ptr %i.t, align 1, !alias.scope !1725
  %i.u = load i8, ptr %i.s, align 1, !alias.scope !1726, !noundef !11
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  store i8 1, ptr %i.x, align 1, !alias.scope !1725
  %i.y = load i8, ptr %i.w, align 1, !alias.scope !1726, !noundef !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  store i8 1, ptr %i.ab, align 1, !alias.scope !1725
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !1726, !noundef !11
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i8 1, ptr %i.af, align 1, !alias.scope !1725
  %i.ag = load i8, ptr %i.ae, align 1, !alias.scope !1726, !noundef !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  store i8 1, ptr %i.aj, align 1, !alias.scope !1725
  %i.ak = load i8, ptr %i.ai, align 1, !alias.scope !1726, !noundef !11
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 7
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i8 1, ptr %i.an, align 1, !alias.scope !1725
  %i.ao = load i8, ptr %i.am, align 1, !alias.scope !1726, !noundef !11
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 1, ptr %i.ar, align 1, !alias.scope !1725
  %i.as = icmp eq ptr %i.aq, %i.f
  br i1 %i.as, label %_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit, label %.lr.ph.i

_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, ptr noundef nonnull align 1 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %1, align 8, !range !12, !noundef !11 ; 2 uses
  %i.at = icmp eq i64 %.val, 0
  br i1 %i.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit, label %bb.b

bb.b:                                             ; preds = %_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RNvNtCslbrwWrVtb7E_5uu_tr9operation13set_to_bitmap.exit, %bb.b
  ret void
end_hunk_0
