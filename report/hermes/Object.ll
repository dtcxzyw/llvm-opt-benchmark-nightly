inline.NumInlined: 1775
inline.NumDeleted: 700
begin_hunk_0_@_ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.bi, %bb.s ], [ %i.bk, %bb.u ], [ %i.bl, %bb.v ]
  store i64 2338603393739812699, ptr %.0.i.i, align 1
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm29directObjectPrototypeToStringERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.y, %bb.aa, %bb.ab
  %.0.i4.i = phi ptr [ %i.bn, %bb.y ], [ %i.bp, %bb.aa ], [ %i.bq, %bb.ab ]
  store <8 x i16> <i16 91, i16 111, i16 98, i16 106, i16 101, i16 99, i16 116, i16 32>, ptr %.0.i4.i, align 2, !tbaa !194
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
end_hunk_1
