inline.NumInlined: 575
inline.NumDeleted: 105
begin_hunk_0_@append_pathname:bb.a
  br i1 %i.ah, label %bb.i, label %.backedge

bb.i:                                             ; preds = %.critedge4
  %i.ai = ptrtoint ptr %.04061 to i64
  %i.aj = ptrtoint ptr %.242.lcssa to i64
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = sub i64 0, %i.ak
  %i.am = getelementptr i8, ptr %.2.lcssa, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.am, ptr noundef nonnull readonly align 1 %.04061, i64 noundef range(i64 1, 0) %i.ak, i1 noundef false) #33
end_hunk_0
