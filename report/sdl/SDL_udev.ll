Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_udev?download=true
inline.NumInlined: 35
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_UDEV_AddCallback:bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 16) #7 ; 6 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr @_this, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %i.e, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.f, align 8
  store ptr %i.a, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UDEV_DelCallback(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_this, align 8            ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.01218 = load ptr, ptr %i.b, align 8           ; 4 uses
  %.not1419 = icmp eq ptr %.01218, null
  br i1 %.not1419, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = load ptr, ptr %.01218, align 8
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph29

.lr.ph:                                           ; preds = %.lr.ph29
  %i.e = load ptr, ptr %.012, align 8
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph29, !llvm.loop !10

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.01221.lcssa = phi ptr [ %.01218, %.lr.ph.preheader ], [ %.012, %.lr.ph ] ; 3 uses
  %.020.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0122128, %.lr.ph ] ; 3 uses
  %.not15 = icmp eq ptr %.020.lcssa, null
  %i.g = getelementptr inbounds nuw i8, ptr %.01221.lcssa, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %.020.lcssa, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge
  store ptr %i.h, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %.01221.lcssa, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %.020.lcssa, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @SDL_free_REAL(ptr noundef nonnull %.01221.lcssa) #8
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0122128 = phi ptr [ %.012, %.lr.ph ], [ %.01218, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0122128, i64 8
  %.012 = load ptr, ptr %i.m, align 8             ; 4 uses
  %.not14 = icmp eq ptr %.012, null
  br i1 %.not14, label %.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph29, %bb.b, %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_UDEV_GetUdevSyms() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_UDEV_Init()
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_this, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UDEV_ReleaseUdevSyms() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_UDEV_Quit()
  ret void
}

declare ptr @SDL_LoadFunction_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_strcasestr_REAL(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @guess_device_class(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  %i.c = alloca [1 x i64], align 8                ; 4 uses
  %i.d = alloca [12 x i64], align 16              ; 4 uses
  %i.e = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.019 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.c ]  ; 7 uses
  %i.f = load ptr, ptr @_this, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr %i.h(ptr noundef nonnull %.019, ptr noundef nonnull @.str.59) #8
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @_this, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr %i.l(ptr noundef nonnull %.019, ptr noundef nonnull @.str.3, ptr noundef null) #8 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge17, label %bb.b, !llvm.loop !11

.critedge:                                        ; preds = %bb.b
  call fastcc void @get_caps(ptr noundef %.019, ptr noundef nonnull @.str.60, ptr noundef %i.a, i64 noundef 1)
  call fastcc void @get_caps(ptr noundef %.019, ptr noundef nonnull @.str.59, ptr noundef %i.b, i64 noundef 1)
  call fastcc void @get_caps(ptr noundef %.019, ptr noundef nonnull @.str.61, ptr noundef %i.c, i64 noundef 1)
  call fastcc void @get_caps(ptr noundef %.019, ptr noundef nonnull @.str.62, ptr noundef %i.e, i64 noundef 1)
  call fastcc void @get_caps(ptr noundef %.019, ptr noundef nonnull @.str.63, ptr noundef %i.d, i64 noundef 12)
  %i.n = call i32 @SDL_EVDEV_GuessDeviceClass(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8
  br label %.critedge17

.critedge17:                                      ; preds = %bb.c, %.critedge
  %.015 = phi i32 [ %i.n, %.critedge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc void @get_caps(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 1, 13) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %i.b, i1 false)
  %i.c = load ptr, ptr @_this, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr %i.e(ptr noundef nonnull %0, ptr noundef %1) #8 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i64 noundef 4096) #8 ; 0 uses
  %i.h = call ptr @SDL_strrchr_REAL(ptr noundef nonnull %i.a, i32 noundef 32) #8 ; 2 uses
  %.not221 = icmp eq ptr %i.h, null
  br i1 %.not221, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  %i.i = call i64 @SDL_strtoul_REAL(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 16) #8
  br label %bb.e

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %4 = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.b ]   ; 2 uses
  %.02 = phi i32 [ %6, %bb.d ], [ 0, %bb.b ]      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.k = call i64 @SDL_strtoul_REAL(ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 16) #8
  %5 = zext nneg i32 %.02 to i64                  ; 2 uses
  %i.l = icmp samesign ugt i64 %3, %5
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %5
  store i64 %i.k, ptr %i.m, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %6 = add nuw nsw i32 %.02, 1                    ; 2 uses
  store i8 0, ptr %4, align 1
  %i.n = call ptr @SDL_strrchr_REAL(ptr noundef nonnull %i.a, i32 noundef 32) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.d
  %7 = zext nneg i32 %6 to i64                    ; 2 uses
  %i.o = call i64 @SDL_strtoul_REAL(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 16) #8
  %i.p = icmp samesign ugt i64 %3, %7
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.q = phi i64 [ %i.i, %._crit_edge.thread ], [ %i.o, %._crit_edge ]
  %.0.lcssa8 = phi i64 [ 0, %._crit_edge.thread ], [ %7, %._crit_edge ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.lcssa8
  store i64 %i.q, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @SDL_EVDEV_GuessDeviceClass(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SDL_strrchr_REAL(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SDL_strtoul_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SDL_IOReady(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{!1, !5}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{null}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
end_hunk_0
