begin_hunk_0
  %i.d = alloca [32 x i32], align 16              ; 5 uses
  %i.e = alloca [2 x i32], align 8                ; 8 uses
  %i.f = alloca [2 x i64], align 16               ; 7 uses
  %18 = alloca %struct.VP8LHashChain, align 8     ; 16 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.n, label %bb.b

end_hunk_0
begin_hunk_1
.critedge:                                        ; preds = %bb.p, %bb.eu, %bb.ax, %CalculateBestCacheSize.exit.i, %bb.hm, %bb.gn, %BackwardRefsWithLocalCache.exit.thread.i, %BackwardRefsClone.exit.i, %BackwardRefsClone.exit196.i, %bb.n
  %i.aqc = load ptr, ptr %18, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %i.aqc) #12
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %19, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef %i.bh) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
end_hunk_1
