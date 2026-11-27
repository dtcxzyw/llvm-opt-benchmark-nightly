Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/null_init?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GLFWlibrary = type { i32, %struct.GLFWallocator, %struct._GLFWplatform, %struct.anon, ptr, ptr, ptr, ptr, i32, i32, [16 x %struct._GLFWjoystick], ptr, i32, %struct._GLFWtls, %struct._GLFWtls, %struct._GLFWmutex, %struct.anon.8, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct._GLFWlibraryX11, %struct._GLFWlibraryNull, %struct._GLFWlibraryGLX, %struct._GLFWlibraryLinux }
%struct.GLFWallocator = type { ptr, ptr, ptr, ptr }
%struct._GLFWplatform = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { %struct._GLFWinitconfig, %struct._GLFWfbconfig, %struct._GLFWwndconfig, %struct._GLFWctxconfig, i32 }
%struct._GLFWinitconfig = type { i32, i32, i32, ptr, %struct.anon.0, %struct.anon.1, %struct.anon.2 }
%struct.anon.0 = type { i32, i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32 }
%struct._GLFWfbconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct._GLFWwndconfig = type { i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6 }
%struct.anon.3 = type { [256 x i8] }
%struct.anon.4 = type { [256 x i8], [256 x i8] }
%struct.anon.5 = type { i32, i32 }
%struct.anon.6 = type { [256 x i8] }
%struct._GLFWctxconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon.7 }
%struct.anon.7 = type { i32 }
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
%struct.anon.8 = type { i64, %struct._GLFWtimerPOSIX }
%struct._GLFWtimerPOSIX = type { i32, i64 }
%struct.anon.9 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.10 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.11 = type { i32, ptr, [2 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.12 = type { ptr, ptr }
%struct._GLFWlibraryX11 = type { ptr, i32, i64, float, float, i64, i64, i32, ptr, ptr, i32, ptr, ptr, [349 x [5 x i8]], [256 x i16], [349 x i16], double, double, ptr, [2 x i32], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.anon.13, %struct.anon.14, %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, %struct.anon.19, %struct.anon.20, %struct.anon.21, %struct.anon.22, %struct.anon.23, %struct.anon.24, %struct.anon.25 }
%struct.anon.13 = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.14 = type { ptr, ptr, ptr, ptr }
%struct.anon.15 = type { i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.16 = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.17 = type { i32, i32, i32, i32, i32 }
%struct.anon.18 = type { i32, i64, i64 }
%struct.anon.19 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.20 = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.21 = type { ptr, ptr }
%struct.anon.22 = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.anon.23 = type { i32, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.anon.24 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.25 = type { i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct._GLFWlibraryNull = type { i32, i32, ptr, ptr, [121 x i16], [349 x i8] }
%struct._GLFWlibraryGLX = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GLFWlibraryLinux = type { i32, i32, %struct.re_pattern_buffer, i32, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }

@__const._glfwConnectNull.null = private unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 393221, [4 x i8] zeroinitializer, ptr @_glfwInitNull, ptr @_glfwTerminateNull, ptr @_glfwGetCursorPosNull, ptr @_glfwSetCursorPosNull, ptr @_glfwSetCursorModeNull, ptr @_glfwSetRawMouseMotionNull, ptr @_glfwRawMouseMotionSupportedNull, ptr @_glfwCreateCursorNull, ptr @_glfwCreateStandardCursorNull, ptr @_glfwDestroyCursorNull, ptr @_glfwSetCursorNull, ptr @_glfwGetScancodeNameNull, ptr @_glfwGetKeyScancodeNull, ptr @_glfwSetClipboardStringNull, ptr @_glfwGetClipboardStringNull, ptr @_glfwInitJoysticksNull, ptr @_glfwTerminateJoysticksNull, ptr @_glfwPollJoystickNull, ptr @_glfwGetMappingNameNull, ptr @_glfwUpdateGamepadGUIDNull, ptr @_glfwFreeMonitorNull, ptr @_glfwGetMonitorPosNull, ptr @_glfwGetMonitorContentScaleNull, ptr @_glfwGetMonitorWorkareaNull, ptr @_glfwGetVideoModesNull, ptr @_glfwGetVideoModeNull, ptr @_glfwGetGammaRampNull, ptr @_glfwSetGammaRampNull, ptr @_glfwCreateWindowNull, ptr @_glfwDestroyWindowNull, ptr @_glfwSetWindowTitleNull, ptr @_glfwSetWindowIconNull, ptr @_glfwGetWindowPosNull, ptr @_glfwSetWindowPosNull, ptr @_glfwGetWindowSizeNull, ptr @_glfwSetWindowSizeNull, ptr @_glfwSetWindowSizeLimitsNull, ptr @_glfwSetWindowAspectRatioNull, ptr @_glfwGetFramebufferSizeNull, ptr @_glfwGetWindowFrameSizeNull, ptr @_glfwGetWindowContentScaleNull, ptr @_glfwIconifyWindowNull, ptr @_glfwRestoreWindowNull, ptr @_glfwMaximizeWindowNull, ptr @_glfwShowWindowNull, ptr @_glfwHideWindowNull, ptr @_glfwRequestWindowAttentionNull, ptr @_glfwFocusWindowNull, ptr @_glfwSetWindowMonitorNull, ptr @_glfwWindowFocusedNull, ptr @_glfwWindowIconifiedNull, ptr @_glfwWindowVisibleNull, ptr @_glfwWindowMaximizedNull, ptr @_glfwWindowHoveredNull, ptr @_glfwFramebufferTransparentNull, ptr @_glfwGetWindowOpacityNull, ptr @_glfwSetWindowResizableNull, ptr @_glfwSetWindowDecoratedNull, ptr @_glfwSetWindowFloatingNull, ptr @_glfwSetWindowOpacityNull, ptr @_glfwSetWindowMousePassthroughNull, ptr @_glfwPollEventsNull, ptr @_glfwWaitEventsNull, ptr @_glfwWaitEventsTimeoutNull, ptr @_glfwPostEmptyEventNull, ptr @_glfwGetEGLPlatformNull, ptr @_glfwGetEGLNativeDisplayNull, ptr @_glfwGetEGLNativeWindowNull, ptr @_glfwGetRequiredInstanceExtensionsNull, ptr @_glfwGetPhysicalDevicePresentationSupportNull, ptr @_glfwCreateWindowSurfaceNull }, align 8
@_glfw = external local_unnamed_addr global %struct._GLFWlibrary, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @_glfwConnectNull(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 576)) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %1, ptr noundef nonnull align 8 dereferenceable(576) @__const._glfwConnectNull.null, i64 576, i1 false)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_glfwInitNull() #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(591) getelementptr inbounds nuw (i8, ptr @_glfw, i64 138816), i8 -1, i64 591, i1 false)
  store i16 32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138818), align 2
  store i32 2883623, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138820), align 4
  store i64 13511000748589101, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138824), align 8
  store i64 14636917835563057, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138832), align 8
  store i64 15762834922537013, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138840), align 8
  store i32 3866681, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138848), align 8
  store i64 19140586183458881, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138904), align 8
  store i64 20266503270432837, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138912), align 8
  store i64 21392420357406793, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138920), align 8
  store i64 22518337444380749, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138928), align 8
  store i64 23644254531354705, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138936), align 8
  store i64 24770171618328661, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138944), align 8
  store i32 5963837, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138852), align 4
  store i64 45317883573370972, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138856), align 8
  store i64 72621647814721698, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138864), align 8
  store i64 73747564901695747, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138872), align 8
  store i64 74873481988669703, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138880), align 8
  store i64 78814148842750219, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138888), align 8
  store i64 79940108880052505, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138896), align 8
  store i64 81910463769215065, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138952), align 8
  store i64 83036380869230884, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138960), align 8
  store i64 84162297956204840, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138968), align 8
  store i64 85288215043178796, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138976), align 8
  store i64 86414132130152752, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138984), align 8
  store i64 87540049217126708, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138992), align 8
  store i64 90073341187653944, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139000), align 8
  store i64 91199279749792065, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139008), align 8
  store i64 92325196836766021, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139016), align 8
  store i64 93451113923739977, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139024), align 8
  store i64 94577031010713933, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139032), align 8
  store i64 96547385912918356, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139040), align 8
  store i64 97673302999892312, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139048), align 8
  store i16 348, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139056), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138816), i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %indvars.iv to i8
  %i.d = zext i16 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139058), i64 %i.d
  store i8 %i.c, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 120
  br i1 %exitcond.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138816), i64 %indvars.iv.next
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %.not.1 = icmp eq i16 %i.g, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = trunc i64 %indvars.iv.next to i8
  %i.i = zext i16 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139058), i64 %i.i
  store i8 %i.h, ptr %i.j, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.h:                                             ; preds = %bb.d
  tail call void @_glfwPollMonitorsNull() #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwTerminateNull() #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138800), align 8
  tail call void @free(ptr noundef %i.a) #6
  tail call void @_glfwTerminateOSMesa() #6
  tail call void @_glfwTerminateEGL() #6
  ret void
}

