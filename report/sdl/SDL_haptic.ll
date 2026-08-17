inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@SDL_PauseHaptic_REAL:bb.a
SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.g

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 524288
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.18) #8
  br label %bb.g

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = tail call zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr noundef nonnull %0) #8
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @SDL_HIDAPI_HapticPause(ptr noundef nonnull %0) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @SDL_SYS_HapticPause(ptr noundef nonnull %0) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %SDL_ObjectValid.exit.thread7
  %.0 = phi i1 [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.h, %bb.c ], [ false, %SDL_ObjectValid.exit.thread7 ]
  ret i1 %.0
}

declare zeroext i1 @SDL_HIDAPI_HapticPause(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_HapticPause(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ResumeHaptic_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.f

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 524288
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr noundef nonnull %0) #8
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @SDL_HIDAPI_HapticResume(ptr noundef nonnull %0) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call zeroext i1 @SDL_SYS_HapticResume(ptr noundef nonnull %0) #8
  br label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread, %bb.e, %bb.d, %SDL_ObjectValid.exit.thread7
  %.0 = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ false, %SDL_ObjectValid.exit.thread7 ], [ true, %SDL_ObjectValid.exit.thread ]
  ret i1 %.0
}

declare zeroext i1 @SDL_HIDAPI_HapticResume(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_HapticResume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_StopHapticEffects_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread6

SDL_ObjectValid.exit.thread6:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = tail call zeroext i1 @SDL_HIDAPI_HapticIsHidapi(ptr noundef nonnull %0) #8
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.f = tail call zeroext i1 @SDL_HIDAPI_HapticStopAll(ptr noundef nonnull %0) #8
  br label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.g = tail call zeroext i1 @SDL_SYS_HapticStopAll(ptr noundef nonnull %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %SDL_ObjectValid.exit.thread6
  %.0 = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ false, %SDL_ObjectValid.exit.thread6 ]
  ret i1 %.0
}

declare zeroext i1 @SDL_HIDAPI_HapticStopAll(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_HapticStopAll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_HapticRumbleSupported_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread4

SDL_ObjectValid.exit.thread4:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.c

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 2050
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread, %SDL_ObjectValid.exit.thread4
  %.0 = phi i1 [ %i.h, %SDL_ObjectValid.exit.thread ], [ false, %SDL_ObjectValid.exit.thread4 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_InitHapticRumble_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.d, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread24

SDL_ObjectValid.exit.thread24:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.i

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 2, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 1000, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 16384, ptr %i.n, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = and i32 %i.j, 2048
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 2048, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.19) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sink33 = phi i64 [ 60, %bb.f ], [ 76, %bb.d ]
  %.sink28.a = phi i64 [ 64, %bb.f ], [ 94, %bb.d ]
  %.sink = phi i16 [ 16384, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.sink28 = phi i64 [ 66, %bb.f ], [ 98, %bb.d ]
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink33
  store i32 5000, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink28.a
  store i16 %.sink, ptr %2, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sink28
  store i16 %.sink, ptr %i.q, align 2
  %i.r = tail call i32 @SDL_CreateHapticEffect_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.r, ptr %i.f, align 4
  %i.s = icmp sgt i32 %i.r, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %SDL_ObjectValid.exit.thread, %bb.g, %SDL_ObjectValid.exit.thread24
  %.0 = phi i1 [ false, %SDL_ObjectValid.exit.thread24 ], [ %i.s, %bb.h ], [ true, %SDL_ObjectValid.exit.thread ], [ %i.p, %bb.g ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_PlayHapticRumble_REAL(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread26

SDL_ObjectValid.exit.thread26:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.l

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #8
  br label %bb.l

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = fcmp ogt float %1, 1.000000e+00
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = fcmp olt float %1, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.022 = phi float [ %1, %bb.e ], [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.d ]
  %i.k = fmul float %.022, 3.276700e+04
  %i.l = fptosi float %i.k to i16                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8
  switch i16 %i.n, label %bb.j [
    i16 2, label %bb.i
    i16 2048, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %i.l, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink32 = phi i64 [ 66, %bb.h ], [ 88, %bb.g ]
  %.sink31 = phi i64 [ 60, %bb.h ], [ 76, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sink32
  store i16 %i.l, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.sink31
  store i32 %2, ptr %i.q, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.r = tail call zeroext i1 @SDL_UpdateHapticEffect_REAL(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef nonnull %i.m)
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.e, align 4
  %i.t = tail call zeroext i1 @SDL_RunHapticEffect_REAL(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c, %SDL_ObjectValid.exit.thread26
  %.0 = phi i1 [ %i.h, %bb.c ], [ %i.t, %bb.k ], [ false, %SDL_ObjectValid.exit.thread26 ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_StopHapticRumble_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 6) #8
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #8
  br label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = tail call zeroext i1 @SDL_StopHapticEffect_REAL(ptr noundef nonnull %0, i32 noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %SDL_ObjectValid.exit.thread7
  %.0 = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ false, %SDL_ObjectValid.exit.thread7 ]
  ret i1 %.0
}

declare zeroext i1 @SDL_FindObject(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #1

declare i32 @SDL_sscanf_REAL(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
end_hunk_0
