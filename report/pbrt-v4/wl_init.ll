Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/wl_init?download=true
inline.NumInlined: 46
inline.NumDeleted: 32
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwTerminateWayland:bb.a
  %i.dm = tail call i32 %i.dl(ptr noundef nonnull %i.dk) #9 ; 0 uses
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8, !tbaa !101
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8, !tbaa !95
  tail call void %i.dn(ptr noundef %i.do) #9
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134140), align 4, !tbaa !98 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.dr = tail call i32 @close(i32 noundef %i.dp) #9 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134128), align 8, !tbaa !99 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, -1
  br i1 %i.dt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.du = tail call i32 @close(i32 noundef %i.ds) #9 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !241
  tail call void @_glfw_free(ptr noundef %i.dv) #9
  ret void
}

declare void @_glfwGetCursorPosWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwSetCursorPosWayland(ptr noundef, double noundef, double noundef) #1

declare void @_glfwSetCursorModeWayland(ptr noundef, i32 noundef) #1

declare void @_glfwSetRawMouseMotionWayland(ptr noundef, i32 noundef) #1

declare i32 @_glfwRawMouseMotionSupportedWayland() #1

declare i32 @_glfwCreateCursorWayland(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @_glfwCreateStandardCursorWayland(ptr noundef, i32 noundef) #1

declare void @_glfwDestroyCursorWayland(ptr noundef) #1

declare void @_glfwSetCursorWayland(ptr noundef, ptr noundef) #1

declare ptr @_glfwGetScancodeNameWayland(i32 noundef) #1

declare i32 @_glfwGetKeyScancodeWayland(i32 noundef) #1

declare void @_glfwSetClipboardStringWayland(ptr noundef) #1

declare ptr @_glfwGetClipboardStringWayland() #1

declare i32 @_glfwInitJoysticksLinux() #1

declare void @_glfwTerminateJoysticksLinux() #1

declare i32 @_glfwPollJoystickLinux(ptr noundef, i32 noundef) #1

declare ptr @_glfwGetMappingNameLinux() #1

declare void @_glfwUpdateGamepadGUIDLinux(ptr noundef) #1

declare void @_glfwFreeMonitorWayland(ptr noundef) #1

declare void @_glfwGetMonitorPosWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwGetMonitorContentScaleWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwGetMonitorWorkareaWayland(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @_glfwGetVideoModesWayland(ptr noundef, ptr noundef) #1

declare i32 @_glfwGetVideoModeWayland(ptr noundef, ptr noundef) #1

declare i32 @_glfwGetGammaRampWayland(ptr noundef, ptr noundef) #1

declare void @_glfwSetGammaRampWayland(ptr noundef, ptr noundef) #1

declare i32 @_glfwCreateWindowWayland(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwDestroyWindowWayland(ptr noundef) #1

declare void @_glfwSetWindowTitleWayland(ptr noundef, ptr noundef) #1

declare void @_glfwSetWindowIconWayland(ptr noundef, i32 noundef, ptr noundef) #1

declare void @_glfwGetWindowPosWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwSetWindowPosWayland(ptr noundef, i32 noundef, i32 noundef) #1

declare void @_glfwGetWindowSizeWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwSetWindowSizeWayland(ptr noundef, i32 noundef, i32 noundef) #1

declare void @_glfwSetWindowSizeLimitsWayland(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @_glfwSetWindowAspectRatioWayland(ptr noundef, i32 noundef, i32 noundef) #1

declare void @_glfwGetFramebufferSizeWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwGetWindowFrameSizeWayland(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwGetWindowContentScaleWayland(ptr noundef, ptr noundef, ptr noundef) #1

declare void @_glfwIconifyWindowWayland(ptr noundef) #1

declare void @_glfwRestoreWindowWayland(ptr noundef) #1

declare void @_glfwMaximizeWindowWayland(ptr noundef) #1

declare void @_glfwShowWindowWayland(ptr noundef) #1

declare void @_glfwHideWindowWayland(ptr noundef) #1

declare void @_glfwRequestWindowAttentionWayland(ptr noundef) #1

declare void @_glfwFocusWindowWayland(ptr noundef) #1

declare void @_glfwSetWindowMonitorWayland(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @_glfwWindowFocusedWayland(ptr noundef) #1

declare i32 @_glfwWindowIconifiedWayland(ptr noundef) #1

declare i32 @_glfwWindowVisibleWayland(ptr noundef) #1

declare i32 @_glfwWindowMaximizedWayland(ptr noundef) #1

declare i32 @_glfwWindowHoveredWayland(ptr noundef) #1

declare i32 @_glfwFramebufferTransparentWayland(ptr noundef) #1

declare float @_glfwGetWindowOpacityWayland(ptr noundef) #1

declare void @_glfwSetWindowResizableWayland(ptr noundef, i32 noundef) #1

declare void @_glfwSetWindowDecoratedWayland(ptr noundef, i32 noundef) #1

declare void @_glfwSetWindowFloatingWayland(ptr noundef, i32 noundef) #1

declare void @_glfwSetWindowOpacityWayland(ptr noundef, float noundef) #1

declare void @_glfwSetWindowMousePassthroughWayland(ptr noundef, i32 noundef) #1

declare void @_glfwPollEventsWayland() #1

declare void @_glfwWaitEventsWayland() #1

declare void @_glfwWaitEventsTimeoutWayland(double noundef) #1

declare void @_glfwPostEmptyEventWayland() #1

declare i32 @_glfwGetEGLPlatformWayland(ptr noundef) #1

declare ptr @_glfwGetEGLNativeDisplayWayland() #1

declare ptr @_glfwGetEGLNativeWindowWayland(ptr noundef) #1

declare void @_glfwGetRequiredInstanceExtensionsWayland(ptr noundef) #1

declare i32 @_glfwGetPhysicalDevicePresentationSupportWayland(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @_glfwCreateWindowSurfaceWayland(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @_glfwPlatformLoadModule(ptr noundef) local_unnamed_addr #1

declare ptr @_glfwPlatformGetModuleSymbol(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_glfwPlatformFreeModule(ptr noundef) local_unnamed_addr #1

declare ptr @glfwGetVersionString() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @timerfd_create(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @loadCursorTheme() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.354) #9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #10    ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !97
  %i.c = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #9 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !97
  %i.e = icmp eq i32 %i.d, 0
  %i.f = add i64 %i.c, -1
  %i.g = icmp ult i64 %i.f, 2147483646
  %or.cond3 = select i1 %i.e, i1 %i.g, i1 false   ; 2 uses
  %i.h = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %0 = shl nuw nsw i32 %i.h, 1
  %.0 = select i1 %or.cond3, i32 %0, i32 32
  %spec.select = select i1 %or.cond3, i32 %i.h, i32 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %.0, %bb.b ], [ 32, %bb.a ]
  %.1.a = phi i32 [ %spec.select, %bb.b ], [ 16, %bb.a ]
  %i.i = tail call ptr @getenv(ptr noundef nonnull @.str.355) #9 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137544), align 8, !tbaa !107
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8, !tbaa !123
  %i.l = tail call ptr %i.j(ptr noundef %i.i, i32 noundef %.1.a, ptr noundef %i.k) #9 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134096), align 8, !tbaa !126
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.356) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137544), align 8, !tbaa !107
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8, !tbaa !123
  %i.o = tail call ptr %i.m(ptr noundef %i.i, i32 noundef %.1, ptr noundef %i.n) #9
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134104), align 8, !tbaa !127
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !130 ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !104
  %i.s = tail call i32 %i.r(ptr noundef %i.p) #9, !inline_history !242
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.q(ptr noundef %i.p, i32 noundef 0, ptr noundef nonnull @_glfw_wl_surface_interface, i32 noundef %i.s, i32 noundef 0, ptr noundef null) #9, !inline_history !242
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134112), align 8, !tbaa !128
  %i.u = tail call i32 @timerfd_create(i32 noundef 1, i32 noundef 526336) #9
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134128), align 8, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.012 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.012
}

declare void @_glfwAddDataDeviceListenerWayland(ptr noundef) local_unnamed_addr #1

declare void @_glfwTerminateEGL() local_unnamed_addr #1

declare void @_glfwTerminateOSMesa() local_unnamed_addr #1

declare void @_glfw_free(ptr noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @registryHandleGlobal(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(14) @.str.3) #11
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_glfw_min(i32 noundef 3, i32 noundef %4) #9 ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.d(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wl_compositor_interface, i32 noundef %i.c, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.3, i32 noundef %i.c, ptr noundef null) #9, !inline_history !243
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !130
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(17) @.str.20) #11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.h(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wl_subcompositor_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133912), align 8, !tbaa !129
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.5) #11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.m = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.l(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wl_shm_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8, !tbaa !123
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(10) @.str.18) #11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_glfwAddOutputWayland(i32 noundef %2, i32 noundef %4) #9
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.14) #11
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !121
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  %i.s = tail call i32 @_glfw_min(i32 noundef 4, i32 noundef %4) #9 ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.u = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.t(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wl_seat_interface, i32 noundef %i.s, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.14, i32 noundef %i.s, ptr noundef null) #9, !inline_history !243 ; 2 uses
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8, !tbaa !121
  tail call void @_glfwAddSeatListenerWayland(ptr noundef %i.u) #9
  br label %bb.ae

