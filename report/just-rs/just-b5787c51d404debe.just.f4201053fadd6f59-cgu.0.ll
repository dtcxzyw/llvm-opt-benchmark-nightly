Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 594
loop-unroll.NumUnrolled: 719
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just:bb.a

bb.e:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us
  %i.as = add nuw i64 %.sroa.01.021.i.i.i.us, 1   ; 2 uses
  %exitcond38.not.i.i.i.us = icmp eq i64 %i.as, %i.h
  br i1 %exitcond38.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.split.us.split

.lr.ph.i.i.i.split:                               ; preds = %.lr.ph.i.i.i
  br i1 %i.n, label %.lr.ph.i.i.i.split.split.us, label %.lr.ph.i.i.i.split.split

.lr.ph.i.i.i.split.split.us:                      ; preds = %.lr.ph.i.i.i.split, %bb.g
  %i.at = phi i64 [ %i.aw, %bb.g ], [ %2, %.lr.ph.i.i.i.split ]
  %.sroa.01.021.i.i.i.us10 = phi i64 [ %i.bg, %bb.g ], [ 0, %.lr.ph.i.i.i.split ] ; 4 uses
  %i.au = phi i64 [ %i.av, %bb.g ], [ %5, %.lr.ph.i.i.i.split ]
  %i.av = add i64 %i.au, -1                       ; 3 uses
  %exitcond.not.i.i.i.us11 = icmp eq i64 %.sroa.01.021.i.i.i.us10, %i.g
  br i1 %exitcond.not.i.i.i.us11, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.split.split.us
  %i.aw = add i64 %i.at, -1                       ; 3 uses
  %i.ax = icmp ult i64 %i.av, %i.k
  br i1 %i.ax, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us12, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us12: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.av ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.1.i.i.i.i.i.i.us13 = load ptr, ptr %i.ay, align 8, !noalias !19373, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i.i.i.i.us14 = load i64, ptr %i.az, align 8, !noalias !19373, !noundef !28 ; 2 uses
  %i.ba = icmp ult i64 %i.aw, %i.o
  br i1 %i.ba, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us15, label %.split9.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us15: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us12
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.sroa.5.1.i.i9.i.i.i.i.us18 = load i64, ptr %i.bc, align 8, !noalias !19374, !noundef !28
  %i.bd = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us14, %.sroa.5.1.i.i9.i.i.i.i.us18
  br i1 %i.bd, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us15
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.sroa.0.1.i.i8.i.i.i.i.us20 = load ptr, ptr %i.be, align 8, !noalias !19374, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.us21 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us13, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us20, i64 %.sroa.5.1.i.i.i.i.i.i.us14), !alias.scope !19375, !noalias !19376
  %i.bf = icmp eq i32 %bcmp.i.i.i.i.i.us21, 0
  br i1 %i.bf, label %bb.g, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit

bb.g:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19
  %i.bg = add nuw i64 %.sroa.01.021.i.i.i.us10, 1 ; 2 uses
  %exitcond38.not.i.i.i.us22 = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond38.not.i.i.i.us22, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.split.split.us

.lr.ph.i.i.i.split.split:                         ; preds = %.lr.ph.i.i.i.split, %bb.i
  %i.bh = phi i64 [ %i.bk, %bb.i ], [ %2, %.lr.ph.i.i.i.split ]
  %.sroa.01.021.i.i.i = phi i64 [ %i.bt, %bb.i ], [ 0, %.lr.ph.i.i.i.split ] ; 4 uses
  %i.bi = phi i64 [ %i.bj, %bb.i ], [ %5, %.lr.ph.i.i.i.split ]
  %i.bj = add i64 %i.bi, -1                       ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.01.021.i.i.i, %i.g
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.split.split
  %i.bk = add i64 %i.bh, -1                       ; 3 uses
  %i.bl = icmp ult i64 %i.bj, %i.k
  br i1 %i.bl, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bj ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.1.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !noalias !19373, !nonnull !28, !noundef !28
  %.sroa.5.1.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !noalias !19373, !noundef !28 ; 2 uses
  %i.bo = icmp ult i64 %i.bk, %i.o
  br i1 %i.bo, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i, label %.split9.us

.split.us:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !19377
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bk ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.5.1.i.i9.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !19374, !noundef !28
  %i.br = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i, %.sroa.5.1.i.i9.i.i.i.i
  br i1 %i.br, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit

.split9.us:                                       ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us12, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !19378
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i
  %.sroa.0.1.i.i8.i.i.i.i = load ptr, ptr %i.bp, align 8, !noalias !19374, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i, i64 %.sroa.5.1.i.i.i.i.i.i), !alias.scope !19375, !noalias !19376
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit

bb.i:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.bt = add nuw i64 %.sroa.01.021.i.i.i, 1      ; 2 uses
  %exitcond38.not.i.i.i = icmp eq i64 %i.bt, %i.h
  br i1 %exitcond38.not.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.split.split

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_3ops5range5RangejEEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtNtB2o_4text12TextDiffSideeEB3l_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3W_5count0ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i, %.lr.ph.i.i.i.split.split, %.lr.ph.i.i.i.split.split.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us15, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19, %bb.g, %.lr.ph.i.i.i.split.us.split, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, %bb.e, %.lr.ph.i.i.i.split.us.split.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us.us, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.021.i.i.i.us10, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us19 ], [ %i.g, %.lr.ph.i.i.i.split.us.split ], [ %i.g, %.lr.ph.i.i.i.split.us.split.us ], [ %i.h, %bb.c ], [ %.sroa.01.021.i.i.i.us.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us.us ], [ %.sroa.01.021.i.i.i.us.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us.us ], [ %i.h, %bb.e ], [ %.sroa.01.021.i.i.i.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us ], [ %.sroa.01.021.i.i.i.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us ], [ %i.h, %bb.g ], [ %.sroa.01.021.i.i.i.us10, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us15 ], [ %i.g, %.lr.ph.i.i.i.split.split.us ], [ %i.h, %bb.i ], [ %.sroa.01.021.i.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i ], [ %.sroa.01.021.i.i.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.split.split ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2_12OffsetLookupmEECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [136 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [136 x i8], align 8               ; 19 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !40, !noalias !19448, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !19449
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !19449
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !19450 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !19450
  store i8 1, ptr %i.i, align 8, !noalias !19450
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre-phi186 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.n, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ]
  %i.p = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.h, align 8, !noalias !19449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 %i.p, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 %.pre-phi186, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp ult i64 %2, %3
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.c

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !19451, !noundef !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !19451, !noundef !28 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aa
  %.sroa.0114.0.copyload.pre = load ptr, ptr %i.g, align 8 ; 4 uses
  %.sroa.4115.0.copyload.pre = load i64, ptr %i.y, align 8 ; 5 uses
  %.sroa.5117.0.copyload.pre = load i64, ptr %i.aa, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0114.0.copyload.pre, align 16, !noalias !19452 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.4115.0.copyload.pre, 0
  br i1 %i.ab, label %bb.c, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.ac = icmp slt i64 %.sroa.4115.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.ac)
  %i.ad = shl i64 %.sroa.4115.0.copyload.pre, 5   ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %.sroa.4115.0.copyload.pre, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw nsw i64 -32, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0114.0.copyload.pre, i64 %i.aj
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.08.0164 = phi i64 [ %2, %.lr.ph ], [ %i.al, %bb.aa ] ; 4 uses
  %i.al = add i64 %.sroa.08.0164, 1               ; 2 uses
  %i.am = sub i64 %.sroa.08.0164, %i.t            ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.v
  br i1 %i.an, label %bb.m, label %.invoke

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.r, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #71
  br label %.thread

bb.c:                                             ; preds = %._crit_edge.thread, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.val3.i.i.i210 = phi <16 x i8> [ %.val3.i.i.i, %._crit_edge ], [ %.val3.i.i.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ splat (i8 -1), %._crit_edge.thread ]
  %.sroa.0114.0.copyload209 = phi ptr [ %.sroa.0114.0.copyload.pre, %._crit_edge ], [ %.sroa.0114.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ @124, %._crit_edge.thread ] ; 3 uses
  %.sroa.4115.0.copyload208 = phi i64 [ 0, %._crit_edge ], [ %.sroa.4115.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.5117.0.copyload207 = phi i64 [ %.sroa.5117.0.copyload.pre, %._crit_edge ], [ %.sroa.5117.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.511.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.ak, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sroa.410.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.ag, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0114.0.copyload209, i64 16
  %i.ap = icmp sgt <16 x i8> %.val3.i.i.i210, splat (i8 -1)
  %i.aq = getelementptr i8, ptr %.sroa.0114.0.copyload209, i64 %.sroa.4115.0.copyload208
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i64 %.sink.i.i.i, ptr %i.f, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.0114.0.copyload209, ptr %.sroa.022.sroa.6.0..sroa_idx, align 8
  %.sroa.022.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.ao, ptr %.sroa.022.sroa.7.0..sroa_idx, align 8
  %.sroa.022.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.ar, ptr %.sroa.022.sroa.8.0..sroa_idx, align 8
  %.sroa.022.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i1> %i.ap, ptr %.sroa.022.sroa.9.0..sroa_idx, align 8
  %.sroa.022.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.5117.0.copyload207, ptr %.sroa.022.sroa.11.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr null, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr null, ptr %.sroa.625.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %1, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19453
  %i.at = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f), !noalias !19454 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.c
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !19455
  %i.aw = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #69, !noalias !19455 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.d, label %bb.e

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19453
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f), !noalias !19454
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #70
          to label %.noexc.i.i unwind label %.thread144, !noalias !19453

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  store ptr %i.au, ptr %i.aw, align 8, !noalias !19453
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.av, ptr %i.ay, align 8, !noalias !19453
  store i64 4, ptr %i.e, align 8, !noalias !19453
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19453
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !19453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !19454
  call void @llvm.experimental.noalias.scope.decl(metadata !19456)
  call void @llvm.experimental.noalias.scope.decl(metadata !19457)
  %i.az = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19458 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not7.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214, label %.lr.ph.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread214: ; preds = %bb.e
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19453
  br label %.loopexit.sink.split

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.bb = phi ptr [ %i.bi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.aw, %bb.e ]
  %i.bc = phi i64 [ %i.bl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 1, %bb.e ] ; 6 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.bm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.az, %bb.e ]
  %i.bd = phi ptr [ %i.bn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.ba, %bb.e ]
  %i.be = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.bf = icmp samesign ult i64 %i.bc, 576460752303423488
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load i64, ptr %i.e, align 8, !range !43, !alias.scope !19459, !noalias !19453, !noundef !28
  %i.bh = icmp eq i64 %i.bc, %i.bg
  br i1 %i.bh, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bc, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !19460

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.pre.i.i39 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !19459, !noalias !19453
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i39, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bc ; 2 uses
  store ptr %i.bd, ptr %i.bj, align 8, !noalias !19461
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.be, ptr %i.bk, align 8, !noalias !19461
  %i.bl = add nuw nsw i64 %i.bc, 1                ; 6 uses
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !19459, !noalias !19453
  %i.bm = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4n_12OffsetLookupmEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19458 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d) #71, !noalias !19458
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !19453 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i, 0
  br i1 %i.bp, label %.thread, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19453, !nonnull !28, !noundef !28
  %i.bq = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !19453
  br label %.thread

.thread144:                                       ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f) #71, !noalias !19454
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.055.0.copyload56.pre = load i64, ptr %i.e, align 8, !noalias !19462 ; 4 uses
  %.sroa.6.0.copyload58.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19462 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB4A_12OffsetLookupmEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !19463)
  call void @llvm.experimental.noalias.scope.decl(metadata !19464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19463
  store ptr %i.a, ptr %i.c, align 8, !noalias !19465
  %i.bs = icmp samesign ult i64 %i.bc, 20
  br i1 %i.bs, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2s_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload58.pre, i64 noundef range(i64 0, 576460752303423488) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #73
          to label %.loopexit unwind label %bb.k

bb.h:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBX_12OffsetLookupmEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2H_10filter_map9FilterMapINtNtB2H_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2L_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5l_ENCINvBX_6uniqueB1R_E0ENCB6n_s_0ENCB6n_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bl, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload58.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.h
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.h ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.6.0.copyload58.pre, %bb.h ] ; 2 uses
  %i.bu = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !19466, !noundef !28 ; 3 uses
  %i.bv = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !19466, !noundef !28
  %i.bw = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.bw, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !19466, !nonnull !28, !align !35, !noundef !28
  %.sroa.0.0.i.i.i.i247 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i247, i64 16, i1 false), !alias.scope !19466
  %i.by = icmp eq ptr %.sroa.0.0.i.i.i.i247, %.sroa.6.0.copyload58.pre
  br i1 %i.by, label %._crit_edge252, label %.lr.ph251

bb.j:                                             ; preds = %.lr.ph251
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i249, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i249, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !19466
  %i.bz = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload58.pre
  br i1 %i.bz, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i.i249 = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i247, %bb.i ] ; 5 uses
  %.sroa.5.0.i.i.i.i248 = phi ptr [ %.sroa.0.0.i.i.i.i249, %bb.j ], [ %.sroa.0.04.i.i.i, %bb.i ] ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.5.0.i.i.i.i248, i64 -24
  %.val8.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !19466, !noundef !28
  %i.cb = icmp ult i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cb, label %bb.j, label %._crit_edge252

._crit_edge252:                                   ; preds = %bb.j, %.lr.ph251, %bb.i
  %.sroa.5.0.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i, %bb.i ], [ %.sroa.0.0.i.i.i.i249, %bb.j ], [ %.sroa.5.0.i.i.i.i248, %.lr.ph251 ]
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload58.pre, %bb.i ], [ %.sroa.6.0.copyload58.pre, %bb.j ], [ %.sroa.0.0.i.i.i.i249, %.lr.ph251 ]
  store ptr %i.bx, ptr %.sroa.0.0.i.lcssa.i.i.i, align 8, !alias.scope !19466, !noalias !19467
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i, align 8, !alias.scope !19466, !noalias !19467
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %._crit_edge252, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.bt
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtB2_12OffsetLookupmEECskXtk6F4WjxZ_4just:bb.a
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %._crit_edge246, label %.lr.ph245

bb.w:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.02.0243, i64 24 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fi
  br i1 %i.fl, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.v, %bb.w
  %.sroa.02.0243 = phi ptr [ %i.fk, %bb.w ], [ %i.ff, %bb.v ] ; 3 uses
  %i.fm = load i64, ptr %.sroa.02.0243, align 8, !noundef !28
  %i.fn = sub i64 %i.fm, %i.t                     ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.v
  br i1 %i.fo, label %bb.x, label %.invoke

.invoke:                                          ; preds = %bb.b, %.lr.ph245
  %i.fp = phi i64 [ %i.fn, %.lr.ph245 ], [ %i.am, %bb.b ]
  %i.fq = phi ptr [ @299, %.lr.ph245 ], [ @297, %bb.b ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq) #74
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %.lr.ph245
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fn
  %.val = load i32, ptr %i.cf, align 4, !noundef !28
  %.val35 = load i32, ptr %i.fr, align 4, !noundef !28
  %i.fs = icmp eq i32 %.val, %.val35
  br i1 %i.fs, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.02.0243, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !range !41, !noundef !28
  %.not29 = icmp eq i64 %i.fu, 0
  br i1 %.not29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.ft, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.ac
  %exitcond.not = icmp eq i64 %i.al, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge246:                                   ; preds = %bb.w, %bb.v
  %i.fv = load i64, ptr %.sroa.0.0.i, align 8, !range !43, !alias.scope !19481, !noundef !28
  %i.fw = icmp eq i64 %i.fh, %i.fv
  br i1 %i.fw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge246
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjINtNtCsj6eKBz9Db1c_4core6option6OptionjEEE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i) #73
          to label %._crit_edge178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge178:                                   ; preds = %bb.ab
  %.pre = load ptr, ptr %i.fe, align 8, !alias.scope !19481
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge178, %._crit_edge246
  %i.fx = phi ptr [ %.pre, %._crit_edge178 ], [ %i.ff, %._crit_edge246 ]
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fh ; 3 uses
  store i64 %.sroa.08.0164, ptr %i.fy, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 %.sroa.08.0164, ptr %.sroa.554.0..sroa_idx, align 8
  %i.fz = add i64 %i.fh, 1
  store i64 %i.fz, ptr %i.fg, align 8, !alias.scope !19481
  br label %bb.aa

