Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_:bb.a
  %exitcond38.not.i.i.i.us.us = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond38.not.i.i.i.us.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %.lr.ph.i.i.i.split.us.split.us

.lr.ph.i.i.i.split.us.split:                      ; preds = %.lr.ph.i.i.i.split.us, %bb.e
  %i.af = phi i64 [ %i.ai, %bb.e ], [ %2, %.lr.ph.i.i.i.split.us ]
  %.sroa.01.021.i.i.i.us = phi i64 [ %i.as, %bb.e ], [ 0, %.lr.ph.i.i.i.split.us ] ; 4 uses
  %i.ag = phi i64 [ %i.ah, %bb.e ], [ %5, %.lr.ph.i.i.i.split.us ]
  %i.ah = add i64 %i.ag, -1                       ; 3 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %.sroa.01.021.i.i.i.us, %i.g
  br i1 %exitcond.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.split.us.split
  %i.ai = add i64 %i.af, -1                       ; 3 uses
  %i.aj = icmp ult i64 %i.ah, %i.k
  br i1 %i.aj, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ah ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %.sroa.0.1.i.i.i.i.i.i.us = load ptr, ptr %i.al, align 8, !noalias !7173, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i.us = load i64, ptr %i.am, align 8, !noalias !7173, !noundef !5 ; 2 uses
  %i.an = icmp ult i64 %i.ai, %i.o
  br i1 %i.an, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us, label %.split9.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ai ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.1.i.i9.i.i.i.i.us = load i64, ptr %i.ap, align 8, !noalias !7174, !noundef !5
  %i.aq = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us, %.sroa.5.1.i.i9.i.i.i.i.us
  br i1 %i.aq, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us
  %.sroa.0.1.i.i8.i.i.i.i.us = load ptr, ptr %i.ao, align 8, !noalias !7174, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us, i64 %.sroa.5.1.i.i.i.i.i.i.us), !alias.scope !7175, !noalias !7176
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.ar, label %bb.e, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

bb.e:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us
  %i.as = add nuw i64 %.sroa.01.021.i.i.i.us, 1   ; 2 uses
  %exitcond38.not.i.i.i.us = icmp eq i64 %i.as, %i.h
  br i1 %exitcond38.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %.lr.ph.i.i.i.split.us.split

.lr.ph.i.i.i.split:                               ; preds = %.lr.ph.i.i.i
  br i1 %i.n, label %.lr.ph.i.i.i.split.split.us, label %.lr.ph.i.i.i.split.split

.lr.ph.i.i.i.split.split.us:                      ; preds = %.lr.ph.i.i.i.split, %bb.g
  %i.at = phi i64 [ %i.aw, %bb.g ], [ %2, %.lr.ph.i.i.i.split ]
  %.sroa.01.021.i.i.i.us10 = phi i64 [ %i.bg, %bb.g ], [ 0, %.lr.ph.i.i.i.split ] ; 4 uses
  %i.au = phi i64 [ %i.av, %bb.g ], [ %5, %.lr.ph.i.i.i.split ]
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %exitcond.not.i.i.i.us11 = icmp eq i64 %.sroa.01.021.i.i.i.us10, %i.g
  br i1 %exitcond.not.i.i.i.us11, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.split.split.us
  %i.aw = add i64 %i.at, -1                       ; 3 uses
  %i.ax = icmp ult i64 %i.av, %i.k
  br i1 %i.ax, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us12, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us12: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.av ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.1.i.i.i.i.i.i.us13 = load ptr, ptr %i.ay, align 8, !noalias !7173, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i.us14 = load i64, ptr %i.az, align 8, !noalias !7173, !noundef !5 ; 2 uses
  %i.ba = icmp ult i64 %i.aw, %i.o
  br i1 %i.ba, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us15, label %.split9.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us15: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us12
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.sroa.5.1.i.i9.i.i.i.i.us18 = load i64, ptr %i.bc, align 8, !noalias !7174, !noundef !5
  %i.bd = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us14, %.sroa.5.1.i.i9.i.i.i.i.us18
  br i1 %i.bd, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us15
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.sroa.0.1.i.i8.i.i.i.i.us20 = load ptr, ptr %i.be, align 8, !noalias !7174, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.us21 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us13, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us20, i64 %.sroa.5.1.i.i.i.i.i.i.us14), !alias.scope !7175, !noalias !7176
  %i.bf = icmp eq i32 %bcmp.i.i.i.i.i.us21, 0
  br i1 %i.bf, label %bb.g, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

