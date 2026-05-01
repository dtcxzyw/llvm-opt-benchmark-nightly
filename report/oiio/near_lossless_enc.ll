inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@VP8ApplyNearLossless:bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %i.g = mul nsw i32 %i.b, 3
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @WebPSafeMalloc(i64 noundef %i.h, i64 noundef 4) #5 ; 4 uses
  %.neg.i = sdiv i32 %1, -20                      ; 2 uses
  %i.j = add nsw i32 %.neg.i, 5
  %i.k = icmp eq ptr %i.i, null
end_hunk_0
begin_hunk_1_@VP8ApplyNearLossless:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %.epil.preheader, %.sink.split.loopexit.unr-lcssa, %bb.d, %.preheader
  tail call void @WebPSafeFree(ptr noundef nonnull %i.i) #5
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
end_hunk_1
begin_hunk_2_@NearLossless:bb.a
  %i.j = sext i32 %i.i to i64                     ; 6 uses
  %i.k = icmp sgt i32 %0, 2
  %i.l = sub nsw i32 0, %i.a                      ; 16 uses
  %notmask.i.i = shl nsw i32 -1, %4               ; 5 uses
  %i.m = xor i32 %notmask.i.i, -1
  %i.n = lshr i32 %i.m, 1                         ; 4 uses
  br i1 %i.k, label %.split.us.preheader, label %.split.peel.next

.split.peel.next:                                 ; preds = %bb.a
end_hunk_2
begin_hunk_3_@NearLossless:bb.a

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext i32 %i.i to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %..loopexit_crit_edge.us
end_hunk_3
begin_hunk_4_@NearLossless:bb.a
bb.b:                                             ; preds = %.lr.ph.us, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.05770.us, i64 %indvars.iv ; 3 uses
  %7 = load i32, ptr %i.w, align 4, !tbaa !3      ; 7 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 4 uses
  %i.z = and i32 %7, 255                          ; 6 uses
  %i.aa = and i32 %i.y, 255
  %i.ab = sub nsw i32 %i.z, %i.aa                 ; 2 uses
  %.not.i.i.us = icmp slt i32 %i.ab, %i.a
  %.not16.i.i.us = icmp sgt i32 %i.ab, %i.l
  %or.cond.i.i.us = select i1 %.not.i.i.us, i1 %.not16.i.i.us, i1 false
  %i.ac = lshr i32 %7, 8
  %i.ad = and i32 %i.ac, 255                      ; 6 uses
  br i1 %or.cond.i.i.us, label %bb.c, label %IsSmooth.exit.thread.us

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@NearLossless:bb.a
  br i1 %or.cond.1.i.i.us, label %bb.d, label %IsSmooth.exit.thread.us

bb.d:                                             ; preds = %bb.c
  %i.ah = lshr i32 %7, 16
  %i.ai = and i32 %i.ah, 255                      ; 4 uses
  %i.aj = lshr i32 %i.y, 16
  %i.ak = and i32 %i.aj, 255
end_hunk_5
begin_hunk_6_@NearLossless:bb.a
  br i1 %or.cond.2.i.i.us, label %IsNear.exit.i.us, label %IsSmooth.exit.thread.us

IsNear.exit.i.us:                                 ; preds = %bb.d
  %i.am = lshr i32 %7, 24                         ; 4 uses
  %i.an = lshr i32 %i.y, 24
  %i.ao = sub nsw i32 %i.am, %i.an                ; 2 uses
  %.not.3.i.i.us = icmp sge i32 %i.ao, %i.a
end_hunk_6
begin_hunk_7_@NearLossless:bb.a
  %i.ap = getelementptr i8, ptr %i.w, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 4 uses
  %i.ar = and i32 %i.aq, 255
  %i.as = sub nsw i32 %i.z, %i.ar                 ; 2 uses
  %.not.i21.i.us = icmp slt i32 %i.as, %i.a
  %.not16.i22.i.us = icmp sgt i32 %i.as, %i.l
  %or.cond.i23.i.us = select i1 %.not.i21.i.us, i1 %.not16.i22.i.us, i1 false