.thread:                                          ; preds = %bb.f, %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread144, %bb.k, %bb.l
  %.pn121 = phi { ptr, i32 } [ %i.br, %.thread144 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %bb.l ], [ %i.cc, %bb.k ], [ %i.bo, %bb.f ], [ %i.bo, %.body.i.i ]
  resume { ptr, i32 } %.pn121
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB6_4text12TextDiffSideeEECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [136 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [136 x i8], align 8               ; 19 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !40, !noalias !19574, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !19575
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !19575
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !19576 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !19576
  store i8 1, ptr %i.i, align 8, !noalias !19576
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre-phi196 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.n, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ]
  %i.p = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.h, align 8, !noalias !19575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 %i.p, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i64 %.pre-phi196, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp ult i64 %2, %3
  br i1 %i.r, label %.lr.ph178, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %bb.g

.lr.ph178:                                        ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.s = load i64, ptr %1, align 8, !range !41, !alias.scope !19577, !noundef !28
  %i.t = trunc nuw i64 %i.s to i1                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !19577, !noundef !28 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !28 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ak
  %.sroa.0121.0.copyload.pre = load ptr, ptr %i.g, align 8 ; 4 uses
  %.sroa.4122.0.copyload.pre = load i64, ptr %i.y, align 8 ; 5 uses
  %.sroa.5124.0.copyload.pre = load i64, ptr %i.aa, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0121.0.copyload.pre, align 16, !noalias !19578 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.4122.0.copyload.pre, 0
  br i1 %i.ab, label %bb.g, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.ac = icmp slt i64 %.sroa.4122.0.copyload.pre, 576460752303423487
  call void @llvm.assume(i1 %i.ac)
  %i.ad = shl i64 %.sroa.4122.0.copyload.pre, 5   ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %.sroa.4122.0.copyload.pre, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nuw nsw i64 -32, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0121.0.copyload.pre, i64 %i.aj
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph178, %bb.ak
  %.sroa.08.0177 = phi i64 [ %2, %.lr.ph178 ], [ %i.al, %bb.ak ] ; 8 uses
  %i.al = add i64 %.sroa.08.0177, 1               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19579)
  call void @llvm.experimental.noalias.scope.decl(metadata !19580)
  %i.am = icmp ult i64 %.sroa.08.0177, %i.v       ; 4 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.am, label %bb.f, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.am, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.sroa.08.0177 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.08.0177 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  br label %bb.q

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.ad, %bb.ae, %bb.ab, %bb.ac
  %i.as = phi ptr [ @299, %bb.ad ], [ @298, %bb.ab ], [ @298, %bb.ac ], [ @299, %bb.ae ], [ @297, %bb.d ], [ @297, %bb.c ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as) #74
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.v, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #71
  br label %.thread

bb.g:                                             ; preds = %._crit_edge.thread, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge
  %.val3.i.i.i220 = phi <16 x i8> [ %.val3.i.i.i, %._crit_edge ], [ %.val3.i.i.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ splat (i8 -1), %._crit_edge.thread ]
  %.sroa.0121.0.copyload219 = phi ptr [ %.sroa.0121.0.copyload.pre, %._crit_edge ], [ %.sroa.0121.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ @124, %._crit_edge.thread ] ; 3 uses
  %.sroa.4122.0.copyload218 = phi i64 [ 0, %._crit_edge ], [ %.sroa.4122.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.5124.0.copyload217 = phi i64 [ %.sroa.5124.0.copyload.pre, %._crit_edge ], [ %.sroa.5124.0.copyload.pre, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %.sroa.511.0.i.i = phi ptr [ undef, %._crit_edge ], [ %i.ak, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sroa.410.0.i.i = phi i64 [ undef, %._crit_edge ], [ %i.ag, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %._crit_edge.thread ]
  %.sink.i.i.i = phi i64 [ 0, %._crit_edge ], [ 16, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ 0, %._crit_edge.thread ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload219, i64 16
  %i.au = icmp sgt <16 x i8> %.val3.i.i.i220, splat (i8 -1)
  %i.av = getelementptr i8, ptr %.sroa.0121.0.copyload219, i64 %.sroa.4122.0.copyload218
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  store i64 %.sink.i.i.i, ptr %i.f, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.410.0.i.i, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.022.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.511.0.i.i, ptr %.sroa.022.sroa.5.0..sroa_idx, align 8
  %.sroa.022.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.0121.0.copyload219, ptr %.sroa.022.sroa.6.0..sroa_idx, align 8
  %.sroa.022.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.at, ptr %.sroa.022.sroa.7.0..sroa_idx, align 8
  %.sroa.022.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.aw, ptr %.sroa.022.sroa.8.0..sroa_idx, align 8
  %.sroa.022.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i1> %i.au, ptr %.sroa.022.sroa.9.0..sroa_idx, align 8
  %.sroa.022.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.5124.0.copyload217, ptr %.sroa.022.sroa.11.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr null, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr null, ptr %.sroa.625.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %1, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19581
  %i.ay = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f), !noalias !19582 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !19583
  %i.bb = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #69, !noalias !19583 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %bb.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19581
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f), !noalias !19582
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #70
          to label %.noexc.i.i unwind label %.thread160, !noalias !19581

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  store ptr %i.az, ptr %i.bb, align 8, !noalias !19581
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.ba, ptr %i.bd, align 8, !noalias !19581
  store i64 4, ptr %i.e, align 8, !noalias !19581
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19581
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !19581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !19582
  call void @llvm.experimental.noalias.scope.decl(metadata !19584)
  call void @llvm.experimental.noalias.scope.decl(metadata !19585)
  %i.be = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19586 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0      ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224, label %.lr.ph.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit.thread224: ; preds = %bb.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19581
  br label %.loopexit.sink.split

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.bg = phi ptr [ %i.bn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.bb, %bb.i ]
  %i.bh = phi i64 [ %i.bq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 1, %bb.i ] ; 6 uses
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.be, %bb.i ]
  %i.bi = phi ptr [ %i.bs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %i.bf, %bb.i ]
  %i.bj = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  %i.bk = icmp samesign ult i64 %i.bh, 576460752303423488
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %i.e, align 8, !range !43, !alias.scope !19587, !noalias !19581, !noundef !28
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bh, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i unwind label %.body.i.i, !noalias !19588

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.pre.i.i32 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !19587, !noalias !19581
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i, %.lr.ph.i.i.i.i
  %i.bn = phi ptr [ %.pre.i.i32, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i_crit_edge.i.i ], [ %i.bg, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bh ; 2 uses
  store ptr %i.bi, ptr %i.bo, align 8, !noalias !19589
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bj, ptr %i.bp, align 8, !noalias !19589
  %i.bq = add nuw nsw i64 %i.bh, 1                ; 6 uses
  store i64 %i.bq, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !19587, !noalias !19581
  %i.br = call fastcc { ptr, i64 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtBb_6option6OptionjEEEEINtNtB2O_9into_iter8IntoIterB3i_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4r_4text12TextDiffSideeEE0ENCB4k_s_0ENCB4k_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19586 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %.not.i.i9.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i9.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i

.body.i.i:                                        ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTjIBw_jEEEE6map_orB1x_NvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d) #71, !noalias !19586
  %.val.i.i = load i64, ptr %i.e, align 8, !noalias !19581 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i, 0
  br i1 %i.bu, label %.thread, label %bb.j

bb.j:                                             ; preds = %.body.i.i
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19581, !nonnull !28, !noundef !28
  %i.bv = shl nuw i64 %.val.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !19581
  br label %.thread

.thread160:                                       ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f) #71, !noalias !19582
  br label %.thread

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.062.0.copyload63.pre = load i64, ptr %i.e, align 8, !noalias !19590 ; 4 uses
  %.sroa.6.0.copyload65.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !19590 ; 12 uses
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjINtNtB4_6option6OptionjEEEEINtNtB31_9into_iter8IntoIterB3v_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils6uniqueINtNtB4E_4text12TextDiffSideeEE0ENCB4x_s_0ENCB4x_s0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.d), !noalias !19586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !19591)
  call void @llvm.experimental.noalias.scope.decl(metadata !19592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19591
  store ptr %i.a, ptr %i.c, align 8, !noalias !19593
  %i.bx = icmp samesign ult i64 %i.bh, 20
  br i1 %i.bx, label %bb.l, label %bb.k, !prof !29

bb.k:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0INtNtB2z_3vec3VecBZ_EEB16_(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload65.pre, i64 noundef range(i64 0, 576460752303423488) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #73
          to label %.loopexit unwind label %bb.o

bb.l:                                             ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB11_4text12TextDiffSideeEEEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB2P_10filter_map9FilterMapINtNtB2P_7flatten7FlatMapINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map8IntoIteryIBL_TjINtNtB2T_6option6OptionjEEEEINtNtB4_9into_iter8IntoIterB5t_ENCINvBX_6uniqueB1R_E0ENCB6v_s_0ENCB6v_s0_0EE9from_iterCskXtk6F4WjxZ_4just.exit
  %.idx.i.i.i = shl nuw nsw i64 %i.bq, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload65.pre, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.l
  %.sroa.0.04.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.l ] ; 7 uses
  %.pn3.i.i.i = phi ptr [ %.sroa.0.04.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.6.0.copyload65.pre, %bb.l ] ; 2 uses
  %i.bz = getelementptr i8, ptr %.pn3.i.i.i, i64 24
  %.val9.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !19594, !noundef !28 ; 3 uses
  %i.ca = getelementptr i8, ptr %.pn3.i.i.i, i64 8
  %.val10.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !19594, !noundef !28
  %i.cb = icmp ult i64 %.val9.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.cb, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !alias.scope !19594, !nonnull !28, !align !35, !noundef !28
  %.sroa.0.0.i.i.i.i244 = getelementptr inbounds i8, ptr %.sroa.0.04.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i244, i64 16, i1 false), !alias.scope !19594
  %i.cd = icmp eq ptr %.sroa.0.0.i.i.i.i244, %.sroa.6.0.copyload65.pre
  br i1 %i.cd, label %._crit_edge249, label %.lr.ph248

