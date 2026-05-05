inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  br label %bb.un

bb.sg:                                            ; preds = %bb.se
  %i.any = extractvalue { ptr, ptr } %i.anw, 0    ; 3 uses
  %.not89 = icmp eq ptr %i.any, null
  br i1 %.not89, label %bb.te, label %bb.sh

end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  store ptr %i.anz, ptr %i.aoa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.anz) ]
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 16
  %i.aoc = load i64, ptr %i.aob, align 8, !range !2991, !invariant.load !8
end_hunk_1
