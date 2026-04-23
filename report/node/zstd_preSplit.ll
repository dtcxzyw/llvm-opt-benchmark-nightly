inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_splitBlock_byChunks.records_fs = internal unnamed_addr constant [4 x ptr] [ptr @ZSTD_recordFingerprint_43, ptr @ZSTD_recordFingerprint_11, ptr @ZSTD_recordFingerprint_5, ptr @ZSTD_recordFingerprint_1], align 16
@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef initializes((0, 8208)) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %vector.ph48, label %.lr.ph.i.i

vector.ph48:                                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i64 noundef 512) #7
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  store i64 512, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
end_hunk_0
begin_hunk_1_@ZSTD_splitBlock:bb.a
  %i.aa = lshr i64 %1, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, i64 noundef 512) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %i.ad, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !18
end_hunk_1
begin_hunk_2_@ZSTD_splitBlock:bb.a
  %.0.i = select i1 %i.bw, i64 65536, i64 %i.by
  br label %ZSTD_splitBlock_fromBorders.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.bz = add nsw i32 %2, -1
  %5 = sext i32 %i.bz to i64                      ; 2 uses
  %6 = getelementptr inbounds [8 x i8], ptr @ZSTD_splitBlock_byChunks.records_fs, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !21       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void %7(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 8192) #7, !inline_history !23
  %8 = add i64 %1, -8192                          ; 2 uses
  %i.ca = icmp ult i64 %8, 8192
  br i1 %i.ca, label %ZSTD_splitBlock_fromBorders.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %5
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8200
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %mergeEvents.exit.i, %.lr.ph.i
  %.0.i3.i49.i = phi i64 [ 8192, %.lr.ph.i ], [ %i.dq, %mergeEvents.exit.i ] ; 3 uses
  %.02429.i = phi i32 [ 3, %.lr.ph.i ], [ %spec.select.i, %mergeEvents.exit.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i49.i
  tail call void %7(ptr noundef nonnull %i.cb, ptr noundef %i.cf, i64 noundef 8192) #7, !inline_history !23
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !5
  %9 = load i64, ptr %i.cd, align 8, !tbaa !18    ; 3 uses
  %10 = load i64, ptr %i.ce, align 8, !tbaa !18   ; 3 uses
  %i.ch = zext nneg i32 %i.cg to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i48.i
  %.012.i.i.i11 = phi i64 [ 0, %.lr.ph.i48.i ], [ %i.ct, %bb.b ] ; 3 uses
  %.01011.i.i.i12 = phi i64 [ 0, %.lr.ph.i48.i ], [ %i.cs, %bb.b ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.012.i.i.i11
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !5
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nsw i64 %10, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.012.i.i.i11
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !5
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul nsw i64 %9, %i.co
  %i.cq = sub nsw i64 %i.cl, %i.cp
  %i.cr = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.cq, i1 true)
  %i.cs = add i64 %i.cr, %.01011.i.i.i12          ; 2 uses
  %i.ct = add i64 %.012.i.i.i11, 1                ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.ct, %i.ch
  %i.cu = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.cu, label %bb.b, label %compareFingerprints.exit.i13, !llvm.loop !24

compareFingerprints.exit.i13:                     ; preds = %bb.b
  %i.cv = add nsw i32 %.02429.i, 14
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %9, %i.cw
  %i.cy = mul i64 %i.cx, %10
  %i.cz = lshr i64 %i.cy, 4
  %.not33.i = icmp ult i64 %i.cs, %i.cz
  br i1 %.not33.i, label %vector.body, label %ZSTD_splitBlock_fromBorders.exit
end_hunk_2
begin_hunk_3_@ZSTD_splitBlock:bb.a
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !5
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dm = icmp eq i64 %index.next.1, 1024
  br i1 %i.dm, label %mergeEvents.exit.i, label %vector.body, !llvm.loop !25

mergeEvents.exit.i:                               ; preds = %vector.body
  %i.dn = add i64 %10, %9
  store i64 %i.dn, ptr %i.cd, align 8, !tbaa !18
  %i.do = icmp sgt i32 %.02429.i, 0
  %i.dp = sext i1 %i.do to i32
  %spec.select.i = add nsw i32 %.02429.i, %i.dp
  %i.dq = add i64 %.0.i3.i49.i, 8192              ; 2 uses
  %.not.i = icmp ugt i64 %i.dq, %8
  br i1 %.not.i, label %ZSTD_splitBlock_fromBorders.exit, label %.lr.ph.i48.i, !llvm.loop !26

ZSTD_splitBlock_fromBorders.exit:                 ; preds = %mergeEvents.exit.i, %compareFingerprints.exit.i13, %.lr.ph.i.i, %fpDistance.exit28.i, %compareFingerprints.exit.i
  %.0 = phi i64 [ %1, %compareFingerprints.exit.i ], [ %.0.i, %fpDistance.exit28.i ], [ %1, %.lr.ph.i.i ], [ %.0.i3.i49.i, %compareFingerprints.exit.i13 ], [ %1, %mergeEvents.exit.i ]
  ret i64 %.0
}