bb.n:                                             ; preds = %.lr.ph248
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i246, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i246, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i, i64 16, i1 false), !alias.scope !19594
  %i.ce = icmp eq ptr %.sroa.0.0.i.i.i.i, %.sroa.6.0.copyload65.pre
  br i1 %i.ce, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i.i246 = phi ptr [ %.sroa.0.0.i.i.i.i, %bb.n ], [ %.sroa.0.0.i.i.i.i244, %bb.m ] ; 5 uses
  %.sroa.5.0.i.i.i.i245 = phi ptr [ %.sroa.0.0.i.i.i.i246, %bb.n ], [ %.sroa.0.04.i.i.i, %bb.m ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.5.0.i.i.i.i245, i64 -24
  %.val8.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !19594, !noundef !28
  %i.cg = icmp ult i64 %.val9.i.i.i.i, %.val8.i.i.i.i
  br i1 %i.cg, label %bb.n, label %._crit_edge249

._crit_edge249:                                   ; preds = %bb.n, %.lr.ph248, %bb.m
  %.sroa.5.0.i.i.i.i.lcssa = phi ptr [ %.sroa.0.04.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i246, %bb.n ], [ %.sroa.5.0.i.i.i.i245, %.lr.ph248 ]
  %.sroa.0.0.i.lcssa.i.i.i = phi ptr [ %.sroa.6.0.copyload65.pre, %bb.m ], [ %.sroa.6.0.copyload65.pre, %bb.n ], [ %.sroa.0.0.i.i.i.i246, %.lr.ph248 ]
  store ptr %i.cc, ptr %.sroa.0.0.i.lcssa.i.i.i, align 8, !alias.scope !19594, !noalias !19595
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.i.i.lcssa, i64 -8
  store i64 %.val9.i.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i, align 8, !alias.scope !19594, !noalias !19595
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0ECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %._crit_edge249, %.lr.ph.i.i.i
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.by
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser29parse_string_literal_in_state:bb.a
  %i.lo = add nsw i32 %i.lm, -65                  ; 2 uses
  %i.lp = add nsw i32 %i.lm, -48                  ; 2 uses
  br i1 %i.lk, label %bb.dv, label %bb.du, !prof !44

bb.du:                                            ; preds = %.preheader62.i.i
  %i.lq = and i32 %i.lo, -33
  %i.lr = add nuw nsw i32 %i.lq, 10
  %.sroa.02.0.i.i.i = select i1 %i.ln, i32 %i.lr, i32 %i.lp ; 2 uses
  %i.ls = icmp ult i32 %.sroa.02.0.i.i.i, 16
  br i1 %i.ls, label %bb.dt, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.dv:                                            ; preds = %.preheader62.i.i
  %i.lt = and i32 %i.lo, -34
  %i.lu = add nuw nsw i32 %i.lt, 10
  %.sroa.02.0.i57.i.i = select i1 %i.ln, i32 %i.lu, i32 %i.lp
  %i.lv = icmp ult i32 %.sroa.02.0.i57.i.i, 16
  %spec.select.i.i = select i1 %i.lv, i64 513, i64 257
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.lw = load i8, ptr %.sroa.0.0.i148.i, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.lx = zext i8 %i.lw to i32                    ; 2 uses
  %i.ly = icmp ugt i8 %i.lw, 57
  %i.lz = add nsw i32 %i.lx, -65
  %i.ma = and i32 %i.lz, -33
  %i.mb = add nuw nsw i32 %i.ma, 10
  %i.mc = add nsw i32 %i.lx, -48
  %.sroa.02.0.i59.i.i = select i1 %i.ly, i32 %i.mb, i32 %i.mc ; 3 uses
  %i.md = icmp ult i32 %.sroa.02.0.i59.i.i, 16
  br i1 %i.md, label %bb.dw, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.dw:                                            ; preds = %.lr.ph.i.i
  %.not56.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.dw
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 1
  %i.mf = load i8, ptr %i.me, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.mg = zext i8 %i.mf to i32                    ; 2 uses
  %i.mh = icmp ugt i8 %i.mf, 57
  %i.mi = add nsw i32 %i.mg, -65
  %i.mj = and i32 %i.mi, -33
  %i.mk = add nuw nsw i32 %i.mj, 10
  %i.ml = add nsw i32 %i.mg, -48
  %.sroa.02.0.i59.i.i.1 = select i1 %i.mh, i32 %i.mk, i32 %i.ml ; 2 uses
  %i.mm = icmp ult i32 %.sroa.02.0.i59.i.i.1, 16
  br i1 %i.mm, label %bb.dx, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.dx:                                            ; preds = %.lr.ph.i.i.1
  %i.mn = shl nuw nsw i32 %.sroa.02.0.i59.i.i, 4
  %i.mo = or disjoint i32 %.sroa.02.0.i59.i.i.1, %i.mn ; 2 uses
  %.not56.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not56.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.dx
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 2
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.mr = zext i8 %i.mq to i32                    ; 2 uses
  %i.ms = icmp ugt i8 %i.mq, 57
  %i.mt = add nsw i32 %i.mr, -65
  %i.mu = and i32 %i.mt, -33
  %i.mv = add nuw nsw i32 %i.mu, 10
  %i.mw = add nsw i32 %i.mr, -48
  %.sroa.02.0.i59.i.i.2 = select i1 %i.ms, i32 %i.mv, i32 %i.mw ; 2 uses
  %i.mx = icmp ult i32 %.sroa.02.0.i59.i.i.2, 16
  br i1 %i.mx, label %bb.dy, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.dy:                                            ; preds = %.lr.ph.i.i.2
  %i.my = shl nuw nsw i32 %i.mo, 4
  %i.mz = or disjoint i32 %.sroa.02.0.i59.i.i.2, %i.my ; 2 uses
  %.not56.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not56.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.dy
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 3
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.nc = zext i8 %i.nb to i32                    ; 2 uses
  %i.nd = icmp ugt i8 %i.nb, 57
  %i.ne = add nsw i32 %i.nc, -65
  %i.nf = and i32 %i.ne, -33
  %i.ng = add nuw nsw i32 %i.nf, 10
  %i.nh = add nsw i32 %i.nc, -48
  %.sroa.02.0.i59.i.i.3 = select i1 %i.nd, i32 %i.ng, i32 %i.nh ; 2 uses
  %i.ni = icmp ult i32 %.sroa.02.0.i59.i.i.3, 16
  br i1 %i.ni, label %bb.dz, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.dz:                                            ; preds = %.lr.ph.i.i.3
  %i.nj = shl nuw nsw i32 %i.mz, 4
  %i.nk = or disjoint i32 %.sroa.02.0.i59.i.i.3, %i.nj ; 2 uses
  %.not56.i.i.3 = icmp eq i64 %.sroa.15.0.i.i, 4
  br i1 %.not56.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %bb.dz
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 4
  %i.nm = load i8, ptr %i.nl, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.nn = zext i8 %i.nm to i32                    ; 2 uses
  %i.no = icmp ugt i8 %i.nm, 57
  %i.np = add nsw i32 %i.nn, -65
  %i.nq = and i32 %i.np, -33
  %i.nr = add nuw nsw i32 %i.nq, 10
  %i.ns = add nsw i32 %i.nn, -48
  %.sroa.02.0.i59.i.i.4 = select i1 %i.no, i32 %i.nr, i32 %i.ns ; 2 uses
  %i.nt = icmp ult i32 %.sroa.02.0.i59.i.i.4, 16
  br i1 %i.nt, label %bb.ea, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.ea:                                            ; preds = %.lr.ph.i.i.4
  %i.nu = shl i32 %i.nk, 4
  %i.nv = or disjoint i32 %.sroa.02.0.i59.i.i.4, %i.nu ; 2 uses
  %.not56.i.i.4 = icmp eq i64 %.sroa.15.0.i.i, 5
  br i1 %.not56.i.i.4, label %.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %bb.ea
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 5
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.ny = zext i8 %i.nx to i32                    ; 2 uses
  %i.nz = icmp ugt i8 %i.nx, 57
  %i.oa = add nsw i32 %i.ny, -65
  %i.ob = and i32 %i.oa, -33
  %i.oc = add nuw nsw i32 %i.ob, 10
  %i.od = add nsw i32 %i.ny, -48
  %.sroa.02.0.i59.i.i.5 = select i1 %i.nz, i32 %i.oc, i32 %i.od ; 2 uses
  %i.oe = icmp ult i32 %.sroa.02.0.i59.i.i.5, 16
  br i1 %i.oe, label %bb.eb, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.eb:                                            ; preds = %.lr.ph.i.i.5
  %i.of = shl i32 %i.nv, 4
  %i.og = or disjoint i32 %.sroa.02.0.i59.i.i.5, %i.of ; 2 uses
  %.not56.i.i.5 = icmp eq i64 %.sroa.15.0.i.i, 6
  br i1 %.not56.i.i.5, label %.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %bb.eb
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 6
  %i.oi = load i8, ptr %i.oh, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.oj = zext i8 %i.oi to i32                    ; 2 uses
  %i.ok = icmp ugt i8 %i.oi, 57
  %i.ol = add nsw i32 %i.oj, -65
  %i.om = and i32 %i.ol, -33
  %i.on = add nuw nsw i32 %i.om, 10
  %i.oo = add nsw i32 %i.oj, -48
  %.sroa.02.0.i59.i.i.6 = select i1 %i.ok, i32 %i.on, i32 %i.oo ; 2 uses
  %i.op = icmp ult i32 %.sroa.02.0.i59.i.i.6, 16
  br i1 %i.op, label %bb.ec, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.ec:                                            ; preds = %.lr.ph.i.i.6
  %i.oq = shl i32 %i.og, 4
  %i.or = or disjoint i32 %.sroa.02.0.i59.i.i.6, %i.oq ; 2 uses
  %.not56.i.i.6 = icmp eq i64 %.sroa.15.0.i.i, 7
  br i1 %.not56.i.i.6, label %.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %bb.ec
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i, i64 7
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !45483, !noalias !45433, !noundef !28 ; 2 uses
  %i.ou = zext i8 %i.ot to i32                    ; 2 uses
  %i.ov = icmp ugt i8 %i.ot, 57
  %i.ow = add nsw i32 %i.ou, -65
  %i.ox = and i32 %i.ow, -33
  %i.oy = add nuw nsw i32 %i.ox, 10
  %i.oz = add nsw i32 %i.ou, -48
  %.sroa.02.0.i59.i.i.7 = select i1 %i.ov, i32 %i.oy, i32 %i.oz ; 2 uses
  %i.pa = icmp ult i32 %.sroa.02.0.i59.i.i.7, 16
  br i1 %i.pa, label %bb.ed, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

bb.ed:                                            ; preds = %.lr.ph.i.i.7
  %i.pb = shl i32 %i.or, 4
  %i.pc = or disjoint i32 %.sroa.02.0.i59.i.i.7, %i.pb
  br label %.loopexit.i.i

bb.ee:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !45433
  store i64 -9223372036854775725, ptr %i.v, align 8, !noalias !45433
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !45484
  %i.pd = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !45484 ; 3 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.ef, label %bb.fc, !prof !26

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #70
          to label %.noexc.i.i149.i unwind label %bb.eg, !noalias !45485

.noexc.i.i149.i:                                  ; preds = %bb.ef
  unreachable

bb.eg:                                            ; preds = %bb.ef
  %i.pf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.v) #71
          to label %.body.i unwind label %bb.eh, !noalias !45486

bb.eh:                                            ; preds = %bb.eg
  %i.pg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !45485
  unreachable

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.dv, %.loopexit.i.i
  %.sroa.8.0.insert.insert.i.i = phi i64 [ %spec.select.i.i, %bb.dv ], [ %i.lj, %.loopexit.i.i ] ; 12 uses
  %i.ph = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  br i1 %i.ph, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit235.i, label %bb.ei, !prof !47

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit235.i: ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.i, %bb.ds, %bb.ds
  %.sroa.8.0.insert.insert.i199.ph.i = phi i64 [ 257, %bb.ds ], [ 257, %bb.ds ], [ %.sroa.8.0.insert.insert.i.i, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.i ]
  %i.pi = lshr i64 %.sroa.8.0.insert.insert.i199.ph.i, 8
  %i.pj = trunc i64 %i.pi to i8
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i: ; preds = %bb.du, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit235.i
  %.sroa.8.0.insert.insert.i199.i = phi i8 [ 1, %.lr.ph.i.i ], [ %i.pj, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit235.i ], [ 1, %.lr.ph.i.i.7 ], [ 1, %.lr.ph.i.i.6 ], [ 1, %.lr.ph.i.i.5 ], [ 1, %.lr.ph.i.i.4 ], [ 1, %.lr.ph.i.i.3 ], [ 1, %.lr.ph.i.i.2 ], [ 1, %.lr.ph.i.i.1 ], [ 1, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45487
  store i8 %.sroa.8.0.insert.insert.i199.i, ptr %i.m, align 1, !noalias !45487
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @888) #74
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45433

.noexc.i:                                         ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i
  unreachable

bb.ei:                                            ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.i
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i, 32 ; 3 uses
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.pk = xor i32 %.sroa.6.0.extract.trunc.i.i, 55296
  %i.pl = add i32 %i.pk, -1114112
  %i.pm = icmp ult i32 %i.pl, -1112064
  br i1 %i.pm, label %bb.eu, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pn = icmp ult i64 %.sroa.8.0.insert.insert.i.i, 4785074604081152
  tail call void @llvm.assume(i1 %i.pn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45488)
  %i.po = icmp sgt i64 %i.fn, -1
  tail call void @llvm.assume(i1 %i.po)
  %i.pp = icmp samesign ult i64 %.sroa.8.0.insert.insert.i.i, 549755813888 ; 2 uses
  br i1 %i.pp, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pq = icmp samesign ult i64 %.sroa.8.0.insert.insert.i.i, 8796093022208
  br i1 %i.pq, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.pr = icmp samesign ult i64 %.sroa.8.0.insert.insert.i.i, 281474976710656
  %..i153.i = select i1 %i.pr, i64 3, i64 4
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.sroa.0.0.i154.i = phi i64 [ 2, %bb.ek ], [ %..i153.i, %bb.el ], [ 1, %bb.ej ] ; 3 uses
  %i.ps = load i64, ptr %i.ab, align 8, !range !43, !alias.scope !45489, !noalias !45433, !noundef !28
  %i.pt = sub nsw i64 %i.ps, %i.fn
  %i.pu = icmp ugt i64 %.sroa.0.0.i154.i, %i.pt
  br i1 %i.pu, label %bb.en, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155.i, !prof !44

bb.en:                                            ; preds = %bb.em
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.fn, i64 noundef %.sroa.0.0.i154.i, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45433

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155_crit_edge.i: ; preds = %bb.en
  %.pre.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !45488, !noalias !45433
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155.i: ; preds = %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155_crit_edge.i, %bb.em
  %i.pv = phi ptr [ %.pre.i, %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155_crit_edge.i ], [ %i.fm, %bb.em ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.fn ; 10 uses
  br i1 %i.pp, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155.i
  %i.px = icmp samesign ult i64 %.sroa.8.0.insert.insert.i.i, 8796093022208
  %i.py = trunc i64 %.sroa.6.0.extract.shift.i.i to i8
  %i.pz = and i8 %i.py, 63
  %i.qa = or disjoint i8 %i.pz, -128              ; 3 uses
  %i.qb = lshr i64 %.sroa.8.0.insert.insert.i.i, 38
  %i.qc = trunc i64 %i.qb to i8                   ; 2 uses
  %i.qd = and i8 %i.qc, 63
  %i.qe = or disjoint i8 %i.qd, -128              ; 2 uses
  %i.qf = lshr i64 %.sroa.8.0.insert.insert.i.i, 44
  %i.qg = trunc i64 %i.qf to i8                   ; 2 uses
  %i.qh = and i8 %i.qg, 63
  %i.qi = or disjoint i8 %i.qh, -128
  %i.qj = lshr i64 %.sroa.8.0.insert.insert.i.i, 50
  %i.qk = trunc nuw nsw i64 %i.qj to i8
  %i.ql = or disjoint i8 %i.qk, -16
  br i1 %i.px, label %bb.eq, label %bb.er

bb.ep:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i155.i
  %i.qm = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i8
  store i8 %i.qm, ptr %i.pw, align 1, !noalias !45490
  br label %bb.ev

bb.eq:                                            ; preds = %bb.eo
  %i.qn = or disjoint i8 %i.qc, -64
  store i8 %i.qn, ptr %i.pw, align 1, !noalias !45490
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store i8 %i.qa, ptr %i.qo, align 1, !noalias !45490
  br label %bb.ev

bb.er:                                            ; preds = %bb.eo
  %i.qp = icmp samesign ult i64 %.sroa.8.0.insert.insert.i.i, 281474976710656
  br i1 %i.qp, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.qq = or disjoint i8 %i.qg, -32
  store i8 %i.qq, ptr %i.pw, align 1, !noalias !45490
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store i8 %i.qe, ptr %i.qr, align 1, !noalias !45490
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  store i8 %i.qa, ptr %i.qs, align 1, !noalias !45490
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  store i8 %i.ql, ptr %i.pw, align 1, !noalias !45490
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  store i8 %i.qi, ptr %i.qt, align 1, !noalias !45490
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  store i8 %i.qe, ptr %i.qu, align 1, !noalias !45490
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  store i8 %i.qa, ptr %i.qv, align 1, !noalias !45490
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !45433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !45433
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !45433

bb.ev:                                            ; preds = %bb.et, %bb.es, %bb.eq, %bb.ep
  %i.qw = add nuw i64 %.sroa.0.0.i154.i, %i.fn    ; 2 uses
  store i64 %i.qw, ptr %.sroa.453.0..sroa_idx.i, align 8, !alias.scope !45488, !noalias !45433
  %.val.i = load i64, ptr %i.aa, align 8, !range !45435, !noalias !45433, !noundef !28 ; 2 uses
  %switch213.i = icmp sgt i64 %.val.i, 0
  br i1 %switch213.i, label %bb.ew, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvMNtCskXtk6F4WjxZ_4just6parserNtBG_6Parser11cook_string5StateEBI_.exit158.i

bb.ew:                                            ; preds = %bb.ev
  %.val90.i = load ptr, ptr %i.fl, align 8, !noalias !45433, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !45491
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvMNtCskXtk6F4WjxZ_4just6parserNtBG_6Parser11cook_string5StateEBI_.exit158.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvMNtCskXtk6F4WjxZ_4just6parserNtBG_6Parser11cook_string5StateEBI_.exit158.i: ; preds = %bb.ew, %bb.ev
  store i64 -9223372036854775806, ptr %i.aa, align 8, !noalias !45433
  br label %bb.bz

bb.ex:                                            ; preds = %bb.eu
  %i.qx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !45433
  store i64 -9223372036854775723, ptr %i.o, align 8, !noalias !45433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !45433
  call void @llvm.experimental.noalias.scope.decl(metadata !45492)
  call void @llvm.experimental.noalias.scope.decl(metadata !45493)
  call void @llvm.experimental.noalias.scope.decl(metadata !45494)
  call void @llvm.experimental.noalias.scope.decl(metadata !45495)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !45496
  %i.qy = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !45496 ; 3 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.ey, label %bb.fb, !prof !26

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #70
          to label %.noexc.i.i159.i unwind label %bb.ez, !noalias !45497

.noexc.i.i159.i:                                  ; preds = %bb.ey
  unreachable

bb.ez:                                            ; preds = %bb.ey
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.o) #71
          to label %.body.i unwind label %bb.fa, !noalias !45498

bb.fa:                                            ; preds = %bb.ez
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72, !noalias !45497
  unreachable

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.qy, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.o, i64 128, i1 false), !noalias !45498
  %.sroa.6191.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.6191.8.copyload.i = load i8, ptr %.sroa.6191.8..sroa_idx.i, align 8, !alias.scope !45499
  %.sroa.7192.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.26, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7192.8..sroa_idx.i, i64 7, i1 false), !alias.scope !45446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !45433
  %i.rc = ptrtoint ptr %i.qy to i64
  %.sroa.15325.sroa.0.0.copyload438 = load ptr, ptr %i.aj, align 8, !alias.scope !45446
  %.sroa.15325.sroa.15.0..sroa_idx452 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15325.sroa.15.0.copyload453 = load i64, ptr %.sroa.15325.sroa.15.0..sroa_idx452, align 8, !alias.scope !45446
  %.sroa.15325.sroa.16.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15325.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15325.sroa.16.0..sroa_idx460, i64 48, i1 false), !alias.scope !45446
  br label %bb.cm

bb.fc:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.pd, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !45486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !45433
  %i.rd = ptrtoint ptr %i.pd to i64
  %.sroa.15325.sroa.0.0.copyload435 = load ptr, ptr %i.aj, align 8, !alias.scope !45446
  %.sroa.15325.sroa.15.0..sroa_idx446 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15325.sroa.15.0.copyload447 = load i64, ptr %.sroa.15325.sroa.15.0..sroa_idx446, align 8, !alias.scope !45446
  %.sroa.15325.sroa.16.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15325.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15325.sroa.16.0..sroa_idx457, i64 48, i1 false), !alias.scope !45446
  %.sroa.21330.8..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %.sroa.21330.8.copyload336 = load i8, ptr %.sroa.21330.8..sroa_idx335, align 8, !alias.scope !45446
  %.sroa.26.8..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.aj, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.26, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.26.8..sroa_idx343, i64 7, i1 false), !alias.scope !45446
  br label %bb.cm

