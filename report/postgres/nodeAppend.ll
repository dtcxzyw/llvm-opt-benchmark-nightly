Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeAppend?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
begin_hunk_0_@choose_next_subplan_for_worker:bb.a
  br label %mark_invalid_subplans_as_finished.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %mark_invalid_subplans_as_finished.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @ExecFindMatchingSubPlans(ptr noundef %i.n, i1 noundef zeroext false, ptr noundef null) #6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8
  store i8 1, ptr %i.j, align 8
  %i.q = tail call i32 @bms_num_members(ptr noundef %i.o) #6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i32 %i.q, %i.s
  %i.u = icmp sgt i32 %i.s, 0
  %or.cond.i = and i1 %i.t, %i.u
  br i1 %or.cond.i, label %.lr.ph.i, label %mark_invalid_subplans_as_finished.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.x = tail call zeroext i1 @bms_is_member(i32 noundef %i.w, ptr noundef %i.v) #6
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i
  store i8 1, ptr %i.aa, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.r, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %mark_invalid_subplans_as_finished.exit, !llvm.loop !0

mark_invalid_subplans_as_finished.exit:           ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.r, label %bb.g

bb.g:                                             ; preds = %mark_invalid_subplans_as_finished.exit
  store i32 %i.af, ptr %i.d, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.pre = load i32, ptr %i.ae, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.g
  %i.ak = phi i32 [ %.sink, %bb.l ], [ %.pre, %bb.g ] ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !range !5, !noundef !6
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.n

bb.h:                                             ; preds = %.critedge
  %i.ap = load ptr, ptr %i.ai, align 8
  %i.aq = tail call i32 @bms_next_member(ptr noundef %i.ap, i32 noundef %i.ak) #6 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.d, align 4             ; 2 uses
  %i.at = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.au = icmp sgt i32 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.ai, align 8
  %i.aw = add i32 %i.at, -1
  %i.ax = tail call i32 @bms_next_member(ptr noundef %i.av, i32 noundef %i.aw) #6 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.d, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %.sink = phi i32 [ %i.aq, %bb.h ], [ %i.ax, %bb.j ], [ %i.az, %bb.k ], [ %i.as, %bb.i ] ; 3 uses
  store i32 %.sink, ptr %i.ae, align 4
  %i.ba = load i32, ptr %i.d, align 4
  %.not62 = icmp eq i32 %.sink, %i.ba
  br i1 %.not62, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i32 -1, ptr %i.ae, align 4
  br label %bb.r, !llvm.loop !21

