inline.NumInlined: 10
begin_hunk_0_@rb_Digest_SHA256_Data:bb.a
  br i1 %.not43.i, label %rb_Digest_SHA256_Update.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %._crit_edge.i
  %4 = phi i64 [ %i.f, %._crit_edge.i ], [ 0, %bb.b ]
  %.1.lcssa.i10 = phi i64 [ %i.g, %._crit_edge.i ], [ %1, %bb.b ] ; 2 uses
  %.138.lcssa.i9 = phi ptr [ %i.h, %._crit_edge.i ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %.138.lcssa.i9, i64 %.1.lcssa.i10, i1 false)
  %i.k = shl nuw nsw i64 %.1.lcssa.i10, 3
end_hunk_0