bb.fd:                                            ; preds = %bb.dq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45500)
end_hunk_2
begin_hunk_3_@_RNvNtCskXtk6F4WjxZ_4just8function5style:bb.a
bb.j:                                             ; preds = %.lr.ph.preheader.i
  %i.bw = icmp eq i64 %.sroa.15.0.i, 1
  %i.bx = trunc nuw nsw i32 %i.bu to i8           ; 2 uses
  br i1 %i.bw, label %.loopexit768, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1063, i64 1
  %i.bz = add nsw i64 %.sroa.15.1.i1062, -1       ; 2 uses
  %.not53.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not53.not.i, label %.loopexit768, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.i, %.preheader57.i
  %.sroa.0.1.i1063 = phi ptr [ %i.by, %.preheader57.i ], [ %.sroa.0.0.i, %bb.i ] ; 2 uses
  %.sroa.15.1.i1062 = phi i64 [ %i.bz, %.preheader57.i ], [ %.sroa.15.0.i, %bb.i ]
  %.sroa.043.0.i1061 = phi i8 [ %i.ci, %.preheader57.i ], [ 0, %bb.i ]
  %i.ca = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i1061, i8 10) ; 2 uses
  %i.cb = extractvalue { i8, i1 } %i.ca, 1
  br i1 %i.cb, label %.loopexit, label %bb.k, !prof !44

bb.k:                                             ; preds = %.preheader57.i.preheader
  %i.cc = extractvalue { i8, i1 } %i.ca, 0        ; 2 uses
  %i.cd = load i8, ptr %.sroa.0.1.i1063, align 1, !alias.scope !75152, !noundef !28
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48                  ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 9
  %i.ch = trunc nuw nsw i32 %i.cf to i8
  %i.ci = add i8 %i.cc, %i.ch                     ; 3 uses
  %i.cj = icmp ult i8 %i.ci, %i.cc
  %or.cond = select i1 %i.cg, i1 true, i1 %i.cj, !prof !42
  br i1 %or.cond, label %.loopexit, label %.preheader57.i, !prof !42

.lr.ph.i:                                         ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %.pre = load i8, ptr %i.ck, align 1, !alias.scope !75152
  %i.cl = zext i8 %.pre to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ugt i32 %i.cm, 9
  br i1 %i.cn, label %.loopexit, label %.loopexit768.loopexit.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.h, %bb.g, %.lr.ph.i, %.lr.ph.preheader.i, %.preheader57.i.preheader, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !75153
  store ptr %i.ab, ptr %i.k, align 8, !noalias !75153
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !75153
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @654, ptr noundef nonnull %i.k)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit768.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.co = mul nuw nsw i8 %i.bx, 10
  %i.cp = trunc nuw nsw i32 %i.cm to i8
  %i.cq = add nuw nsw i8 %i.co, %i.cp
  br label %.loopexit768

.loopexit768:                                     ; preds = %.preheader57.i, %bb.j, %.loopexit768.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ 0, %.preheader.i ], [ %i.cq, %.loopexit768.loopexit.loopexit ], [ %i.bx, %bb.j ], [ %i.ci, %.preheader57.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false)
  %i.cr = call fastcc noundef zeroext i1 @_RNvNvNtCskXtk6F4WjxZ_4just8function5style5layer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.x) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.4133.0.insert.ext = zext i8 %.sroa.8.0.i to i32
  %.sroa.4133.0.insert.shift = shl nuw nsw i32 %.sroa.4133.0.insert.ext, 8
  %.sroa.0132.0.insert.insert = or disjoint i32 %.sroa.4133.0.insert.shift, 18 ; 2 uses
  %.sroa.13131.13.copyload572960..sroa.0132.0.insert.insert = select i1 %i.cr, i32 %.sroa.13131.13.copyload572960, i32 %.sroa.0132.0.insert.insert ; 2 uses
  %.sroa.0132.0.insert.insert..sroa.12119.9.copyload566961 = select i1 %i.cr, i32 %.sroa.0132.0.insert.insert, i32 %.sroa.12119.9.copyload566961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.l

