inline.NumInlined: 1622
inline.NumDeleted: 397
begin_hunk_0_@_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive:bb.a
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i, 43263 ; 2 uses
  %i.ch = select i1 %i.cg, i64 0, i64 185, !unpredictable !4
  %2 = select i1 %i.cg, i64 93, i64 278, !unpredictable !4 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %2 ; 2 uses
  %.val17.1.i.i.i.i.i.i.i.i = load i32, ptr %i.ci, align 4, !range !3963, !noalias !3964, !noundef !4
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
end_hunk_0
begin_hunk_1_@_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive:bb.a
  br i1 %i.jl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jm = icmp samesign ult i32 %spec.select.i.i18.i.i.i, 43263 ; 2 uses
  %i.jn = select i1 %i.jm, i64 0, i64 185, !unpredictable !4
  %3 = select i1 %i.jm, i64 93, i64 278, !unpredictable !4 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %3 ; 2 uses
  %.val17.1.i.i.i.i.i.i = load i32, ptr %i.jo, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.jp = getelementptr i8, ptr %i.jo, i64 4
end_hunk_1
