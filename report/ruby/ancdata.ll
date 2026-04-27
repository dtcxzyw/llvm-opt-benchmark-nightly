inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.an, %bb.o ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.bm ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.bt, i1 false)
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !10
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
end_hunk_0