declare void @_glfwGetCursorPosNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwSetCursorPosNull(ptr noundef, double noundef, double noundef) #2

declare void @_glfwSetCursorModeNull(ptr noundef, i32 noundef) #2

declare void @_glfwSetRawMouseMotionNull(ptr noundef, i32 noundef) #2

declare i32 @_glfwRawMouseMotionSupportedNull() #2

declare i32 @_glfwCreateCursorNull(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @_glfwCreateStandardCursorNull(ptr noundef, i32 noundef) #2

declare void @_glfwDestroyCursorNull(ptr noundef) #2

declare void @_glfwSetCursorNull(ptr noundef, ptr noundef) #2

declare ptr @_glfwGetScancodeNameNull(i32 noundef) #2

declare i32 @_glfwGetKeyScancodeNull(i32 noundef) #2

declare void @_glfwSetClipboardStringNull(ptr noundef) #2

declare ptr @_glfwGetClipboardStringNull() #2

declare i32 @_glfwInitJoysticksNull() #2

declare void @_glfwTerminateJoysticksNull() #2

declare i32 @_glfwPollJoystickNull(ptr noundef, i32 noundef) #2

declare ptr @_glfwGetMappingNameNull() #2

declare void @_glfwUpdateGamepadGUIDNull(ptr noundef) #2

declare void @_glfwFreeMonitorNull(ptr noundef) #2

declare void @_glfwGetMonitorPosNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwGetMonitorContentScaleNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwGetMonitorWorkareaNull(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @_glfwGetVideoModesNull(ptr noundef, ptr noundef) #2

declare i32 @_glfwGetVideoModeNull(ptr noundef, ptr noundef) #2

declare i32 @_glfwGetGammaRampNull(ptr noundef, ptr noundef) #2

declare void @_glfwSetGammaRampNull(ptr noundef, ptr noundef) #2

declare i32 @_glfwCreateWindowNull(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwDestroyWindowNull(ptr noundef) #2

declare void @_glfwSetWindowTitleNull(ptr noundef, ptr noundef) #2

declare void @_glfwSetWindowIconNull(ptr noundef, i32 noundef, ptr noundef) #2

declare void @_glfwGetWindowPosNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwSetWindowPosNull(ptr noundef, i32 noundef, i32 noundef) #2

declare void @_glfwGetWindowSizeNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwSetWindowSizeNull(ptr noundef, i32 noundef, i32 noundef) #2

declare void @_glfwSetWindowSizeLimitsNull(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @_glfwSetWindowAspectRatioNull(ptr noundef, i32 noundef, i32 noundef) #2

declare void @_glfwGetFramebufferSizeNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwGetWindowFrameSizeNull(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwGetWindowContentScaleNull(ptr noundef, ptr noundef, ptr noundef) #2

declare void @_glfwIconifyWindowNull(ptr noundef) #2

declare void @_glfwRestoreWindowNull(ptr noundef) #2

declare void @_glfwMaximizeWindowNull(ptr noundef) #2

declare void @_glfwShowWindowNull(ptr noundef) #2

declare void @_glfwHideWindowNull(ptr noundef) #2

declare void @_glfwRequestWindowAttentionNull(ptr noundef) #2

declare void @_glfwFocusWindowNull(ptr noundef) #2

declare void @_glfwSetWindowMonitorNull(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @_glfwWindowFocusedNull(ptr noundef) #2

declare i32 @_glfwWindowIconifiedNull(ptr noundef) #2

declare i32 @_glfwWindowVisibleNull(ptr noundef) #2

declare i32 @_glfwWindowMaximizedNull(ptr noundef) #2

declare i32 @_glfwWindowHoveredNull(ptr noundef) #2

declare i32 @_glfwFramebufferTransparentNull(ptr noundef) #2

declare float @_glfwGetWindowOpacityNull(ptr noundef) #2

declare void @_glfwSetWindowResizableNull(ptr noundef, i32 noundef) #2

declare void @_glfwSetWindowDecoratedNull(ptr noundef, i32 noundef) #2

declare void @_glfwSetWindowFloatingNull(ptr noundef, i32 noundef) #2

declare void @_glfwSetWindowOpacityNull(ptr noundef, float noundef) #2

declare void @_glfwSetWindowMousePassthroughNull(ptr noundef, i32 noundef) #2

declare void @_glfwPollEventsNull() #2

declare void @_glfwWaitEventsNull() #2

declare void @_glfwWaitEventsTimeoutNull(double noundef) #2

declare void @_glfwPostEmptyEventNull() #2

declare i32 @_glfwGetEGLPlatformNull(ptr noundef) #2

declare ptr @_glfwGetEGLNativeDisplayNull() #2

declare ptr @_glfwGetEGLNativeWindowNull(ptr noundef) #2

declare void @_glfwGetRequiredInstanceExtensionsNull(ptr noundef) #2

declare i32 @_glfwGetPhysicalDevicePresentationSupportNull(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @_glfwCreateWindowSurfaceNull(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_glfwPollMonitorsNull() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_0
