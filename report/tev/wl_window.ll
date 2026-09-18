Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/wl_window?download=true
inline.NumInlined: 271
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xdgToplevelHandleConfigure:bb.a
  %i.r = tail call i32 @_glfw_max(i32 noundef 0, i32 noundef %i.q) #19
  store i32 %i.r, ptr %i.b, align 8, !tbaa !377
  %i.s = add nsw i32 %3, -28
  %i.t = tail call i32 @_glfw_max(i32 noundef 0, i32 noundef %i.s) #19
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 %2, ptr %i.b, align 8, !tbaa !377
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.u = load i32, ptr %i.a, align 8, !tbaa !184
  store i32 %i.u, ptr %i.b, align 8, !tbaa !377
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.w = load i32, ptr %i.v, align 4, !tbaa !186
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i32 [ %i.t, %bb.g ], [ %3, %bb.h ], [ %i.w, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 988
  store i32 %.sink, ptr %i.x, align 4, !tbaa !376
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xdgToplevelHandleClose(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  tail call void @_glfwInputWindowCloseRequest(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xdgDecorationHandleConfigure(ptr noundef initializes((1032, 1036)) %0, ptr nofree readnone captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 %2, ptr %i.a, align 8, !tbaa !290
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !208
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @createFallbackDecorations(ptr noundef nonnull %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @destroyFallbackDecorations(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xdgActivationHandleDone(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281
  %.not = icmp eq ptr %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133944), align 8, !tbaa !287 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.h = tail call i32 %i.g(ptr noundef %i.c) #19, !inline_history !625
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.f(ptr noundef %i.c, i32 noundef 2, ptr noundef null, i32 noundef %i.h, i32 noundef 0, ptr noundef %2, ptr noundef %i.e) #19, !inline_history !625 ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !281  ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.m = tail call i32 %i.l(ptr noundef %i.j) #19, !inline_history !10
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.k(ptr noundef %i.j, i32 noundef 4, ptr noundef null, i32 noundef %i.m, i32 noundef 1) #19, !inline_history !10 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !281
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createFallbackEdge(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 24)) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 -2147483624, -2147483648) %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133832), align 8, !tbaa !133 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.d = tail call i32 %i.c(ptr noundef %i.a) #19, !inline_history !626
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.b(ptr noundef %i.a, i32 noundef 0, ptr noundef nonnull @_glfw_wl_surface_interface, i32 noundef %i.d, i32 noundef 0, ptr noundef null) #19, !inline_history !626 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !296
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137704), align 8, !tbaa !632
  tail call void %i.f(ptr noundef %i.e, ptr noundef %0) #19, !inline_history !627
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8, !tbaa !248
  %i.h = load ptr, ptr %1, align 8, !tbaa !296
  tail call void %i.g(ptr noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 134176)) #19
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133840), align 8, !tbaa !633 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !296
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.m = tail call i32 %i.l(ptr noundef %i.i) #19, !inline_history !628
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.k(ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @_glfw_wl_subsurface_interface, i32 noundef %i.m, i32 noundef 0, ptr noundef null, ptr noundef %i.j, ptr noundef %2) #19, !inline_history !628 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !297
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.r = tail call i32 %i.q(ptr noundef %i.n) #19, !inline_history !4
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.p(ptr noundef %i.n, i32 noundef 1, ptr noundef null, i32 noundef %i.r, i32 noundef 0, i32 noundef %4, i32 noundef %5) #19, !inline_history !4 ; 0 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133912), align 8, !tbaa !252 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !296
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.x = tail call i32 %i.w(ptr noundef %i.t) #19, !inline_history !629
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.v(ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull @_glfw_wp_viewport_interface, i32 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef %i.u) #19, !inline_history !629 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !298
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.ac = tail call i32 %i.ab(ptr noundef %i.y) #19, !inline_history !3
  %i.ad = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aa(ptr noundef %i.y, i32 noundef 2, ptr noundef null, i32 noundef %i.ac, i32 noundef 0, i32 noundef %6, i32 noundef %7) #19, !inline_history !3 ; 0 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !296   ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae) #19, !inline_history !20
  %i.ai = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.af(ptr noundef %i.ae, i32 noundef 1, ptr noundef null, i32 noundef %i.ah, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef 0) #19, !inline_history !20 ; 0 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133832), align 8, !tbaa !133 ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.am = tail call i32 %i.al(ptr noundef %i.aj) #19, !inline_history !8
  %i.an = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ak(ptr noundef %i.aj, i32 noundef 1, ptr noundef nonnull @_glfw_wl_region_interface, i32 noundef %i.am, i32 noundef 0, ptr noundef null) #19, !inline_history !8 ; 5 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.aq = tail call i32 %i.ap(ptr noundef %i.an) #19, !inline_history !630
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ao(ptr noundef %i.an, i32 noundef 1, ptr noundef null, i32 noundef %i.aq, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7) #19, !inline_history !630 ; 0 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !296   ; 2 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.av = tail call i32 %i.au(ptr noundef %i.as) #19, !inline_history !631
  %i.aw = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.at(ptr noundef %i.as, i32 noundef 4, ptr noundef null, i32 noundef %i.av, i32 noundef 0, ptr noundef %i.an) #19, !inline_history !631 ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !296   ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.ba = tail call i32 %i.az(ptr noundef %i.ax) #19, !inline_history !2
  %i.bb = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ay(ptr noundef %i.ax, i32 noundef 6, ptr noundef null, i32 noundef %i.ba, i32 noundef 0) #19, !inline_history !2 ; 0 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.be = tail call i32 %i.bd(ptr noundef %i.an) #19, !inline_history !9
  %i.bf = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bc(ptr noundef %i.an, i32 noundef 0, ptr noundef null, i32 noundef %i.be, i32 noundef 1) #19, !inline_history !9 ; 0 uses
  ret void
}

