Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/platform?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GLFWlibrary = type { i32, %struct.GLFWallocator, %struct._GLFWplatform, %struct.anon.0, ptr, ptr, ptr, ptr, i32, i32, [16 x %struct._GLFWjoystick], ptr, i32, %struct._GLFWtls, %struct._GLFWtls, %struct._GLFWmutex, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct.anon.13, %struct._GLFWlibraryX11, %struct._GLFWlibraryNull, %struct._GLFWlibraryGLX, %struct._GLFWlibraryLinux }
%struct.GLFWallocator = type { ptr, ptr, ptr, ptr }
%struct._GLFWplatform = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct._GLFWinitconfig, %struct._GLFWfbconfig, %struct._GLFWwndconfig, %struct._GLFWctxconfig, i32 }
%struct._GLFWinitconfig = type { i32, i32, i32, ptr, %struct.anon.1, %struct.anon.2, %struct.anon.3 }
%struct.anon.1 = type { i32, i32 }
%struct.anon.2 = type { i32 }
%struct.anon.3 = type { i32 }
%struct._GLFWfbconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct._GLFWwndconfig = type { i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7 }
%struct.anon.4 = type { [256 x i8] }
%struct.anon.5 = type { [256 x i8], [256 x i8] }
%struct.anon.6 = type { i32, i32 }
%struct.anon.7 = type { [256 x i8] }
%struct._GLFWctxconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon.8 }
%struct.anon.8 = type { i32 }
%struct._GLFWjoystick = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, [128 x i8], ptr, [33 x i8], ptr, %struct._GLFWjoystickLinux }
%struct._GLFWjoystickLinux = type { i32, [4096 x i8], [512 x i32], [64 x i32], [64 x %struct.input_absinfo], [4 x [2 x i32]] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct._GLFWtls = type { %struct._GLFWtlsPOSIX }
%struct._GLFWtlsPOSIX = type { i32, i32 }
%struct._GLFWmutex = type { %struct._GLFWmutexPOSIX }
%struct._GLFWmutexPOSIX = type { i32, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.9 = type { i64, %struct._GLFWtimerPOSIX }
%struct._GLFWtimerPOSIX = type { i32, i64 }
%struct.anon.10 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.11 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.12 = type { i32, ptr, [2 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.13 = type { ptr, ptr }
%struct._GLFWlibraryX11 = type { ptr, i32, i64, float, float, i64, i64, i32, ptr, ptr, i32, ptr, ptr, [349 x [5 x i8]], [256 x i16], [349 x i16], double, double, ptr, [2 x i32], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.anon.14, %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, %struct.anon.19, %struct.anon.20, %struct.anon.21, %struct.anon.22, %struct.anon.23, %struct.anon.24, %struct.anon.25, %struct.anon.26 }
%struct.anon.14 = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.15 = type { ptr, ptr, ptr, ptr }
%struct.anon.16 = type { i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.17 = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { i32, i32, i32, i32, i32 }
%struct.anon.19 = type { i32, i64, i64 }
%struct.anon.20 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.21 = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.22 = type { ptr, ptr }
%struct.anon.23 = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.anon.24 = type { i32, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.anon.25 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.26 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct._GLFWlibraryNull = type { i32, i32, ptr, ptr, [121 x i16], [349 x i8] }
%struct._GLFWlibraryGLX = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GLFWlibraryLinux = type { i32, i32, %struct.re_pattern_buffer, i32, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid platform ID 0x%08X\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"The requested platform is not supported\00", align 1
@_glfw = external local_unnamed_addr global %struct._GLFWlibrary, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"3.4.0 X11 GLX Null EGL OSMesa monotonic\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @_glfwSelectPlatform(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -393222
  %or.cond9 = icmp ult i32 %i.a, -6
  br i1 %or.cond9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str, i32 noundef %0) #3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %.preheader.split.preheader [
    i32 393216, label %bb.d
    i32 393220, label %.split28.us
  ]

.preheader.split.preheader:                       ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65550, ptr noundef nonnull @.str.1) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @_glfwConnectX11(i32 noundef 393220, ptr noundef %1) #3
  br label %bb.e

.split28.us:                                      ; preds = %bb.c
  %i.c = tail call i32 @_glfwConnectX11(i32 noundef 393220, ptr noundef %1) #3
  br label %bb.e

bb.e:                                             ; preds = %.preheader.split.preheader, %.split28.us, %bb.d, %bb.b
  %.025 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.d ], [ %i.c, %.split28.us ], [ 0, %.preheader.split.preheader ]
  ret i32 %.025
}

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @glfwGetPlatform() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @glfwPlatformSupported(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -393222
  %or.cond7 = icmp ult i32 %i.a, -5
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str, i32 noundef %0) #3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = and i32 %0, 393222
  %switch = icmp eq i32 %i.b, 393220
  %spec.select = zext i1 %switch to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.019 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @glfwGetVersionString() local_unnamed_addr #2 {
bb.a:
  ret ptr @.str.2
}

declare i32 @_glfwConnectX11(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
