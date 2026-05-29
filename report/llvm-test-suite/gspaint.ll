inline.NumInlined: 2
begin_hunk_0_@gs_fill:bb.a
  %i.r = tail call i32 (ptr, ...) @gs_newpath(ptr noundef nonnull %0) #4 ; 0 uses
  br label %gs_fill_trim.exit

gs_fill_trim.exit:                                ; preds = %bb.d, %bb.e
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_fill_trim(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 437
  %i.b = load i8, ptr %i.a, align 1, !tbaa !37
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call i32 @gx_path_merge(ptr noundef %i.d, ptr noundef %i.g) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %0) #4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.q = tail call i32 (ptr, ptr, ptr, i32, i64, ...) @gx_fill_path(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %0, i32 noundef -1, i64 noundef %1) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.q, %bb.c ]  ; 2 uses
  %.not12 = icmp eq i32 %.0, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 (ptr, ...) @gs_newpath(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %.0
}

declare i32 @gx_path_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_color_render(...) local_unnamed_addr #2

declare i32 @gx_fill_path(...) local_unnamed_addr #2

declare i32 @gs_newpath(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_eofill(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %0) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 437
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = load ptr, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = tail call i32 @gx_path_merge(ptr noundef %i.i, ptr noundef %i.l) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.p = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %0) #4 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.t = tail call i32 (ptr, ptr, ptr, i32, i64, ...) @gx_fill_path(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %0, i32 noundef 1, i64 noundef 0) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.t, %bb.c ]  ; 2 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 (ptr, ...) @gs_newpath(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_stroke(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 437
  %i.b = load i8, ptr %i.a, align 1, !tbaa !37
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = load ptr, ptr %0, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call i32 @gx_path_merge(ptr noundef %i.d, ptr noundef %i.g) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %0) #4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = tail call i32 (ptr, ptr, ...) @gx_stroke_fill(ptr noundef %i.o, ptr noundef nonnull %0) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.p, %bb.c ]  ; 2 uses
  %.not10 = icmp eq i32 %.0, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 (ptr, ...) @gs_newpath(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %.0
}