bb.n:                                             ; preds = %.critedge
  store i32 %i.ak, ptr %i.d, align 4
  %i.bb = load ptr, ptr %i.ai, align 8
  %i.bc = load i32, ptr %i.ae, align 4
  %i.bd = tail call i32 @bms_next_member(ptr noundef %i.bb, i32 noundef %i.bc) #6 ; 2 uses
  store i32 %i.bd, ptr %i.ae, align 4
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.ai, align 8
  %i.bg = load i32, ptr %i.aj, align 8
  %i.bh = add i32 %i.bg, -1
  %i.bi = tail call i32 @bms_next_member(ptr noundef %i.bf, i32 noundef %i.bh) #6
  %. = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -1)
  store i32 %., ptr %i.ae, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bk = load i32, ptr %i.aj, align 8
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  store i8 1, ptr %i.bp, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %mark_invalid_subplans_as_finished.exit, %bb.m
  %.2 = phi i1 [ false, %mark_invalid_subplans_as_finished.exit ], [ false, %bb.m ], [ true, %bb.q ], [ true, %bb.p ]
  tail call void @LWLockRelease(ptr noundef nonnull %i.b) #6
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecAsyncAppendResponse(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.e = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i16, ptr %i.h, align 4
  %i.j = and i16 %i.i, 2
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.s
  store ptr %i.c, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = tail call ptr @bms_add_member(ptr noundef %i.v, i32 noundef %i.x) #6
  store ptr %i.y, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

declare void @ProcessInterrupts() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExecAppendAsyncEventWait(ptr nofree noundef captures(none) initializes((280, 288)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [16 x %struct.WaitEvent], align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 2                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i8, ptr %i.d, align 4, !range !5, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.f = load ptr, ptr @CurrentResourceOwner, align 8
  %i.g = tail call ptr @CreateWaitEventSet(ptr noundef %i.f, i32 noundef %i.c) #6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 8 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = tail call i32 @AddWaitEventToSet(ptr noundef %i.g, i32 noundef 32, i32 noundef -1, ptr noundef null, ptr noundef null) #6 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @bms_next_member(ptr noundef %i.k, i32 noundef -1) #6 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = zext nneg i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ExecAsyncConfigureWait(ptr noundef nonnull %i.s) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load ptr, ptr %i.j, align 8
  %i.x = tail call i32 @bms_next_member(ptr noundef %i.w, i32 noundef %i.o) #6 ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = tail call i32 @GetNumRegisteredWaitEvents(ptr noundef %i.z) #6
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %2 = load ptr, ptr %i.h, align 8
  tail call void @FreeWaitEventSet(ptr noundef %2) #6
  store ptr null, ptr %i.h, align 8
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %3 = zext nneg i8 %i.e to i64
  %4 = sub nsw i64 0, %3
  %5 = load ptr, ptr %i.h, align 8
  %i.ac = load ptr, ptr @MyLatch, align 8
  %i.ad = tail call i32 @AddWaitEventToSet(ptr noundef %5, i32 noundef 1, i32 noundef -1, ptr noundef %i.ac, ptr noundef null) #6 ; 0 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %i.ae = load ptr, ptr %i.h, align 8
  %i.af = call i32 @WaitEventSetWait(ptr noundef %i.ae, i64 noundef %4, ptr noundef nonnull %1, i32 noundef %spec.store.select, i32 noundef 134217728) #6 ; 2 uses
  %i.ag = load ptr, ptr %i.h, align 8
  call void @FreeWaitEventSet(ptr noundef %i.ag) #6
  store ptr null, ptr %i.h, align 8
  %i.ah = icmp sgt i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph36.preheader, label %.loopexit

.lr.ph36.preheader:                               ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph36.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.al = and i32 %i.ak, 2
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph36
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.ao, align 4
  call void @ExecAsyncNotify(ptr noundef nonnull %i.an) #6
  %.pre = load i32, ptr %i.aj, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.lr.ph36
  %i.ar = phi i32 [ %i.ak, %bb.g ], [ %.pre, %bb.h ], [ %i.ak, %.lr.ph36 ]
  %i.as = and i32 %i.ar, 1
  %.not33 = icmp eq i32 %i.as, 0
  br i1 %.not33, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr @MyLatch, align 8
  call void @ResetLatch(ptr noundef %i.at) #6
  %i.au = load volatile i32, ptr @InterruptPending, align 4
  %.not34 = icmp eq i32 %i.au, 0
  br i1 %.not34, label %bb.l, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  call void @ProcessInterrupts() #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph36, !llvm.loop !23

.loopexit:                                        ; preds = %bb.l, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret void
}

declare ptr @ExecFindMatchingSubPlans(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @ExecAsyncRequest(ptr noundef) local_unnamed_addr #2

declare ptr @CreateWaitEventSet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @AddWaitEventToSet(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ExecAsyncConfigureWait(ptr noundef) local_unnamed_addr #2

declare i32 @GetNumRegisteredWaitEvents(ptr noundef) local_unnamed_addr #2

declare void @FreeWaitEventSet(ptr noundef) local_unnamed_addr #2

declare i32 @WaitEventSetWait(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ExecAsyncNotify(ptr noundef) local_unnamed_addr #2

declare void @ResetLatch(ptr noundef) local_unnamed_addr #2

declare i32 @bms_prev_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_del_members(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{null}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
end_hunk_0
