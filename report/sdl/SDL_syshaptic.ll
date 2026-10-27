Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_syshaptic?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SDL_SYS_HapticSetGain:bb.a
  %i.e = udiv i64 %i.d, 100
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %2, i64 noundef 24) #13
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__errno_location() #15
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #13
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9, ptr noundef %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.p, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticSetAutocenter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.input_event, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 21, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 97, ptr %i.b, align 2
  %i.c = sext i32 %1 to i64
  %i.d = mul nsw i64 %i.c, 65535
  %i.e = udiv i64 %i.d, 100
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %2, i64 noundef 24) #13
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__errno_location() #15
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #13
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10, ptr noundef %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.p, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticPause(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticResume(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticStopAll(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.input_event, align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i16 21, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.f, align 2
  store i32 0, ptr %i.g, align 4
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call i64 @write(i32 noundef %i.p, ptr noundef nonnull %1, i64 noundef 24) #13
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %SDL_SYS_HapticStopEffect.exit, label %SDL_SYS_HapticStopEffect.exit.thread

SDL_SYS_HapticStopEffect.exit.thread:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.e

SDL_SYS_HapticStopEffect.exit:                    ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #15
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #13
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6, ptr noundef %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_SYS_HapticStopEffect.exit
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #13
  br label %.loopexit

bb.e:                                             ; preds = %SDL_SYS_HapticStopEffect.exit.thread, %bb.b, %SDL_SYS_HapticStopEffect.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.08 = phi i1 [ %i.w, %bb.d ], [ true, %bb.a ], [ true, %bb.e ]
  ret i1 %.08
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @SDL_GetNextObjectID() local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @SDL_SYS_ToDirection(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 4
  switch i8 %i.a, label %bb.j [
    i8 0, label %bb.b
    i8 2, label %bb.c
    i8 1, label %bb.d
    i8 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = srem i32 %i.c, 36000
  %i.e = shl nsw i32 %i.d, 11
  %i.f = sdiv i32 %i.e, 1125
  %i.g = trunc i32 %i.f to i16
  store i16 %i.g, ptr %0, align 2
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 9000
  %i.k = srem i32 %i.j, 36000
  %i.l = shl nsw i32 %i.k, 15
  %i.m = udiv i32 %i.l, 18000
  %i.n = trunc i32 %i.m to i16
  store i16 %i.n, ptr %0, align 2
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %.not = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %i.o, align 4              ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = icmp sgt i32 %i.r, -1
  %i.t = select i1 %i.s, i16 16384, i16 -16384
  store i16 %i.t, ptr %0, align 2
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not23 = icmp eq i32 %i.r, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.inv = icmp slt i32 %i.q, 0
  %i.u = select i1 %.inv, i16 0, i16 -32768
  store i16 %i.u, ptr %0, align 2
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = sitofp i32 %i.q to float
  %i.w = sitofp i32 %i.r to float
  %i.x = tail call float @SDL_atan2f_REAL(float noundef %i.v, float noundef %i.w) #13
  %i.y = fpext float %i.x to double
  %i.z = fmul double %i.y, 1.800000e+04
  %i.aa = fdiv double %i.z, f0x400921FB54442D18
  %i.ab = fptosi double %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 45000
  %i.ad = srem i32 %i.ac, 36000
  %i.ae = shl nsw i32 %i.ad, 15
  %i.af = udiv i32 %i.ae, 18000
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %0, align 2
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store i16 16384, ptr %0, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.i, %bb.g, %bb.h, %bb.e, %bb.j
  %.0 = phi i1 [ %i.ah, %bb.j ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare float @SDL_atan2f_REAL(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = !{}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
end_hunk_0
