inline.NumInlined: 53
inline.NumDeleted: 19
begin_hunk_0_@_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_:bb.a
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.r, %.lr.ph30.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %indvars.iv.next40.i, %bb.r ] ; 4 uses
  %i.hm = getelementptr i8, ptr %2, i64 %indvars.iv39.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !7
  %i.ho = icmp eq i8 %i.hn, 48
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion13FastFixedDtoaEdiNS0_6VectorIcEEPiS3_:bb.a
  br i1 %exitcond.not.i, label %.critedge2.isplit, label %.lr.ph30.i, !llvm.loop !12

.critedge2.isplit:                                ; preds = %bb.r
  %.020.lcssa.in.i.ph = phi i64 [ %indvars.iv.i119.lcssa161, %bb.r ]
  br label %.critedge2.i

.lr.ph30.i..critedge2.i_crit_edge:                ; preds = %.lr.ph30.i
  %indvars.iv39.i.lcssa = phi i64 [ %indvars.iv39.i, %.lr.ph30.i ]
  %indvars.iv39.i.lcssa.a = phi i64 [ %indvars.iv39.i, %.lr.ph30.i ] ; 0 uses
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.isplit, %.lr.ph30.i..critedge2.i_crit_edge
  %.020.lcssa.in.i = phi i64 [ %indvars.iv39.i.lcssa, %.lr.ph30.i..critedge2.i_crit_edge ], [ %.020.lcssa.in.i.ph, %.critedge2.isplit ] ; 2 uses
  %.020.lcssa.i = trunc i64 %.020.lcssa.in.i to i32 ; 4 uses
  %.not.i121 = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not.i121, label %_ZN14arrow_vendored17double_conversionL9TrimZerosENS0_6VectorIcEEPiS3_.exit, label %.preheader.i
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi:bb.a
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.02228.i.lcssa10 = phi i32 [ %.02228.i, %.lr.ph.i ]
  %.02228.i.lcssa = phi i32 [ %.02228.i, %.lr.ph.i ]
  %.lcssa8 = phi i32 [ %i.n, %.lr.ph.i ]
  %i.o = load i32, ptr %2, align 4, !tbaa !3      ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi:bb.a

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i
  %i.q = sext i32 %i.o to i64
  %i.r = add i32 %i.o, %.02228.i.lcssa10
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, -1
  br label %.lr.ph34.i
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi:bb.a
  br i1 %.not.i53, label %._crit_edge.i54, label %.lr.ph.i50, !llvm.loop !8

._crit_edge.i54:                                  ; preds = %.lr.ph.i50
  %.02228.i52.lcssa19 = phi i32 [ %.02228.i52, %.lr.ph.i50 ]
  %.02228.i52.lcssa = phi i32 [ %.02228.i52, %.lr.ph.i50 ]
  %.lcssa7 = phi i32 [ %i.cf, %.lr.ph.i50 ]
  %i.cg = load i32, ptr %2, align 4, !tbaa !3     ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored17double_conversionL12FillDigits64EmNS0_6VectorIcEEPi:bb.a

.lr.ph34.preheader.i58:                           ; preds = %._crit_edge.i54
  %i.ci = sext i32 %i.cg to i64
  %i.cj = add i32 %i.cg, %.02228.i52.lcssa19
  %i.ck = sext i32 %i.cj to i64
  %i.cl = add nsw i64 %i.ck, -1
  br label %.lr.ph34.i59
end_hunk_5