bb.l:                                             ; preds = %bb.cp, %bb.cq, %bb.ce, %bb.co, %bb.cg, %bb.ci, %bb.cn, %bb.ck, %bb.cj, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bm, %bb.bj, %bb.bk, %bb.bh, %bb.bi, %bb.bf, %bb.bg, %bb.bd, %bb.be, %bb.bb, %bb.bc, %bb.az, %bb.ba, %bb.ax, %bb.ay, %bb.aw, %bb.aj, %.loopexit768
  %.sroa.345.1 = phi i32 [ %.sroa.13131.13.copyload572960..sroa.0132.0.insert.insert, %.loopexit768 ], [ %.sroa.13131.13.copyload572960, %bb.bb ], [ %.sroa.13131.13.copyload572960, %bb.bd ], [ %.sroa.13131.13.copyload572960, %bb.bf ], [ %.sroa.13131.13.copyload572960, %bb.bh ], [ %.sroa.13131.13.copyload572960, %bb.bj ], [ %.sroa.13131.13.copyload572960, %bb.bl ], [ 0, %bb.bn ], [ 8, %bb.bo ], [ %.sroa.13131.13.copyload572960, %bb.bz ], [ %.sroa.13131.13.copyload572960, %bb.ca ], [ %.sroa.13131.13.copyload572960, %bb.cb ], [ %.sroa.345.0948, %bb.co ], [ %.sroa.13131.13.copyload572960, %bb.ci ], [ %.sroa.13131.13.copyload572960, %bb.ck ], [ %.sroa.13131.13.copyload572960, %bb.cc ], [ %.sroa.13131.13.copyload572960, %bb.cj ], [ 14, %bb.bp ], [ 4, %bb.bq ], [ 12, %bb.br ], [ 2, %bb.bs ], [ 16, %bb.bt ], [ 6, %bb.bu ], [ %.sroa.13131.13.copyload572960, %bb.bv ], [ %.sroa.13131.13.copyload572960, %bb.bw ], [ %.sroa.13131.13.copyload572960, %bb.bx ], [ %.sroa.13131.13.copyload572960, %bb.by ], [ %.sroa.13131.13.copyload572960, %bb.ax ], [ %.sroa.13131.13.copyload572960, %bb.az ], [ %.sroa.13131.13.copyload572960..sroa.0190.0.insert.insert, %bb.aw ], [ %.sroa.13131.13.copyload574, %bb.aj ], [ %.sroa.13131.13.copyload572960, %bb.ay ], [ %.sroa.13131.13.copyload572960, %bb.ba ], [ %.sroa.13131.13.copyload572960, %bb.bc ], [ %.sroa.13131.13.copyload572960, %bb.be ], [ %.sroa.13131.13.copyload572960, %bb.bg ], [ %.sroa.13131.13.copyload572960, %bb.bi ], [ %.sroa.13131.13.copyload572960, %bb.bk ], [ %.sroa.13131.13.copyload572960, %bb.bm ], [ %.sroa.13131.13.copyload572960, %bb.cn ], [ %.sroa.345.0948, %bb.cg ], [ %.sroa.345.0948, %bb.cp ], [ %.sroa.345.0948, %bb.ce ], [ %.sroa.345.0948, %bb.cq ] ; 2 uses
  %.sroa.311.1 = phi i32 [ %.sroa.0132.0.insert.insert..sroa.12119.9.copyload566961, %.loopexit768 ], [ 14, %bb.bb ], [ 4, %bb.bd ], [ 12, %bb.bf ], [ 2, %bb.bh ], [ 16, %bb.bj ], [ 6, %bb.bl ], [ %.sroa.12119.9.copyload566961, %bb.bn ], [ %.sroa.12119.9.copyload566961, %bb.bo ], [ %.sroa.12119.9.copyload566961, %bb.bz ], [ %.sroa.12119.9.copyload566961, %bb.ca ], [ %.sroa.12119.9.copyload566961, %bb.cb ], [ %.sroa.311.0949, %bb.co ], [ %.sroa.12119.9.copyload566961, %bb.ci ], [ 6, %bb.ck ], [ %.sroa.12119.9.copyload566961, %bb.cc ], [ 2, %bb.cj ], [ %.sroa.12119.9.copyload566961, %bb.bp ], [ %.sroa.12119.9.copyload566961, %bb.bq ], [ %.sroa.12119.9.copyload566961, %bb.br ], [ %.sroa.12119.9.copyload566961, %bb.bs ], [ %.sroa.12119.9.copyload566961, %bb.bt ], [ %.sroa.12119.9.copyload566961, %bb.bu ], [ %.sroa.12119.9.copyload566961, %bb.bv ], [ %.sroa.12119.9.copyload566961, %bb.bw ], [ %.sroa.12119.9.copyload566961, %bb.bx ], [ %.sroa.12119.9.copyload566961, %bb.by ], [ 0, %bb.ax ], [ 8, %bb.az ], [ %.sroa.0190.0.insert.insert..sroa.12119.9.copyload566961, %bb.aw ], [ %.sroa.12119.9.copyload568, %bb.aj ], [ 0, %bb.ay ], [ 8, %bb.ba ], [ 14, %bb.bc ], [ 4, %bb.be ], [ 12, %bb.bg ], [ 2, %bb.bi ], [ 16, %bb.bk ], [ 6, %bb.bm ], [ %.sroa.086.0.copyload, %bb.cn ], [ %.sroa.311.0949, %bb.cg ], [ %.sroa.311.0949, %bb.cp ], [ %.sroa.311.0949, %bb.ce ], [ %.sroa.311.0949, %bb.cq ] ; 2 uses
  %.sroa.243.1 = phi i8 [ %i.at, %.loopexit768 ], [ %i.at, %bb.bb ], [ %i.at, %bb.bd ], [ %i.at, %bb.bf ], [ %i.at, %bb.bh ], [ %i.at, %bb.bj ], [ %i.at, %bb.bl ], [ %i.at, %bb.bn ], [ %i.at, %bb.bo ], [ %i.at, %bb.bz ], [ %i.at, %bb.ca ], [ 1, %bb.cb ], [ %.sroa.243.0950, %bb.co ], [ %i.at, %bb.ci ], [ %i.at, %bb.ck ], [ %i.at, %bb.cc ], [ %i.at, %bb.cj ], [ %i.at, %bb.bp ], [ %i.at, %bb.bq ], [ %i.at, %bb.br ], [ %i.at, %bb.bs ], [ %i.at, %bb.bt ], [ %i.at, %bb.bu ], [ %i.at, %bb.bv ], [ %i.at, %bb.bw ], [ %i.at, %bb.bx ], [ %i.at, %bb.by ], [ %i.at, %bb.ax ], [ %i.at, %bb.az ], [ %i.at, %bb.aw ], [ %i.at, %bb.aj ], [ %i.at, %bb.ay ], [ %i.at, %bb.ba ], [ %i.at, %bb.bc ], [ %i.at, %bb.be ], [ %i.at, %bb.bg ], [ %i.at, %bb.bi ], [ %i.at, %bb.bk ], [ %i.at, %bb.bm ], [ %i.at, %bb.cn ], [ %.sroa.243.0950, %bb.cg ], [ %.sroa.243.0950, %bb.cp ], [ %.sroa.243.0950, %bb.ce ], [ %.sroa.243.0950, %bb.cq ] ; 2 uses
  %.sroa.209.1 = phi i8 [ %i.as, %.loopexit768 ], [ %i.as, %bb.bb ], [ %i.as, %bb.bd ], [ %i.as, %bb.bf ], [ %i.as, %bb.bh ], [ %i.as, %bb.bj ], [ %i.as, %bb.bl ], [ %i.as, %bb.bn ], [ %i.as, %bb.bo ], [ %i.as, %bb.bz ], [ %i.as, %bb.ca ], [ %i.as, %bb.cb ], [ %.sroa.209.0951, %bb.co ], [ %i.as, %bb.ci ], [ %i.as, %bb.ck ], [ %i.as, %bb.cc ], [ %i.as, %bb.cj ], [ %i.as, %bb.bp ], [ %i.as, %bb.bq ], [ %i.as, %bb.br ], [ %i.as, %bb.bs ], [ %i.as, %bb.bt ], [ %i.as, %bb.bu ], [ %i.as, %bb.bv ], [ %i.as, %bb.bw ], [ %i.as, %bb.bx ], [ 1, %bb.by ], [ %i.as, %bb.ax ], [ %i.as, %bb.az ], [ %i.as, %bb.aw ], [ %i.as, %bb.aj ], [ %i.as, %bb.ay ], [ %i.as, %bb.ba ], [ %i.as, %bb.bc ], [ %i.as, %bb.be ], [ %i.as, %bb.bg ], [ %i.as, %bb.bi ], [ %i.as, %bb.bk ], [ %i.as, %bb.bm ], [ %i.as, %bb.cn ], [ %.sroa.209.0951, %bb.cg ], [ %.sroa.209.0951, %bb.cp ], [ %.sroa.209.0951, %bb.ce ], [ %.sroa.209.0951, %bb.cq ] ; 2 uses
  %.sroa.175.1 = phi i8 [ %i.ar, %.loopexit768 ], [ %i.ar, %bb.bb ], [ %i.ar, %bb.bd ], [ %i.ar, %bb.bf ], [ %i.ar, %bb.bh ], [ %i.ar, %bb.bj ], [ %i.ar, %bb.bl ], [ %i.ar, %bb.bn ], [ %i.ar, %bb.bo ], [ %i.ar, %bb.bz ], [ 1, %bb.ca ], [ %i.ar, %bb.cb ], [ %.sroa.175.0952, %bb.co ], [ %i.ar, %bb.ci ], [ %i.ar, %bb.ck ], [ %i.ar, %bb.cc ], [ %i.ar, %bb.cj ], [ %i.ar, %bb.bp ], [ %i.ar, %bb.bq ], [ %i.ar, %bb.br ], [ %i.ar, %bb.bs ], [ %i.ar, %bb.bt ], [ %i.ar, %bb.bu ], [ %i.ar, %bb.bv ], [ %i.ar, %bb.bw ], [ %i.ar, %bb.bx ], [ %i.ar, %bb.by ], [ %i.ar, %bb.ax ], [ %i.ar, %bb.az ], [ %i.ar, %bb.aw ], [ %i.ar, %bb.aj ], [ %i.ar, %bb.ay ], [ %i.ar, %bb.ba ], [ %i.ar, %bb.bc ], [ %i.ar, %bb.be ], [ %i.ar, %bb.bg ], [ %i.ar, %bb.bi ], [ %i.ar, %bb.bk ], [ %i.ar, %bb.bm ], [ %i.ar, %bb.cn ], [ %.sroa.175.0952, %bb.cg ], [ %.sroa.175.0952, %bb.cp ], [ %.sroa.175.0952, %bb.ce ], [ %.sroa.175.0952, %bb.cq ] ; 2 uses
  %.sroa.141.1 = phi i8 [ %i.aq, %.loopexit768 ], [ %i.aq, %bb.bb ], [ %i.aq, %bb.bd ], [ %i.aq, %bb.bf ], [ %i.aq, %bb.bh ], [ %i.aq, %bb.bj ], [ %i.aq, %bb.bl ], [ %i.aq, %bb.bn ], [ %i.aq, %bb.bo ], [ %i.aq, %bb.bz ], [ %i.aq, %bb.ca ], [ %i.aq, %bb.cb ], [ %.sroa.141.0953, %bb.co ], [ %i.aq, %bb.ci ], [ %i.aq, %bb.ck ], [ %i.aq, %bb.cc ], [ %i.aq, %bb.cj ], [ %i.aq, %bb.bp ], [ %i.aq, %bb.bq ], [ %i.aq, %bb.br ], [ %i.aq, %bb.bs ], [ %i.aq, %bb.bt ], [ %i.aq, %bb.bu ], [ 1, %bb.bv ], [ %i.aq, %bb.bw ], [ %i.aq, %bb.bx ], [ %i.aq, %bb.by ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.az ], [ %i.aq, %bb.aw ], [ %i.aq, %bb.aj ], [ %i.aq, %bb.ay ], [ %i.aq, %bb.ba ], [ %i.aq, %bb.bc ], [ %i.aq, %bb.be ], [ %i.aq, %bb.bg ], [ %i.aq, %bb.bi ], [ %i.aq, %bb.bk ], [ %i.aq, %bb.bm ], [ %i.aq, %bb.cn ], [ %.sroa.141.0953, %bb.cg ], [ %.sroa.141.0953, %bb.cp ], [ %.sroa.141.0953, %bb.ce ], [ %.sroa.141.0953, %bb.cq ] ; 2 uses
  %.sroa.107.1 = phi i8 [ %i.ap, %.loopexit768 ], [ %i.ap, %bb.bb ], [ %i.ap, %bb.bd ], [ %i.ap, %bb.bf ], [ %i.ap, %bb.bh ], [ %i.ap, %bb.bj ], [ %i.ap, %bb.bl ], [ %i.ap, %bb.bn ], [ %i.ap, %bb.bo ], [ %i.ap, %bb.bz ], [ %i.ap, %bb.ca ], [ %i.ap, %bb.cb ], [ %.sroa.107.0954, %bb.co ], [ %i.ap, %bb.ci ], [ %i.ap, %bb.ck ], [ 1, %bb.cc ], [ %i.ap, %bb.cj ], [ %i.ap, %bb.bp ], [ %i.ap, %bb.bq ], [ %i.ap, %bb.br ], [ %i.ap, %bb.bs ], [ %i.ap, %bb.bt ], [ %i.ap, %bb.bu ], [ %i.ap, %bb.bv ], [ %i.ap, %bb.bw ], [ %i.ap, %bb.bx ], [ %i.ap, %bb.by ], [ %i.ap, %bb.ax ], [ %i.ap, %bb.az ], [ %i.ap, %bb.aw ], [ %i.ap, %bb.aj ], [ %i.ap, %bb.ay ], [ %i.ap, %bb.ba ], [ %i.ap, %bb.bc ], [ %i.ap, %bb.be ], [ %i.ap, %bb.bg ], [ %i.ap, %bb.bi ], [ %i.ap, %bb.bk ], [ %i.ap, %bb.bm ], [ %i.ap, %bb.cn ], [ %.sroa.107.0954, %bb.cg ], [ %.sroa.107.0954, %bb.cp ], [ %.sroa.107.0954, %bb.ce ], [ %.sroa.107.0954, %bb.cq ] ; 2 uses
  %.sroa.73.1 = phi i8 [ %i.ao, %.loopexit768 ], [ %i.ao, %bb.bb ], [ %i.ao, %bb.bd ], [ %i.ao, %bb.bf ], [ %i.ao, %bb.bh ], [ %i.ao, %bb.bj ], [ %i.ao, %bb.bl ], [ %i.ao, %bb.bn ], [ %i.ao, %bb.bo ], [ 1, %bb.bz ], [ %i.ao, %bb.ca ], [ %i.ao, %bb.cb ], [ %.sroa.73.0955, %bb.co ], [ %i.ao, %bb.ci ], [ %i.ao, %bb.ck ], [ %i.ao, %bb.cc ], [ %i.ao, %bb.cj ], [ %i.ao, %bb.bp ], [ %i.ao, %bb.bq ], [ %i.ao, %bb.br ], [ %i.ao, %bb.bs ], [ %i.ao, %bb.bt ], [ %i.ao, %bb.bu ], [ %i.ao, %bb.bv ], [ %i.ao, %bb.bw ], [ %i.ao, %bb.bx ], [ %i.ao, %bb.by ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.az ], [ %i.ao, %bb.aw ], [ %i.ao, %bb.aj ], [ %i.ao, %bb.ay ], [ %i.ao, %bb.ba ], [ %i.ao, %bb.bc ], [ %i.ao, %bb.be ], [ %i.ao, %bb.bg ], [ %i.ao, %bb.bi ], [ %i.ao, %bb.bk ], [ %i.ao, %bb.bm ], [ %i.ao, %bb.cn ], [ %.sroa.73.0955, %bb.cg ], [ %.sroa.73.0955, %bb.cp ], [ %.sroa.73.0955, %bb.ce ], [ %.sroa.73.0955, %bb.cq ] ; 2 uses
  %.sroa.39.1 = phi i8 [ %i.an, %.loopexit768 ], [ %i.an, %bb.bb ], [ %i.an, %bb.bd ], [ %i.an, %bb.bf ], [ %i.an, %bb.bh ], [ %i.an, %bb.bj ], [ %i.an, %bb.bl ], [ %i.an, %bb.bn ], [ %i.an, %bb.bo ], [ %i.an, %bb.bz ], [ %i.an, %bb.ca ], [ %i.an, %bb.cb ], [ %.sroa.39.0956, %bb.co ], [ %i.an, %bb.ci ], [ %i.an, %bb.ck ], [ %i.an, %bb.cc ], [ %i.an, %bb.cj ], [ %i.an, %bb.bp ], [ %i.an, %bb.bq ], [ %i.an, %bb.br ], [ %i.an, %bb.bs ], [ %i.an, %bb.bt ], [ %i.an, %bb.bu ], [ %i.an, %bb.bv ], [ %i.an, %bb.bw ], [ 1, %bb.bx ], [ %i.an, %bb.by ], [ %i.an, %bb.ax ], [ %i.an, %bb.az ], [ %i.an, %bb.aw ], [ %i.an, %bb.aj ], [ %i.an, %bb.ay ], [ %i.an, %bb.ba ], [ %i.an, %bb.bc ], [ %i.an, %bb.be ], [ %i.an, %bb.bg ], [ %i.an, %bb.bi ], [ %i.an, %bb.bk ], [ %i.an, %bb.bm ], [ %i.an, %bb.cn ], [ %.sroa.39.0956, %bb.cg ], [ %.sroa.39.0956, %bb.cp ], [ %.sroa.39.0956, %bb.ce ], [ %.sroa.39.0956, %bb.cq ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %i.am, %.loopexit768 ], [ %i.am, %bb.bb ], [ %i.am, %bb.bd ], [ %i.am, %bb.bf ], [ %i.am, %bb.bh ], [ %i.am, %bb.bj ], [ %i.am, %bb.bl ], [ %i.am, %bb.bn ], [ %i.am, %bb.bo ], [ %i.am, %bb.bz ], [ %i.am, %bb.ca ], [ %i.am, %bb.cb ], [ %.sroa.0.0957, %bb.co ], [ 1, %bb.ci ], [ 1, %bb.ck ], [ %i.am, %bb.cc ], [ 1, %bb.cj ], [ %i.am, %bb.bp ], [ %i.am, %bb.bq ], [ %i.am, %bb.br ], [ %i.am, %bb.bs ], [ %i.am, %bb.bt ], [ %i.am, %bb.bu ], [ %i.am, %bb.bv ], [ 1, %bb.bw ], [ %i.am, %bb.bx ], [ %i.am, %bb.by ], [ %i.am, %bb.ax ], [ %i.am, %bb.az ], [ %i.am, %bb.aw ], [ %i.am, %bb.aj ], [ %i.am, %bb.ay ], [ %i.am, %bb.ba ], [ %i.am, %bb.bc ], [ %i.am, %bb.be ], [ %i.am, %bb.bg ], [ %i.am, %bb.bi ], [ %i.am, %bb.bk ], [ %i.am, %bb.bm ], [ 1, %bb.cn ], [ %.sroa.0.0957, %bb.cg ], [ %.sroa.0.0957, %bb.cp ], [ %.sroa.0.0957, %bb.ce ], [ %.sroa.0.0957, %bb.cq ] ; 2 uses
  %.sroa.085.1 = phi i1 [ %.sroa.085.0958, %.loopexit768 ], [ %.sroa.085.0958, %bb.bb ], [ %.sroa.085.0958, %bb.bd ], [ %.sroa.085.0958, %bb.bf ], [ %.sroa.085.0958, %bb.bh ], [ %.sroa.085.0958, %bb.bj ], [ %.sroa.085.0958, %bb.bl ], [ %.sroa.085.0958, %bb.bn ], [ %.sroa.085.0958, %bb.bo ], [ %.sroa.085.0958, %bb.bz ], [ %.sroa.085.0958, %bb.ca ], [ %.sroa.085.0958, %bb.cb ], [ %i.xr, %bb.co ], [ %.sroa.085.0958, %bb.ci ], [ %.sroa.085.0958, %bb.ck ], [ %.sroa.085.0958, %bb.cc ], [ %.sroa.085.0958, %bb.cj ], [ %.sroa.085.0958, %bb.bp ], [ %.sroa.085.0958, %bb.bq ], [ %.sroa.085.0958, %bb.br ], [ %.sroa.085.0958, %bb.bs ], [ %.sroa.085.0958, %bb.bt ], [ %.sroa.085.0958, %bb.bu ], [ %.sroa.085.0958, %bb.bv ], [ %.sroa.085.0958, %bb.bw ], [ %.sroa.085.0958, %bb.bx ], [ %.sroa.085.0958, %bb.by ], [ %.sroa.085.0958, %bb.ax ], [ %.sroa.085.0958, %bb.az ], [ %.sroa.085.0958, %bb.aw ], [ %.sroa.085.0958, %bb.aj ], [ %.sroa.085.0958, %bb.ay ], [ %.sroa.085.0958, %bb.ba ], [ %.sroa.085.0958, %bb.bc ], [ %.sroa.085.0958, %bb.be ], [ %.sroa.085.0958, %bb.bg ], [ %.sroa.085.0958, %bb.bi ], [ %.sroa.085.0958, %bb.bk ], [ %.sroa.085.0958, %bb.bm ], [ %.sroa.085.0958, %bb.cn ], [ true, %bb.cg ], [ %i.xs, %bb.cp ], [ true, %bb.ce ], [ false, %bb.cq ] ; 2 uses
  %.sroa.13131.13.copyload571 = phi i32 [ %.sroa.13131.13.copyload572960..sroa.0132.0.insert.insert, %.loopexit768 ], [ %.sroa.13131.13.copyload572960, %bb.bb ], [ %.sroa.13131.13.copyload572960, %bb.bd ], [ %.sroa.13131.13.copyload572960, %bb.bf ], [ %.sroa.13131.13.copyload572960, %bb.bh ], [ %.sroa.13131.13.copyload572960, %bb.bj ], [ %.sroa.13131.13.copyload572960, %bb.bl ], [ 0, %bb.bn ], [ 8, %bb.bo ], [ %.sroa.13131.13.copyload572960, %bb.bz ], [ %.sroa.13131.13.copyload572960, %bb.ca ], [ %.sroa.13131.13.copyload572960, %bb.cb ], [ %.sroa.13131.13.copyload572960, %bb.co ], [ %.sroa.13131.13.copyload572960, %bb.ci ], [ %.sroa.13131.13.copyload572960, %bb.ck ], [ %.sroa.13131.13.copyload572960, %bb.cc ], [ %.sroa.13131.13.copyload572960, %bb.cj ], [ 14, %bb.bp ], [ 4, %bb.bq ], [ 12, %bb.br ], [ 2, %bb.bs ], [ 16, %bb.bt ], [ 6, %bb.bu ], [ %.sroa.13131.13.copyload572960, %bb.bv ], [ %.sroa.13131.13.copyload572960, %bb.bw ], [ %.sroa.13131.13.copyload572960, %bb.bx ], [ %.sroa.13131.13.copyload572960, %bb.by ], [ %.sroa.13131.13.copyload572960, %bb.ax ], [ %.sroa.13131.13.copyload572960, %bb.az ], [ %.sroa.13131.13.copyload572960..sroa.0190.0.insert.insert, %bb.aw ], [ %.sroa.13131.13.copyload574, %bb.aj ], [ %.sroa.13131.13.copyload572960, %bb.ay ], [ %.sroa.13131.13.copyload572960, %bb.ba ], [ %.sroa.13131.13.copyload572960, %bb.bc ], [ %.sroa.13131.13.copyload572960, %bb.be ], [ %.sroa.13131.13.copyload572960, %bb.bg ], [ %.sroa.13131.13.copyload572960, %bb.bi ], [ %.sroa.13131.13.copyload572960, %bb.bk ], [ %.sroa.13131.13.copyload572960, %bb.bm ], [ %.sroa.13131.13.copyload572960, %bb.cn ], [ %.sroa.13131.13.copyload572960, %bb.cg ], [ %.sroa.13131.13.copyload572960, %bb.cp ], [ %.sroa.13131.13.copyload572960, %bb.ce ], [ %.sroa.13131.13.copyload572960, %bb.cq ]
  %.sroa.12119.9.copyload565 = phi i32 [ %.sroa.0132.0.insert.insert..sroa.12119.9.copyload566961, %.loopexit768 ], [ 14, %bb.bb ], [ 4, %bb.bd ], [ 12, %bb.bf ], [ 2, %bb.bh ], [ 16, %bb.bj ], [ 6, %bb.bl ], [ %.sroa.12119.9.copyload566961, %bb.bn ], [ %.sroa.12119.9.copyload566961, %bb.bo ], [ %.sroa.12119.9.copyload566961, %bb.bz ], [ %.sroa.12119.9.copyload566961, %bb.ca ], [ %.sroa.12119.9.copyload566961, %bb.cb ], [ %.sroa.12119.9.copyload566961, %bb.co ], [ %.sroa.12119.9.copyload566961, %bb.ci ], [ 6, %bb.ck ], [ %.sroa.12119.9.copyload566961, %bb.cc ], [ 2, %bb.cj ], [ %.sroa.12119.9.copyload566961, %bb.bp ], [ %.sroa.12119.9.copyload566961, %bb.bq ], [ %.sroa.12119.9.copyload566961, %bb.br ], [ %.sroa.12119.9.copyload566961, %bb.bs ], [ %.sroa.12119.9.copyload566961, %bb.bt ], [ %.sroa.12119.9.copyload566961, %bb.bu ], [ %.sroa.12119.9.copyload566961, %bb.bv ], [ %.sroa.12119.9.copyload566961, %bb.bw ], [ %.sroa.12119.9.copyload566961, %bb.bx ], [ %.sroa.12119.9.copyload566961, %bb.by ], [ 0, %bb.ax ], [ 8, %bb.az ], [ %.sroa.0190.0.insert.insert..sroa.12119.9.copyload566961, %bb.aw ], [ %.sroa.12119.9.copyload568, %bb.aj ], [ 0, %bb.ay ], [ 8, %bb.ba ], [ 14, %bb.bc ], [ 4, %bb.be ], [ 12, %bb.bg ], [ 2, %bb.bi ], [ 16, %bb.bk ], [ 6, %bb.bm ], [ %.sroa.086.0.copyload, %bb.cn ], [ %.sroa.12119.9.copyload566961, %bb.cg ], [ %.sroa.12119.9.copyload566961, %bb.cp ], [ %.sroa.12119.9.copyload566961, %bb.ce ], [ %.sroa.12119.9.copyload566961, %bb.cq ]
  %i.cs = phi i8 [ %i.at, %.loopexit768 ], [ %i.at, %bb.bb ], [ %i.at, %bb.bd ], [ %i.at, %bb.bf ], [ %i.at, %bb.bh ], [ %i.at, %bb.bj ], [ %i.at, %bb.bl ], [ %i.at, %bb.bn ], [ %i.at, %bb.bo ], [ %i.at, %bb.bz ], [ %i.at, %bb.ca ], [ 1, %bb.cb ], [ %i.at, %bb.co ], [ %i.at, %bb.ci ], [ %i.at, %bb.ck ], [ %i.at, %bb.cc ], [ %i.at, %bb.cj ], [ %i.at, %bb.bp ], [ %i.at, %bb.bq ], [ %i.at, %bb.br ], [ %i.at, %bb.bs ], [ %i.at, %bb.bt ], [ %i.at, %bb.bu ], [ %i.at, %bb.bv ], [ %i.at, %bb.bw ], [ %i.at, %bb.bx ], [ %i.at, %bb.by ], [ %i.at, %bb.ax ], [ %i.at, %bb.az ], [ %i.at, %bb.aw ], [ %i.at, %bb.aj ], [ %i.at, %bb.ay ], [ %i.at, %bb.ba ], [ %i.at, %bb.bc ], [ %i.at, %bb.be ], [ %i.at, %bb.bg ], [ %i.at, %bb.bi ], [ %i.at, %bb.bk ], [ %i.at, %bb.bm ], [ %i.at, %bb.cn ], [ %i.at, %bb.cg ], [ %i.at, %bb.cp ], [ %i.at, %bb.ce ], [ %i.at, %bb.cq ]
  %i.ct = phi i8 [ %i.as, %.loopexit768 ], [ %i.as, %bb.bb ], [ %i.as, %bb.bd ], [ %i.as, %bb.bf ], [ %i.as, %bb.bh ], [ %i.as, %bb.bj ], [ %i.as, %bb.bl ], [ %i.as, %bb.bn ], [ %i.as, %bb.bo ], [ %i.as, %bb.bz ], [ %i.as, %bb.ca ], [ %i.as, %bb.cb ], [ %i.as, %bb.co ], [ %i.as, %bb.ci ], [ %i.as, %bb.ck ], [ %i.as, %bb.cc ], [ %i.as, %bb.cj ], [ %i.as, %bb.bp ], [ %i.as, %bb.bq ], [ %i.as, %bb.br ], [ %i.as, %bb.bs ], [ %i.as, %bb.bt ], [ %i.as, %bb.bu ], [ %i.as, %bb.bv ], [ %i.as, %bb.bw ], [ %i.as, %bb.bx ], [ 1, %bb.by ], [ %i.as, %bb.ax ], [ %i.as, %bb.az ], [ %i.as, %bb.aw ], [ %i.as, %bb.aj ], [ %i.as, %bb.ay ], [ %i.as, %bb.ba ], [ %i.as, %bb.bc ], [ %i.as, %bb.be ], [ %i.as, %bb.bg ], [ %i.as, %bb.bi ], [ %i.as, %bb.bk ], [ %i.as, %bb.bm ], [ %i.as, %bb.cn ], [ %i.as, %bb.cg ], [ %i.as, %bb.cp ], [ %i.as, %bb.ce ], [ %i.as, %bb.cq ]
  %i.cu = phi i8 [ %i.ar, %.loopexit768 ], [ %i.ar, %bb.bb ], [ %i.ar, %bb.bd ], [ %i.ar, %bb.bf ], [ %i.ar, %bb.bh ], [ %i.ar, %bb.bj ], [ %i.ar, %bb.bl ], [ %i.ar, %bb.bn ], [ %i.ar, %bb.bo ], [ %i.ar, %bb.bz ], [ 1, %bb.ca ], [ %i.ar, %bb.cb ], [ %i.ar, %bb.co ], [ %i.ar, %bb.ci ], [ %i.ar, %bb.ck ], [ %i.ar, %bb.cc ], [ %i.ar, %bb.cj ], [ %i.ar, %bb.bp ], [ %i.ar, %bb.bq ], [ %i.ar, %bb.br ], [ %i.ar, %bb.bs ], [ %i.ar, %bb.bt ], [ %i.ar, %bb.bu ], [ %i.ar, %bb.bv ], [ %i.ar, %bb.bw ], [ %i.ar, %bb.bx ], [ %i.ar, %bb.by ], [ %i.ar, %bb.ax ], [ %i.ar, %bb.az ], [ %i.ar, %bb.aw ], [ %i.ar, %bb.aj ], [ %i.ar, %bb.ay ], [ %i.ar, %bb.ba ], [ %i.ar, %bb.bc ], [ %i.ar, %bb.be ], [ %i.ar, %bb.bg ], [ %i.ar, %bb.bi ], [ %i.ar, %bb.bk ], [ %i.ar, %bb.bm ], [ %i.ar, %bb.cn ], [ %i.ar, %bb.cg ], [ %i.ar, %bb.cp ], [ %i.ar, %bb.ce ], [ %i.ar, %bb.cq ]
  %i.cv = phi i8 [ %i.aq, %.loopexit768 ], [ %i.aq, %bb.bb ], [ %i.aq, %bb.bd ], [ %i.aq, %bb.bf ], [ %i.aq, %bb.bh ], [ %i.aq, %bb.bj ], [ %i.aq, %bb.bl ], [ %i.aq, %bb.bn ], [ %i.aq, %bb.bo ], [ %i.aq, %bb.bz ], [ %i.aq, %bb.ca ], [ %i.aq, %bb.cb ], [ %i.aq, %bb.co ], [ %i.aq, %bb.ci ], [ %i.aq, %bb.ck ], [ %i.aq, %bb.cc ], [ %i.aq, %bb.cj ], [ %i.aq, %bb.bp ], [ %i.aq, %bb.bq ], [ %i.aq, %bb.br ], [ %i.aq, %bb.bs ], [ %i.aq, %bb.bt ], [ %i.aq, %bb.bu ], [ 1, %bb.bv ], [ %i.aq, %bb.bw ], [ %i.aq, %bb.bx ], [ %i.aq, %bb.by ], [ %i.aq, %bb.ax ], [ %i.aq, %bb.az ], [ %i.aq, %bb.aw ], [ %i.aq, %bb.aj ], [ %i.aq, %bb.ay ], [ %i.aq, %bb.ba ], [ %i.aq, %bb.bc ], [ %i.aq, %bb.be ], [ %i.aq, %bb.bg ], [ %i.aq, %bb.bi ], [ %i.aq, %bb.bk ], [ %i.aq, %bb.bm ], [ %i.aq, %bb.cn ], [ %i.aq, %bb.cg ], [ %i.aq, %bb.cp ], [ %i.aq, %bb.ce ], [ %i.aq, %bb.cq ]
  %i.cw = phi i8 [ %i.ap, %.loopexit768 ], [ %i.ap, %bb.bb ], [ %i.ap, %bb.bd ], [ %i.ap, %bb.bf ], [ %i.ap, %bb.bh ], [ %i.ap, %bb.bj ], [ %i.ap, %bb.bl ], [ %i.ap, %bb.bn ], [ %i.ap, %bb.bo ], [ %i.ap, %bb.bz ], [ %i.ap, %bb.ca ], [ %i.ap, %bb.cb ], [ %i.ap, %bb.co ], [ %i.ap, %bb.ci ], [ %i.ap, %bb.ck ], [ 1, %bb.cc ], [ %i.ap, %bb.cj ], [ %i.ap, %bb.bp ], [ %i.ap, %bb.bq ], [ %i.ap, %bb.br ], [ %i.ap, %bb.bs ], [ %i.ap, %bb.bt ], [ %i.ap, %bb.bu ], [ %i.ap, %bb.bv ], [ %i.ap, %bb.bw ], [ %i.ap, %bb.bx ], [ %i.ap, %bb.by ], [ %i.ap, %bb.ax ], [ %i.ap, %bb.az ], [ %i.ap, %bb.aw ], [ %i.ap, %bb.aj ], [ %i.ap, %bb.ay ], [ %i.ap, %bb.ba ], [ %i.ap, %bb.bc ], [ %i.ap, %bb.be ], [ %i.ap, %bb.bg ], [ %i.ap, %bb.bi ], [ %i.ap, %bb.bk ], [ %i.ap, %bb.bm ], [ %i.ap, %bb.cn ], [ %i.ap, %bb.cg ], [ %i.ap, %bb.cp ], [ %i.ap, %bb.ce ], [ %i.ap, %bb.cq ]
  %i.cx = phi i8 [ %i.ao, %.loopexit768 ], [ %i.ao, %bb.bb ], [ %i.ao, %bb.bd ], [ %i.ao, %bb.bf ], [ %i.ao, %bb.bh ], [ %i.ao, %bb.bj ], [ %i.ao, %bb.bl ], [ %i.ao, %bb.bn ], [ %i.ao, %bb.bo ], [ 1, %bb.bz ], [ %i.ao, %bb.ca ], [ %i.ao, %bb.cb ], [ %i.ao, %bb.co ], [ %i.ao, %bb.ci ], [ %i.ao, %bb.ck ], [ %i.ao, %bb.cc ], [ %i.ao, %bb.cj ], [ %i.ao, %bb.bp ], [ %i.ao, %bb.bq ], [ %i.ao, %bb.br ], [ %i.ao, %bb.bs ], [ %i.ao, %bb.bt ], [ %i.ao, %bb.bu ], [ %i.ao, %bb.bv ], [ %i.ao, %bb.bw ], [ %i.ao, %bb.bx ], [ %i.ao, %bb.by ], [ %i.ao, %bb.ax ], [ %i.ao, %bb.az ], [ %i.ao, %bb.aw ], [ %i.ao, %bb.aj ], [ %i.ao, %bb.ay ], [ %i.ao, %bb.ba ], [ %i.ao, %bb.bc ], [ %i.ao, %bb.be ], [ %i.ao, %bb.bg ], [ %i.ao, %bb.bi ], [ %i.ao, %bb.bk ], [ %i.ao, %bb.bm ], [ %i.ao, %bb.cn ], [ %i.ao, %bb.cg ], [ %i.ao, %bb.cp ], [ %i.ao, %bb.ce ], [ %i.ao, %bb.cq ]
  %i.cy = phi i8 [ %i.an, %.loopexit768 ], [ %i.an, %bb.bb ], [ %i.an, %bb.bd ], [ %i.an, %bb.bf ], [ %i.an, %bb.bh ], [ %i.an, %bb.bj ], [ %i.an, %bb.bl ], [ %i.an, %bb.bn ], [ %i.an, %bb.bo ], [ %i.an, %bb.bz ], [ %i.an, %bb.ca ], [ %i.an, %bb.cb ], [ %i.an, %bb.co ], [ %i.an, %bb.ci ], [ %i.an, %bb.ck ], [ %i.an, %bb.cc ], [ %i.an, %bb.cj ], [ %i.an, %bb.bp ], [ %i.an, %bb.bq ], [ %i.an, %bb.br ], [ %i.an, %bb.bs ], [ %i.an, %bb.bt ], [ %i.an, %bb.bu ], [ %i.an, %bb.bv ], [ %i.an, %bb.bw ], [ 1, %bb.bx ], [ %i.an, %bb.by ], [ %i.an, %bb.ax ], [ %i.an, %bb.az ], [ %i.an, %bb.aw ], [ %i.an, %bb.aj ], [ %i.an, %bb.ay ], [ %i.an, %bb.ba ], [ %i.an, %bb.bc ], [ %i.an, %bb.be ], [ %i.an, %bb.bg ], [ %i.an, %bb.bi ], [ %i.an, %bb.bk ], [ %i.an, %bb.bm ], [ %i.an, %bb.cn ], [ %i.an, %bb.cg ], [ %i.an, %bb.cp ], [ %i.an, %bb.ce ], [ %i.an, %bb.cq ]
  %i.cz = phi i8 [ %i.am, %.loopexit768 ], [ %i.am, %bb.bb ], [ %i.am, %bb.bd ], [ %i.am, %bb.bf ], [ %i.am, %bb.bh ], [ %i.am, %bb.bj ], [ %i.am, %bb.bl ], [ %i.am, %bb.bn ], [ %i.am, %bb.bo ], [ %i.am, %bb.bz ], [ %i.am, %bb.ca ], [ %i.am, %bb.cb ], [ %i.am, %bb.co ], [ 1, %bb.ci ], [ 1, %bb.ck ], [ %i.am, %bb.cc ], [ 1, %bb.cj ], [ %i.am, %bb.bp ], [ %i.am, %bb.bq ], [ %i.am, %bb.br ], [ %i.am, %bb.bs ], [ %i.am, %bb.bt ], [ %i.am, %bb.bu ], [ %i.am, %bb.bv ], [ 1, %bb.bw ], [ %i.am, %bb.bx ], [ %i.am, %bb.by ], [ %i.am, %bb.ax ], [ %i.am, %bb.az ], [ %i.am, %bb.aw ], [ %i.am, %bb.aj ], [ %i.am, %bb.ay ], [ %i.am, %bb.ba ], [ %i.am, %bb.bc ], [ %i.am, %bb.be ], [ %i.am, %bb.bg ], [ %i.am, %bb.bi ], [ %i.am, %bb.bk ], [ %i.am, %bb.bm ], [ 1, %bb.cn ], [ %i.am, %bb.cg ], [ %i.am, %bb.cp ], [ %i.am, %bb.ce ], [ %i.am, %bb.cq ]
  %i.da = icmp eq ptr %i.au, %i.ag
  br i1 %i.da, label %._crit_edge, label %bb.b

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !75153
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !75154)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75155)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75156)
  call void @llvm.experimental.noalias.scope.decl(metadata !75157)
  call void @llvm.experimental.noalias.scope.decl(metadata !75158)
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !75159, !nonnull !28, !noundef !28
  %i.df = atomicrmw add ptr %i.de, i64 -1 release, align 8, !noalias !75159
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECskXtk6F4WjxZ_4just.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dd) #73
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECskXtk6F4WjxZ_4just.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.dc, align 8, !alias.scope !75160 ; 2 uses
  %i.di = icmp eq i64 %.val2.i.i, 0
  br i1 %i.di, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val3.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !75160, !nonnull !28, !noundef !28
  %i.dk = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #69
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.n, %bb.m
  %.val.i.i = load i64, ptr %i.dc, align 8, !alias.scope !75160 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i, 0
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECskXtk6F4WjxZ_4just.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.val1.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !75160, !nonnull !28, !noundef !28
  %i.dn = shl nuw i64 %.val.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #69
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just.exit

