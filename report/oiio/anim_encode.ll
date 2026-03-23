begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @FlushFrames(ptr noundef nonnull captures(none) %0) unnamed_addr #1 {
  %2 = alloca %struct.EncodedFrame, align 8       ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %4 = load i64, ptr %3, align 8, !tbaa !81
  %.not47 = icmp eq i64 %4, 0
  br i1 %.not47, label %.._crit_edge_crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.val44.pre = load i64, ptr %6, align 8, !tbaa !77
  br label %11

11:                                               ; preds = %.lr.ph, %47
  %.val44 = phi i64 [ %.val44.pre, %.lr.ph ], [ %48, %47 ]
  %.val = load ptr, ptr %5, align 8, !tbaa !39
  %12 = getelementptr [104 x i8], ptr %.val, i64 %.val44 ; 7 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 96
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %.not40 = icmp eq i32 %14, 0
  %.idx = select i1 %.not40, i64 0, i64 48
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %.idx ; 5 uses
  %16 = load ptr, ptr %7, align 8, !tbaa !40
  %17 = tail call i32 @WebPMuxPushFrame(ptr noundef %16, ptr noundef %15, i32 noundef 1) #15 ; 2 uses
  %.not41.not = icmp eq i32 %17, 1
  br i1 %.not41.not, label %20, label %.thread

.thread:                                          ; preds = %11
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %19 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %18, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %17) #15
  br label %68

20:                                               ; preds = %11
  %21 = load i32, ptr %8, align 8, !tbaa !71
  %.not42 = icmp eq i32 %21, 0
  br i1 %.not42, label %33, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @stderr, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %25 = load i32, ptr %24, align 8, !tbaa !98
  %26 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %27 = load i32, ptr %26, align 4, !tbaa !99
  %28 = getelementptr inbounds nuw i8, ptr %15, i64 32
  %29 = load i32, ptr %28, align 8, !tbaa !100
  %30 = getelementptr inbounds nuw i8, ptr %15, i64 36
  %31 = load i32, ptr %30, align 4, !tbaa !101
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #16
  br label %33

33:                                               ; preds = %22, %20
  %34 = load i64, ptr %9, align 8, !tbaa !102
  %35 = add i64 %34, 1
  store i64 %35, ptr %9, align 8, !tbaa !102
  %.not.i = icmp eq ptr %12, null
  br i1 %.not.i, label %FrameRelease.exit, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %12, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %37) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %39) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %12, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit

FrameRelease.exit:                                ; preds = %33, %36
  %40 = load i64, ptr %3, align 8, !tbaa !81
  %41 = add i64 %40, -1                           ; 2 uses
  store i64 %41, ptr %3, align 8, !tbaa !81
  %42 = load <2 x i64>, ptr %6, align 8, !tbaa !103
  %43 = add <2 x i64> %42, <i64 1, i64 -1>        ; 3 uses
  store <2 x i64> %43, ptr %6, align 8, !tbaa !103
  %44 = load i32, ptr %10, align 8, !tbaa !35     ; 2 uses
  %.not43 = icmp eq i32 %44, -1
  br i1 %.not43, label %47, label %45

45:                                               ; preds = %FrameRelease.exit
  %46 = add nsw i32 %44, -1
  store i32 %46, ptr %10, align 8, !tbaa !35
  br label %47

47:                                               ; preds = %FrameRelease.exit, %45
  %.not = icmp eq i64 %41, 0
  %48 = extractelement <2 x i64> %43, i64 0
  br i1 %.not, label %._crit_edge.loopexit, label %11

._crit_edge.loopexit:                             ; preds = %47
  %49 = extractelement <2 x i64> %43, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %50 = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %49, %._crit_edge.loopexit ]
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %._crit_edge
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %54 = load i64, ptr %53, align 8, !tbaa !77     ; 2 uses
  %.not39 = icmp eq i64 %54, 0
  br i1 %.not39, label %68, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %57 = load ptr, ptr %56, align 8, !tbaa !39     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %57, i64 104, i1 false), !tbaa.struct !104
  %sext = shl i64 %54, 32
  %58 = ashr exact i64 %sext, 32                  ; 3 uses
  %59 = getelementptr inbounds [104 x i8], ptr %57, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %57, ptr noundef nonnull align 8 dereferenceable(104) %59, i64 104, i1 false), !tbaa.struct !104
  %60 = load ptr, ptr %56, align 8, !tbaa !39
  %61 = getelementptr inbounds [104 x i8], ptr %60, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %61, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !tbaa.struct !104
  %62 = load ptr, ptr %56, align 8, !tbaa !39     ; 2 uses
  %.not.i45 = icmp eq ptr %62, null
  br i1 %.not.i45, label %FrameRelease.exit46, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds [104 x i8], ptr %62, i64 %58 ; 4 uses
  %65 = load ptr, ptr %64, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %65) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %67) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %64, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit46

FrameRelease.exit46:                              ; preds = %55, %63
  store i64 0, ptr %53, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %68

68:                                               ; preds = %.thread, %._crit_edge, %52, %FrameRelease.exit46
  %.2 = phi i32 [ 0, %.thread ], [ 1, %FrameRelease.exit46 ], [ 1, %52 ], [ 1, %._crit_edge ]
  ret i32 %.2
}

end_hunk_1
