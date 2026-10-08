Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/x11_window?download=true
inline.NumInlined: 89
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwSetWindowMonitorX11:bb.a
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138404), align 4
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138408), align 8
  %i.ar = call i32 %i.al(ptr noundef %i.am, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq) #17, !inline_history !14 ; 0 uses
  br label %releaseMonitorX11.exit

releaseMonitorX11.exit:                           ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  call void @_glfwInputWindowMonitor(ptr noundef nonnull %0, ptr noundef %1) #17
  call fastcc void @updateNormalHints(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5)
  %i.as = load ptr, ptr %i.b, align 8
  %.not39 = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 5 uses
  br i1 %.not39, label %bb.s, label %bb.m

bb.m:                                             ; preds = %releaseMonitorX11.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137712), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aw = load i64, ptr %i.at, align 8
  %i.ax = call i32 %i.au(ptr noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull %9) #17, !inline_history !13 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 92
  %i.az = load i32, ptr %i.ay, align 4
  %.not45 = icmp eq i32 %i.az, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %.not45, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137760), align 8
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bc = load i64, ptr %i.at, align 8
  %i.bd = call i32 %i.ba(ptr noundef %i.bb, i64 noundef %i.bc) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store double 1.000000e-01, ptr %i.a, align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137440), align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bg = load i64, ptr %i.at, align 8
  %i.bh = call i32 %i.be(ptr noundef %i.bf, i64 noundef %i.bg, i32 noundef 15, ptr noundef nonnull %8) #17, !inline_history !1
  %.not4.i = icmp eq i32 %i.bh, 0
  br i1 %.not4.i, label %.lr.ph.i, label %waitForVisibilityNotify.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 6
  br label %bb.o

bb.o:                                             ; preds = %waitForX11Event.exit.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8
  store i32 %i.bm, ptr %7, align 4
  store i16 1, ptr %i.bi, align 4
  store i16 0, ptr %i.bj, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bp = call i32 %i.bn(ptr noundef %i.bo) #17, !inline_history !2
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %bb.q, label %waitForX11Event.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bq = call i32 @_glfwPollPOSIX(ptr noundef nonnull %7, i64 noundef 1, ptr noundef nonnull %i.a) #17
  %.not1.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not1.i.i, label %waitForX11Event.exit.thread.i, label %bb.p

waitForX11Event.exit.thread.i:                    ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %waitForVisibilityNotify.exit

waitForX11Event.exit.i:                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137440), align 8
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bt = load i64, ptr %i.at, align 8
  %i.bu = call i32 %i.br(ptr noundef %i.bs, i64 noundef %i.bt, i32 noundef 15, ptr noundef nonnull %8) #17, !inline_history !1
  %.not.i44 = icmp eq i32 %i.bu, 0
  br i1 %.not.i44, label %bb.o, label %waitForVisibilityNotify.exit

waitForVisibilityNotify.exit:                     ; preds = %waitForX11Event.exit.i, %bb.n, %waitForX11Event.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.r

bb.r:                                             ; preds = %waitForVisibilityNotify.exit, %bb.m
  call fastcc void @updateWindowMode(ptr noundef nonnull %0)
  call fastcc void @acquireMonitorX11(ptr noundef nonnull %0)
  br label %bb.t

