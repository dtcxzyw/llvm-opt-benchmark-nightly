Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/wl_window?download=true
inline.NumInlined: 195
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xdgToplevelHandleConfigure:bb.a
  store i32 %i.r, ptr %i.b, align 8, !tbaa !322
  %i.s = add nsw i32 %3, -28
  %i.t = tail call i32 @_glfw_max(i32 noundef 0, i32 noundef %i.s) #19
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i32 %2, ptr %i.b, align 8, !tbaa !322
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.u = load i32, ptr %i.a, align 8, !tbaa !164
  store i32 %i.u, ptr %i.b, align 8, !tbaa !322
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.w = load i32, ptr %i.v, align 4, !tbaa !166
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink = phi i32 [ %i.t, %bb.g ], [ %3, %bb.h ], [ %i.w, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 932
  store i32 %.sink, ptr %i.x, align 4, !tbaa !321
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xdgToplevelHandleClose(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  tail call void @_glfwInputWindowCloseRequest(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xdgDecorationHandleConfigure(ptr noundef initializes((976, 980)) %0, ptr nofree readnone captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i32 %2, ptr %i.a, align 8, !tbaa !246
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !229
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237
  %.not = icmp eq ptr %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134016), align 8, !tbaa !243 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.h = tail call i32 %i.g(ptr noundef %i.c) #19, !inline_history !519
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.f(ptr noundef %i.c, i32 noundef 2, ptr noundef null, i32 noundef %i.h, i32 noundef 0, ptr noundef %2, ptr noundef %i.e) #19, !inline_history !519 ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.m = tail call i32 %i.l(ptr noundef %i.j) #19, !inline_history !8
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.k(ptr noundef %i.j, i32 noundef 4, ptr noundef null, i32 noundef %i.m, i32 noundef 1) #19, !inline_history !8 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !237
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createFallbackEdge(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 24)) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 -2147483624, -2147483648) %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !119 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.d = tail call i32 %i.c(ptr noundef %i.a) #19, !inline_history !520
  %i.e = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.b(ptr noundef %i.a, i32 noundef 0, ptr noundef nonnull @_glfw_wl_surface_interface, i32 noundef %i.d, i32 noundef 0, ptr noundef null) #19, !inline_history !520 ; 2 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !253
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137496), align 8, !tbaa !526
  tail call void %i.f(ptr noundef %i.e, ptr noundef %0) #19, !inline_history !521
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137512), align 8, !tbaa !205
  %i.h = load ptr, ptr %1, align 8, !tbaa !253
  tail call void %i.g(ptr noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 134088)) #19
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133912), align 8, !tbaa !527 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !253
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.m = tail call i32 %i.l(ptr noundef %i.i) #19, !inline_history !522
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.k(ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @_glfw_wl_subsurface_interface, i32 noundef %i.m, i32 noundef 0, ptr noundef null, ptr noundef %i.j, ptr noundef %2) #19, !inline_history !522 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !252
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.r = tail call i32 %i.q(ptr noundef %i.n) #19, !inline_history !3
  %i.s = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.p(ptr noundef %i.n, i32 noundef 1, ptr noundef null, i32 noundef %i.r, i32 noundef 0, i32 noundef %4, i32 noundef %5) #19, !inline_history !3 ; 0 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133984), align 8, !tbaa !207 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !253
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.x = tail call i32 %i.w(ptr noundef %i.t) #19, !inline_history !523
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.v(ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull @_glfw_wp_viewport_interface, i32 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef %i.u) #19, !inline_history !523 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !254
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.ac = tail call i32 %i.ab(ptr noundef %i.y) #19, !inline_history !2
  %i.ad = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.aa(ptr noundef %i.y, i32 noundef 2, ptr noundef null, i32 noundef %i.ac, i32 noundef 0, i32 noundef %6, i32 noundef %7) #19, !inline_history !2 ; 0 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !253   ; 2 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae) #19, !inline_history !17
  %i.ai = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.af(ptr noundef %i.ae, i32 noundef 1, ptr noundef null, i32 noundef %i.ah, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef 0) #19, !inline_history !17 ; 0 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8, !tbaa !119 ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.am = tail call i32 %i.al(ptr noundef %i.aj) #19, !inline_history !6
  %i.an = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ak(ptr noundef %i.aj, i32 noundef 1, ptr noundef nonnull @_glfw_wl_region_interface, i32 noundef %i.am, i32 noundef 0, ptr noundef null) #19, !inline_history !6 ; 5 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.aq = tail call i32 %i.ap(ptr noundef %i.an) #19, !inline_history !524
  %i.ar = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ao(ptr noundef %i.an, i32 noundef 1, ptr noundef null, i32 noundef %i.aq, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %6, i32 noundef %7) #19, !inline_history !524 ; 0 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !253   ; 2 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.av = tail call i32 %i.au(ptr noundef %i.as) #19, !inline_history !525
  %i.aw = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.at(ptr noundef %i.as, i32 noundef 4, ptr noundef null, i32 noundef %i.av, i32 noundef 0, ptr noundef %i.an) #19, !inline_history !525 ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !253   ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.ba = tail call i32 %i.az(ptr noundef %i.ax) #19, !inline_history !1
  %i.bb = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ay(ptr noundef %i.ax, i32 noundef 6, ptr noundef null, i32 noundef %i.ba, i32 noundef 0) #19, !inline_history !1 ; 0 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.be = tail call i32 %i.bd(ptr noundef %i.an) #19, !inline_history !7
  %i.bf = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bc(ptr noundef %i.an, i32 noundef 0, ptr noundef null, i32 noundef %i.be, i32 noundef 1) #19, !inline_history !7 ; 0 uses
  ret void
}