common.resume:                                    ; preds = %bb.dd, %bb.de, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.p, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp1074, %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dh, %bb.o ], [ %i.yc, %.body.i ], [ %i.dh, %bb.p ], [ %lpad.loopexit.split-lp1068, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.yh, %bb.dd ], [ %lpad.loopexit.split-lp1071, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.yh, %bb.de ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECskXtk6F4WjxZ_4just.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cm

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %.loopexit
  %lpad.loopexit.split-lp1068 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #71
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.s:                                             ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false)
  %i.dp = invoke { ptr, i64 } @_RNvXsc_NtNtCs2kgGfOW2lp_5regex5regex6stringNtB5_8CapturesINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1355)
          to label %bb.v unwind label %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dq = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCskXtk6F4WjxZ_4just8function5style9RGB_SHORT, i64 32) acquire, align 8
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @_RNvNvNtCskXtk6F4WjxZ_4just8function5style9RGB_SHORT, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  call void @_RNvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCskXtk6F4WjxZ_4just8function5style9RGB_SHORT, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642

_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642: ; preds = %bb.t, %bb.u
  %i.ds = load ptr, ptr %i.ab, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !28, !noundef !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !28
  call fastcc void @_RNvMs4_NtNtCs2kgGfOW2lp_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNvNtCskXtk6F4WjxZ_4just8function5style9RGB_SHORT, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dw) #75
  %i.dx = load i64, ptr %i.t, align 8, !range !27, !noundef !28
  %.not594 = icmp eq i64 %i.dx, 2
  br i1 %.not594, label %bb.al, label %bb.ak

