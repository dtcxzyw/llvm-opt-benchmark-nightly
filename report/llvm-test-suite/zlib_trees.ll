inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@_tr_flush_block:bb.a
bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !27
  %.not.15.i = icmp eq i16 %i.gc, 0               ; 2 uses
  %spec.select.i = select i1 %.not.15.i, i64 23, i64 26
  %spec.select.i.a = select i1 %.not.15.i, i32 3, i32 4
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i64 [ 71, %scan_tree.exit36.i ], [ 47, %bb.bl ], [ 68, %bb.be ], [ %spec.select.i, %bb.bs ], [ 65, %bb.bf ], [ 41, %bb.bn ], [ 62, %bb.bg ], [ 29, %bb.br ], [ 59, %bb.bh ], [ 44, %bb.bm ], [ 56, %bb.bi ], [ 32, %bb.bq ], [ 53, %bb.bj ], [ 38, %bb.bo ], [ 50, %bb.bk ], [ 35, %bb.bp ]
  %4 = phi i32 [ 19, %scan_tree.exit36.i ], [ 11, %bb.bl ], [ 18, %bb.be ], [ %spec.select.i.a, %bb.bs ], [ 17, %bb.bf ], [ 9, %bb.bn ], [ 16, %bb.bg ], [ 5, %bb.br ], [ 15, %bb.bh ], [ 10, %bb.bm ], [ 14, %bb.bi ], [ 6, %bb.bq ], [ 13, %bb.bj ], [ 8, %bb.bo ], [ 12, %bb.bk ], [ 7, %bb.bp ]
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !42
  %i.gf = add i64 %i.ge, %.0.lcssa.i              ; 2 uses
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, 10
  %i.gh = lshr i64 %i.gg, 3                       ; 2 uses
end_hunk_0
begin_hunk_1_@_tr_flush_block:bb.a
  %i.gl = lshr i64 %i.gk, 3                       ; 2 uses
  %.not = icmp samesign ule i64 %i.gl, %i.gh
  %spec.select91 = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 %i.gh)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_tr_flush_block:bb.a
  br label %bb.bu

bb.bu:                                            ; preds = %build_bl_tree.exit, %bb.bt
  %.081 = phi i32 [ 1, %bb.bt ], [ %4, %build_bl_tree.exit ] ; 2 uses
  %.080 = phi i1 [ true, %bb.bt ], [ %.not, %build_bl_tree.exit ]
  %.0 = phi i64 [ %i.gm, %bb.bt ], [ %spec.select91, %build_bl_tree.exit ]
  %i.gn = add i64 %2, 4
end_hunk_2