declare void @_glfwDetectJoystickConnectionLinux() local_unnamed_addr #2

declare i32 @_glfwPollPOSIX(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @memfd_create(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #16

declare i32 @posix_fallocate(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal void @relativePointerHandleRelativeMotion(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !278
  %.not = icmp eq i32 %i.b, 212995
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = load i32, ptr %i.d, align 8, !tbaa !528
  %.not16 = icmp eq i32 %i.e, 0                   ; 2 uses
  %8 = load <2 x double>, ptr %i.c, align 8, !tbaa !255
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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !301
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.74) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dataSourceHandleSend(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !301
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(25) @.str.32) #21
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134160), align 8, !tbaa !302 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21 ; 2 uses
  %.not2024 = icmp eq i64 %i.d, 0
  br i1 %.not2024, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.01426 = phi i64 [ %.1, %bb.f ], [ %i.d, %bb.c ] ; 3 uses
  %.01525 = phi ptr [ %.116, %bb.f ], [ %i.c, %bb.c ] ; 3 uses
  %i.e = tail call i64 @write(i32 noundef %3, ptr noundef %.01525, i64 noundef %.01426) #19 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__errno_location() #20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !171  ; 2 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d
  %i.j = tail call ptr @strerror(i32 noundef %i.h) #19
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.75, ptr noundef %i.j) #19
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.k = sub i64 %.01426, %i.e
  %i.l = getelementptr inbounds i8, ptr %.01525, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.116 = phi ptr [ %i.l, %bb.e ], [ %.01525, %bb.d ]
  %.1 = phi i64 [ %i.k, %bb.e ], [ %.01426, %bb.d ] ; 2 uses
  %.not20 = icmp eq i64 %.1, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %.thread, %bb.c, %bb.a, %bb.b
  %i.m = tail call i32 @close(i32 noundef %3) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dataSourceHandleCancelled(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.c = tail call i32 %i.b(ptr noundef %1) #19, !inline_history !23
  %i.d = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.a(ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef %i.c, i32 noundef 1) #19, !inline_history !23 ; 0 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !301
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134056), align 8, !tbaa !301
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

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
!10 = distinct !{null, null}
!11 = distinct !{null, null}
!12 = distinct !{null, null}
!13 = distinct !{null}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"GLFWallocator", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!34 = !{!"_GLFWplatform", !29, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !32, i64 112, !32, i64 120, !32, i64 128, !32, i64 136, !32, i64 144, !32, i64 152, !32, i64 160, !32, i64 168, !32, i64 176, !32, i64 184, !32, i64 192, !32, i64 200, !32, i64 208, !32, i64 216, !32, i64 224, !32, i64 232, !32, i64 240, !32, i64 248, !32, i64 256, !32, i64 264, !32, i64 272, !32, i64 280, !32, i64 288, !32, i64 296, !32, i64 304, !32, i64 312, !32, i64 320, !32, i64 328, !32, i64 336, !32, i64 344, !32, i64 352, !32, i64 360, !32, i64 368, !32, i64 376, !32, i64 384, !32, i64 392, !32, i64 400, !32, i64 408, !32, i64 416, !32, i64 424, !32, i64 432, !32, i64 440, !32, i64 448, !32, i64 456, !32, i64 464, !32, i64 472, !32, i64 480, !32, i64 488, !32, i64 496, !32, i64 504, !32, i64 512, !32, i64 520, !32, i64 528, !32, i64 536, !32, i64 544, !32, i64 552, !32, i64 560, !32, i64 568}
!35 = !{!"", !29, i64 0, !29, i64 4}
!36 = !{!"", !29, i64 0}
!37 = !{!"_GLFWinitconfig", !29, i64 0, !29, i64 4, !29, i64 8, !32, i64 16, !35, i64 24, !36, i64 32, !36, i64 36}
!38 = !{!"long", !28, i64 0}
!39 = !{!"_GLFWfbconfig", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !38, i64 64}
!40 = !{!"p1 omnipotent char", !32, i64 0}
!41 = !{!"", !28, i64 0}
!42 = !{!"", !28, i64 0, !28, i64 256}
!43 = !{!"_GLFWwndconfig", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !40, i64 16, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !29, i64 64, !29, i64 68, !41, i64 72, !42, i64 328, !35, i64 840, !41, i64 848}
!44 = !{!"p1 _ZTS11_GLFWwindow", !32, i64 0}
!45 = !{!"_GLFWctxconfig", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !44, i64 40, !36, i64 48}
!46 = !{!"", !37, i64 0, !39, i64 40, !43, i64 112, !45, i64 1216, !29, i64 1272}
!47 = !{!"p1 _ZTS10_GLFWerror", !32, i64 0}
end_hunk_0
begin_hunk_1_@llvm.assume
!328 = distinct !{null, null}
!329 = !{!118, !32, i64 137600}
!330 = !{!118, !32, i64 137816}
!331 = !{!118, !32, i64 137808}
!332 = !{!153, !138, i64 1152}
!333 = !{!153, !138, i64 1176}
!334 = !{!153, !146, i64 1192}
!335 = !{!153, !138, i64 1200}
!336 = !{!153, !146, i64 1216}
!337 = !{!153, !138, i64 1224}
!338 = distinct !{null}
!339 = distinct !{null}
!340 = !{!118, !29, i64 134080}
!341 = distinct !{null}
!342 = distinct !{null}
!343 = distinct !{null, null}
!344 = distinct !{null}
!345 = distinct !{null, null}
!346 = distinct !{null, null, null}
!347 = distinct !{null, null, null}
!348 = distinct !{null, null, null}
!349 = distinct !{null, null, null}
!350 = distinct !{null, null}
!351 = distinct !{null, null}
!352 = distinct !{null, null}
!353 = distinct !{null, null}
!354 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!355 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!356 = distinct !{ptr @_glfwSetWindowMousePassthroughWayland, null}
!357 = !{!43, !29, i64 68}
!358 = !{!43, !29, i64 48}
!359 = !{!39, !29, i64 60}
!360 = !{!118, !79, i64 134024}
!361 = !{!45, !29, i64 0}
!362 = !{!45, !29, i64 4}
!363 = !{!118, !32, i64 137584}
!364 = !{!43, !29, i64 60}
!365 = !{!43, !29, i64 28}
!366 = distinct !{null}
!367 = distinct !{null}
!368 = distinct !{null, null, null}
!369 = distinct !{null, null, null}
!370 = distinct !{null, null}
!371 = distinct !{null, null}
!372 = distinct !{null, null}
!373 = distinct !{null, null}
!374 = distinct !{null, null}
!375 = distinct !{null, null}
!376 = distinct !{null, null}
!377 = distinct !{null, null, null}
!378 = distinct !{null, null}
!379 = distinct !{null, null, null}
!380 = distinct !{null, null}
!381 = distinct !{null, null}
!382 = distinct !{null, null}
!383 = distinct !{null, null, null}
!384 = distinct !{null, null, null}
!385 = distinct !{null, null}
!386 = distinct !{null}
!387 = !{!118, !29, i64 137632}
!388 = !{!118, !32, i64 137672}
!389 = !{!118, !32, i64 137688}
!390 = !{!153, !40, i64 96}
!391 = !{!118, !32, i64 137728}
!392 = !{!118, !32, i64 137424}
!393 = !{!118, !72, i64 133968}
!394 = !{!118, !73, i64 133976}
!395 = distinct !{null}
!396 = distinct !{null}
!397 = distinct !{null}
!398 = distinct !{null}
!399 = distinct !{null}
!400 = !{!153, !32, i64 640}
!401 = !{!118, !32, i64 137592}
!402 = distinct !{null}
!403 = !{!98, !98, i64 0}
!404 = distinct !{null}
!405 = !{!118, !32, i64 137768}
!406 = distinct !{null}
!407 = distinct !{null}
!408 = distinct !{null}
!409 = distinct !{null}
!410 = distinct !{null}
!411 = distinct !{null, null}
!412 = distinct !{null, null, null}
!413 = distinct !{null}
!414 = distinct !{null, null}
!415 = distinct !{null, null, null}
!416 = !{ptr @_glfwSetWindowSizeWayland}
!417 = !{!118, !32, i64 137720}
!418 = !{!118, !32, i64 137776}
!419 = distinct !{null}
!420 = distinct !{null, null}
!421 = distinct !{null, null}
!422 = distinct !{null, null}
!423 = !{!118, !29, i64 1932}
!424 = !{!118, !32, i64 137656}
!425 = !{!118, !32, i64 137440}
!426 = !{!118, !32, i64 137400}
!427 = !{!118, !32, i64 137392}
!428 = !{!44, !44, i64 0}
!429 = !{!118, !32, i64 137408}
!430 = !{!38, !38, i64 0}
!431 = !{!271, !29, i64 48}
!432 = !{!274, !29, i64 0}
!433 = !{!118, !32, i64 137664}
!434 = distinct !{null}
!435 = !{!118, !32, i64 137384}
!436 = distinct !{null, null}
!437 = distinct !{null, null}
!438 = distinct !{null, null}
!439 = distinct !{null, null}
!440 = distinct !{null, null}
!441 = distinct !{null, null}
!442 = distinct !{null, null}
!443 = distinct !{null, null}
!444 = distinct !{null, null}
!445 = !{!118, !75, i64 133992}
!446 = !{!118, !76, i64 134000}
!447 = !{!118, !32, i64 137288}
!448 = !{!118, !32, i64 137248}
!449 = !{!271, !29, i64 40}
!450 = !{!271, !29, i64 44}
!451 = distinct !{null}
!452 = distinct !{null}
!453 = distinct !{null}
!454 = !{!118, !66, i64 133920}
!455 = !{!271, !268, i64 16}
!456 = !{!269, !145, i64 16}
!457 = !{!269, !29, i64 32}
!458 = !{!269, !29, i64 36}
!459 = !{!269, !29, i64 40}
!460 = !{!296, !29, i64 16}
!461 = !{!269, !29, i64 24}
!462 = !{!269, !29, i64 28}
!463 = distinct !{null}
!464 = distinct !{null}
!465 = distinct !{null}
!466 = distinct !{null}
!467 = !{!118, !70, i64 133952}
!468 = !{!118, !71, i64 133960}
!469 = distinct !{null}
!470 = !{!118, !29, i64 133548}
!471 = !{!118, !29, i64 133840}
!472 = !{!"VkWaylandSurfaceCreateInfoKHR", !29, i64 0, !32, i64 8, !29, i64 16, !62, i64 24, !84, i64 32}
!473 = !{!472, !29, i64 0}
!474 = !{!472, !62, i64 24}
!475 = !{!472, !84, i64 32}
!476 = distinct !{null}
!477 = distinct !{null}
!478 = distinct !{null}
!479 = distinct !{null}
!480 = distinct !{null}
!481 = distinct !{null}
!482 = !{!118, !32, i64 137464}
!483 = !{!296, !29, i64 8}
!484 = !{!296, !29, i64 12}
!485 = !{!296, !29, i64 0}
!486 = !{!296, !29, i64 4}
!487 = distinct !{null}
!488 = distinct !{null}
!489 = distinct !{null}
!490 = !{!118, !32, i64 137216}
!491 = !{!118, !85, i64 137136}
!492 = !{!118, !32, i64 137256}
!493 = !{!118, !32, i64 137224}
!494 = !{!118, !32, i64 137304}
!495 = !{!118, !32, i64 137320}
!496 = !{!118, !32, i64 137312}
!497 = !{!118, !32, i64 137264}
!498 = !{!118, !32, i64 137232}
!499 = !{!118, !32, i64 137240}
!500 = !{!298, !38, i64 8}
!501 = !{!298, !38, i64 0}
!502 = !{!118, !32, i64 137280}
!503 = !{!118, !32, i64 137296}
!504 = !{!118, !29, i64 134144}
!505 = distinct !{null}
!506 = !{!118, !32, i64 137272}
!507 = !{!118, !32, i64 137336}
!508 = !{!118, !32, i64 137344}
!509 = !{!118, !32, i64 137352}
!510 = distinct !{null}
!511 = !{!153, !38, i64 1048}
!512 = !{!225, !29, i64 280}
!513 = !{!160, !159, i64 0}
!514 = !{i64 0, i64 8, !317, i64 8, i64 4, !171}
!515 = distinct !{null}
!516 = !{!"wl_array", !38, i64 0, !38, i64 8, !32, i64 16}
!517 = !{!516, !32, i64 16}
!518 = !{!516, !38, i64 0}
!519 = distinct !{null}
!520 = distinct !{null}
!521 = distinct !{null}
!522 = distinct !{null}
!523 = distinct !{null}
!524 = distinct !{null}
!525 = distinct !{null}
!526 = !{!118, !32, i64 137496}
!527 = !{!118, !65, i64 133912}
!528 = !{!153, !29, i64 520}
end_hunk_1
