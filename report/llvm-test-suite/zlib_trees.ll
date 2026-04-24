inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@_tr_flush_block:bb.a
bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !27
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i.a = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i.a, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 2 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %4 = zext nneg i32 %narrow42.i to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !42
  %i.gf = add i64 %i.ge, %4                       ; 2 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, 10
  %i.gh = lshr i64 %i.gg, 3                       ; 2 uses
end_hunk_0
begin_hunk_1_@_tr_flush_block:bb.a
  %i.gl = lshr i64 %i.gk, 3                       ; 2 uses
  %.not = icmp samesign ule i64 %i.gl, %i.gh
  %spec.select91 = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 %i.gh)
  %5 = add nuw nsw i32 %.0.lcssa.i, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_tr_flush_block:bb.a
  br label %bb.bu

bb.bu:                                            ; preds = %build_bl_tree.exit, %bb.bt
  %.081 = phi i32 [ 1, %bb.bt ], [ %5, %build_bl_tree.exit ] ; 2 uses
  %.080 = phi i1 [ true, %bb.bt ], [ %.not, %build_bl_tree.exit ]
  %.0 = phi i64 [ %i.gm, %bb.bt ], [ %spec.select91, %build_bl_tree.exit ]
  %i.gn = add i64 %2, 4
end_hunk_2