bb.g:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19
  %i.bg = add nuw i64 %.sroa.01.021.i.i.i.us10, 1 ; 2 uses
  %exitcond38.not.i.i.i.us22 = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond38.not.i.i.i.us22, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %.lr.ph.i.i.i.split.split.us

.lr.ph.i.i.i.split.split:                         ; preds = %.lr.ph.i.i.i.split, %bb.i
  %i.bh = phi i64 [ %i.bk, %bb.i ], [ %2, %.lr.ph.i.i.i.split ]
  %.sroa.01.021.i.i.i = phi i64 [ %i.bt, %bb.i ], [ 0, %.lr.ph.i.i.i.split ] ; 4 uses
  %i.bi = phi i64 [ %i.bj, %bb.i ], [ %5, %.lr.ph.i.i.i.split ]
  %i.bj = add i64 %i.bi, -1                       ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.01.021.i.i.i, %i.g
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.split.split
  %i.bk = add i64 %i.bh, -1                       ; 3 uses
  %i.bl = icmp ult i64 %i.bj, %i.k
  br i1 %i.bl, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i: ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.1.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !7173, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !noalias !7173, !noundef !5 ; 2 uses
  %i.bo = icmp ult i64 %i.bk, %i.o
  br i1 %i.bo, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i, label %.split9.us

.split.us:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #37, !noalias !7177
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bk ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5.1.i.i9.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !7174, !noundef !5
  %i.br = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i, %.sroa.5.1.i.i9.i.i.i.i
  br i1 %i.br, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

.split9.us:                                       ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us12, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #37, !noalias !7178
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i
  %.sroa.0.1.i.i8.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !7174, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.i), !alias.scope !7175, !noalias !7176
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit

bb.i:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.bt = add nuw i64 %.sroa.01.021.i.i.i, 1      ; 2 uses
  %exitcond38.not.i.i.i = icmp eq i64 %i.bt, %i.h
  br i1 %exitcond38.not.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit, label %.lr.ph.i.i.i.split.split

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0EB2o_.exit: ; preds = %bb.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i, %.lr.ph.i.i.i.split.split, %.lr.ph.i.i.i.split.split.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us15, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19, %bb.g, %.lr.ph.i.i.i.split.us.split, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, %bb.e, %.lr.ph.i.i.i.split.us.split.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us.us, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.021.i.i.i.us10, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19 ], [ %i.g, %.lr.ph.i.i.i.split.us.split ], [ %i.g, %.lr.ph.i.i.i.split.us.split.us ], [ %i.h, %bb.c ], [ %.sroa.01.021.i.i.i.us.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us.us ], [ %.sroa.01.021.i.i.i.us.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us.us ], [ %i.h, %bb.e ], [ %.sroa.01.021.i.i.i.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us ], [ %.sroa.01.021.i.i.i.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us ], [ %i.h, %bb.g ], [ %.sroa.01.021.i.i.i.us10, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us15 ], [ %i.g, %.lr.ph.i.i.i.split.split.us ], [ %i.h, %bb.i ], [ %.sroa.01.021.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i ], [ %.sroa.01.021.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.split.split ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2_12OffsetLookupmEEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [136 x i8], align 8               ; 19 uses
  %i.f = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !10, !noalias !7251, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i, !prof !11

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !7252
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !7252
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i: ; preds = %bb.a
  %i.k = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !7253 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !7253
  store i8 1, ptr %i.h, align 8, !noalias !7253
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre-phi186 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ]
  %i.o = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.l, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !7252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 %i.o, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store i64 %.pre-phi186, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = icmp ult i64 %2, %3
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.c

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7254, !noalias !7255, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !7254, !noalias !7255, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aa
  %.sroa.0114.0.copyload.pre = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.4115.0.copyload.pre = load i64, ptr %i.x, align 8 ; 4 uses
  %.sroa.5117.0.copyload.pre = load i64, ptr %i.z, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0114.0.copyload.pre, align 16, !noalias !7256 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.4115.0.copyload.pre, 0
  br i1 %i.aa, label %bb.c, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.ab = shl i64 %.sroa.4115.0.copyload.pre, 5
  %4 = mul i64 %.sroa.4115.0.copyload.pre, 33
  %i.ac = add i64 %4, 49
  %i.ad = sub nuw nsw i64 -32, %i.ab
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0114.0.copyload.pre, i64 %i.ad
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.08.0164 = phi i64 [ %2, %.lr.ph ], [ %i.af, %bb.aa ] ; 4 uses
  %i.af = add i64 %.sroa.08.0164, 1               ; 2 uses
  %i.ag = sub i64 %.sroa.08.0164, %i.s            ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %i.u
  br i1 %i.ah, label %bb.m, label %.invoke

