inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  br label %.preheader1371.i

.preheader1371.i:                                 ; preds = %.preheader1371.i.preheader, %bb.gw
  %indvars.iv1820.i = phi i64 [ %indvars.iv.next1821.i.3, %bb.gw ], [ 0, %.preheader1371.i.preheader ] ; 13 uses
  %i.chz = shl nuw nsw i64 %indvars.iv1820.i, 2
  %scevgep1168.a = getelementptr i8, ptr %scevgep1162, i64 %i.chz
  %scevgep1169.a = getelementptr i8, ptr %scevgep1168.a, i64 -12
end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
  br i1 %exitcond1824.not.i, label %bb.gx, label %.preheader1371.i.1

.preheader1371.i.1:                               ; preds = %bb.gv
  %indvars.iv.next1821.i = or disjoint i64 %indvars.iv1820.i, 1
  %i.cid = shl nuw nsw i64 %indvars.iv1820.i, 2
  %scevgep1166.a = getelementptr i8, ptr %scevgep1162, i64 %i.cid
  %scevgep1167.a = getelementptr i8, ptr %scevgep1166.a, i64 -8
end_hunk_1
begin_hunk_2_@nsis_BZ2_bzDecompress:bb.a
  br i1 %or.cond1357.i.1, label %.preheader1371.i.1..loopexit.loopexit1683.isplitsplit_crit_edge, label %.preheader1371.i.2

.preheader1371.i.2:                               ; preds = %.preheader1371.i.1
  %indvars.iv.next1821.i.1 = or disjoint i64 %indvars.iv1820.i, 2
  %i.cih = shl nuw nsw i64 %indvars.iv1820.i, 2
  %scevgep1164 = getelementptr i8, ptr %scevgep1162, i64 %i.cih
  %scevgep1165 = getelementptr i8, ptr %scevgep1164, i64 -4
end_hunk_2
begin_hunk_3_@nsis_BZ2_bzDecompress:bb.a
  br i1 %or.cond1357.i.2, label %.preheader1371.i.2..loopexit.loopexit1683.isplit_crit_edge, label %.preheader1371.i.3

.preheader1371.i.3:                               ; preds = %.preheader1371.i.2
  %indvars.iv.next1821.i.2 = or disjoint i64 %indvars.iv1820.i, 3
  %i.cil = shl nuw nsw i64 %indvars.iv1820.i, 2
  %scevgep1163 = getelementptr i8, ptr %scevgep1162, i64 %i.cil
  %i.cim = load i32, ptr %scevgep1163, align 4, !tbaa !4 ; 2 uses
end_hunk_3
begin_hunk_4_@nsis_BZ2_bzDecompress:bb.a

.preheader1371.i.1..loopexit.loopexit1683.isplitsplit_crit_edge: ; preds = %.preheader1371.i.1
  %indvars.iv1820.i.lcssa1172 = phi i64 [ %indvars.iv1820.i, %.preheader1371.i.1 ]
  %split1178 = phi i64 [ %indvars.iv.next1821.i, %.preheader1371.i.1 ] ; 0 uses
  %i.coh = add i64 %indvars.iv1820.i.lcssa1172, 1
  br label %.loopexit.loopexit1683.isplitsplit

end_hunk_4
begin_hunk_5_@nsis_BZ2_bzDecompress:bb.a

.preheader1371.i.2..loopexit.loopexit1683.isplit_crit_edge: ; preds = %.preheader1371.i.2
  %indvars.iv1820.i.lcssa1173 = phi i64 [ %indvars.iv1820.i, %.preheader1371.i.2 ]
  %split1173 = phi i64 [ %indvars.iv.next1821.i.1, %.preheader1371.i.2 ] ; 0 uses
  %i.coi = add i64 %indvars.iv1820.i.lcssa1173, 2
  br label %.loopexit.loopexit1683.isplit

end_hunk_5
begin_hunk_6_@nsis_BZ2_bzDecompress:bb.a

.preheader1371.i.3..loopexit.loopexit1683.i_crit_edge: ; preds = %.preheader1371.i.3
  %indvars.iv1820.i.lcssa1174 = phi i64 [ %indvars.iv1820.i, %.preheader1371.i.3 ]
  %split = phi i64 [ %indvars.iv.next1821.i.2, %.preheader1371.i.3 ] ; 0 uses
  %i.coj = add i64 %indvars.iv1820.i.lcssa1174, 3
  br label %.loopexit.loopexit1683.i

end_hunk_6
