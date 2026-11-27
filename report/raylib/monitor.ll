Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/monitor?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
begin_hunk_0
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid gamma ramp size %i\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputMonitor(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  switch i32 %1, label %.loopexit [
    i32 262145, label %bb.b
    i32 262146, label %.preheader28
  ]

.preheader28:                                     ; preds = %bb.a
  %.032 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1912), align 8 ; 2 uses
  %.not33 = icmp eq ptr %.032, null
  br i1 %.not33, label %.preheader, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1920), align 8
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call ptr @_glfw_realloc(ptr noundef %i.g, i64 noundef %i.i) #12 ; 4 uses
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1920), align 8
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = add nsw i64 %i.o, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.j, i64 %i.p, i1 false)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1920), align 8
  store ptr %0, ptr %i.q, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.j, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  store ptr %0, ptr %i.u, align 8
  br label %.loopexit

.preheader:                                       ; preds = %bb.f, %.preheader28
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1920), align 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader28, %bb.f
  %.034 = phi ptr [ %.0, %bb.f ], [ %.032, %.preheader28 ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 320), align 8
  call void %i.ab(ptr noundef nonnull %.034, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 432), align 8
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = load i32, ptr %i.b, align 4
  call void %i.ac(ptr noundef nonnull %.034, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 0) #12
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 360), align 8
  call void %i.af(ptr noundef nonnull %.034, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null) #12
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 312), align 8
  %i.ah = load i32, ptr %i.c, align 4
  %i.ai = load i32, ptr %i.d, align 4
  call void %i.ag(ptr noundef nonnull %.034, i32 noundef %i.ah, i32 noundef %i.ai) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0 = load ptr, ptr %.034, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.preheader, label %.lr.ph

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph37, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.an = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1928), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = sub nuw nsw i64 %i.ap, %indvars.iv
  %i.ar = shl nuw nsw i64 %i.aq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ao, i64 %i.ar, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.i, %bb.a, %bb.c, %bb.d
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133872), align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.as, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void %i.as(ptr noundef %0, i32 noundef %1) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.at = icmp eq i32 %1, 262146
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_glfwFreeMonitor(ptr noundef %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare ptr @_glfw_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @_glfwFreeMonitor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 208), align 8
  tail call void %i.b(ptr noundef nonnull %0) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_glfw_free(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_glfw_free(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_glfw_free(ptr noundef %i.h) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_glfw_free(ptr noundef %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @_glfw_free(ptr noundef %i.l) #12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_glfw_free(ptr noundef %i.n) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_glfw_free(ptr noundef %i.p) #12
  tail call void @_glfw_free(ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_glfwInputMonitorWindow(ptr nofree noundef writeonly captures(none) initializes((144, 152)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_glfwAllocMonitor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_glfw_calloc(i64 noundef 1, i64 noundef 320) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 %1, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  store i32 %2, ptr %3, align 4
  %i.c = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 127) #12 ; 0 uses
  ret ptr %i.a
}

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_glfwFreeGammaArrays(ptr nofree noundef captures(none) initializes((24, 32)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_glfw_free(ptr noundef %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @_glfw_free(ptr noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_glfw_free(ptr noundef %i.e) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

declare void @_glfw_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @_glfwAllocGammaArrays(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  store ptr %i.b, ptr %0, align 8
  %i.c = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call ptr @_glfw_calloc(i64 noundef %i.a, i64 noundef 2) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.g, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden ptr @_glfwChooseVideoMode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %.refreshVideoModes.exit_crit_edge

.refreshVideoModes.exit_crit_edge:                ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %refreshVideoModes.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 240), align 8
  %i.e = call ptr %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12, !inline_history !0 ; 4 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %refreshVideoModes.exit.thread, label %bb.c

refreshVideoModes.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 4
  %i.g = sext i32 %i.f to i64
  call void @qsort(ptr noundef nonnull %i.e, i64 noundef %i.g, i64 noundef 24, ptr noundef nonnull @compareVideoModes) #12
  %i.h = load ptr, ptr %i.b, align 8
  call void @_glfw_free(ptr noundef %i.h) #12
  store ptr %i.e, ptr %i.b, align 8
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.i, ptr %i.j, align 8
  br label %refreshVideoModes.exit

refreshVideoModes.exit:                           ; preds = %.refreshVideoModes.exit_crit_edge, %bb.c
  %i.k = phi ptr [ %i.c, %.refreshVideoModes.exit_crit_edge ], [ %i.e, %bb.c ] ; 4 uses
  %i.l = phi i32 [ %.pre, %.refreshVideoModes.exit_crit_edge ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %refreshVideoModes.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %.not62 = icmp eq i32 %i.o, -1                  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4              ; 4 uses
  %.not63 = icmp eq i32 %i.q, -1                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 4              ; 4 uses
  %.not64 = icmp eq i32 %i.s, -1                  ; 3 uses
  %i.t = load i32, ptr %1, align 4                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load i32, ptr %i.w, align 4              ; 4 uses
  %.not65 = icmp eq i32 %i.x, -1
  %wide.trip.count125 = zext nneg i32 %i.l to i64 ; 4 uses
  br i1 %.not65, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.074.us = phi ptr [ %.1.us, %bb.m ], [ null, %.lr.ph ]
  %.04773.us = phi i32 [ %.148.us, %bb.m ], [ -1, %.lr.ph ] ; 3 uses
  %.05172.us = phi i32 [ %.152.us, %bb.m ], [ -1, %.lr.ph ] ; 2 uses
  %.05471.us = phi i32 [ %.155.us, %bb.m ], [ -1, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv122 ; 7 uses
  br i1 %.not62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub nsw i32 %i.aa, %i.o
  %i.ac = call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %.049.us = phi i32 [ %i.ac, %bb.d ], [ 0, %.lr.ph.split.us ] ; 2 uses
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 %i.ae, %i.q
  %i.ag = call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = add nuw i32 %i.ag, %.049.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.150.us = phi i32 [ %i.ah, %bb.f ], [ %.049.us, %bb.e ] ; 2 uses
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub nsw i32 %i.aj, %i.s
  %i.al = call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = add i32 %i.al, %.150.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.us = phi i32 [ %i.am, %bb.h ], [ %.150.us, %bb.g ] ; 3 uses
  %i.an = load i32, ptr %i.y, align 4
  %i.ao = sub nsw i32 %i.an, %i.t                 ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sub nsw i32 %i.ar, %i.v                 ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.as
  %i.au = add nuw nsw i32 %i.at, %i.ap            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = xor i32 %i.aw, -1                       ; 2 uses
  %i.ay = icmp ult i32 %.2.us, %.04773.us
  br i1 %i.ay, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp eq i32 %.2.us, %.04773.us          ; 2 uses
  %i.ba = icmp ult i32 %i.au, %.05471.us
  %or.cond.us = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.au, %.05471.us
  %or.cond66.us = select i1 %i.az, i1 %i.bb, i1 false
  %i.bc = icmp ugt i32 %.05172.us, %i.ax
  %or.cond67.us = select i1 %or.cond66.us, i1 %i.bc, i1 false
  br i1 %or.cond67.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.155.us = phi i32 [ %i.au, %bb.l ], [ %.05471.us, %bb.k ]
  %.152.us = phi i32 [ %i.ax, %bb.l ], [ %.05172.us, %bb.k ]
  %.148.us = phi i32 [ %.2.us, %bb.l ], [ %.04773.us, %bb.k ]
  %.1.us = phi ptr [ %i.y, %bb.l ], [ %.074.us, %bb.k ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not63, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.u
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.u ], [ 0, %.lr.ph.split ] ; 2 uses
  %.074.us75 = phi ptr [ %.1.us89, %bb.u ], [ null, %.lr.ph.split ]
  %.04773.us76 = phi i32 [ %.148.us88, %bb.u ], [ -1, %.lr.ph.split ] ; 3 uses
  %.05172.us77 = phi i32 [ %.152.us87, %bb.u ], [ -1, %.lr.ph.split ] ; 2 uses
  %.05471.us78 = phi i32 [ %.155.us86, %bb.u ], [ -1, %.lr.ph.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv117 ; 6 uses
end_hunk_0