declare i32 @gx_stroke_fill(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_strokepath(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.gx_path_s, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @gx_path_init(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = call i32 (ptr, ptr, ptr, ...) @gx_stroke_add(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef %0) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @gx_path_release(ptr noundef %i.f) #4
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !tbaa.struct !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.0
}

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_stroke_add(...) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_colorimage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.gs_image_enum_s, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.a = call i32 @gs_image_init(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %4, 0
  %i.d = mul i32 %3, %1                           ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = mul i32 %i.d, %4
  %i.f = add i32 %i.e, 7
  %i.g = lshr i32 %i.f, 3
  %i.h = mul i32 %i.g, %2
  %i.i = call i32 @gs_image_next(ptr noundef nonnull %7, ptr noundef %6, i32 noundef %i.h) #4
  %8 = call i32 @llvm.smin.i32(i32 %i.i, i32 0)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %i.d, 7
  %i.k = lshr i32 %i.j, 3
  %i.l = mul i32 %i.k, %2                         ; 2 uses
  %i.m = zext i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.029 = phi ptr [ %6, %bb.d ], [ %i.p, %bb.f ]  ; 2 uses
  %.0 = phi i32 [ %4, %bb.d ], [ %i.q, %bb.f ]
  %i.n = call i32 @gs_image_next(ptr noundef nonnull %7, ptr noundef %.029, i32 noundef %i.l) #4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 %i.m
  %i.q = add nsw i32 %.0, 1                       ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.critedge, label %bb.e, !llvm.loop !48

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.1 = phi i32 [ %8, %bb.c ], [ %i.a, %bb.a ], [ 0, %bb.f ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  ret i32 %.1
}

declare i32 @gs_image_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_image_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.gs_image_enum_s, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.a = call i32 @gs_image_init(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %gs_colorimage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = mul i32 %3, %1
  %i.d = add i32 %i.c, 7
  %i.e = lshr i32 %i.d, 3
  %i.f = mul i32 %i.e, %2
  %i.g = call i32 @gs_image_next(ptr noundef nonnull %6, ptr noundef %5, i32 noundef %i.f) #4
  %i.h = call i32 @llvm.smin.i32(i32 %i.g, i32 0)
  br label %gs_colorimage.exit

gs_colorimage.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_imagemask(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.gs_image_enum_s, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.a = call i32 @gs_imagemask_init(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, 7
  %i.d = lshr i32 %i.c, 3
  %i.e = mul i32 %i.d, %2
  %i.f = call i32 @gs_image_next(ptr noundef nonnull %6, ptr noundef %5, i32 noundef %i.e) #4
  %i.g = call i32 @llvm.smin.i32(i32 %i.f, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.0
}

declare i32 @gs_imagemask_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !24, i64 448}
!9 = !{!"gs_state_s", !10, i64 0, !12, i64 8, !13, i64 24, !16, i64 136, !5, i64 232, !17, i64 240, !17, i64 248, !18, i64 256, !18, i64 264, !5, i64 272, !19, i64 280, !20, i64 288, !11, i64 296, !21, i64 304, !22, i64 312, !11, i64 320, !23, i64 328, !16, i64 336, !5, i64 432, !6, i64 436, !6, i64 437, !14, i64 440, !24, i64 448, !5, i64 456}
!10 = !{!"p1 _ZTS10gs_state_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8}
!13 = !{!"gs_matrix_fixed_s", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !14, i64 32, !15, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !15, i64 72, !14, i64 80, !15, i64 88, !15, i64 96, !15, i64 104}
!14 = !{!"float", !6, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"gs_matrix_s", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !14, i64 32, !15, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !15, i64 72, !14, i64 80, !15, i64 88}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"p1 _ZTS9gx_path_s", !11, i64 0}
!19 = !{!"p1 _ZTS13line_params_s", !11, i64 0}
!20 = !{!"p1 _ZTS10halftone_s", !11, i64 0}
!21 = !{!"p1 _ZTS10gs_color_s", !11, i64 0}
!22 = !{!"p1 _ZTS17gx_device_color_s", !11, i64 0}
!23 = !{!"p1 _ZTS9gs_font_s", !11, i64 0}
!24 = !{!"p1 _ZTS8device_s", !11, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"device_s", !27, i64 0, !5, i64 8, !15, i64 16, !15, i64 24}
!27 = !{!"p1 _ZTS11gx_device_s", !11, i64 0}
!28 = !{!29, !30, i64 8}
!29 = !{!"gx_device_s", !5, i64 0, !30, i64 8, !17, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !14, i64 36, !5, i64 40, !31, i64 44, !5, i64 48, !5, i64 52}
!30 = !{!"p1 _ZTS17gx_device_procs_s", !11, i64 0}
!31 = !{!"short", !6, i64 0}
!32 = !{!33, !11, i64 56}
!33 = !{!"gx_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!34 = !{!29, !5, i64 24}
!35 = !{!29, !5, i64 28}
!36 = !{!26, !15, i64 16}
!37 = !{!9, !6, i64 437}
!38 = !{!9, !18, i64 256}
!39 = !{!9, !10, i64 0}
!40 = !{!9, !21, i64 304}
!41 = !{!9, !22, i64 312}
!42 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 8, !44, i64 40, i64 8, !44, i64 48, i64 8, !45, i64 56, i64 8, !44, i64 64, i64 8, !44, i64 72, i64 8, !44, i64 80, i64 8, !44, i64 88, i64 8, !43, i64 96, i64 8, !43, i64 104, i64 4, !4, i64 108, i64 4, !4, i64 112, i64 4, !4, i64 120, i64 8, !44, i64 128, i64 8, !44, i64 136, i64 1, !47, i64 137, i64 1, !47, i64 138, i64 1, !47}
!43 = !{!11, !11, i64 0}
!44 = !{!15, !15, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTS9segment_s", !11, i64 0}
!47 = !{!6, !6, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
end_hunk_0
