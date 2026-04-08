inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@asciilib__two_way_find:bb.a
  %i.bf = trunc nuw i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, i8 %i.bf, i64 64, i1 false), !tbaa !205
  %i.bh = sub nsw i64 %3, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph62.i
end_hunk_0
begin_hunk_1_@asciilib__two_way_find:bb.a
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !205
  %i.bp = add nsw i64 %.05361.i, 1                ; 2 uses
  %5 = icmp slt i64 %i.bp, %3
  br i1 %5, label %bb.n, label %asciilib__preprocess.exit, !llvm.loop !725

asciilib__preprocess.exit:                        ; preds = %bb.n
end_hunk_1
begin_hunk_2_@ucs1lib__preprocess:bb.a
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !205
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
end_hunk_2
begin_hunk_3_@ucs1lib__preprocess:bb.a
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !205
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %3 = icmp slt i64 %i.bn, %1
  br i1 %3, label %bb.n, label %._crit_edge, !llvm.loop !753
}

end_hunk_3
begin_hunk_4_@ucs2lib__preprocess:bb.a
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !205
  %i.bg = sub nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
end_hunk_4
begin_hunk_5_@ucs2lib__preprocess:bb.a
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !205
  %i.bo = add nsw i64 %.05361, 1                  ; 2 uses
  %3 = icmp slt i64 %i.bo, %1
  br i1 %3, label %bb.n, label %._crit_edge, !llvm.loop !783
}

end_hunk_5
begin_hunk_6_@ucs4lib__preprocess:bb.a
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !205
  %i.bg = sub nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
end_hunk_6
begin_hunk_7_@ucs4lib__preprocess:bb.a
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bm
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !205
  %i.bo = add nsw i64 %.05361, 1                  ; 2 uses
  %3 = icmp slt i64 %i.bo, %1
  br i1 %3, label %bb.n, label %._crit_edge, !llvm.loop !812
}

end_hunk_7