.loopexit146:                                     ; preds = %bb.r, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %._crit_edge.thread, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.val3.i.i.i210 = phi <16 x i8> [ %.val3.i.i.i, %._crit_edge ], [ %.val3.i.i.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ splat (i8 -1), %._crit_edge.thread ]
  %.sroa.0114.0.copyload209 = phi ptr [ %.sroa.0114.0.copyload.pre, %._crit_edge ], [ %.sroa.0114.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ @0, %._crit_edge.thread ] ; 3 uses
  %.sroa.4115.0.copyload208 = phi i64 [ 0, %._crit_edge ], [ %.sroa.4115.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.5117.0.copyload207 = phi i64 [ %.sroa.5117.0.copyload.pre, %._crit_edge ], [ %.sroa.5117.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.511.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.ae, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sroa.410.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.ac, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.copyload209, i64 16
  %i.aj = icmp sgt <16 x i8> %.val3.i.i.i210, splat (i8 -1)
  %i.ak = getelementptr i8, ptr %.sroa.0114.0.copyload209, i64 %.sroa.4115.0.copyload208
  %i.al = getelementptr i8, ptr %i.ak, i64 1
  store i64 %.sink.i.i.i, ptr %i.e, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.0114.0.copyload209, ptr %.sroa.022.sroa.6.0..sroa_idx, align 8
  %.sroa.022.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ai, ptr %.sroa.022.sroa.7.0..sroa_idx, align 8
  %.sroa.022.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.al, ptr %.sroa.022.sroa.8.0..sroa_idx, align 8
  %.sroa.022.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <16 x i1> %i.aj, ptr %.sroa.022.sroa.9.0..sroa_idx, align 8
  %.sroa.022.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.5117.0.copyload207, ptr %.sroa.022.sroa.11.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr null, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr null, ptr %.sroa.625.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %1, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7257
  %i.an = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !7258 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit.thread, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.c
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !7259
  %i.aq = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #36, !noalias !7259 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.d, label %bb.e

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7257
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !7258
  br label %.loopexit.sink.split

.thread144:                                       ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #35, !noalias !7258
  br label %.thread

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #38
          to label %.noexc.i.i unwind label %.thread144, !noalias !7257

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  store ptr %i.ao, ptr %i.aq, align 8, !noalias !7257
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.ap, ptr %i.at, align 8, !noalias !7257
  store i64 4, ptr %i.d, align 8, !noalias !7257
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7257
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !7257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !7258
  call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  call void @llvm.experimental.noalias.scope.decl(metadata !7261)
  %i.au = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7262 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not7.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit.thread214, label %.lr.ph.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit.thread214: ; preds = %bb.e
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7257
  br label %.loopexit.sink.split

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i
  %i.aw = phi ptr [ %i.bd, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i ], [ %i.aq, %bb.e ]
  %i.ax = phi i64 [ %i.bg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i ], [ 1, %bb.e ] ; 6 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.bh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i ], [ %i.au, %bb.e ]
  %i.ay = phi ptr [ %i.bi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i ], [ %i.av, %bb.e ]
  %i.az = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.ba = icmp samesign ult i64 %i.ax, 576460752303423488
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.d, align 8, !range !6, !alias.scope !7263, !noalias !7264, !noundef !5
  %i.bc = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bc, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ax, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !7264

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %.pre.i.i39 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7263, !noalias !7264
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bd = phi ptr [ %.pre.i.i39, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i_crit_edge.i.i ], [ %i.aw, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ax ; 2 uses
  store ptr %i.ay, ptr %i.be, align 8, !noalias !7265
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.az, ptr %i.bf, align 8, !noalias !7265
  %i.bg = add nuw nsw i64 %i.ax, 1                ; 6 uses
  store i64 %i.bg, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !7263, !noalias !7264
  %i.bh = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7262 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c) #35, !noalias !7262
  %.val.i.i = load i64, ptr %i.d, align 8, !noalias !7257 ; 2 uses
  %i.bk = icmp eq i64 %.val.i.i, 0
  br i1 %i.bk, label %.thread, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7257, !nonnull !5, !noundef !5
  %i.bl = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !7257
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveBL_.exit.i.i.i.i
  %.sroa.055.0.copyload56.pre = load i64, ptr %i.d, align 8, !noalias !7266 ; 4 uses
  %.sroa.6.0.copyload58.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7266 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !7267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7267
  %i.bm = icmp samesign ult i64 %i.ax, 20
  br i1 %i.bm, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2s_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload58.pre, i64 noundef range(i64 0, 576460752303423488) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %.loopexit unwind label %bb.k

bb.h:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterB11_.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bg, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i, %bb.h
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.h ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i ], [ %.sroa.6.0.copyload58.pre, %bb.h ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !7268, !noalias !7269, !noundef !5 ; 3 uses
  %i.bp = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !7268, !noalias !7269, !noundef !5
  %i.bq = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.bq, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.br = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !7268, !noalias !7269, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i.i.i.i246 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i246, i64 16, i1 false), !alias.scope !7268, !noalias !7269
  %i.bs = icmp eq ptr %.sroa.0.0.i.i.i.i246, %.sroa.6.0.copyload58.pre
  br i1 %i.bs, label %._crit_edge251, label %.lr.ph250