end_hunk_7
begin_hunk_8_@NearLossless:bb.a
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.05869.us, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 4 uses
  %i.bd = and i32 %i.bc, 255
  %i.be = sub nsw i32 %i.z, %i.bd                 ; 2 uses
  %.not.i36.i.us = icmp slt i32 %i.be, %i.a
  %.not16.i37.i.us = icmp sgt i32 %i.be, %i.l
  %or.cond.i38.i.us = select i1 %.not.i36.i.us, i1 %.not16.i37.i.us, i1 false
end_hunk_8
begin_hunk_9_@NearLossless:bb.a
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.05671.us, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 4 uses
  %i.bp = and i32 %i.bo, 255
  %i.bq = sub nsw i32 %i.z, %i.bp                 ; 2 uses
  %.not.i51.i.us = icmp slt i32 %i.bq, %i.a
  %.not16.i52.i.us = icmp sgt i32 %i.bq, %i.l
  %or.cond.i53.i.us = select i1 %.not.i51.i.us, i1 %.not16.i52.i.us, i1 false
end_hunk_9
begin_hunk_10_@NearLossless:bb.a
  br i1 %or.cond.3.i63.i.not.us, label %IsSmooth.exit.thread.us, label %bb.n

IsSmooth.exit.thread.us:                          ; preds = %bb.b, %IsSmooth.exit.us, %bb.m, %bb.l, %bb.k, %IsNear.exit50.i.us, %bb.j, %bb.i, %bb.h, %IsNear.exit35.i.us, %bb.g, %bb.f, %bb.e, %IsNear.exit.i.us, %bb.d, %bb.c
  %8 = lshr i32 %7, 24                            ; 2 uses
  %9 = add nuw nsw i32 %8, %i.n
  %10 = lshr i32 %8, %4
  %11 = and i32 %10, 1
  %12 = add nuw nsw i32 %9, %11                   ; 2 uses
  %13 = icmp samesign ugt i32 %12, 255
  %14 = and i32 %12, %notmask.i.i
  %15 = shl nuw i32 %14, 24
  %16 = select i1 %13, i32 -16777216, i32 %15
  %17 = lshr i32 %7, 16
  %18 = and i32 %17, 255                          ; 2 uses
  %19 = add nuw nsw i32 %18, %i.n
  %i.bz = lshr i32 %18, %4
  %20 = and i32 %i.bz, 1
  %21 = add nuw nsw i32 %19, %20                  ; 2 uses
  %22 = icmp samesign ugt i32 %21, 255
  %23 = and i32 %21, %notmask.i.i
  %24 = shl nuw nsw i32 %23, 16
  %25 = select i1 %22, i32 16711680, i32 %24
  %26 = add nuw nsw i32 %i.ad, %i.n
  %i.ca = lshr i32 %i.ad, %4
  %27 = and i32 %i.ca, 1
  %28 = add nuw nsw i32 %26, %27                  ; 2 uses
  %29 = icmp samesign ugt i32 %28, 255
  %30 = and i32 %28, %notmask.i.i
  %31 = shl nuw nsw i32 %30, 8
  %32 = select i1 %29, i32 65280, i32 %31
  %33 = add nuw nsw i32 %i.z, %i.n
  %34 = lshr i32 %i.z, %4
  %35 = and i32 %34, 1
  %36 = add nuw nsw i32 %33, %35                  ; 2 uses
  %37 = icmp samesign ugt i32 %36, 255
  %38 = and i32 %36, %notmask.i.i
  %.0.i13.i.us = select i1 %37, i32 255, i32 %38
  %39 = or disjoint i32 %16, %.0.i13.i.us
  %40 = or disjoint i32 %39, %25
  %41 = or disjoint i32 %40, %32
  br label %bb.n

bb.n:                                             ; preds = %IsSmooth.exit.us, %IsSmooth.exit.thread.us
  %.sink = phi i32 [ %41, %IsSmooth.exit.thread.us ], [ %7, %IsSmooth.exit.us ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.05967.us, i64 %indvars.iv
  store i32 %.sink, ptr %i.cb, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_10
begin_hunk_11_@NearLossless:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_11
