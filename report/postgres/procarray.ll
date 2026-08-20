inline.NumInlined: 144
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@KnownAssignedXidsRemovePreceding:bb.a
  %i.be = sext i32 %.02836.i to i64               ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 4
  %i.bg = load ptr, ptr @KnownAssignedXidsValid, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.be
  store i8 1, ptr %i.bh, align 1
  %i.bi = add i32 %.02836.i, 1
  %.pre.i = load ptr, ptr @KnownAssignedXidsValid, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %i.bj = phi ptr [ %.pre.i, %bb.o ], [ %i.ax, %.lr.ph.i ]
  %.1.i = phi i32 [ %i.bi, %bb.o ], [ %.02836.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.028.lcssa.i = phi i32 [ 0, %bb.n ], [ %.1.i, %bb.p ]
  store i32 0, ptr %i.ap, align 4
  store i32 %.028.lcssa.i, ptr %i.an, align 4
  %i.bk = tail call i64 @GetCurrentTimestamp() #17
  store i64 %i.bk, ptr @KnownAssignedXidsCompress.lastCompressTs, align 8
  br label %KnownAssignedXidsCompress.exit

KnownAssignedXidsCompress.exit:                   ; preds = %._crit_edge.i, %.thread39, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @KnownAssignedTransactionIdsIdleMaintenance() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @procArray, align 8        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = sub i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %KnownAssignedXidsCompress.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr @KnownAssignedXidsCompress.lastCompressTs, align 8 ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.j, 1000000
  %i.l = tail call i64 @GetCurrentTimestamp() #17
  %.not.i = icmp slt i64 %i.l, %i.k
  br i1 %.not.i, label %KnownAssignedXidsCompress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr @MainLWLockArray, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.o = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.n, i32 noundef 0) #17 ; 0 uses
  %i.p = icmp slt i32 %i.e, %i.c
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.q = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %i.c to i64
  %.pre39.i = load ptr, ptr @KnownAssignedXidsValid, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %i.r = phi ptr [ %.pre39.i, %.lr.ph.preheader.i ], [ %i.ad, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.02836.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !range !4, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr @KnownAssignedXids, align 8 ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %.02836.i to i64                ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4
  %i.aa = load ptr, ptr @KnownAssignedXidsValid, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.y
  store i8 1, ptr %i.ab, align 1
  %i.ac = add i32 %.02836.i, 1
  %.pre.i = load ptr, ptr @KnownAssignedXidsValid, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ad = phi ptr [ %.pre.i, %bb.e ], [ %i.r, %.lr.ph.i ]
  %.1.i = phi i32 [ %i.ac, %bb.e ], [ %.02836.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.f, %bb.d
  %.028.lcssa.i = phi i32 [ 0, %bb.d ], [ %.1.i, %bb.f ]
  store i32 0, ptr %i.d, align 4
  store i32 %.028.lcssa.i, ptr %i.b, align 4
  %i.ae = load ptr, ptr @MainLWLockArray, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @LWLockRelease(ptr noundef nonnull %i.af) #17
  %i.ag = tail call i64 @GetCurrentTimestamp() #17
  store i64 %i.ag, ptr @KnownAssignedXidsCompress.lastCompressTs, align 8
  br label %KnownAssignedXidsCompress.exit

KnownAssignedXidsCompress.exit:                   ; preds = %bb.a, %bb.c, %._crit_edge.i
  ret void
}

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #4

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @PGSemaphoreLock(ptr noundef) local_unnamed_addr #4

declare void @PGSemaphoreUnlock(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @IsCatalogRelation(ptr noundef) local_unnamed_addr #4

declare i64 @GetCurrentTimestamp() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @KnownAssignedXidsRemove(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef %0) #17 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5031, ptr noundef nonnull @__func__.KnownAssignedXidsRemove) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr @procArray, align 8        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %.not59.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not59.i, label %KnownAssignedXidsSearch.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = load ptr, ptr @KnownAssignedXids, align 8
  %i.j = icmp ugt i32 %0, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.03861.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.139.i, %bb.e ] ; 2 uses
  %.04160.i = phi i32 [ %i.e, %.lr.ph.i ], [ %.142.i, %bb.e ] ; 2 uses
  %i.k = add i32 %.04160.i, %.03861.i             ; 2 uses
  %i.l = sdiv i32 %i.k, 2                         ; 5 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = icmp eq i32 %0, %i.o
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i32 %i.o, 2
  %or.cond.i.i = and i1 %i.j, %i.q
  %i.r = sub i32 %0, %i.o
  %i.s = icmp slt i32 %i.r, 0
  %i.t = icmp ult i32 %0, %i.o
  %.0.i.i = select i1 %or.cond.i.i, i1 %i.s, i1 %i.t ; 2 uses
  %i.u = add nsw i32 %i.l, -1
  %i.v = add nsw i32 %i.l, 1
  %.142.i = select i1 %.0.i.i, i32 %.04160.i, i32 %i.v ; 2 uses
  %.139.i = select i1 %.0.i.i, i32 %i.u, i32 %.03861.i ; 2 uses
  %.not.i = icmp sgt i32 %.142.i, %.139.i
  br i1 %.not.i, label %KnownAssignedXidsSearch.exit, label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %i.k, -1
  br i1 %i.w, label %KnownAssignedXidsSearch.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @KnownAssignedXidsValid, align 8
  %i.y = zext nneg i32 %i.l to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !4, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %KnownAssignedXidsSearch.exit

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.l, %i.e
  br i1 %i.af, label %.preheader.i, label %KnownAssignedXidsSearch.exit

.preheader.i:                                     ; preds = %bb.h
  %i.ag = load ptr, ptr @KnownAssignedXidsValid, align 8
  %1 = zext i32 %i.e to i64
  %indvars.iv.next.i21 = add nuw nsw i64 %1, 1    ; 2 uses
  %indvars.i22 = trunc i64 %indvars.iv.next.i21 to i32 ; 2 uses
  %2 = icmp sgt i32 %i.g, %indvars.i22
  br i1 %2, label %.lr.ph, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i23, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %3 = icmp sgt i32 %i.g, %indvars.i
  br i1 %3, label %.lr.ph, label %.critedge.i, !llvm.loop !79

.lr.ph:                                           ; preds = %.preheader.i, %bb.i
  %.037.i22 = phi i32 [ %indvars.i, %bb.i ], [ %indvars.i22, %.preheader.i ]
  %indvars.iv.next.i23 = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %indvars.iv.next.i21, %.preheader.i ] ; 2 uses
  %sext.i = shl i64 %indvars.iv.next.i23, 32
  %4 = ashr exact i64 %sext.i, 32
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %4
  %i.ai = load i8, ptr %i.ah, align 1, !range !4, !noundef !5
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.thread55.sink.split.i, label %bb.i, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.i, %.preheader.i
  store i32 0, ptr %i.f, align 4
  br label %.thread55.sink.split.i

.thread55.sink.split.i:                           ; preds = %.lr.ph, %.critedge.i
  %.sink.i = phi i32 [ 0, %.critedge.i ], [ %.037.i22, %.lr.ph ]
  store i32 %.sink.i, ptr %i.d, align 4
  br label %KnownAssignedXidsSearch.exit

KnownAssignedXidsSearch.exit:                     ; preds = %bb.e, %bb.c, %bb.f, %bb.g, %bb.h, %.thread55.sink.split.i
  ret void
}

declare zeroext i1 @StandbyTransactionIdIsPrepared(i32 noundef) local_unnamed_addr #4

declare void @initStringInfo(ptr noundef) local_unnamed_addr #4

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{i64 3329977, i64 3329994, i64 3330017}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = !{i64 2151575103}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7, !20}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = !{i64 2151612938}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = !{i64 2151584778}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = !{i64 2151613038}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = !{i64 2151615893}
!39 = distinct !{!39, !7}
!40 = !{!"branch_weights", i32 2000, i32 2002}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = !{i64 2151590868}
!43 = distinct !{!43, !7}
!44 = !{i64 2151615748}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = !{i64 2151593392}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = !{i64 2151606623}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = !{i64 2151607573}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
end_hunk_0
