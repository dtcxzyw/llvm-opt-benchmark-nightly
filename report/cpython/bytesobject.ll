inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@stringlib__preprocess:bb.a
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !14
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
end_hunk_0
begin_hunk_1_@stringlib__preprocess:bb.a
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !14
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %3 = icmp slt i64 %i.bn, %1
  br i1 %3, label %bb.n, label %._crit_edge, !llvm.loop !145
}

end_hunk_1