bb.j:                                             ; preds = %.lr.ph250
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i248, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i248, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !7268, !noalias !7269
  %i.bt = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload58.pre
  br i1 %i.bt, label %._crit_edge251, label %.lr.ph250
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2_12OffsetLookupmEEB6_:bb.a
  %.pre.i.i48 = load i8, ptr %.phi.trans.insert.i.i47, align 1, !noalias !7285
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i

.lr.ph.i.i.i49:                                   ; preds = %bb.s, %.lr.ph.i.i.i49
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i50, %.lr.ph.i.i.i49 ], [ %.sroa.0.07.i.i.i, %bb.s ]
  %i.ee = phi i64 [ %i.ef, %.lr.ph.i.i.i49 ], [ 0, %bb.s ]
  %i.ef = add i64 %i.ee, 16                       ; 2 uses
  %i.eg = add i64 %i.ef, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i50 = and i64 %i.eg, %.val3.i.i  ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %.sroa.0.0.i.i.i50
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.eh, align 1, !noalias !7284
  %i.ei = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i49, label %._crit_edge.i.i.i, !prof !15

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.t, %._crit_edge.i.i.i
  %i.ek = phi i8 [ %.pre.i.i48, %bb.t ], [ %i.dy, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ed, %bb.t ], [ %i.dw, %._crit_edge.i.i.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i45, i64 %.sroa.0.0.i5.i.i.i
  %i.em = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.en = and i64 %i.em, %.val3.i.i
  store i8 %i.cq, ptr %i.el, align 1, !noalias !7285
  %i.eo = getelementptr i8, ptr %.val.i.i45, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store i8 %i.cq, ptr %i.ep, align 1, !noalias !7285
  %i.eq = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.er = getelementptr inbounds [32 x i8], ptr %.val.i.i45, i64 %i.eq ; 5 uses
  %i.es = and i8 %i.ek, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 -32
  store i64 %i.cn, ptr %i.eu, align 8, !noalias !7286
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.er, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !7286
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.er, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !7286
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds i8, ptr %i.er, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i46, align 8, !noalias !7286
  %i.ev = load <2 x i64>, ptr %i.y, align 8, !alias.scope !7282, !noalias !7283
  %i.ew = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.et, i64 0
  %i.ex = sub <2 x i64> %i.ev, %i.ew
  store <2 x i64> %i.ex, ptr %i.y, align 8, !alias.scope !7282, !noalias !7283
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i
  %.pn.i = phi ptr [ %i.er, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i ], [ %i.dd, %bb.u ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.pn.i, i64 -16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !5 ; 5 uses
  %.idx = mul nuw nsw i64 %i.fb, 24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx
  %i.fd = icmp eq i64 %i.fb, 0
  br i1 %i.fd, label %._crit_edge245, label %.lr.ph244

bb.w:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.02.0242, i64 24 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.fc
  br i1 %i.ff, label %._crit_edge245, label %.lr.ph244

.lr.ph244:                                        ; preds = %bb.v, %bb.w
  %.sroa.02.0242 = phi ptr [ %i.fe, %bb.w ], [ %i.ez, %bb.v ] ; 3 uses
  %i.fg = load i64, ptr %.sroa.02.0242, align 8, !noundef !5
  %i.fh = sub i64 %i.fg, %i.s                     ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.u
  br i1 %i.fi, label %bb.x, label %.invoke

.invoke:                                          ; preds = %bb.b, %.lr.ph244
  %i.fj = phi i64 [ %i.fh, %.lr.ph244 ], [ %i.ag, %bb.b ]
  %i.fk = phi ptr [ @106, %.lr.ph244 ], [ @104, %bb.b ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fj, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %.lr.ph244
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.fh
  %.val36 = load i32, ptr %i.bz, align 4, !noundef !5
  %.val37 = load i32, ptr %i.fl, align 4, !noundef !5
  %i.fm = icmp eq i32 %.val36, %.val37
  br i1 %i.fm, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.02.0242, i64 8 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !7, !noundef !5
  %.not29 = icmp eq i64 %i.fo, 0
  br i1 %.not29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.fn, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.ac
  %exitcond.not = icmp eq i64 %i.af, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge245:                                   ; preds = %bb.w, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !7287)
  %i.fp = load i64, ptr %.sroa.0.0.i, align 8, !range !6, !alias.scope !7287, !noalias !7288, !noundef !5
  %i.fq = icmp eq i64 %i.fb, %i.fp
  br i1 %i.fq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge245
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #34
          to label %._crit_edge178 unwind label %.loopexit146

._crit_edge178:                                   ; preds = %bb.ab
  %.pre = load ptr, ptr %i.ey, align 8, !alias.scope !7287, !noalias !7288
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge178, %._crit_edge245
  %i.fr = phi ptr [ %.pre, %._crit_edge178 ], [ %i.ez, %._crit_edge245 ]
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %i.fb ; 3 uses
  store i64 %.sroa.08.0164, ptr %i.fs, align 8, !noalias !7287
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !7287
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %.sroa.08.0164, ptr %.sroa.554.0..sroa_idx, align 8, !noalias !7287
  %i.ft = add i64 %i.fb, 1
  store i64 %i.ft, ptr %i.fa, align 8, !alias.scope !7287, !noalias !7288
  br label %bb.aa

.thread:                                          ; preds = %bb.f, %.body.i.i, %bb.ad, %.thread144, %bb.k, %bb.l
  %.pn121 = phi { ptr, i32 } [ %i.as, %.thread144 ], [ %eh.lpad-body.ph, %bb.ad ], [ %i.bw, %bb.l ], [ %i.bw, %bb.k ], [ %i.bj, %bb.f ], [ %i.bj, %.body.i.i ]
  resume { ptr, i32 } %.pn121

bb.ad:                                            ; preds = %.loopexit146, %.loopexit.split-lp
  %eh.lpad-body.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit146 ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #35
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB6_4text12TextDiffSideeEEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [136 x i8], align 8               ; 19 uses
  %i.f = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !10, !noalias !7386, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i, !prof !11

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.g, align 8, !noalias !7387
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !7387
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i: ; preds = %bb.a
  %i.k = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !7388 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !7388
  store i8 1, ptr %i.h, align 8, !noalias !7388
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre-phi196 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ]
  %i.o = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.l, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !noalias !7387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 %i.o, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store i64 %.pre-phi196, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = icmp ult i64 %2, %3
  br i1 %i.q, label %.lr.ph178, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.g

.lr.ph178:                                        ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %i.r = load i64, ptr %1, align 8, !range !7, !alias.scope !7389, !noalias !7390, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !7389, !noalias !7390, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ak
  %.sroa.0121.0.copyload.pre = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.4122.0.copyload.pre = load i64, ptr %i.x, align 8 ; 4 uses
  %.sroa.5124.0.copyload.pre = load i64, ptr %i.z, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0121.0.copyload.pre, align 16, !noalias !7391 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.4122.0.copyload.pre, 0
  br i1 %i.aa, label %bb.g, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.ab = shl i64 %.sroa.4122.0.copyload.pre, 5
  %4 = mul i64 %.sroa.4122.0.copyload.pre, 33
  %i.ac = add i64 %4, 49
  %i.ad = sub nuw nsw i64 -32, %i.ab
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0121.0.copyload.pre, i64 %i.ad
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph178, %bb.ak
  %.sroa.08.0177 = phi i64 [ %2, %.lr.ph178 ], [ %i.af, %bb.ak ] ; 8 uses
  %i.af = add i64 %.sroa.08.0177, 1               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7392)
  call void @llvm.experimental.noalias.scope.decl(metadata !7393)
  %i.ag = icmp ult i64 %.sroa.08.0177, %i.u       ; 4 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.ag, label %bb.f, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.ag, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.08.0177 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.sroa.08.0177 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  br label %bb.q

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.ad, %bb.ae, %bb.ab, %bb.ac
  %i.am = phi ptr [ @106, %bb.ad ], [ @105, %bb.ab ], [ @105, %bb.ac ], [ @106, %bb.ae ], [ @104, %bb.d ], [ @104, %bb.c ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit163:                                     ; preds = %bb.v, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %._crit_edge.thread, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.val3.i.i.i220 = phi <16 x i8> [ %.val3.i.i.i, %._crit_edge ], [ %.val3.i.i.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ splat (i8 -1), %._crit_edge.thread ]
  %.sroa.0121.0.copyload219 = phi ptr [ %.sroa.0121.0.copyload.pre, %._crit_edge ], [ %.sroa.0121.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ @0, %._crit_edge.thread ] ; 3 uses
  %.sroa.4122.0.copyload218 = phi i64 [ 0, %._crit_edge ], [ %.sroa.4122.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.5124.0.copyload217 = phi i64 [ %.sroa.5124.0.copyload.pre, %._crit_edge ], [ %.sroa.5124.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.511.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.ae, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sroa.410.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.ac, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload219, i64 16
  %i.ao = icmp sgt <16 x i8> %.val3.i.i.i220, splat (i8 -1)
  %i.ap = getelementptr i8, ptr %.sroa.0121.0.copyload219, i64 %.sroa.4122.0.copyload218
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  store i64 %.sink.i.i.i, ptr %i.e, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.0121.0.copyload219, ptr %.sroa.022.sroa.6.0..sroa_idx, align 8
  %.sroa.022.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.an, ptr %.sroa.022.sroa.7.0..sroa_idx, align 8
  %.sroa.022.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.aq, ptr %.sroa.022.sroa.8.0..sroa_idx, align 8
  %.sroa.022.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <16 x i1> %i.ao, ptr %.sroa.022.sroa.9.0..sroa_idx, align 8
  %.sroa.022.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.5124.0.copyload217, ptr %.sroa.022.sroa.11.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr null, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr null, ptr %.sroa.625.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %1, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7394
  %i.as = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !7395 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !7396
  %i.av = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #36, !noalias !7396 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.h, label %bb.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7394
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e), !noalias !7395
  br label %.loopexit.sink.split

.thread160:                                       ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #35, !noalias !7395
  br label %.thread

bb.h:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #38
          to label %.noexc.i.i unwind label %.thread160, !noalias !7394

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  store ptr %i.at, ptr %i.av, align 8, !noalias !7394
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.au, ptr %i.ay, align 8, !noalias !7394
  store i64 4, ptr %i.d, align 8, !noalias !7394
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7394
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !7394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !7395
  call void @llvm.experimental.noalias.scope.decl(metadata !7397)
  call void @llvm.experimental.noalias.scope.decl(metadata !7398)
  %i.az = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7399 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not7.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224, label %.lr.ph.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit.thread224: ; preds = %bb.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7394
  br label %.loopexit.sink.split

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i
  %i.bb = phi ptr [ %i.bi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i ], [ %i.av, %bb.i ]
  %i.bc = phi i64 [ %i.bl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i ], [ 1, %bb.i ] ; 6 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.bm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i ], [ %i.az, %bb.i ]
  %i.bd = phi ptr [ %i.bn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i ], [ %i.ba, %bb.i ]
  %i.be = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.bf = icmp samesign ult i64 %i.bc, 576460752303423488
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %i.d, align 8, !range !6, !alias.scope !7400, !noalias !7401, !noundef !5
  %i.bh = icmp eq i64 %i.bc, %i.bg
  br i1 %i.bh, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bc, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !7401

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %.pre.i.i32 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7400, !noalias !7401
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i32, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i_crit_edge.i.i ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bc ; 2 uses
  store ptr %i.bd, ptr %i.bj, align 8, !noalias !7402
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.be, ptr %i.bk, align 8, !noalias !7402
  %i.bl = add nuw nsw i64 %i.bc, 1                ; 6 uses
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !7400, !noalias !7401
  %i.bm = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB4r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7399 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c) #35, !noalias !7399
  %.val.i.i = load i64, ptr %i.d, align 8, !noalias !7394 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i, 0
  br i1 %i.bp, label %.thread, label %bb.j

bb.j:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7394, !nonnull !5, !noundef !5
  %i.bq = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !7394
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveBL_.exit.i.i.i.i
  %.sroa.062.0.copyload63.pre = load i64, ptr %i.d, align 8, !noalias !7403 ; 4 uses
  %.sroa.6.0.copyload65.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7403 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EEB4E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c), !noalias !7399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !7404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7404
  %i.br = icmp samesign ult i64 %i.bc, 20
  br i1 %i.br, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2z_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload65.pre, i64 noundef range(i64 0, 576460752303423488) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #34
          to label %.loopexit unwind label %bb.o

bb.l:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterB11_.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bl, 4
end_hunk_1