bb.v:                                             ; preds = %bb.s
  %i.dy = extractvalue { ptr, i64 } %i.dp, 0      ; 3 uses
  %i.dz = extractvalue { ptr, i64 } %i.dp, 1      ; 2 uses
  switch i64 %i.dz, label %thread-pre-split.i650 [
    i64 0, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ea = load i8, ptr %i.dy, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  switch i8 %i.ea, label %bb.x [
    i8 43, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982
    i8 45, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982
  ]

thread-pre-split.i650:                            ; preds = %bb.v
  %.pr.i651 = load i8, ptr %i.dy, align 1, !alias.scope !75161
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i650, %bb.w
  %i.eb = phi i8 [ %.pr.i651, %thread-pre-split.i650 ], [ %i.ea, %bb.w ]
  %cond.i643 = icmp eq i8 %i.eb, 43               ; 2 uses
  %i.ec = sext i1 %cond.i643 to i64
  %.sroa.15.0.i644 = add nsw i64 %i.dz, %i.ec     ; 10 uses
  %.sroa.0.0.idx.i645 = zext i1 %cond.i643 to i64
  %.sroa.0.0.i646 = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.0.0.idx.i645 ; 9 uses
  %i.ed = icmp samesign ult i64 %.sroa.15.0.i644, 9
  br i1 %i.ed, label %.preheader.i648, label %.preheader62.i

.preheader.i648:                                  ; preds = %bb.x
  %.not5673.i = icmp eq i64 %.sroa.15.0.i644, 0
  br i1 %.not5673.i, label %.loopexit.i, label %.lr.ph.i649

bb.y:                                             ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.172.i, i64 1
  %i.ef = add nsw i64 %.sroa.15.171.i, -1         ; 2 uses
  %i.eg = shl nuw i32 %.sroa.045.070.i, 4
  %i.eh = or disjoint i32 %.sroa.02.0.i.i, %i.eg  ; 2 uses
  %.not55.i = icmp eq i64 %i.ef, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader62.i

.loopexit.i:                                      ; preds = %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %.preheader.i648
  %.sroa.045.1.i = phi i32 [ %i.ic, %bb.ai ], [ 0, %.preheader.i648 ], [ %.sroa.02.0.i59.i, %bb.ab ], [ %i.fo, %bb.ac ], [ %i.fz, %bb.ad ], [ %i.gk, %bb.ae ], [ %i.gv, %bb.af ], [ %i.hg, %bb.ag ], [ %i.hr, %bb.ah ], [ %i.eh, %bb.y ]
  %i.ei = zext i32 %.sroa.045.1.i to i64
  %i.ej = shl nuw i64 %i.ei, 32
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader62.i:                                   ; preds = %bb.x, %bb.y
  %.sroa.0.172.i = phi ptr [ %i.ee, %bb.y ], [ %.sroa.0.0.i646, %bb.x ] ; 2 uses
  %.sroa.15.171.i = phi i64 [ %i.ef, %bb.y ], [ %.sroa.15.0.i644, %bb.x ]
  %.sroa.045.070.i = phi i32 [ %i.eh, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.ek = icmp ugt i32 %.sroa.045.070.i, 268435455
  %i.el = load i8, ptr %.sroa.0.172.i, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = icmp ugt i8 %i.el, 57                   ; 2 uses
  %i.eo = add nsw i32 %i.em, -65                  ; 2 uses
  %i.ep = add nsw i32 %i.em, -48                  ; 2 uses
  br i1 %i.ek, label %bb.aa, label %bb.z, !prof !44

bb.z:                                             ; preds = %.preheader62.i
  %i.eq = and i32 %i.eo, -33
  %i.er = add nuw nsw i32 %i.eq, 10
  %.sroa.02.0.i.i = select i1 %i.en, i32 %i.er, i32 %i.ep ; 2 uses
  %i.es = icmp ult i32 %.sroa.02.0.i.i, 16
  br i1 %i.es, label %bb.y, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.aa:                                            ; preds = %.preheader62.i
  %i.et = and i32 %i.eo, -34
  %i.eu = add nuw nsw i32 %i.et, 10
  %.sroa.02.0.i57.i = select i1 %i.en, i32 %i.eu, i32 %i.ep
  %i.ev = icmp ult i32 %.sroa.02.0.i57.i, 16
  %spec.select.i647 = select i1 %i.ev, i64 513, i64 257
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.i649:                                      ; preds = %.preheader.i648
  %i.ew = load i8, ptr %.sroa.0.0.i646, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = icmp ugt i8 %i.ew, 57
  %i.ez = add nsw i32 %i.ex, -65
  %i.fa = and i32 %i.ez, -33
  %i.fb = add nuw nsw i32 %i.fa, 10
  %i.fc = add nsw i32 %i.ex, -48
  %.sroa.02.0.i59.i = select i1 %i.ey, i32 %i.fb, i32 %i.fc ; 3 uses
  %i.fd = icmp ult i32 %.sroa.02.0.i59.i, 16
  br i1 %i.fd, label %bb.ab, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ab:                                            ; preds = %.lr.ph.i649
  %.not56.i = icmp eq i64 %.sroa.15.0.i644, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i649.1

.lr.ph.i649.1:                                    ; preds = %bb.ab
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %i.fh = icmp ugt i8 %i.ff, 57
  %i.fi = add nsw i32 %i.fg, -65
  %i.fj = and i32 %i.fi, -33
  %i.fk = add nuw nsw i32 %i.fj, 10
  %i.fl = add nsw i32 %i.fg, -48
  %.sroa.02.0.i59.i.1 = select i1 %i.fh, i32 %i.fk, i32 %i.fl ; 2 uses
  %i.fm = icmp ult i32 %.sroa.02.0.i59.i.1, 16
  br i1 %i.fm, label %bb.ac, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ac:                                            ; preds = %.lr.ph.i649.1
  %i.fn = shl nuw nsw i32 %.sroa.02.0.i59.i, 4
  %i.fo = or disjoint i32 %.sroa.02.0.i59.i.1, %i.fn ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i644, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i649.2

.lr.ph.i649.2:                                    ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = icmp ugt i8 %i.fq, 57
  %i.ft = add nsw i32 %i.fr, -65
  %i.fu = and i32 %i.ft, -33
  %i.fv = add nuw nsw i32 %i.fu, 10
  %i.fw = add nsw i32 %i.fr, -48
  %.sroa.02.0.i59.i.2 = select i1 %i.fs, i32 %i.fv, i32 %i.fw ; 2 uses
  %i.fx = icmp ult i32 %.sroa.02.0.i59.i.2, 16
  br i1 %i.fx, label %bb.ad, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ad:                                            ; preds = %.lr.ph.i649.2
  %i.fy = shl nuw nsw i32 %i.fo, 4
  %i.fz = or disjoint i32 %.sroa.02.0.i59.i.2, %i.fy ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i644, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i649.3

.lr.ph.i649.3:                                    ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.gc = zext i8 %i.gb to i32                    ; 2 uses
  %i.gd = icmp ugt i8 %i.gb, 57
  %i.ge = add nsw i32 %i.gc, -65
  %i.gf = and i32 %i.ge, -33
  %i.gg = add nuw nsw i32 %i.gf, 10
  %i.gh = add nsw i32 %i.gc, -48
  %.sroa.02.0.i59.i.3 = select i1 %i.gd, i32 %i.gg, i32 %i.gh ; 2 uses
  %i.gi = icmp ult i32 %.sroa.02.0.i59.i.3, 16
  br i1 %i.gi, label %bb.ae, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ae:                                            ; preds = %.lr.ph.i649.3
  %i.gj = shl nuw nsw i32 %i.fz, 4
  %i.gk = or disjoint i32 %.sroa.02.0.i59.i.3, %i.gj ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i644, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i649.4

.lr.ph.i649.4:                                    ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 4
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = icmp ugt i8 %i.gm, 57
  %i.gp = add nsw i32 %i.gn, -65
  %i.gq = and i32 %i.gp, -33
  %i.gr = add nuw nsw i32 %i.gq, 10
  %i.gs = add nsw i32 %i.gn, -48
  %.sroa.02.0.i59.i.4 = select i1 %i.go, i32 %i.gr, i32 %i.gs ; 2 uses
  %i.gt = icmp ult i32 %.sroa.02.0.i59.i.4, 16
  br i1 %i.gt, label %bb.af, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.af:                                            ; preds = %.lr.ph.i649.4
  %i.gu = shl i32 %i.gk, 4
  %i.gv = or disjoint i32 %.sroa.02.0.i59.i.4, %i.gu ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i644, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i649.5

.lr.ph.i649.5:                                    ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 5
  %i.gx = load i8, ptr %i.gw, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = icmp ugt i8 %i.gx, 57
  %i.ha = add nsw i32 %i.gy, -65
  %i.hb = and i32 %i.ha, -33
  %i.hc = add nuw nsw i32 %i.hb, 10
  %i.hd = add nsw i32 %i.gy, -48
  %.sroa.02.0.i59.i.5 = select i1 %i.gz, i32 %i.hc, i32 %i.hd ; 2 uses
  %i.he = icmp ult i32 %.sroa.02.0.i59.i.5, 16
  br i1 %i.he, label %bb.ag, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ag:                                            ; preds = %.lr.ph.i649.5
  %i.hf = shl i32 %i.gv, 4
  %i.hg = or disjoint i32 %.sroa.02.0.i59.i.5, %i.hf ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i644, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i649.6

.lr.ph.i649.6:                                    ; preds = %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 6
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %i.hk = icmp ugt i8 %i.hi, 57
  %i.hl = add nsw i32 %i.hj, -65
  %i.hm = and i32 %i.hl, -33
  %i.hn = add nuw nsw i32 %i.hm, 10
  %i.ho = add nsw i32 %i.hj, -48
  %.sroa.02.0.i59.i.6 = select i1 %i.hk, i32 %i.hn, i32 %i.ho ; 2 uses
  %i.hp = icmp ult i32 %.sroa.02.0.i59.i.6, 16
  br i1 %i.hp, label %bb.ah, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ah:                                            ; preds = %.lr.ph.i649.6
  %i.hq = shl i32 %i.hg, 4
  %i.hr = or disjoint i32 %.sroa.02.0.i59.i.6, %i.hq ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i644, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i649.7

.lr.ph.i649.7:                                    ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i646, i64 7
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !75161, !noundef !28 ; 2 uses
  %i.hu = zext i8 %i.ht to i32                    ; 2 uses
  %i.hv = icmp ugt i8 %i.ht, 57
  %i.hw = add nsw i32 %i.hu, -65
  %i.hx = and i32 %i.hw, -33
  %i.hy = add nuw nsw i32 %i.hx, 10
  %i.hz = add nsw i32 %i.hu, -48
  %.sroa.02.0.i59.i.7 = select i1 %i.hv, i32 %i.hy, i32 %i.hz ; 2 uses
  %i.ia = icmp ult i32 %.sroa.02.0.i59.i.7, 16
  br i1 %i.ia, label %bb.ai, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ai:                                            ; preds = %.lr.ph.i649.7
  %i.ib = shl i32 %i.hr, 4
  %i.ic = or disjoint i32 %.sroa.02.0.i59.i.7, %i.ib
  br label %.loopexit.i

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %bb.aa, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i647, %bb.aa ], [ %i.ej, %.loopexit.i ] ; 3 uses
  %i.id = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.id, label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982, label %bb.aj, !prof !47

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982: ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit, %bb.w, %bb.w, %bb.v
  %.sroa.8.0.insert.insert.i743.ph = phi i64 [ 257, %bb.w ], [ 257, %bb.w ], [ 1, %bb.v ], [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit ]
  %i.ie = lshr i64 %.sroa.8.0.insert.insert.i743.ph, 8
  %i.if = trunc i64 %i.ie to i8
  br label %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread

_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.z, %.lr.ph.i649, %.lr.ph.i649.1, %.lr.ph.i649.2, %.lr.ph.i649.3, %.lr.ph.i649.4, %.lr.ph.i649.5, %.lr.ph.i649.6, %.lr.ph.i649.7, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982
  %.sroa.8.0.insert.insert.i743 = phi i8 [ 1, %.lr.ph.i649 ], [ %i.if, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.loopexit982 ], [ 1, %.lr.ph.i649.7 ], [ 1, %.lr.ph.i649.6 ], [ 1, %.lr.ph.i649.5 ], [ 1, %.lr.ph.i649.4 ], [ 1, %.lr.ph.i649.3 ], [ 1, %.lr.ph.i649.2 ], [ 1, %.lr.ph.i649.1 ], [ 1, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !75162
  store i8 %.sroa.8.0.insert.insert.i743, ptr %i.q, align 1, !noalias !75162
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1356) #74
          to label %.noexc unwind label %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  unreachable

bb.aj:                                            ; preds = %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  %i.ig = call fastcc noundef zeroext i1 @_RNvNvNtCskXtk6F4WjxZ_4just8function5style5layer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.u) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ih = and i32 %.sroa.6.0.extract.trunc.i, 16777215
  %i.ii = or disjoint i32 %i.ih, 318767104
  %.sroa.0164.0.insert.insert = call i32 @llvm.bswap.i32(i32 %i.ii) ; 2 uses
  %.sroa.13131.13.copyload574 = select i1 %i.ig, i32 %.sroa.13131.13.copyload572960, i32 %.sroa.0164.0.insert.insert ; 2 uses
  %.sroa.12119.9.copyload568 = select i1 %i.ig, i32 %.sroa.0164.0.insert.insert, i32 %.sroa.12119.9.copyload566961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.l

.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %lpad.loopexit.split-lp1071 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v) #71
          to label %common.resume unwind label %bb.r

bb.ak:                                            ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  %i.ij = invoke { ptr, i64 } @_RNvXsc_NtNtCs2kgGfOW2lp_5regex5regex6stringNtB5_8CapturesINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.s, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1357)
          to label %bb.am unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %_RINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexE5force0ECskXtk6F4WjxZ_4just.exit642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ik = load ptr, ptr %i.ab, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !nonnull !28, !noundef !28 ; 65 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.io = load i64, ptr %i.in, align 8, !noundef !28
  switch i64 %i.io, label %bb.cl [
    i64 8, label %bb.ax
    i64 5, label %bb.ay
    i64 7, label %bb.az
    i64 4, label %bb.ba
    i64 10, label %bb.bf
    i64 6, label %bb.bh
    i64 3, label %bb.bi
    i64 9, label %bb.bl
    i64 13, label %bb.cb
  ]