declare void @_glfwDetectJoystickConnectionLinux() local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal void @callbackHandleDone(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137672), align 8, !tbaa !191
  tail call void %i.a(ptr noundef %1) #19, !inline_history !16
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @memfd_create(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #17

declare i32 @posix_fallocate(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define internal void @relativePointerHandleRelativeMotion(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !324
  %.not = icmp eq i32 %i.b, 212995
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.e = load i32, ptr %i.d, align 8, !tbaa !634
  %.not16 = icmp eq i32 %i.e, 0                   ; 2 uses
  %8 = load <2 x double>, ptr %i.c, align 8, !tbaa !235
  %.18.a = select i1 %.not16, i32 %4, i32 %6
  %.18 = select i1 %.not16, i32 %5, i32 %7
  %9 = insertelement <2 x i32> poison, i32 %.18.a, i64 0
  %10 = insertelement <2 x i32> %9, i32 %.18, i64 1
  %11 = sext <2 x i32> %10 to <2 x i64>
  %12 = add nsw <2 x i64> %11, splat (i64 4807592602218004480)
  %13 = bitcast <2 x i64> %12 to <2 x double>
  %14 = fadd <2 x double> %13, splat (double f0xC2B8000000000000)
  %15 = fadd <2 x double> %8, %14                 ; 2 uses
  %16 = extractelement <2 x double> %15, i64 0
  %17 = extractelement <2 x double> %15, i64 1
  tail call void @_glfwInputCursorPos(ptr noundef nonnull %0, double noundef %16, double noundef %17) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @lockedPointerHandleLocked(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @lockedPointerHandleUnlocked(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @confinedPointerHandleConfined(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @confinedPointerHandleUnconfined(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dataSourceHandleTarget(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134144), align 8, !tbaa !345
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.89) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dataSourceHandleSend(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134144), align 8, !tbaa !345
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef %2) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134256), align 8, !tbaa !347 ; 2 uses
  %.not1822 = icmp eq i64 %i.c, 0
  br i1 %.not1822, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134248), align 8, !tbaa !346
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.01324 = phi i64 [ %.1, %bb.f ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.01423 = phi ptr [ %.115, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %i.e = tail call i64 @write(i32 noundef %3, ptr noundef %.01423, i64 noundef %.01324) #19 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__errno_location() #20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !196  ; 2 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.f, label %.thread, !llvm.loop !635

.thread:                                          ; preds = %bb.d
  %i.j = tail call ptr @strerror(i32 noundef %i.h) #19
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.91, ptr noundef %i.j) #19
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.k = sub i64 %.01324, %i.e
  %i.l = getelementptr inbounds i8, ptr %.01423, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.115 = phi ptr [ %i.l, %bb.e ], [ %.01423, %bb.d ]
  %.1 = phi i64 [ %i.k, %bb.e ], [ %.01324, %bb.d ] ; 2 uses
  %.not18 = icmp eq i64 %.1, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %.thread, %bb.c, %bb.b
  %i.m = tail call i32 @close(i32 noundef %3) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dataSourceHandleCancelled(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137736), align 8, !tbaa !182
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137728), align 8, !tbaa !134
  %i.c = tail call i32 %i.b(ptr noundef %1) #19, !inline_history !28
  %i.d = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.a(ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef %i.c, i32 noundef 1) #19, !inline_history !28 ; 0 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134144), align 8, !tbaa !345
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134144), align 8, !tbaa !345
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}
!llvm.errno.tbaa = !{!41}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null, null}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null, null}
!18 = distinct !{null, null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{null, null}
!32 = distinct !{null, null}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"omnipotent char", !37, i64 0}
!39 = !{!"int", !38, i64 0}
!40 = !{!"__libc_errno", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"any pointer", !38, i64 0}
!43 = !{!"GLFWallocator", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!44 = !{!"_GLFWplatform", !39, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !42, i64 376, !42, i64 384, !42, i64 392, !42, i64 400, !42, i64 408, !42, i64 416, !42, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !42, i64 480, !42, i64 488, !42, i64 496, !42, i64 504, !42, i64 512, !42, i64 520, !42, i64 528, !42, i64 536, !42, i64 544, !42, i64 552, !42, i64 560, !42, i64 568, !42, i64 576, !42, i64 584, !42, i64 592, !42, i64 600, !42, i64 608, !42, i64 616}
!45 = !{!"_Bool", !38, i64 0}
!46 = !{!"", !45, i64 0, !45, i64 1}
!47 = !{!"", !45, i64 0}
!48 = !{!"", !39, i64 0, !39, i64 4}
!49 = !{!"_GLFWinitconfig", !45, i64 0, !39, i64 4, !39, i64 8, !42, i64 16, !46, i64 24, !47, i64 26, !48, i64 28}
!50 = !{!"long", !38, i64 0}
!51 = !{!"_GLFWfbconfig", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !45, i64 44, !39, i64 48, !45, i64 52, !45, i64 53, !45, i64 54, !45, i64 55, !50, i64 56}
!52 = !{!"", !38, i64 0}
!53 = !{!"", !38, i64 0, !38, i64 256}
!54 = !{!"_GLFWwndconfig", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !45, i64 16, !45, i64 17, !45, i64 18, !45, i64 19, !45, i64 20, !45, i64 21, !45, i64 22, !45, i64 23, !45, i64 24, !45, i64 25, !45, i64 26, !45, i64 27, !52, i64 28, !53, i64 284, !46, i64 796, !52, i64 798}
!55 = !{!"p1 _ZTS11_GLFWwindow", !42, i64 0}
!56 = !{!"_GLFWctxconfig", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !45, i64 16, !45, i64 17, !45, i64 18, !39, i64 20, !39, i64 24, !39, i64 28, !55, i64 32, !47, i64 40}
!57 = !{!"", !49, i64 0, !51, i64 40, !54, i64 104, !56, i64 1160, !39, i64 1208}
!58 = !{!"p1 _ZTS10_GLFWerror", !42, i64 0}
!59 = !{!"p1 _ZTS11_GLFWcursor", !42, i64 0}
!60 = !{!"any p2 pointer", !42, i64 0}
!61 = !{!"p2 _ZTS12_GLFWmonitor", !60, i64 0}
!62 = !{!"p1 _ZTS12_GLFWmapping", !42, i64 0}
!63 = !{!"_GLFWtlsPOSIX", !39, i64 0, !39, i64 4}
!64 = !{!"_GLFWtls", !63, i64 0}
!65 = !{!"_GLFWmutexPOSIX", !39, i64 0, !38, i64 8}
!66 = !{!"_GLFWmutex", !65, i64 0}
!67 = !{!"_GLFWtimerPOSIX", !39, i64 0, !50, i64 8}
!68 = !{!"", !50, i64 0, !67, i64 8}
!69 = !{!"", !39, i64 0, !42, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !45, i64 28, !45, i64 29, !45, i64 30, !45, i64 31, !45, i64 32, !45, i64 33, !45, i64 34, !45, i64 35, !45, i64 36, !45, i64 37, !45, i64 38, !45, i64 39, !45, i64 40, !45, i64 41, !45, i64 42, !45, i64 43, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200}
!70 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56}
!71 = !{!"", !39, i64 0, !42, i64 8, !38, i64 16, !42, i64 32, !45, i64 40, !45, i64 41, !45, i64 42, !45, i64 43, !45, i64 44, !45, i64 45, !45, i64 46, !45, i64 47}
!72 = !{!"", !42, i64 0, !42, i64 8}
!73 = !{!"p1 _ZTS10wl_display", !42, i64 0}
!74 = !{!"p1 _ZTS11wl_registry", !42, i64 0}
!75 = !{!"p1 _ZTS13wl_compositor", !42, i64 0}
!76 = !{!"p1 _ZTS16wl_subcompositor", !42, i64 0}
!77 = !{!"p1 _ZTS6wl_shm", !42, i64 0}
!78 = !{!"p1 _ZTS7wl_seat", !42, i64 0}
!79 = !{!"p1 _ZTS10wl_pointer", !42, i64 0}
!80 = !{!"p1 _ZTS11wl_keyboard", !42, i64 0}
!81 = !{!"p1 _ZTS22wl_data_device_manager", !42, i64 0}
!82 = !{!"p1 _ZTS14wl_data_device", !42, i64 0}
!83 = !{!"p1 _ZTS11xdg_wm_base", !42, i64 0}
!84 = !{!"p1 _ZTS26zxdg_decoration_manager_v1", !42, i64 0}
!85 = !{!"p1 _ZTS13wp_viewporter", !42, i64 0}
!86 = !{!"p1 _ZTS31zwp_relative_pointer_manager_v1", !42, i64 0}
!87 = !{!"p1 _ZTS26zwp_pointer_constraints_v1", !42, i64 0}
!88 = !{!"p1 _ZTS27zwp_idle_inhibit_manager_v1", !42, i64 0}
!89 = !{!"p1 _ZTS17xdg_activation_v1", !42, i64 0}
!90 = !{!"p1 _ZTS30wp_fractional_scale_manager_v1", !42, i64 0}
!91 = !{!"p1 _ZTS19wp_color_manager_v1", !42, i64 0}
!92 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !38, i64 32, !38, i64 76, !38, i64 132}
!93 = !{!"p1 _ZTS17_GLFWofferWayland", !42, i64 0}
!94 = !{!"p1 _ZTS13wl_data_offer", !42, i64 0}
!95 = !{!"p1 _ZTS14wl_data_source", !42, i64 0}
!96 = !{!"p1 omnipotent char", !42, i64 0}
!97 = !{!"p1 _ZTS10wl_surface", !42, i64 0}
!98 = !{!"p1 _ZTS15wl_cursor_theme", !42, i64 0}
!99 = !{!"double", !38, i64 0}
!100 = !{!"", !97, i64 0, !39, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !39, i64 64, !39, i64 68}
!101 = !{!"p1 _ZTS11xkb_context", !42, i64 0}
!102 = !{!"p1 _ZTS10xkb_keymap", !42, i64 0}
!103 = !{!"p1 _ZTS9xkb_state", !42, i64 0}
!104 = !{!"p1 _ZTS17xkb_compose_state", !42, i64 0}
!105 = !{!"", !42, i64 0, !101, i64 8, !102, i64 16, !103, i64 24, !104, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240}
!106 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208}
!107 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32}
!108 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!109 = !{!"p1 _ZTS8libdecor", !42, i64 0}
!110 = !{!"", !42, i64 0, !109, i64 8, !39, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224}
!111 = !{!"_GLFWlibraryWayland", !73, i64 0, !74, i64 8, !75, i64 16, !76, i64 24, !77, i64 32, !78, i64 40, !79, i64 48, !80, i64 56, !81, i64 64, !82, i64 72, !83, i64 80, !84, i64 88, !85, i64 96, !86, i64 104, !87, i64 112, !88, i64 120, !89, i64 128, !90, i64 136, !91, i64 144, !92, i64 152, !93, i64 304, !39, i64 312, !94, i64 320, !95, i64 328, !94, i64 336, !55, i64 344, !39, i64 352, !39, i64 356, !96, i64 360, !97, i64 368, !98, i64 376, !98, i64 384, !97, i64 392, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !96, i64 432, !50, i64 440, !38, i64 448, !38, i64 960, !38, i64 1658, !100, i64 3408, !105, i64 3480, !55, i64 3728, !106, i64 3736, !107, i64 3952, !108, i64 3992, !110, i64 4024}
!112 = !{!"p1 _ZTS9_XDisplay", !42, i64 0}
!113 = !{!"float", !38, i64 0}
!114 = !{!"p1 _ZTS4_XIM", !42, i64 0}
!115 = !{!"", !42, i64 0, !39, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !42, i64 376, !42, i64 384, !42, i64 392, !42, i64 400, !42, i64 408, !42, i64 416, !42, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !42, i64 480, !42, i64 488, !42, i64 496, !42, i64 504, !42, i64 512, !42, i64 520, !42, i64 528, !42, i64 536, !42, i64 544, !42, i64 552, !42, i64 560, !42, i64 568, !42, i64 576, !42, i64 584, !42, i64 592, !42, i64 600, !42, i64 608, !42, i64 616, !42, i64 624, !42, i64 632, !42, i64 640, !42, i64 648, !42, i64 656, !42, i64 664, !42, i64 672, !42, i64 680, !42, i64 688, !42, i64 696}
!116 = !{!"", !39, i64 0, !42, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168}
!117 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96}
!118 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16}
!119 = !{!"", !39, i64 0, !50, i64 8, !50, i64 16}
!120 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!121 = !{!"", !39, i64 0, !42, i64 8, !39, i64 16, !39, i64 20, !42, i64 24, !42, i64 32, !42, i64 40}
!122 = !{!"", !39, i64 0, !42, i64 8, !39, i64 16, !39, i64 20, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
end_hunk_0
begin_hunk_1_@pipe2
!434 = distinct !{null, null}
!435 = distinct !{null, null}
!436 = distinct !{null, null}
!437 = distinct !{null, null}
!438 = distinct !{null, null}
!439 = distinct !{null, null}
!440 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!441 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!442 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!443 = !{!54, !45, i64 27}
!444 = !{!54, !45, i64 22}
!445 = !{!51, !45, i64 55}
!446 = !{!132, !90, i64 133952}
!447 = !{!56, !39, i64 0}
!448 = !{!56, !39, i64 4}
!449 = !{!132, !42, i64 137816}
!450 = !{!132, !42, i64 137624}
!451 = !{!132, !42, i64 137744}
!452 = !{!132, !42, i64 137760}
!453 = !{!172, !39, i64 976}
!454 = !{!54, !45, i64 25}
!455 = !{!54, !45, i64 17}
!456 = distinct !{null}
!457 = distinct !{!457, !180}
!458 = distinct !{null}
!459 = distinct !{null, null, null}
!460 = distinct !{null, null, null}
!461 = distinct !{null, null}
!462 = distinct !{null, null}
!463 = distinct !{null, null}
!464 = distinct !{null, null}
!465 = distinct !{null, null}
!466 = distinct !{null, null}
!467 = distinct !{null, null}
!468 = distinct !{null, null, null}
!469 = distinct !{null, null}
!470 = distinct !{null, null, null}
!471 = distinct !{null, null}
!472 = distinct !{null, null}
!473 = distinct !{null, null}
!474 = distinct !{null, null, null}
!475 = distinct !{null, null, null}
!476 = distinct !{null, null}
!477 = distinct !{null}
!478 = !{!132, !39, i64 137856}
!479 = !{!132, !42, i64 137896}
!480 = !{!132, !42, i64 137912}
!481 = !{!172, !96, i64 96}
!482 = !{!132, !42, i64 137952}
!483 = !{!132, !83, i64 133896}
!484 = !{!132, !84, i64 133904}
!485 = distinct !{null}
!486 = distinct !{null}
!487 = distinct !{null}
!488 = distinct !{null}
!489 = distinct !{null}
!490 = distinct !{null}
!491 = distinct !{null}
!492 = distinct !{null}
!493 = distinct !{null}
!494 = !{!172, !42, i64 656}
!495 = !{!132, !42, i64 137752}
!496 = !{!132, !42, i64 137648}
!497 = !{!132, !42, i64 137824}
!498 = distinct !{null}
!499 = !{!172, !39, i64 104}
!500 = distinct !{null}
!501 = distinct !{null}
!502 = !{!113, !113, i64 0}
!503 = distinct !{null}
!504 = !{!132, !42, i64 137992}
!505 = distinct !{null}
!506 = distinct !{null}
!507 = distinct !{null}
!508 = distinct !{null}
!509 = distinct !{null}
!510 = distinct !{null, null}
!511 = distinct !{null, null, null}
!512 = distinct !{null}
!513 = distinct !{null, null}
!514 = distinct !{null, null, null}
!515 = !{!132, !42, i64 137944}
!516 = !{!132, !42, i64 138000}
!517 = distinct !{null}
!518 = distinct !{null, null}
!519 = distinct !{null, null}
!520 = distinct !{null, null}
!521 = distinct !{!521, !180}
!522 = distinct !{!522, !180}
!523 = distinct !{!523, !180}
!524 = distinct !{null, null}
!525 = distinct !{!525, !180}
!526 = !{!132, !39, i64 1916}
!527 = !{!132, !42, i64 137888}
!528 = !{!132, !42, i64 137616}
!529 = !{!132, !42, i64 137576}
!530 = !{!55, !55, i64 0}
!531 = !{!317, !39, i64 48}
!532 = !{!320, !39, i64 0}
!533 = distinct !{null}
!534 = distinct !{null, null}
!535 = distinct !{null, null}
!536 = distinct !{null, null}
!537 = !{!132, !42, i64 137456}
!538 = !{!132, !42, i64 137416}
!539 = !{!132, !42, i64 137480}
!540 = !{!317, !39, i64 40}
!541 = !{!317, !39, i64 44}
!542 = distinct !{null}
!543 = distinct !{null}
!544 = distinct !{null}
!545 = distinct !{!545, !180}
!546 = !{!132, !77, i64 133848}
!547 = !{!317, !314, i64 16}
!548 = distinct !{null}
!549 = distinct !{null}
!550 = distinct !{null}
!551 = distinct !{null}
!552 = !{!132, !86, i64 133920}
!553 = distinct !{null}
!554 = distinct !{null}
!555 = distinct !{null}
!556 = !{!315, !164, i64 16}
!557 = !{!315, !39, i64 32}
!558 = !{!315, !39, i64 36}
!559 = !{!315, !39, i64 40}
!560 = !{!340, !39, i64 16}
!561 = !{!315, !39, i64 24}
!562 = !{!315, !39, i64 28}
!563 = distinct !{null}
!564 = distinct !{null}
!565 = distinct !{null}
!566 = distinct !{null}
!567 = !{!132, !81, i64 133880}
!568 = !{!132, !82, i64 133888}
!569 = !{!132, !45, i64 133514}
!570 = !{!132, !45, i64 133792}
!571 = !{!"VkWaylandSurfaceCreateInfoKHR", !39, i64 0, !42, i64 8, !39, i64 16, !73, i64 24, !97, i64 32}
!572 = !{!571, !39, i64 0}
!573 = !{!571, !73, i64 24}
!574 = !{!571, !97, i64 32}
!575 = distinct !{null}
!576 = distinct !{!576, !180}
!577 = !{!224, !39, i64 8}
!578 = distinct !{null}
!579 = distinct !{null}
!580 = distinct !{null}
!581 = distinct !{null}
!582 = distinct !{null}
!583 = distinct !{null}
!584 = distinct !{null}
!585 = distinct !{null}
!586 = distinct !{null}
!587 = !{!132, !99, i64 137240}
!588 = !{!132, !99, i64 137248}
!589 = distinct !{null}
!590 = distinct !{null, null}
!591 = distinct !{null, null}
!592 = distinct !{null, null}
!593 = distinct !{null, null}
!594 = distinct !{null, null}
!595 = !{!340, !39, i64 8}
!596 = !{!340, !39, i64 12}
!597 = !{!340, !39, i64 0}
!598 = !{!340, !39, i64 4}
!599 = distinct !{null, null}
!600 = distinct !{null, null}
!601 = distinct !{null, null}
!602 = !{!132, !42, i64 137384}
!603 = !{!132, !101, i64 137304}
!604 = !{!132, !42, i64 137424}
!605 = !{!132, !42, i64 137392}
!606 = !{!132, !42, i64 137488}
!607 = !{!132, !42, i64 137504}
!608 = !{!132, !42, i64 137496}
!609 = !{!132, !42, i64 137432}
!610 = !{!132, !42, i64 137400}
!611 = !{!132, !42, i64 137408}
!612 = !{!342, !50, i64 8}
!613 = !{!342, !50, i64 0}
!614 = !{!132, !42, i64 137448}
!615 = !{!132, !42, i64 137464}
!616 = !{!172, !50, i64 1096}
!617 = !{!271, !39, i64 280}
!618 = distinct !{!618, !180}
!619 = !{i64 0, i64 8, !372, i64 8, i64 4, !196}
!620 = distinct !{null}
!621 = distinct !{!621, !180}
!622 = !{!"wl_array", !50, i64 0, !50, i64 8, !42, i64 16}
!623 = !{!622, !42, i64 16}
!624 = !{!622, !50, i64 0}
!625 = distinct !{null}
!626 = distinct !{null}
!627 = distinct !{null}
!628 = distinct !{null}
!629 = distinct !{null}
!630 = distinct !{null}
!631 = distinct !{null}
!632 = !{!132, !42, i64 137704}
!633 = !{!132, !76, i64 133840}
!634 = !{!172, !39, i64 528}
!635 = distinct !{!635, !180}
end_hunk_1