bb.l:                                             ; preds = %bb.i
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(23) @.str.10) #11
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8, !tbaa !133
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.z = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.y(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wl_data_device_manager_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8, !tbaa !133
  br label %bb.ae

bb.o:                                             ; preds = %bb.l
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.22) #11
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.ad = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ac(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_xdg_wm_base_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef null) #9, !inline_history !243 ; 2 uses
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133968), align 8, !tbaa !122
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137456), align 8, !tbaa !102
  %i.af = tail call i32 %i.ae(ptr noundef %i.ad, ptr noundef nonnull @wmBaseListener, ptr noundef null) #9, !inline_history !244 ; 0 uses
  br label %bb.ae

bb.q:                                             ; preds = %bb.o
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(27) @.str.27) #11
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.aj = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ai(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_zxdg_decoration_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133976), align 8, !tbaa !132
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(14) @.str.29) #11
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.an = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.am(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_wp_viewporter_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133984), align 8, !tbaa !131
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(32) @.str.31) #11
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aq(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_zwp_relative_pointer_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133992), align 8, !tbaa !134
  br label %bb.ae

bb.w:                                             ; preds = %bb.u
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(27) @.str.33) #11
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.av = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.au(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_zwp_pointer_constraints_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134000), align 8, !tbaa !135
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(28) @.str.40) #11
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.az = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ay(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_zwp_idle_inhibit_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134008), align 8, !tbaa !136
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(18) @.str.38) #11
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.bd = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bc(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @_glfw_xdg_activation_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134016), align 8, !tbaa !137
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(31) @.str.36) #11
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !105
  %i.bh = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bg(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @wp_fractional_scale_manager_v1_interface, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef null) #9, !inline_history !243
  store ptr %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134024), align 8, !tbaa !138
  br label %bb.ae

bb.ae:                                            ; preds = %bb.d, %bb.h, %bb.n, %bb.m, %bb.r, %bb.v, %bb.z, %bb.ac, %bb.ad, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.j, %bb.k, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
