inline.NumInlined: 43
inline.NumDeleted: 23
begin_hunk_0_@_ZN4llvh14StrInStrNoCaseENS_9StringRefES0_:bb.a
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %1, %3                       ; 2 uses
  %.not33 = icmp eq i64 %i.b, -1
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN4llvh14StrInStrNoCaseENS_9StringRefES0_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.01334 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %1, i64 %.01334) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated
end_hunk_1
begin_hunk_2_@_ZN4llvh14StrInStrNoCaseENS_9StringRefES0_:bb.a
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, %_ZNK4llvh9StringRef12equals_lowerES0_.exit
  %i.h = add nuw i64 %.01334, 1
  %.not = icmp eq i64 %.01334, %i.b
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !7

.loopexit:                                        ; preds = %_ZNK4llvh9StringRef12equals_lowerES0_.exit, %bb.d, %bb.b, %bb.a
end_hunk_2