bb.s:                                             ; preds = %releaseMonitorX11.exit
  call fastcc void @updateWindowMode(ptr noundef nonnull %0)
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137776), align 8
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bx = load i64, ptr %i.at, align 8
  %i.by = call i32 %i.bv(ptr noundef %i.bw, i64 noundef %i.bx, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #17 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cb = call i32 %i.bz(ptr noundef %i.ca) #17   ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetWindowDecoratedX11(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.anon.31, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 2, ptr %2, align 8
  %.not = icmp ne i32 %1, 0
  %i.b = zext i1 %.not to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.c, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137192), align 8 ; 2 uses
  %i.i = call i32 %i.d(ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.h, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 5) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetWindowFloatingX11(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %2 = alloca %union._XEvent, align 8             ; 11 uses
  %3 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), align 8
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137712), align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = call i32 %i.j(ptr noundef %i.k, i64 noundef %i.m, ptr noundef nonnull %3) #17, !inline_history !13 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.p = load i32, ptr %i.o, align 4
  %.not = icmp eq i32 %i.p, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27 = icmp ne i32 %1, 0
  %i.q = zext i1 %.not27 to i64
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), align 8
  %.val = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, i8 0, i64 192, i1 false)
  store i32 33, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.val, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 32, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.r, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.q, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.s, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 1, ptr %i.y, align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137888), align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.ac = call i32 %i.z(ptr noundef %i.aa, i64 noundef %i.ab, i32 noundef 0, i64 noundef 1572864, ptr noundef nonnull %2) #17, !inline_history !3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr null, ptr %i.e, align 8
  %i.ad = load i64, ptr %i.l, align 8
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ah = call i32 %i.af(ptr noundef %i.ag, i64 noundef %i.ad, i64 noundef %i.ae, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17, !inline_history !17 ; 0 uses
  %i.ai = load i64, ptr %i.c, align 8             ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not24 = icmp eq i32 %1, 0
  br i1 %.not24, label %bb.g, label %.preheader29

.preheader29:                                     ; preds = %bb.d
  %.not35 = icmp eq i64 %i.ai, 0
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader29
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.02130 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.f ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.02130
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add nuw i64 %.02130, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  %i.ap = icmp eq i64 %.02130, %i.ai
  br i1 %i.ap, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %bb.f, %.preheader29, %._crit_edge
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.as = load i64, ptr %i.l, align 8
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  %i.au = call i32 %i.aq(ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.at, i64 noundef 4, i32 noundef 32, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), i32 noundef 1) #17 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.e, align 8             ; 5 uses
  %.not25 = icmp eq ptr %i.av, null
  br i1 %.not25, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %.not36 = icmp eq i64 %i.ai, 0
  br i1 %.not36, label %.loopexit.thread, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph34, %bb.j
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.bj, %bb.j ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.033
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, %i.aw
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.033
  %4 = getelementptr [8 x i8], ptr %i.av, i64 %i.ai
  %5 = getelementptr i8, ptr %4, i64 -8
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.be = load i64, ptr %i.l, align 8
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  %i.bg = load ptr, ptr %i.e, align 8
  %i.bh = trunc i64 %i.ai to i32
  %6 = add i32 %i.bh, -1
  %i.bi = call i32 %i.bc(ptr noundef %i.bd, i64 noundef %i.be, i64 noundef %i.bf, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef %i.bg, i32 noundef %6) #17 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bj = add nuw i64 %.033, 1                    ; 2 uses
  %exitcond38.not = icmp eq i64 %i.bj, %i.ai
  br i1 %exitcond38.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.j, %bb.i, %._crit_edge, %._crit_edge.thread
  %.pr.pr = load ptr, ptr %i.e, align 8           ; 2 uses
  %.not26 = icmp eq ptr %.pr.pr, null
  br i1 %.not26, label %.thread, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %.loopexit
  %.pr47 = phi ptr [ %.pr.pr, %.loopexit ], [ %i.av, %.preheader ]
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.bl = call i32 %i.bk(ptr noundef nonnull %.pr47) #17 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %.loopexit.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.c
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bo = call i32 %i.bm(ptr noundef %i.bn) #17   ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

declare void @_glfwInputWindowMonitor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwWindowFocusedX11(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137664), align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.e = call i32 %i.c(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.g, %i.h
  %i.j = zext i1 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getWindowState(i64 %.864.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr null, ptr %i.e, align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137000), align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.i = call i32 %i.g(ptr noundef %i.h, i64 noundef %.864.val, i64 noundef %i.f, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17, !inline_history !17 ; 0 uses
  %i.j = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.k = icmp ugt i64 %i.j, 1
  %i.l = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.03 = phi i32 [ %i.m, %.thread ], [ 0, %bb.b ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.o = call i32 %i.n(ptr noundef nonnull %i.l) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.04 = phi i32 [ %.03, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwWindowMaximizedX11(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8 ; 2 uses
  %i.g = icmp ne i64 %i.f, 0
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137096), align 8
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137104), align 8
  %i.k = icmp ne i64 %i.j, 0
  %or.cond3 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.p = call i32 %i.n(ptr noundef %i.o, i64 noundef %i.m, i64 noundef %i.f, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17, !inline_history !17 ; 0 uses
  %i.q = load i64, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not21 = icmp eq i64 %i.q, 0
  %.pre = load ptr, ptr %i.e, align 8             ; 3 uses
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137096), align 8
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137104), align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.t = add nuw i64 %.018, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.q
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.018
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.r
  %i.x = icmp eq i64 %i.v, %i.s
  %or.cond17 = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond17, label %._crit_edge.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.e, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %bb.c, %._crit_edge
  %.01126 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.c ], [ 1, %bb.d ]
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.z = call i32 %i.y(ptr noundef nonnull %.pre) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ %.01126, %._crit_edge.thread ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwWindowHoveredX11(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8 ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %.not7 = icmp eq i64 %i.h, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %bb.b

thread-pre-split:                                 ; preds = %bb.e, %bb.c
  %.pr = phi i64 [ %i.q, %bb.e ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
end_hunk_0