end_hunk_3
begin_hunk_4_@HIST_add
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_43(ptr noundef captures(none) initializes((0, 1024), (4096, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  store i64 0, ptr %4, align 8, !tbaa !18
  %5 = add i64 %2, -1                             ; 3 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %addEvents_generic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.0.i3 = phi i64 [ %12, %.lr.ph ], [ 0, %3 ]    ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3
  %7 = load i8, ptr %6, align 1, !tbaa !27
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8 ; 2 uses
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4, !tbaa !5
  %12 = add i64 %.0.i3, 43                        ; 2 uses
  %13 = icmp ult i64 %12, %5
  br i1 %13, label %.lr.ph, label %addEvents_generic.exit, !llvm.loop !28

addEvents_generic.exit:                           ; preds = %.lr.ph, %3
  %14 = udiv i64 %5, 43
  store i64 %14, ptr %4, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_11(ptr noundef captures(none) initializes((0, 2048)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  %4 = add i64 %2, -1                             ; 3 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %addEvents_generic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.0.i3 = phi i64 [ %13, %.lr.ph ], [ 0, %3 ]    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3
  %.val = load i16, ptr %5, align 1, !tbaa !29
  %6 = zext i16 %.val to i64
  %7 = mul nuw nsw i64 %6, 2654435769
  %8 = lshr i64 %7, 23
  %9 = and i64 %8, 511
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9 ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !5
  %13 = add i64 %.0.i3, 11                        ; 2 uses
  %14 = icmp ult i64 %13, %4
  br i1 %14, label %.lr.ph, label %addEvents_generic.exit, !llvm.loop !28

addEvents_generic.exit:                           ; preds = %.lr.ph, %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %16 = udiv i64 %4, 11
  store i64 %16, ptr %15, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_5(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #3 {
  %4 = add i64 %2, -1                             ; 3 uses
  %.not = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %.not, label %addEvents_generic.exit, label %.lr.ph

.lr.ph:                                           ; preds = %3, %.lr.ph
  %.0.i3 = phi i64 [ %13, %.lr.ph ], [ 0, %3 ]    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3
  %.val = load i16, ptr %5, align 1, !tbaa !29
  %6 = zext i16 %.val to i64
  %7 = mul nuw nsw i64 %6, 2654435769
  %8 = lshr i64 %7, 22
  %9 = and i64 %8, 1023
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9 ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !5
  %13 = add i64 %.0.i3, 5                         ; 2 uses
  %14 = icmp ult i64 %13, %4
  br i1 %14, label %.lr.ph, label %addEvents_generic.exit, !llvm.loop !28

addEvents_generic.exit:                           ; preds = %.lr.ph, %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %16 = udiv i64 %4, 5
  store i64 %16, ptr %15, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ZSTD_recordFingerprint_1(ptr noundef captures(none) initializes((0, 4104)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #3 {
  %4 = add i64 %2, -1                             ; 5 uses
  %.not = icmp eq i64 %4, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %0, i8 0, i64 4104, i1 false)
  br i1 %.not, label %addEvents_generic.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %3
  %xtraiter = and i64 %4, 1
  %5 = icmp eq i64 %2, 2
  br i1 %5, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0.i3 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %23, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3
  %.val = load i16, ptr %6, align 1, !tbaa !29
  %7 = zext i16 %.val to i64
  %8 = mul nuw nsw i64 %7, 2654435769
  %9 = lshr i64 %8, 22
  %10 = and i64 %9, 1023
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 1
  %.val.1 = load i16, ptr %15, align 1, !tbaa !29
  %16 = zext i16 %.val.1 to i64
  %17 = mul nuw nsw i64 %16, 2654435769
  %18 = lshr i64 %17, 22
  %19 = and i64 %18, 1023
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19 ; 2 uses
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !5
  %23 = add nuw i64 %.0.i3, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %addEvents_generic.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !28

addEvents_generic.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %addEvents_generic.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %addEvents_generic.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i3.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %23, %addEvents_generic.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i3.epil.init
  %.val.epil = load i16, ptr %24, align 1, !tbaa !29
  %25 = zext i16 %.val.epil to i64
  %26 = mul nuw nsw i64 %25, 2654435769
  %27 = lshr i64 %26, 22
  %28 = and i64 %27, 1023
  %29 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %28 ; 2 uses
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !5
  br label %addEvents_generic.exit

addEvents_generic.exit:                           ; preds = %.lr.ph.epil.preheader, %addEvents_generic.exit.loopexit.unr-lcssa, %3
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 4096
  store i64 %4, ptr %32, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_4
begin_hunk_5_@llvm.vector.reduce.add.v2i64/@llvm.assume
!18 = !{!11, !12, i64 4096}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !16, !17}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = distinct !{null}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15, !16, !17}
!26 = distinct !{!26, !15}
!27 = !{!7, !7, i64 0}
!28 = distinct !{!28, !15}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !7, i64 0}
end_hunk_5
