inline.NumInlined: 251
inline.NumDeleted: 58
begin_hunk_0_@ZSTD_decompressBound:bb.a
  call fastcc void @ZSTD_findFrameSizeInfo(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.015, i64 noundef %.019, i32 noundef 0)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %3 = icmp ugt i64 %i.c, -120
  %4 = icmp eq i64 %i.d, -2
  %or.cond.not = select i1 %3, i1 true, i1 %4
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 %i.c
  %i.f = sub i64 %.019, %i.c
  %i.g = add i64 %i.d, %.017
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %or.cond.not, label %bb.d, label %bb.b, !llvm.loop !68

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i64 [ -2, %bb.c ], [ %.017, %bb.b ]
end_hunk_0
begin_hunk_1_@ZSTD_decompressMultiFrame:bb.a
  %.6.i = phi i64 [ -72, %bb.y ], [ -72, %bb.z ], [ %.4.ph.i, %.thread171.i ], [ %i.dy, %ZSTD_frameHeaderSize_internal.exit.i ], [ -22, %bb.as ], [ -22, %bb.au ], [ -20, %bb.aq ], [ %i.ec, %bb.aa ], [ %i.fw, %bb.az ], [ %i.fw, %bb.aw ] ; 5 uses
  %i.gp = call i32 @ZSTD_getErrorCode(i64 noundef %.6.i) #17
  %i.gq = icmp eq i32 %i.gp, 10
  %or.cond8 = and i1 %i.gq, %i.ar
  br i1 %or.cond8, label %.thread149, label %bb.ba

bb.ba:                                            ; preds = %ZSTD_decompressFrame.exit
end_hunk_1