bb.am:                                            ; preds = %bb.ak
  %i.ip = extractvalue { ptr, i64 } %i.ij, 0      ; 3 uses
  %i.iq = extractvalue { ptr, i64 } %i.ij, 1      ; 2 uses
  switch i64 %i.iq, label %thread-pre-split.i663 [
    i64 0, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.ir = load i8, ptr %i.ip, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  switch i8 %i.ir, label %bb.ao [
    i8 43, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986
    i8 45, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986
  ]

thread-pre-split.i663:                            ; preds = %bb.am
  %.pr.i664 = load i8, ptr %i.ip, align 1, !alias.scope !75163
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i663, %bb.an
  %i.is = phi i8 [ %.pr.i664, %thread-pre-split.i663 ], [ %i.ir, %bb.an ]
  %cond.i653 = icmp eq i8 %i.is, 43               ; 2 uses
  %i.it = sext i1 %cond.i653 to i64
  %.sroa.15.0.i654 = add nsw i64 %i.iq, %i.it     ; 6 uses
  %.sroa.0.0.idx.i655 = zext i1 %cond.i653 to i64
  %.sroa.0.0.i656 = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.0.0.idx.i655 ; 5 uses
  %i.iu = icmp samesign ult i64 %.sroa.15.0.i654, 5
  br i1 %i.iu, label %.preheader.i660, label %.preheader60.i

.preheader.i660:                                  ; preds = %bb.ao
  %.not5471.i = icmp eq i64 %.sroa.15.0.i654, 0
  br i1 %.not5471.i, label %.loopexit.i658, label %.lr.ph.i661

bb.ap:                                            ; preds = %bb.aq
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.170.i, i64 1
  %i.iw = add nsw i64 %.sroa.15.169.i, -1         ; 2 uses
  %i.ix = shl nuw i16 %.sroa.043.068.i, 4
  %i.iy = trunc nuw nsw i32 %.sroa.02.0.i.i657 to i16
  %i.iz = or disjoint i16 %i.ix, %i.iy            ; 2 uses
  %.not53.i = icmp eq i64 %i.iw, 0
  br i1 %.not53.i, label %.loopexit.i658, label %.preheader60.i

.loopexit.i658:                                   ; preds = %bb.ap, %bb.as, %bb.at, %bb.au, %bb.av, %.preheader.i660
  %.sroa.043.1.i = phi i16 [ %i.lg, %bb.av ], [ 0, %.preheader.i660 ], [ %i.jw, %bb.as ], [ %i.ki, %bb.at ], [ %i.ku, %bb.au ], [ %i.iz, %bb.ap ]
  %i.ja = zext i16 %.sroa.043.1.i to i32
  %i.jb = shl nuw i32 %i.ja, 16
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader60.i:                                   ; preds = %bb.ao, %bb.ap
  %.sroa.0.170.i = phi ptr [ %i.iv, %bb.ap ], [ %.sroa.0.0.i656, %bb.ao ] ; 2 uses
  %.sroa.15.169.i = phi i64 [ %i.iw, %bb.ap ], [ %.sroa.15.0.i654, %bb.ao ]
  %.sroa.043.068.i = phi i16 [ %i.iz, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.jc = icmp ugt i16 %.sroa.043.068.i, 4095
  %i.jd = load i8, ptr %.sroa.0.170.i, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  %i.je = zext i8 %i.jd to i32                    ; 2 uses
  %i.jf = icmp ugt i8 %i.jd, 57                   ; 2 uses
  %i.jg = add nsw i32 %i.je, -65                  ; 2 uses
  %i.jh = add nsw i32 %i.je, -48                  ; 2 uses
  br i1 %i.jc, label %bb.ar, label %bb.aq, !prof !44

bb.aq:                                            ; preds = %.preheader60.i
  %i.ji = and i32 %i.jg, -33
  %i.jj = add nuw nsw i32 %i.ji, 10
  %.sroa.02.0.i.i657 = select i1 %i.jf, i32 %i.jj, i32 %i.jh ; 2 uses
  %i.jk = icmp ult i32 %.sroa.02.0.i.i657, 16
  br i1 %i.jk, label %bb.ap, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.ar:                                            ; preds = %.preheader60.i
  %i.jl = and i32 %i.jg, -34
  %i.jm = add nuw nsw i32 %i.jl, 10
  %.sroa.02.0.i55.i = select i1 %i.jf, i32 %i.jm, i32 %i.jh
  %i.jn = icmp ult i32 %.sroa.02.0.i55.i, 16
  %spec.select.i659 = select i1 %i.jn, i32 513, i32 257
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit

.lr.ph.i661:                                      ; preds = %.preheader.i660
  %i.jo = load i8, ptr %.sroa.0.0.i656, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  %i.jp = zext i8 %i.jo to i32                    ; 2 uses
  %i.jq = icmp ugt i8 %i.jo, 57
  %i.jr = add nsw i32 %i.jp, -65
  %i.js = and i32 %i.jr, -33
  %i.jt = add nuw nsw i32 %i.js, 10
  %i.ju = add nsw i32 %i.jp, -48
  %.sroa.02.0.i57.i662 = select i1 %i.jq, i32 %i.jt, i32 %i.ju ; 2 uses
  %i.jv = icmp ult i32 %.sroa.02.0.i57.i662, 16
  br i1 %i.jv, label %bb.as, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.as:                                            ; preds = %.lr.ph.i661
  %i.jw = trunc nuw nsw i32 %.sroa.02.0.i57.i662 to i16 ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i654, 1
  br i1 %.not54.i, label %.loopexit.i658, label %.lr.ph.i661.1

.lr.ph.i661.1:                                    ; preds = %bb.as
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  %i.jz = zext i8 %i.jy to i32                    ; 2 uses
  %i.ka = icmp ugt i8 %i.jy, 57
  %i.kb = add nsw i32 %i.jz, -65
  %i.kc = and i32 %i.kb, -33
  %i.kd = add nuw nsw i32 %i.kc, 10
  %i.ke = add nsw i32 %i.jz, -48
  %.sroa.02.0.i57.i662.1 = select i1 %i.ka, i32 %i.kd, i32 %i.ke ; 2 uses
  %i.kf = icmp ult i32 %.sroa.02.0.i57.i662.1, 16
  br i1 %i.kf, label %bb.at, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.at:                                            ; preds = %.lr.ph.i661.1
  %i.kg = shl nuw nsw i16 %i.jw, 4
  %i.kh = trunc nuw nsw i32 %.sroa.02.0.i57.i662.1 to i16
  %i.ki = or disjoint i16 %i.kg, %i.kh            ; 2 uses
  %.not54.i.1 = icmp eq i64 %.sroa.15.0.i654, 2
  br i1 %.not54.i.1, label %.loopexit.i658, label %.lr.ph.i661.2

.lr.ph.i661.2:                                    ; preds = %bb.at
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  %i.kl = zext i8 %i.kk to i32                    ; 2 uses
  %i.km = icmp ugt i8 %i.kk, 57
  %i.kn = add nsw i32 %i.kl, -65
  %i.ko = and i32 %i.kn, -33
  %i.kp = add nuw nsw i32 %i.ko, 10
  %i.kq = add nsw i32 %i.kl, -48
  %.sroa.02.0.i57.i662.2 = select i1 %i.km, i32 %i.kp, i32 %i.kq ; 2 uses
  %i.kr = icmp ult i32 %.sroa.02.0.i57.i662.2, 16
  br i1 %i.kr, label %bb.au, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.au:                                            ; preds = %.lr.ph.i661.2
  %i.ks = shl nuw nsw i16 %i.ki, 4
  %i.kt = trunc nuw nsw i32 %.sroa.02.0.i57.i662.2 to i16
  %i.ku = or disjoint i16 %i.ks, %i.kt            ; 2 uses
  %.not54.i.2 = icmp eq i64 %.sroa.15.0.i654, 3
  br i1 %.not54.i.2, label %.loopexit.i658, label %.lr.ph.i661.3

.lr.ph.i661.3:                                    ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i656, i64 3
  %i.kw = load i8, ptr %i.kv, align 1, !alias.scope !75163, !noundef !28 ; 2 uses
  %i.kx = zext i8 %i.kw to i32                    ; 2 uses
  %i.ky = icmp ugt i8 %i.kw, 57
  %i.kz = add nsw i32 %i.kx, -65
  %i.la = and i32 %i.kz, -33
  %i.lb = add nuw nsw i32 %i.la, 10
  %i.lc = add nsw i32 %i.kx, -48
  %.sroa.02.0.i57.i662.3 = select i1 %i.ky, i32 %i.lb, i32 %i.lc ; 2 uses
  %i.ld = icmp ult i32 %.sroa.02.0.i57.i662.3, 16
  br i1 %i.ld, label %bb.av, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.av:                                            ; preds = %.lr.ph.i661.3
  %i.le = shl nuw i16 %i.ku, 4
  %i.lf = trunc nuw nsw i32 %.sroa.02.0.i57.i662.3 to i16
  %i.lg = or disjoint i16 %i.le, %i.lf
  br label %.loopexit.i658

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit: ; preds = %bb.ar, %.loopexit.i658
  %.sroa.8.0.insert.insert.i652 = phi i32 [ %spec.select.i659, %bb.ar ], [ %i.jb, %.loopexit.i658 ] ; 4 uses
  %i.lh = trunc i32 %.sroa.8.0.insert.insert.i652 to i1
  br i1 %i.lh, label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986, label %bb.aw, !prof !47

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986: ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit, %bb.an, %bb.an, %bb.am
  %.sroa.8.0.insert.insert.i652750.ph = phi i32 [ 257, %bb.an ], [ 257, %bb.an ], [ 1, %bb.am ], [ %.sroa.8.0.insert.insert.i652, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit ]
  %i.li = lshr i32 %.sroa.8.0.insert.insert.i652750.ph, 8
  %i.lj = trunc i32 %i.li to i8
  br label %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread

_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.aq, %.lr.ph.i661, %.lr.ph.i661.1, %.lr.ph.i661.2, %.lr.ph.i661.3, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986
  %.sroa.8.0.insert.insert.i652750 = phi i8 [ 1, %.lr.ph.i661 ], [ %i.lj, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread.loopexit986 ], [ 1, %.lr.ph.i661.3 ], [ 1, %.lr.ph.i661.2 ], [ 1, %.lr.ph.i661.1 ], [ 1, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %.sroa.8.0.insert.insert.i652750, ptr %i.p, align 1
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @800, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1358) #74
          to label %.noexc638 unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc638:                                        ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  unreachable

bb.aw:                                            ; preds = %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.8.0.insert.insert.i652, 16 ; 2 uses
  %i.lk = lshr i32 %.sroa.8.0.insert.insert.i652, 24
  %i.ll = and i32 %i.lk, 15
  %i.lm = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %i.ln = lshr i8 %i.lm, 4
  %i.lo = mul nuw i8 %i.ln, 17
  %i.lp = and i32 %.sroa.5.0.extract.shift.i, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  %i.lq = call fastcc noundef zeroext i1 @_RNvNvNtCskXtk6F4WjxZ_4just8function5style5layer(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.6193.0.insert.shift = mul nuw i32 %i.lp, 285212672
  %.sroa.5192.0.insert.ext = zext i8 %i.lo to i32
  %.sroa.5192.0.insert.shift = shl nuw nsw i32 %.sroa.5192.0.insert.ext, 16
  %.sroa.5192.0.insert.insert = or disjoint i32 %.sroa.6193.0.insert.shift, %.sroa.5192.0.insert.shift
  %.sroa.4191.0.insert.shift = mul nuw nsw i32 %i.ll, 4352
  %.sroa.4191.0.insert.insert = or disjoint i32 %.sroa.5192.0.insert.insert, %.sroa.4191.0.insert.shift
  %.sroa.0190.0.insert.insert = or disjoint i32 %.sroa.4191.0.insert.insert, 19 ; 2 uses
  %.sroa.13131.13.copyload572960..sroa.0190.0.insert.insert = select i1 %i.lq, i32 %.sroa.13131.13.copyload572960, i32 %.sroa.0190.0.insert.insert ; 2 uses
  %.sroa.0190.0.insert.insert..sroa.12119.9.copyload566961 = select i1 %i.lq, i32 %.sroa.0190.0.insert.insert, i32 %.sroa.12119.9.copyload566961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.l

.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %_RNvMsz_NtCsj6eKBz9Db1c_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  %lpad.loopexit.split-lp1074 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string8CapturesECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(72) %i.s) #71
          to label %common.resume unwind label %bb.r

bb.ax:                                            ; preds = %bb.al
  %i.lr = load i64, ptr %i.im, align 1
  %i.ls = icmp ne i64 %i.lr, 7738135702885001062
  %i.lt = zext i1 %i.ls to i32
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.l, label %bb.bd

bb.ay:                                            ; preds = %bb.al
  %i.lv = load i32, ptr %i.im, align 1
  %i.lw = xor i32 %i.lv, 1667329122
  %i.lx = getelementptr i8, ptr %i.im, i64 4
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = zext i8 %i.ly to i32
  %i.ma = xor i32 %i.lz, 107
  %i.mb = or i32 %i.lw, %i.ma
  %i.mc = icmp ne i32 %i.mb, 0
  %i.md = zext i1 %i.mc to i32
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.l, label %bb.be

bb.az:                                            ; preds = %bb.al
  %i.mf = load i32, ptr %i.im, align 1
  %i.mg = xor i32 %i.mf, 1647994726
  %i.mh = getelementptr i8, ptr %i.im, i64 3
  %i.mi = load i32, ptr %i.mh, align 1
  %i.mj = xor i32 %i.mi, 1702194274
  %i.mk = or i32 %i.mg, %i.mj
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = zext i1 %i.ml to i32
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.l, label %bb.bb

bb.ba:                                            ; preds = %bb.al
  %i.mo = load i32, ptr %i.im, align 1
  %i.mp = icmp ne i32 %i.mo, 1702194274
  %i.mq = zext i1 %i.mp to i32
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.l, label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ms = load i32, ptr %i.im, align 1
  %i.mt = xor i32 %i.ms, 1664771942
  %i.mu = getelementptr i8, ptr %i.im, i64 3
  %i.mv = load i32, ptr %i.mu, align 1
  %i.mw = xor i32 %i.mv, 1851881827
  %i.mx = or i32 %i.mt, %i.mw
  %i.my = icmp ne i32 %i.mx, 0
  %i.mz = zext i1 %i.my to i32
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.l, label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.nb = load i32, ptr %i.im, align 1
  %i.nc = icmp ne i32 %i.nb, 1851881827
  %i.nd = zext i1 %i.nc to i32
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.l, label %bb.bw

bb.bd:                                            ; preds = %bb.ax
  %i.nf = load i64, ptr %i.im, align 1
  %i.ng = icmp ne i64 %i.nf, 7954875858852407142
  %i.nh = zext i1 %i.ng to i32
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.l, label %bb.bj

bb.be:                                            ; preds = %bb.ay
  %i.nj = load i32, ptr %i.im, align 1
  %i.nk = xor i32 %i.nj, 1701147239
  %i.nl = getelementptr i8, ptr %i.im, i64 4
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = zext i8 %i.nm to i32
  %i.no = xor i32 %i.nn, 110
  %i.np = or i32 %i.nk, %i.no
  %i.nq = icmp ne i32 %i.np, 0
  %i.nr = zext i1 %i.nq to i32
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %bb.l, label %bb.bk

bb.bf:                                            ; preds = %bb.al
  %i.nt = load i64, ptr %i.im, align 1
  %i.nu = xor i64 %i.nt, 7954877984961881958
  %i.nv = getelementptr i8, ptr %i.im, i64 8
  %i.nw = load i16, ptr %i.nv, align 1
  %i.nx = zext i16 %i.nw to i64
  %i.ny = xor i64 %i.nx, 24948
  %i.nz = or i64 %i.nu, %i.ny
  %i.oa = icmp ne i64 %i.nz, 0
  %i.ob = zext i1 %i.oa to i32
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.l, label %bb.br

bb.bg:                                            ; preds = %bb.bb
  %i.od = load i32, ptr %i.im, align 1
  %i.oe = xor i32 %i.od, 1701273965
  %i.of = getelementptr i8, ptr %i.im, i64 3
  %i.og = load i32, ptr %i.of, align 1
  %i.oh = xor i32 %i.og, 1635020389
  %i.oi = or i32 %i.oe, %i.oh
  %i.oj = icmp ne i32 %i.oi, 0
  %i.ok = zext i1 %i.oj to i32
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.l, label %bb.bo

bb.bh:                                            ; preds = %bb.al
  %i.om = load i32, ptr %i.im, align 1
  %i.on = xor i32 %i.om, 1916430182
  %i.oo = getelementptr i8, ptr %i.im, i64 4
  %i.op = load i16, ptr %i.oo, align 1
  %i.oq = zext i16 %i.op to i32
  %i.or = xor i32 %i.oq, 25701
  %i.os = or i32 %i.on, %i.or
  %i.ot = icmp ne i32 %i.os, 0
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.l, label %bb.bm

bb.bi:                                            ; preds = %bb.al
  %i.ow = load i16, ptr %i.im, align 1
  %i.ox = xor i16 %i.ow, 25970
  %i.oy = getelementptr i8, ptr %i.im, i64 2
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i16
  %i.pb = xor i16 %i.pa, 100
  %i.pc = or i16 %i.ox, %i.pb
  %i.pd = icmp ne i16 %i.pc, 0
  %i.pe = zext i1 %i.pd to i32
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.l, label %bb.bx

bb.bj:                                            ; preds = %bb.bd
  %i.pg = load i64, ptr %i.im, align 1
  %i.ph = icmp ne i64 %i.pg, 7310583992526989158
  %i.pi = zext i1 %i.ph to i32
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.l, label %bb.bn

bb.bk:                                            ; preds = %bb.be
  %i.pk = load i32, ptr %i.im, align 1
  %i.pl = xor i32 %i.pk, 1953065079
  %i.pm = getelementptr i8, ptr %i.im, i64 4
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = zext i8 %i.pn to i32
  %i.pp = xor i32 %i.po, 101
  %i.pq = or i32 %i.pl, %i.pp
  %i.pr = icmp ne i32 %i.pq, 0
  %i.ps = zext i1 %i.pr to i32
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.l, label %bb.bv

bb.bl:                                            ; preds = %bb.al
  %i.pu = load i64, ptr %i.im, align 1
  %i.pv = xor i64 %i.pu, 8028911418776119142
  %i.pw = getelementptr i8, ptr %i.im, i64 8
  %i.px = load i8, ptr %i.pw, align 1
  %i.py = zext i8 %i.px to i64
end_hunk_3
