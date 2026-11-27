Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_displayevents?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.SDL_Event = type { %struct.SDL_MouseWheelEvent, [72 x i8] }
%struct.SDL_MouseWheelEvent = type { i32, i32, i64, i32, i32, float, float, i32, float, float, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden void @SDL_SendDisplayEvent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.SDL_Event, align 8           ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %cond = icmp eq i32 %1, 337
  br i1 %cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %2, %i.e
  br i1 %i.f, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.g = tail call ptr @SDL_GetVideoDevice() #3   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 925
  %i.j = load i8, ptr %i.i, align 1, !range !3, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call zeroext i1 @SDL_EventEnabled_REAL(i32 noundef %1) #3
  br i1 %i.l, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  store i32 %1, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = load i32, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %5 = freeze i32 %i.n
  %6 = zext i32 %5 to i64
  %7 = zext i32 %2 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %3, ptr %i.p, align 8
  %i.q = call zeroext i1 @SDL_PushEvent_REAL(ptr noundef nonnull %4) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.j, %bb.i
  switch i32 %1, label %bb.m [
    i32 338, label %bb.k
    i32 340, label %bb.l
  ]

bb.k:                                             ; preds = %.critedge
  call void @SDL_OnDisplayAdded(ptr noundef nonnull %0) #3
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  call void @SDL_OnDisplayMoved(ptr noundef nonnull %0) #3
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.critedge, %bb.d, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_GetVideoDevice() local_unnamed_addr #2

declare zeroext i1 @SDL_EventEnabled_REAL(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @SDL_PushEvent_REAL(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @SDL_OnDisplayAdded(ptr noundef) local_unnamed_addr #2

declare void @SDL_OnDisplayMoved(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i8 0, i8 2}
!4 = !{}
end_hunk_0
