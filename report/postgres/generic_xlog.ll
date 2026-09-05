Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/generic_xlog?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@GenericXLogFinish:bb.a
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kf
  br label %BufferGetPage.exit57.2

bb.bb:                                            ; preds = %bb.az
  %i.kh = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ki = xor i32 %i.jz, -1
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8
  br label %BufferGetPage.exit57.2

BufferGetPage.exit57.2:                           ; preds = %bb.bb, %bb.ba
  %.0.i.i56.2 = phi ptr [ %i.kl, %bb.bb ], [ %i.kg, %bb.ba ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 49232
  %i.kn = load ptr, ptr %i.km, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %.0.i.i56.2, ptr noundef nonnull align 1 dereferenceable(8192) %i.kn, i64 8192, i1 false)
  %i.ko = load i32, ptr %i.jy, align 64
  tail call void @MarkBufferDirty(i32 noundef %i.ko) #6
  br label %bb.bc

bb.bc:                                            ; preds = %BufferGetPage.exit57.2, %bb.ay
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 57440 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 32           ; 4 uses
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ks = icmp slt i32 %i.kq, 0
  br i1 %i.ks, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kt = load ptr, ptr @BufferBlocks, align 8
  %i.ku = add nsw i32 %i.kq, -1
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kw
  br label %BufferGetPage.exit57.3

bb.bf:                                            ; preds = %bb.bd
  %i.ky = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.kz = xor i32 %i.kq, -1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.la
  %i.lc = load ptr, ptr %i.lb, align 8
  br label %BufferGetPage.exit57.3

BufferGetPage.exit57.3:                           ; preds = %bb.bf, %bb.be
  %.0.i.i56.3 = phi ptr [ %i.lc, %bb.bf ], [ %i.kx, %bb.be ]
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 57456
  %i.le = load ptr, ptr %i.ld, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %.0.i.i56.3, ptr noundef nonnull align 1 dereferenceable(8192) %i.le, i64 8192, i1 false)
  %i.lf = load i32, ptr %i.kp, align 32
  tail call void @MarkBufferDirty(i32 noundef %i.lf) #6
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %BufferGetPage.exit57.3, %bb.am, %BufferGetPage.exit55.3
  %.049 = phi i64 [ %i.gj, %bb.am ], [ %i.gj, %BufferGetPage.exit55.3 ], [ 0, %BufferGetPage.exit57.3 ], [ 0, %bb.bc ]
  %i.lg = load volatile i32, ptr @CritSectionCount, align 4
  %i.lh = add i32 %i.lg, -1
  store volatile i32 %i.lh, ptr @CritSectionCount, align 4
  tail call void @pfree(ptr noundef nonnull %0) #6
  ret i64 %.049
}

declare void @XLogBeginInsert() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

declare void @XLogRegisterBuffer(i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @XLogRegisterBufData(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GenericXLogAbort(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @pfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @generic_redo(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4
  %.not32 = icmp slt i32 %i.h, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 32)
  br label %bb.b

.preheader:                                       ; preds = %bb.h
  %i.j = icmp slt i32 %i.bc, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph36

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.ba, %bb.h ]
  %.033 = phi i8 [ 0, %.lr.ph ], [ %i.ay, %bb.h ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = zext i8 %.033 to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 4 uses
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = call i32 @XLogReadBufferForRedo(ptr noundef nonnull %0, i8 noundef zeroext %.033, ptr noundef nonnull %i.q) #6
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.t = load i32, ptr %i.q, align 4              ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.w = xor i32 %i.t, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  br label %BufferGetPage.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr @BufferBlocks, align 8
  %i.ab = add nsw i32 %i.t, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.z, %bb.f ], [ %i.ae, %bb.g ] ; 5 uses
  %i.af = call ptr @XLogRecGetBlockData(ptr noundef nonnull %0, i8 noundef zeroext %.033, ptr noundef nonnull %i.b) #6 ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %applyPageRedo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %BufferGetPage.exit, %.lr.ph.i
  %.015.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.af, %BufferGetPage.exit ] ; 3 uses
  %.0.copyload2.i = load i16, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  %.0.copyload.i = load i16, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4 ; 2 uses
  %i.ak = zext i16 %.0.copyload2.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ak
  %i.am = zext i16 %.0.copyload.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.aj, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ah
  br i1 %i.ao, label %.lr.ph.i, label %applyPageRedo.exit, !llvm.loop !11

applyPageRedo.exit:                               ; preds = %.lr.ph.i, %BufferGetPage.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 14
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i64
  %i.aw = sub nsw i64 %i.av, %i.ar
  call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.aw, i1 false)
  store volatile i64 %i.i, ptr %.0.i.i, align 8
  %i.ax = load i32, ptr %i.q, align 4
  call void @MarkBufferDirty(i32 noundef %i.ax) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %applyPageRedo.exit, %bb.c
  %i.ay = add i8 %.033, 1                         ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 84
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %.not = icmp slt i32 %i.bc, %i.az
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !12

.lr.ph36:                                         ; preds = %.preheader, %bb.j
  %i.bd = phi ptr [ %i.bg, %bb.j ], [ %i.ba, %.preheader ]
  %.135 = phi i8 [ %2, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %1 = zext i8 %.135 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %.not31 = icmp eq i32 %i.bf, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph36
  call void @UnlockReleaseBuffer(i32 noundef %i.bf) #6
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph36, %bb.i
  %i.bg = phi ptr [ %i.bd, %.lr.ph36 ], [ %.pre, %bb.i ] ; 2 uses
  %2 = add i8 %.135, 1                            ; 2 uses
  %3 = zext i8 %2 to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  %i.bi = load i32, ptr %i.bh, align 4
  %.not30 = icmp slt i32 %i.bi, %3
  br i1 %.not30, label %._crit_edge, label %.lr.ph36, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.j, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare i32 @XLogReadBufferForRedo(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @XLogRecGetBlockData(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @UnlockReleaseBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @generic_mask(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @mask_page_lsn_and_checksum(ptr noundef %0) #6
  tail call void @mask_unused_space(ptr noundef %0) #6
  ret void
}

declare void @mask_page_lsn_and_checksum(ptr noundef) local_unnamed_addr #2

declare void @mask_unused_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
end_hunk_0
