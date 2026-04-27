inline.NumInlined: 535
inline.NumDeleted: 361
begin_hunk_0_@main:bb.a
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_118SnapshotFileWriter22MaybeWriteSnapshotFileEN2v84base6VectorIKhEE.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mb = call noundef ptr @_ZN2v84base2OS5FOpenEPKcS3_(ptr noundef nonnull %i.jc, ptr noundef nonnull @.str.34) #22 ; 29 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.bm, label %_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i

end_hunk_0
begin_hunk_1_@main:bb.a
  unreachable

_ZN12_GLOBAL__N_118SnapshotFileWriter22GetFileDescriptorOrDieEPKc.exit.i.i: ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  %i.md = call i64 @fwrite(ptr nonnull @.str.35, i64 46, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.me = call i64 @fwrite(ptr nonnull @.str.36, i64 25, i64 1, ptr nonnull %i.mb) ; 0 uses
  %i.mf = call i64 @fwrite(ptr nonnull @.str.37, i64 41, i64 1, ptr nonnull %i.mb) ; 0 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal18EmbeddedFileWriter22MaybeWriteEmbeddedFileEPKNS0_12EmbeddedDataE:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ar = load ptr, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.u, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 152
end_hunk_2
