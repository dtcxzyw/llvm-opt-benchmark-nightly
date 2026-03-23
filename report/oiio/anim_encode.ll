begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @FlushFrames(ptr noundef nonnull captures(none) %0) unnamed_addr #1 {
  %2 = alloca %struct.EncodedFrame, align 8       ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %4 = load i64, ptr %3, align 8, !tbaa !81
  %.not47 = icmp eq i64 %4, 0
  br i1 %.not47, label %.._crit_edge_crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.val44.pre = load i64, ptr %6, align 8, !tbaa !77
  br label %12

12:                                               ; preds = %.lr.ph, %48
  %.val44 = phi i64 [ %.val44.pre, %.lr.ph ], [ %42, %48 ]
  %.val = load ptr, ptr %5, align 8, !tbaa !39
  %13 = getelementptr [104 x i8], ptr %.val, i64 %.val44 ; 7 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 96
  %15 = load i32, ptr %14, align 8, !tbaa !78
  %.not40 = icmp eq i32 %15, 0
  %.idx = select i1 %.not40, i64 0, i64 48
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 %.idx ; 5 uses
  %17 = load ptr, ptr %7, align 8, !tbaa !40
  %18 = tail call i32 @WebPMuxPushFrame(ptr noundef %17, ptr noundef %16, i32 noundef 1) #15 ; 2 uses
  %.not41.not = icmp eq i32 %18, 1
  br i1 %.not41.not, label %21, label %.thread

.thread:                                          ; preds = %12
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %19, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %18) #15
  br label %69

21:                                               ; preds = %12
  %22 = load i32, ptr %8, align 8, !tbaa !71
  %.not42 = icmp eq i32 %22, 0
  br i1 %.not42, label %34, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr @stderr, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %26 = load i32, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 20
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %30 = load i32, ptr %29, align 8, !tbaa !100
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 36
  %32 = load i32, ptr %31, align 4, !tbaa !101
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #16
  br label %34

34:                                               ; preds = %23, %21
  %35 = load i64, ptr %9, align 8, !tbaa !102
  %36 = add i64 %35, 1
  store i64 %36, ptr %9, align 8, !tbaa !102
  %.not.i = icmp eq ptr %13, null
  br i1 %.not.i, label %FrameRelease.exit, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %13, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %38) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %40) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %13, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit

FrameRelease.exit:                                ; preds = %34, %37
  %41 = load i64, ptr %6, align 8, !tbaa !77
  %42 = add i64 %41, 1                            ; 2 uses
  store i64 %42, ptr %6, align 8, !tbaa !77
  %43 = load <2 x i64>, ptr %10, align 8, !tbaa !103
  %44 = add <2 x i64> %43, splat (i64 -1)         ; 3 uses
  store <2 x i64> %44, ptr %10, align 8, !tbaa !103
  %45 = load i32, ptr %11, align 8, !tbaa !35     ; 2 uses
  %.not43 = icmp eq i32 %45, -1
  br i1 %.not43, label %48, label %46

46:                                               ; preds = %FrameRelease.exit
  %47 = add nsw i32 %45, -1
  store i32 %47, ptr %11, align 8, !tbaa !35
  br label %48

48:                                               ; preds = %FrameRelease.exit, %46
  %49 = extractelement <2 x i64> %44, i64 1
  %.not = icmp eq i64 %49, 0
  br i1 %.not, label %._crit_edge.loopexit, label %12

._crit_edge.loopexit:                             ; preds = %48
  %50 = extractelement <2 x i64> %44, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %51 = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %50, %._crit_edge.loopexit ]
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %69

53:                                               ; preds = %._crit_edge
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %55 = load i64, ptr %54, align 8, !tbaa !77     ; 2 uses
  %.not39 = icmp eq i64 %55, 0
  br i1 %.not39, label %69, label %56

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %58 = load ptr, ptr %57, align 8, !tbaa !39     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %58, i64 104, i1 false), !tbaa.struct !104
  %sext = shl i64 %55, 32
  %59 = ashr exact i64 %sext, 32                  ; 3 uses
  %60 = getelementptr inbounds [104 x i8], ptr %58, i64 %59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %58, ptr noundef nonnull align 8 dereferenceable(104) %60, i64 104, i1 false), !tbaa.struct !104
  %61 = load ptr, ptr %57, align 8, !tbaa !39
  %62 = getelementptr inbounds [104 x i8], ptr %61, i64 %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %62, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !tbaa.struct !104
  %63 = load ptr, ptr %57, align 8, !tbaa !39     ; 2 uses
  %.not.i45 = icmp eq ptr %63, null
  br i1 %.not.i45, label %FrameRelease.exit46, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds [104 x i8], ptr %63, i64 %59 ; 4 uses
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %66) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 48
  %68 = load ptr, ptr %67, align 8, !tbaa !55
  tail call void @WebPFree(ptr noundef %68) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %65, i8 0, i64 104, i1 false)
  br label %FrameRelease.exit46

FrameRelease.exit46:                              ; preds = %56, %64
  store i64 0, ptr %54, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %69

69:                                               ; preds = %.thread, %._crit_edge, %53, %FrameRelease.exit46
  %.2 = phi i32 [ 0, %.thread ], [ 1, %FrameRelease.exit46 ], [ 1, %53 ], [ 1, %._crit_edge ]
  ret i32 %.2
}

end_hunk_1
