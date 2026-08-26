Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/x11_window?download=true
inline.NumInlined: 89
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@handleSelectionRequest:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load <2 x i64>, ptr %i.ck, align 8
  %i.cn = load i64, ptr %i.ck, align 8
  store <2 x i64> %i.cm, ptr %i.cl, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cs, ptr %i.ct, align 8
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137888), align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cw = call i32 %i.cu(ptr noundef %i.cv, i64 noundef %i.cn, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwCreateInputContextX11(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.XIMCallback, align 8        ; 5 uses
  %2 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @inputContextDestroyCallback, ptr %i.b, align 8
  store ptr %0, ptr %1, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137488), align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133944), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = call ptr (ptr, ...) %i.c(ptr noundef %i.d, ptr noundef nonnull @.str, i64 noundef 1032, ptr noundef nonnull @.str.1, i64 noundef %i.f, ptr noundef nonnull @.str.2, i64 noundef %i.f, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef null) #17 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137712), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.k = load i64, ptr %i.e, align 8
  %i.l = call i32 %i.i(ptr noundef %i.j, i64 noundef %i.k, ptr noundef nonnull %2) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137648), align 8
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = call ptr (ptr, ...) %i.m(ptr noundef %i.n, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef null) #17
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137880), align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.s = load i64, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i64, ptr %i.t, align 8
  %i.v = load i64, ptr %i.a, align 8
  %i.w = or i64 %i.v, %i.u
  %i.x = call i32 %i.q(ptr noundef %i.r, i64 noundef %i.s, i64 noundef %i.w) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @inputContextDestroyCallback(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((880, 888)) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwCreateWindowX11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %5 = alloca %union._XEvent, align 8             ; 10 uses
  %6 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.XIMCallback, align 8        ; 5 uses
  %8 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %struct.anon.31, align 8            ; 5 uses
  %10 = alloca %struct.XSetWindowAttributes, align 8 ; 7 uses
  %i.e = alloca [3 x i64], align 16               ; 5 uses
  %i.f = alloca [2 x i64], align 16               ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.l = load i32, ptr %2, align 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  switch i32 %i.n, label %bb.h [
    i32 221185, label %bb.c
    i32 221186, label %bb.e
    i32 221187, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @_glfwInitGLX() #17
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @_glfwChooseVisualGLX(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #17
  %.not45 = icmp eq i32 %i.p, 0
  br i1 %.not45, label %bb.bn, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 @_glfwInitEGL() #17
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %bb.bn, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @_glfwChooseVisualEGL(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #17
  %.not43 = icmp eq i32 %i.r, 0
  br i1 %.not43, label %bb.bn, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.s = tail call i32 @_glfwInitOSMesa() #17
  %.not41 = icmp eq i32 %i.s, 0
  br i1 %.not41, label %bb.bn, label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f
  %.pr = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not46 = icmp eq ptr %.pr, null
  br i1 %.not46, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.k, align 4
  br label %bb.i

.thread:                                          ; preds = %bb.a, %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [128 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  store ptr %i.aa, ptr %i.j, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  store i32 %i.ac, ptr %i.k, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread
  %i.ad = phi i32 [ %i.ac, %.thread ], [ %.pre, %._crit_edge ]
  %i.ae = phi ptr [ %i.aa, %.thread ], [ %.pr, %._crit_edge ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load <2 x i32>, ptr %i.af, align 8      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load i32, ptr %i.ah, align 8
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = sitofp <2 x i32> %i.ag to <2 x float>
  %i.al = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133912), align 8
  %i.am = fmul <2 x float> %i.al, %i.ak
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ao = fptosi <4 x float> %i.an to <4 x i32>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = phi <4 x i32> [ %i.ao, %bb.j ], [ %i.aj, %bb.i ] ; 3 uses
  %i.aq = load i32, ptr %1, align 8               ; 2 uses
  %.not120.i.a = icmp eq i32 %i.aq, -2147483648
  br i1 %.not120.i.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not121.i.a = icmp eq i32 %i.as, -2147483648   ; 2 uses
  %spec.select.i = select i1 %.not121.i.a, i32 0, i32 %i.aq
  %spec.select144.i = select i1 %.not121.i.a, i32 0, i32 %i.as
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0107.i.a = phi i32 [ 0, %bb.k ], [ %spec.select.i, %bb.l ]
  %.0106.i = phi i32 [ 0, %bb.k ], [ %spec.select144.i, %bb.l ]
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137472), align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.aw = call i64 %i.at(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %i.ae, i32 noundef 0) #17, !inline_history !6
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138672), align 8
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %_glfwIsVisualTransparentX11.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138720), align 8
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bb = call ptr %i.az(ptr noundef %i.ba, ptr noundef %i.ae) #17, !inline_history !7 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.bb, null
  br i1 %.not4.i.i, label %_glfwIsVisualTransparentX11.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 30
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  br label %_glfwIsVisualTransparentX11.exit.i

_glfwIsVisualTransparentX11.exit.i:               ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ 0, %bb.m ], [ 0, %bb.n ], [ %i.bf, %bb.o ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 900
  store i32 %.0.i.i, ptr %i.bg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  %i.bh = load i64, ptr %i.ax, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 6520959, ptr %i.bj, align 8
  call void @_glfwGrabErrorHandlerX11() #17
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137504), align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bo = extractelement <4 x i32> %i.ap, i64 0
  %i.bp = extractelement <4 x i32> %i.ap, i64 1
  %i.bq = call i64 %i.bm(ptr noundef %i.bn, i64 noundef %i.bk, i32 noundef %.0107.i.a, i32 noundef %.0106.i, i32 noundef %i.bo, i32 noundef %i.bp, i32 noundef 0, i32 noundef %i.ad, i32 noundef 1, ptr noundef %i.ae, i64 noundef 10248, ptr noundef nonnull %10) #17, !inline_history !6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 21 uses
  store i64 %i.bq, ptr %i.br, align 8
  call void @_glfwReleaseErrorHandlerX11() #17
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %.not122.i.a = icmp eq i64 %i.bs, 0
  br i1 %.not122.i.a, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_glfwIsVisualTransparentX11.exit.i
  call void @_glfwInputErrorX11(i32 noundef 65544, ptr noundef nonnull @.str.35) #17
  br label %createNativeWindow.exit.thread

bb.q:                                             ; preds = %_glfwIsVisualTransparentX11.exit.i
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137872), align 8
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8
  %i.bw = call i32 %i.bt(ptr noundef %i.bu, i64 noundef %i.bs, i32 noundef %i.bv, ptr noundef nonnull %0) #17, !inline_history !6 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8
  %.not123.i.a = icmp eq i32 %i.by, 0
  br i1 %.not123.i.a, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 32, i1 false)
  store i64 2, ptr %9, align 8
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cc = load i64, ptr %i.br, align 8
  %i.cd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137192), align 8 ; 2 uses
  %i.ce = call i32 %i.ca(ptr noundef %i.cb, i64 noundef %i.cc, i64 noundef %i.cd, i64 noundef %i.cd, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 5) #17, !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8 ; 2 uses
  %.not124.i.a = icmp eq i64 %i.cf, 0
  br i1 %.not124.i.a, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8
  %.not125.i.a = icmp eq ptr %i.ch, null
  br i1 %.not125.i.a, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137080), align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond6.not.i = select i1 %i.ck, i1 true, i1 %i.cm ; 2 uses
  br i1 %or.cond6.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.cl, ptr %i.e, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i = phi i32 [ 1, %bb.v ], [ 0, %bb.u ]      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load i32, ptr %i.cn, align 8
  %.not126.i = icmp eq i32 %i.co, 0
  br i1 %.not126.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137096), align 8 ; 2 uses
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137104), align 8 ; 2 uses
  %i.cs = icmp ne i64 %i.cr, 0
  %or.cond.i = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %bb.x
  %i.ct = zext nneg i32 %.0.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ct ; 2 uses
  store i64 %i.cp, ptr %i.cu, align 8
  %i.cv = or disjoint i32 %.0.i, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.cr, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 1, ptr %i.cx, align 8
  %.pre.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %or.cond6.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread.i
  %i.cy = phi i64 [ %.pre.i, %.thread.i ], [ %i.cf, %bb.y ]
  %.1150.i = phi i32 [ %i.cv, %.thread.i ], [ 1, %bb.y ]
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.db = load i64, ptr %i.br, align 8
  %i.dc = call i32 %i.cz(ptr noundef %i.da, i64 noundef %i.db, i64 noundef %i.cy, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.e, i32 noundef %.1150.i) #17, !inline_history !6 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137008), align 8
  store i64 %i.dd, ptr %i.f, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137048), align 8
  store i64 %i.df, ptr %i.de, align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137976), align 8
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.di = load i64, ptr %i.br, align 8
  %i.dj = call i32 %i.dg(ptr noundef %i.dh, i64 noundef %i.di, ptr noundef nonnull %i.f, i32 noundef 2) #17, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.dk = call i32 @getpid() #17
  %i.dl = sext i32 %i.dk to i64
  store i64 %i.dl, ptr %i.g, align 8
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.do = load i64, ptr %i.br, align 8
  %i.dp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137040), align 8
  %i.dq = call i32 %i.dm(ptr noundef %i.dn, i64 noundef %i.do, i64 noundef %i.dp, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.g, i32 noundef 1) #17, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137056), align 8 ; 2 uses
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137064), align 8 ; 2 uses
  %i.du = icmp ne i64 %i.dt, 0
  %or.cond4.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond4.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i64 %i.dt, ptr %i.h, align 8
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dx = load i64, ptr %i.br, align 8
  %i.dy = call i32 %i.dv(ptr noundef %i.dw, i64 noundef %i.dx, i64 noundef %i.dr, i64 noundef 4, i32 noundef 32, i32 noundef 0, ptr noundef nonnull %i.h, i32 noundef 1) #17, !inline_history !6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137408), align 8
  %i.ea = call ptr %i.dz() #17, !inline_history !6 ; 5 uses
  %.not128.not.i.a = icmp eq ptr %i.ea, null
  br i1 %.not128.not.i.a, label %.thread151.i.a, label %bb.ae

.thread151.i.a:                                   ; preds = %bb.ad
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65541, ptr noundef nonnull @.str.36) #17
  br label %createNativeWindow.exit.thread

bb.ae:                                            ; preds = %bb.ad
  store i64 2, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 1, ptr %i.eb, align 4
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137960), align 8
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ee = load i64, ptr %i.br, align 8
  %i.ef = call i32 %i.ec(ptr noundef %i.ed, i64 noundef %i.ee, ptr noundef nonnull %i.ea) #17, !inline_history !6 ; 0 uses
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.eh = call i32 %i.eg(ptr noundef nonnull %i.ea) #17, !inline_history !6 ; 0 uses
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137400), align 8
  %i.ej = call ptr %i.ei() #17, !inline_history !6 ; 12 uses
  %.not129.not.i = icmp eq ptr %i.ej, null
  br i1 %.not129.not.i, label %.thread152.i, label %bb.af

.thread152.i:                                     ; preds = %bb.ae
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65541, ptr noundef nonnull @.str.37) #17
  br label %createNativeWindow.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.el = load i32, ptr %i.ek, align 8
  %.not130.i.a = icmp eq i32 %i.el, 0
  br i1 %.not130.i.a, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.ej, align 8
  %i.en = or i64 %i.em, 48
  store i64 %i.en, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store <4 x i32> %i.ap, ptr %i.eo, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ep = load i32, ptr %1, align 8
  %.not131.i.a = icmp eq i32 %i.ep, -2147483648
  br i1 %.not131.i.a, label %._crit_edge.i, label %bb.ai

._crit_edge.i:                                    ; preds = %bb.ah
  %.pre155.i.a = load i64, ptr %i.ej, align 8
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = load i32, ptr %i.eq, align 4
  %.not132.i.a = icmp eq i32 %i.er, -2147483648
  %.pre156.i = load i64, ptr %i.ej, align 8       ; 2 uses
  br i1 %.not132.i.a, label %bb.ak, label %bb.aj

end_hunk_0
begin_hunk_1_@_glfwPollEventsX11:bb.a
  %i.q = alloca i32, align 4                      ; 6 uses
  %5 = alloca %union._XEvent, align 8             ; 11 uses
  %i.r = alloca [64 x i8], align 16               ; 4 uses
  %6 = alloca %union._XEvent, align 8             ; 28 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #17
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136968), align 8
  %i.t = call i64 @read(i32 noundef %i.s, ptr noundef nonnull %i.r, i64 noundef 64) #17
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = tail call ptr @__errno_location() #19
  %i.w = load i32, ptr %i.v, align 4
  %.not.i = icmp eq i32 %i.w, 4
  br i1 %.not.i, label %bb.d, label %drainEmptyEvents.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #17
  br label %bb.b

drainEmptyEvents.exit:                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #17
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1932), align 4
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %drainEmptyEvents.exit
  tail call void @_glfwDetectJoystickConnectionLinux() #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %drainEmptyEvents.exit
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aa = tail call i32 %i.y(ptr noundef %i.z) #17 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ad = load i32, ptr %i.ac, align 8
  %.not519 = icmp eq i32 %i.ad, 0
  br i1 %.not519, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %processEvent.exit
  %i.bn = phi ptr [ %i.ab, %.lr.ph ], [ %i.to, %processEvent.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137792), align 8
  %i.bp = call i32 %i.bo(ptr noundef nonnull %i.bn, ptr noundef nonnull %6) #17 ; 0 uses
  %i.bq = load i32, ptr %6, align 8
  %i.br = and i32 %i.bq, -2
  %switch.i = icmp eq i32 %i.br, 2
  %i.bs = load i32, ptr %i.ae, align 4
  %.0213.i.a = select i1 %switch.i, i32 %i.bs, i32 0 ; 10 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137576), align 8
  %i.bu = call i32 %i.bt(ptr noundef nonnull %6, i64 noundef 0) #17, !inline_history !33 ; 2 uses
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138112), align 8
  %.not.i9 = icmp eq i32 %i.bv, 0
  %.pr.i.pr = load i32, ptr %6, align 8           ; 3 uses
  br i1 %.not.i9, label %thread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138128), align 8
  %i.bx = add nsw i32 %i.bw, 1
  %i.by = icmp eq i32 %.pr.i.pr, %i.bx
  br i1 %i.by, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138280), align 8
  %i.ca = call i32 %i.bz(ptr noundef nonnull %6) #17, !inline_history !33 ; 0 uses
  call void @_glfwPollMonitorsX11() #17
  br label %processEvent.exit

thread-pre-split:                                 ; preds = %bb.g, %bb.h
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138288), align 8
  %.not244.i = icmp ne i32 %i.cb, 0
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138300), align 4
  %i.cd = icmp eq i32 %.pr.i.pr, %i.cc
  %or.cond379.i = select i1 %.not244.i, i1 %i.cd, i1 false
  br i1 %or.cond379.i, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %thread-pre-split
  %i.ce = load i32, ptr %i.aj, align 8
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %bb.k, label %processEvent.exit

bb.k:                                             ; preds = %bb.j
  %i.cg = load i32, ptr %i.ah, align 8
  %i.ch = and i32 %i.cg, 16
  %.not286.i = icmp eq i32 %i.ch, 0
  br i1 %.not286.i, label %processEvent.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = load i32, ptr %i.bg, align 4
  store i32 %i.ci, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138316), align 4
  br label %processEvent.exit

thread-pre-split.i:                               ; preds = %thread-pre-split
  switch i32 %.pr.i.pr, label %bb.z [
    i32 35, label %bb.m
    i32 30, label %bb.y
  ]

bb.m:                                             ; preds = %thread-pre-split.i
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138616), align 8
  %.not279.i = icmp eq i32 %i.cj, 0
  br i1 %.not279.i, label %processEvent.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136960), align 8 ; 5 uses
  %.not280.i = icmp eq ptr %i.ck, null
  br i1 %.not280.i, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 520
  %i.cm = load i32, ptr %i.cl, align 8
  %.not281.i = icmp eq i32 %i.cm, 0
  br i1 %.not281.i, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load i32, ptr %i.af, align 8
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138632), align 8
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137640), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cs = call i32 %i.cq(ptr noundef %i.cr, ptr noundef nonnull %6) #17, !inline_history !33
  %.not282.i = icmp ne i32 %i.cs, 0
  %i.ct = load i32, ptr %i.ag, align 4
  %i.cu = icmp eq i32 %i.ct, 17
  %or.cond = select i1 %.not282.i, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cx = load i32, ptr %i.cw, align 8
  %.not283.i = icmp eq i32 %i.cx, 0
  br i1 %.not283.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 504
  %i.db = load double, ptr %i.da, align 8         ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 512
  %i.dd = load double, ptr %i.dc, align 8         ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = load i8, ptr %i.df, align 1             ; 2 uses
  %i.dh = and i8 %i.dg, 1
  %.not284.i = icmp eq i8 %i.dh, 0
  br i1 %.not284.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = load double, ptr %i.cz, align 8
  %i.dj = fadd double %i.db, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0218.i = phi ptr [ %i.dk, %bb.t ], [ %i.cz, %bb.s ]
  %.0217.i = phi double [ %i.dj, %bb.t ], [ %i.db, %bb.s ]
  %i.dl = and i8 %i.dg, 2
  %.not285.i = icmp eq i8 %i.dl, 0
  br i1 %.not285.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load double, ptr %.0218.i, align 8
  %i.dn = fadd double %i.dd, %i.dm
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0216.i.a = phi double [ %i.dn, %bb.v ], [ %i.dd, %bb.u ]
  call void @_glfwInputCursorPos(ptr noundef nonnull %i.ck, double noundef %.0217.i, double noundef %.0216.i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137624), align 8
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  call void %i.do(ptr noundef %i.dp, ptr noundef nonnull %6) #17, !inline_history !33
  br label %processEvent.exit

bb.y:                                             ; preds = %thread-pre-split.i
  call fastcc void @handleSelectionRequest(ptr noundef nonnull %6)
  br label %processEvent.exit

bb.z:                                             ; preds = %thread-pre-split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr null, ptr %i.e, align 8
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137584), align 8
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ds = load i64, ptr %i.af, align 8
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8
  %i.du = call i32 %i.dq(ptr noundef %i.dr, i64 noundef %i.ds, i32 noundef %i.dt, ptr noundef nonnull %i.e) #17, !inline_history !33
  %.not245.i = icmp eq i32 %i.du, 0
  br i1 %.not245.i, label %bb.aa, label %.critedge291.i

bb.aa:                                            ; preds = %bb.z
  %i.dv = load i32, ptr %6, align 8
  switch i32 %i.dv, label %.critedge291.i [
    i32 21, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.au
    i32 4, label %bb.bc
    i32 5, label %bb.bl
    i32 7, label %bb.br
    i32 8, label %bb.bt
    i32 6, label %bb.bu
    i32 22, label %bb.cc
    i32 33, label %bb.cm
    i32 31, label %bb.dp
    i32 9, label %bb.dx
    i32 10, label %bb.ee
    i32 12, label %bb.eo
    i32 28, label %bb.ep
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load i64, ptr %i.ah, align 8
  %i.dx = load ptr, ptr %i.e, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 872
  store i64 %i.dw, ptr %i.dy, align 8
  br label %.critedge291.i

bb.ac:                                            ; preds = %bb.aa
  %or.cond.i.i = icmp ugt i32 %.0213.i.a, 255
  br i1 %or.cond.i.i, label %translateKeyX11.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = zext nneg i32 %.0213.i.a to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = sext i16 %i.eb to i32
  br label %translateKeyX11.exit.i

translateKeyX11.exit.i:                           ; preds = %bb.ad, %bb.ac
  %.0.i.i = phi i32 [ %i.ec, %bb.ad ], [ -1, %bb.ac ] ; 2 uses
  %i.ed = load i32, ptr %i.bj, align 8            ; 5 uses
  %spec.select.i.i = and i32 %i.ed, 1
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = and i32 %i.ee, 6                        ; 2 uses
  %i.eg = lshr i32 %i.ed, 3
  %i.eh = and i32 %i.eg, 8
  %i.ei = shl i32 %i.ed, 3
  %i.ej = and i32 %i.ei, 16
  %i.ek = shl i32 %i.ed, 1
  %i.el = and i32 %i.ek, 32
  %i.em = or disjoint i32 %i.el, %spec.select.i.i
  %.3.i.i = or disjoint i32 %i.em, %i.ej
  %i.en = or disjoint i32 %.3.i.i, %i.eh
  %.5.i.i = or disjoint i32 %i.en, %i.ef          ; 4 uses
  %.not273.i = icmp eq i32 %i.ef, 0
  %i.eo = zext i1 %.not273.i to i32               ; 2 uses
  %i.ep = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 880
  %i.er = load ptr, ptr %i.eq, align 8
  %.not274.i = icmp eq ptr %i.er, null
  br i1 %.not274.i, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %translateKeyX11.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 936
  %i.et = sext i32 %.0213.i.a to i64              ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ey = sub i64 %i.ex, %i.ev
  %i.ez = icmp ne i64 %i.ex, %i.ev
  %i.fa = icmp ult i64 %i.ey, 2147483648
  %or.cond.i = and i1 %i.ez, %i.fa
  br i1 %or.cond.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not276.i = icmp eq i32 %.0213.i.a, 0
  br i1 %.not276.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_glfwInputKey(ptr noundef nonnull %i.ep, i32 noundef %.0.i.i, i32 noundef %.0213.i.a, i32 noundef 1, i32 noundef %.5.i.i) #17
  %.pre348.i = load ptr, ptr %i.e, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fb = phi ptr [ %.pre348.i, %bb.ah ], [ %i.ep, %bb.ag ]
  %i.fc = load i64, ptr %i.ai, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 936
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.et
  store i64 %i.fc, ptr %i.fe, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.not277.i = icmp eq i32 %i.bu, 0
  br i1 %.not277.i, label %bb.ak, label %.critedge291.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138064), align 8
  %i.fg = load ptr, ptr %i.e, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 880
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call i32 %i.ff(ptr noundef %i.fi, ptr noundef nonnull %6, ptr noundef nonnull %i.g, i32 noundef 99, ptr noundef null, ptr noundef nonnull %i.f) #17, !inline_history !33 ; 3 uses
  %i.fk = load i32, ptr %i.f, align 4             ; 2 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fm = add nsw i32 %i.fj, 1
  %i.fn = sext i32 %i.fm to i64
  %i.fo = call ptr @_glfw_calloc(i64 noundef %i.fn, i64 noundef 1) #17 ; 2 uses
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138064), align 8
  %i.fq = load ptr, ptr %i.e, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 880
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call i32 %i.fp(ptr noundef %i.fs, ptr noundef nonnull %6, ptr noundef %i.fo, i32 noundef %i.fj, ptr noundef null, ptr noundef nonnull %i.f) #17, !inline_history !33
  %.pr325.i = load i32, ptr %i.f, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fu = phi i32 [ %.pr325.i, %bb.al ], [ %i.fk, %bb.ak ]
  %.0215.i = phi i32 [ %i.ft, %bb.al ], [ %i.fj, %bb.ak ] ; 2 uses
  %.0214.i = phi ptr [ %i.fo, %bb.al ], [ %i.g, %bb.ak ] ; 5 uses
  switch i32 %i.fu, label %.loopexit.i [
    i32 4, label %bb.an
    i32 2, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.fv = sext i32 %.0215.i to i64                ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.0214.i, i64 %i.fv
  store i8 0, ptr %i.fw, align 1
  %i.fx = ptrtoint ptr %.0214.i to i64
  %i.fy = icmp sgt i32 %.0215.i, 0
  br i1 %i.fy, label %.lr.ph335.i, label %.loopexit.i

.lr.ph335.i:                                      ; preds = %bb.an, %decodeUTF8.exit.i
  %.0324333.i = phi ptr [ %i.gf, %decodeUTF8.exit.i ], [ %.0214.i, %bb.an ] ; 2 uses
  %i.fz = load ptr, ptr %i.e, align 8
  %.pre.i.i = load i8, ptr %.0324333.i, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph335.i
  %i.ga = phi i8 [ %.pre.i.i, %.lr.ph335.i ], [ %i.gh, %bb.ao ]
  %i.gb = phi ptr [ %.0324333.i, %.lr.ph335.i ], [ %i.gf, %bb.ao ]
  %.06.i.i = phi i32 [ 0, %.lr.ph335.i ], [ %i.ge, %bb.ao ]
  %.0.i305.i = phi i32 [ 0, %.lr.ph335.i ], [ %i.gg, %bb.ao ] ; 2 uses
  %i.gc = shl i32 %.06.i.i, 6
  %i.gd = zext i8 %i.ga to i32
  %i.ge = add i32 %i.gc, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 4 uses
  %i.gg = add i32 %.0.i305.i, 1
  %i.gh = load i8, ptr %i.gf, align 1             ; 2 uses
  %i.gi = icmp slt i8 %i.gh, -64
  br i1 %i.gi, label %bb.ao, label %decodeUTF8.exit.i

decodeUTF8.exit.i:                                ; preds = %bb.ao
  %i.gj = zext i32 %.0.i305.i to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @decodeUTF8.offsets, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = sub i32 %i.ge, %i.gl
  call void @_glfwInputChar(ptr noundef %i.fz, i32 noundef %i.gm, i32 noundef %.5.i.i, i32 noundef %i.eo) #17
  %i.gn = ptrtoint ptr %i.gf to i64
  %i.go = sub i64 %i.gn, %i.fx
  %i.gp = icmp slt i64 %i.go, %i.fv
  br i1 %i.gp, label %.lr.ph335.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %decodeUTF8.exit.i, %bb.an, %bb.am
  %.not278.i = icmp eq ptr %.0214.i, %i.g
  br i1 %.not278.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i
  call void @_glfw_free(ptr noundef %.0214.i) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %.critedge291.i

bb.ar:                                            ; preds = %translateKeyX11.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137752), align 8
  %i.gr = call i32 %i.gq(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.h, ptr noundef null) #17, !inline_history !33 ; 0 uses
  %i.gs = load ptr, ptr %i.e, align 8
  call void @_glfwInputKey(ptr noundef %i.gs, i32 noundef %.0.i.i, i32 noundef %.0213.i.a, i32 noundef 1, i32 noundef %.5.i.i) #17
  %i.gt = load i64, ptr %i.h, align 8
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = call i32 @_glfwKeySym2Unicode(i32 noundef %i.gu) #17 ; 2 uses
  %.not275.i = icmp eq i32 %i.gv, -1
  br i1 %.not275.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = load ptr, ptr %i.e, align 8
  call void @_glfwInputChar(ptr noundef %i.gw, i32 noundef %i.gv, i32 noundef %.5.i.i, i32 noundef %i.eo) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.critedge291.i

bb.au:                                            ; preds = %bb.aa
  %or.cond.i306.i = icmp ugt i32 %.0213.i.a, 255
  br i1 %or.cond.i306.i, label %translateKeyX11.exit308.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gx = zext nneg i32 %.0213.i.a to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = sext i16 %i.gz to i32
  br label %translateKeyX11.exit308.i

translateKeyX11.exit308.i:                        ; preds = %bb.av, %bb.au
  %.0.i307.i = phi i32 [ %i.ha, %bb.av ], [ -1, %bb.au ]
  %i.hb = load i32, ptr %i.bj, align 8            ; 5 uses
  %spec.select.i309.i = and i32 %i.hb, 1
  %i.hc = lshr i32 %i.hb, 1
  %i.hd = and i32 %i.hc, 6
  %.2.i310.i = or disjoint i32 %i.hd, %spec.select.i309.i
  %i.he = lshr i32 %i.hb, 3
  %i.hf = and i32 %i.he, 8
  %.3.i311.i = or disjoint i32 %.2.i310.i, %i.hf
  %i.hg = shl i32 %i.hb, 3
  %i.hh = and i32 %i.hg, 16
  %.4.i312.i = or disjoint i32 %.3.i311.i, %i.hh
  %i.hi = shl i32 %i.hb, 1
  %i.hj = and i32 %i.hi, 32
  %.5.i313.i = or disjoint i32 %.4.i312.i, %i.hj
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138292), align 4
  %.not271.i = icmp eq i32 %i.hk, 0
  br i1 %.not271.i, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %translateKeyX11.exit308.i
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137568), align 8
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.hn = call i32 %i.hl(ptr noundef %i.hm, i32 noundef 1) #17, !inline_history !33
  %.not272.i = icmp eq i32 %i.hn, 0
  br i1 %.not272.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137808), align 8
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.hq = call i32 %i.ho(ptr noundef %i.hp, ptr noundef nonnull %1) #17, !inline_history !33 ; 0 uses
  %i.hr = load i32, ptr %1, align 8
  %i.hs = icmp eq i32 %i.hr, 2
  br i1 %i.hs, label %bb.ay, label %.critedge.i

bb.ay:                                            ; preds = %bb.ax
  %i.ht = load i64, ptr %i.bk, align 8
  %i.hu = load i64, ptr %i.af, align 8
  %i.hv = icmp eq i64 %i.ht, %i.hu
  %i.hw = load i32, ptr %i.bl, align 4
  %i.hx = icmp eq i32 %i.hw, %.0213.i.a
  %or.cond289.i = select i1 %i.hv, i1 %i.hx, i1 false
  br i1 %or.cond289.i, label %bb.az, label %.critedge.i

bb.az:                                            ; preds = %bb.ay
  %i.hy = load i64, ptr %i.bm, align 8
  %i.hz = load i64, ptr %i.ai, align 8
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = icmp ult i64 %i.ia, 20
  br i1 %i.ib, label %bb.ba, label %.critedge.i

.critedge.i:                                      ; preds = %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.critedge291.i

bb.bb:                                            ; preds = %.critedge.i, %bb.aw, %translateKeyX11.exit308.i
  %i.ic = load ptr, ptr %i.e, align 8
  call void @_glfwInputKey(ptr noundef %i.ic, i32 noundef %.0.i307.i, i32 noundef %.0213.i.a, i32 noundef 0, i32 noundef %.5.i313.i) #17
  br label %.critedge291.i

bb.bc:                                            ; preds = %bb.aa
  %i.id = load i32, ptr %i.bj, align 8            ; 5 uses
  %spec.select.i314.i = and i32 %i.id, 1
  %i.ie = lshr i32 %i.id, 1
  %i.if = and i32 %i.ie, 6
  %.2.i315.i = or disjoint i32 %i.if, %spec.select.i314.i
  %i.ig = lshr i32 %i.id, 3
  %i.ih = and i32 %i.ig, 8
  %.3.i316.i = or disjoint i32 %.2.i315.i, %i.ih
  %i.ii = shl i32 %i.id, 3
  %i.ij = and i32 %i.ii, 16
  %.4.i317.i = or disjoint i32 %.3.i316.i, %i.ij
  %i.ik = shl i32 %i.id, 1
  %i.il = and i32 %i.ik, 32
  %.5.i318.i = or disjoint i32 %.4.i317.i, %i.il  ; 4 uses
  %i.im = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.in = load ptr, ptr %i.e, align 8             ; 8 uses
  switch i32 %i.im, label %bb.bk [
    i32 1, label %bb.bd
    i32 2, label %bb.be
    i32 3, label %bb.bf
    i32 4, label %bb.bg
    i32 5, label %bb.bh
    i32 6, label %bb.bi
    i32 7, label %bb.bj
  ]

bb.bd:                                            ; preds = %bb.bc
  call void @_glfwInputMouseClick(ptr noundef %i.in, i32 noundef 0, i32 noundef 1, i32 noundef %.5.i318.i) #17
  br label %.critedge291.i

bb.be:                                            ; preds = %bb.bc
  call void @_glfwInputMouseClick(ptr noundef %i.in, i32 noundef 2, i32 noundef 1, i32 noundef %.5.i318.i) #17
  br label %.critedge291.i

bb.bf:                                            ; preds = %bb.bc
  call void @_glfwInputMouseClick(ptr noundef %i.in, i32 noundef 1, i32 noundef 1, i32 noundef %.5.i318.i) #17
  br label %.critedge291.i

bb.bg:                                            ; preds = %bb.bc
  call void @_glfwInputScroll(ptr noundef %i.in, double noundef 0.000000e+00, double noundef 1.000000e+00) #17
  br label %.critedge291.i

bb.bh:                                            ; preds = %bb.bc
  call void @_glfwInputScroll(ptr noundef %i.in, double noundef 0.000000e+00, double noundef -1.000000e+00) #17
  br label %.critedge291.i

bb.bi:                                            ; preds = %bb.bc
  call void @_glfwInputScroll(ptr noundef %i.in, double noundef 1.000000e+00, double noundef 0.000000e+00) #17
  br label %.critedge291.i

bb.bj:                                            ; preds = %bb.bc
  call void @_glfwInputScroll(ptr noundef %i.in, double noundef -1.000000e+00, double noundef 0.000000e+00) #17
  br label %.critedge291.i

bb.bk:                                            ; preds = %bb.bc
  %i.io = add i32 %i.im, -5
  call void @_glfwInputMouseClick(ptr noundef %i.in, i32 noundef %i.io, i32 noundef 1, i32 noundef %.5.i318.i) #17
  br label %.critedge291.i

bb.bl:                                            ; preds = %bb.aa
  %i.ip = load i32, ptr %i.bj, align 8            ; 5 uses
  %spec.select.i319.i = and i32 %i.ip, 1
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = and i32 %i.iq, 6
  %.2.i320.i = or disjoint i32 %i.ir, %spec.select.i319.i
  %i.is = lshr i32 %i.ip, 3
  %i.it = and i32 %i.is, 8
  %.3.i321.i = or disjoint i32 %.2.i320.i, %i.it
  %i.iu = shl i32 %i.ip, 3
  %i.iv = and i32 %i.iu, 16
  %.4.i322.i = or disjoint i32 %.3.i321.i, %i.iv
  %i.iw = shl i32 %i.ip, 1
  %i.ix = and i32 %i.iw, 32
  %.5.i323.i = or disjoint i32 %.4.i322.i, %i.ix  ; 4 uses
  %i.iy = load i32, ptr %i.ae, align 4            ; 3 uses
  switch i32 %i.iy, label %bb.bp [
    i32 1, label %bb.bm
    i32 2, label %bb.bn
    i32 3, label %bb.bo
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.iz = load ptr, ptr %i.e, align 8
  call void @_glfwInputMouseClick(ptr noundef %i.iz, i32 noundef 0, i32 noundef 0, i32 noundef %.5.i323.i) #17
  br label %.critedge291.i

bb.bn:                                            ; preds = %bb.bl
  %i.ja = load ptr, ptr %i.e, align 8
  call void @_glfwInputMouseClick(ptr noundef %i.ja, i32 noundef 2, i32 noundef 0, i32 noundef %.5.i323.i) #17
  br label %.critedge291.i

bb.bo:                                            ; preds = %bb.bl
  %i.jb = load ptr, ptr %i.e, align 8
  call void @_glfwInputMouseClick(ptr noundef %i.jb, i32 noundef 1, i32 noundef 0, i32 noundef %.5.i323.i) #17
  br label %.critedge291.i
end_hunk_1
begin_hunk_2_@_glfwGetClipboardStringX11:bb.a
  %i.b = tail call fastcc ptr @getSelectionString(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getSelectionString(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pollfd, align 4             ; 6 uses
  %2 = alloca %struct.pollfd, align 4             ; 6 uses
  %.sroa.0 = alloca i64, align 16                 ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 4 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %union._XEvent, align 8             ; 10 uses
  %4 = alloca %union._XEvent, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137344), align 8
  store i64 %i.f, ptr %.sroa.0, align 16
  store i64 31, ptr %.sroa.4, align 8
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137312), align 8
  %i.h = icmp eq i64 %0, %i.g
  %. = select i1 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133968), ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133976) ; 9 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137688), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.k = tail call i64 %i.i(ptr noundef %i.j, i64 noundef %0) #17
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  %i.m = icmp eq i64 %i.k, %i.l
  %.035.pre87 = load ptr, ptr %., align 8         ; 2 uses
  br i1 %i.m, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_glfw_free(ptr noundef %.035.pre87) #17
  store ptr null, ptr %., align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %select.unfold
  %i.t = phi i1 [ true, %bb.b ], [ false, %select.unfold ]
  %.03283.sroa.phi = phi ptr [ %.sroa.0, %bb.b ], [ %.sroa.4, %select.unfold ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137464), align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.w = load i64, ptr %.03283.sroa.phi, align 8  ; 4 uses
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137368), align 8
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  %i.z = call i32 %i.u(ptr noundef %i.v, i64 noundef %0, i64 noundef %i.w, i64 noundef %i.x, i64 noundef %i.y, i64 noundef 0) #17 ; 0 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137440), align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  %i.ad = call i32 %i.aa(ptr noundef %i.ab, i64 noundef %i.ac, i32 noundef 31, ptr noundef nonnull %3) #17
  %.not78 = icmp eq i32 %i.ad, 0
  br i1 %.not78, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %waitForX11Event.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  store i32 %i.ag, ptr %2, align 4
  store i16 1, ptr %i.n, align 4
  store i16 0, ptr %i.o, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aj = call i32 %i.ah(ptr noundef %i.ai) #17, !inline_history !3
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.e, label %waitForX11Event.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = call i32 @_glfwPollPOSIX(ptr noundef nonnull %2, i64 noundef 1, ptr noundef null) #17
  %.not1.i = icmp eq i32 %i.ak, 0
  br i1 %.not1.i, label %waitForX11Event.exit, label %bb.d

waitForX11Event.exit:                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137440), align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  %i.ao = call i32 %i.al(ptr noundef %i.am, i64 noundef %i.an, i32 noundef 31, ptr noundef nonnull %3) #17
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %waitForX11Event.exit, %bb.c
  %i.ap = load i64, ptr %i.p, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137432), align 8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.at = call i32 %i.ar(ptr noundef %i.as, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #17 ; 0 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aw = load i64, ptr %i.q, align 8
  %i.ax = load i64, ptr %i.p, align 8
  %i.ay = call i32 %i.au(ptr noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.az = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137296), align 8
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.f, %bb.i
  %.030 = phi i64 [ %i.by, %bb.i ], [ 1, %bb.f ]
  %.0 = phi ptr [ %i.bz, %bb.i ], [ null, %bb.f ] ; 3 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137432), align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.be = call i32 %i.bc(ptr noundef %i.bd, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #17
  %.not3979 = icmp eq i32 %i.be, 0
  br i1 %.not3979, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader, %waitForX11Event.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  store i32 %i.bh, ptr %1, align 4
  store i16 1, ptr %i.r, align 4
  store i16 0, ptr %i.s, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph81
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bk = call i32 %i.bi(ptr noundef %i.bj) #17, !inline_history !3
  %.not.i46 = icmp eq i32 %i.bk, 0
  br i1 %.not.i46, label %bb.h, label %waitForX11Event.exit49

bb.h:                                             ; preds = %bb.g
  %i.bl = call i32 @_glfwPollPOSIX(ptr noundef nonnull %1, i64 noundef 1, ptr noundef null) #17
  %.not1.i48 = icmp eq i32 %i.bl, 0
  br i1 %.not1.i48, label %waitForX11Event.exit49, label %bb.g

waitForX11Event.exit49:                           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137432), align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bo = call i32 %i.bm(ptr noundef %i.bn, ptr noundef nonnull %4, ptr noundef nonnull @isSelPropNewValueNotify, ptr noundef nonnull %3) #17
  %.not39 = icmp eq i32 %i.bo, 0
  br i1 %.not39, label %.lr.ph81, label %._crit_edge82

._crit_edge82:                                    ; preds = %waitForX11Event.exit49, %.preheader
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = call i32 %i.bp(ptr noundef %i.bq) #17   ; 0 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137720), align 8
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bu = load i64, ptr %i.q, align 8
  %i.bv = load i64, ptr %i.p, align 8
  %i.bw = call i32 %i.bs(ptr noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.bx = load i64, ptr %i.d, align 8             ; 2 uses
  %.not40 = icmp eq i64 %i.bx, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  %i.by = add i64 %i.bx, %.030                    ; 3 uses
  %i.bz = call ptr @_glfw_realloc(ptr noundef %.0, i64 noundef %i.by) #17 ; 4 uses
  %i.ca = load i64, ptr %i.d, align 8
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.cb
  store i8 0, ptr %i.cd, align 1
  %i.ce = load ptr, ptr %i.a, align 8
  %i.cf = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(1) %i.ce) #17 ; 0 uses
  %.pr = load i64, ptr %i.d, align 8
  %.not41 = icmp eq i64 %.pr, 0
  br i1 %.not41, label %.thread69, label %.preheader

bb.j:                                             ; preds = %._crit_edge82
  %.not42 = icmp eq ptr %.0, null
  br i1 %.not42, label %bb.q, label %.thread69

.thread69:                                        ; preds = %bb.i, %bb.j
  %.16872 = phi ptr [ %.0, %bb.j ], [ %i.bz, %bb.i ] ; 6 uses
  %i.cg = icmp eq i64 %i.w, 31
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread69
  %i.ch = load i8, ptr %.16872, align 1           ; 2 uses
  %.not19.i = icmp eq i8 %i.ch, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.ci = phi i8 [ %i.cm, %.lr.ph.i ], [ %i.ch, %bb.k ]
  %.01321.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.16872, %bb.k ]
  %.01420.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 1, %bb.k ]
  %.not18.i = icmp sgt i8 %i.ci, -1
  %i.cj = select i1 %.not18.i, i64 1, i64 2
  %i.ck = add i64 %i.cj, %.01420.i                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01321.i, i64 1 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %.not.i50 = icmp eq i8 %i.cm, 0
  br i1 %.not.i50, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.014.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.ck, %.lr.ph.i ]
  %i.cn = call ptr @_glfw_calloc(i64 noundef %.014.lcssa.i, i64 noundef 1) #17 ; 2 uses
  %i.co = load i8, ptr %.16872, align 1           ; 2 uses
  %.not1722.i = icmp eq i8 %i.co, 0
  br i1 %.not1722.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %._crit_edge.i, %.lr.ph26.i
  %i.cp = phi i8 [ %i.cu, %.lr.ph26.i ], [ %i.co, %._crit_edge.i ]
  %.024.i = phi ptr [ %i.cs, %.lr.ph26.i ], [ %i.cn, %._crit_edge.i ] ; 2 uses
  %.123.i = phi ptr [ %i.ct, %.lr.ph26.i ], [ %.16872, %._crit_edge.i ]
  %i.cq = sext i8 %i.cp to i32
  %i.cr = call i64 @_glfwEncodeUTF8(ptr noundef %.024.i, i32 noundef %i.cq) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %.024.i, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.123.i, i64 1 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %.not17.i = icmp eq i8 %i.cu, 0
  br i1 %.not17.i, label %convertLatin1toUTF8.exit, label %.lr.ph26.i

convertLatin1toUTF8.exit:                         ; preds = %.lr.ph26.i, %._crit_edge.i
  store ptr %i.cn, ptr %., align 8
  call void @_glfw_free(ptr noundef nonnull %.16872) #17
  br label %bb.q

bb.l:                                             ; preds = %.thread69
  store ptr %.16872, ptr %., align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.cv = icmp eq i64 %i.az, %i.w
  br i1 %i.cv, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp eq i64 %i.w, 31
  %i.cx = load ptr, ptr %i.a, align 8             ; 5 uses
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %.not19.i51 = icmp eq i8 %i.cy, 0
  br i1 %.not19.i51, label %._crit_edge.i57, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.o, %.lr.ph.i52
  %i.cz = phi i8 [ %i.dd, %.lr.ph.i52 ], [ %i.cy, %bb.o ]
  %.01321.i53 = phi ptr [ %i.dc, %.lr.ph.i52 ], [ %i.cx, %bb.o ]
  %.01420.i54 = phi i64 [ %i.db, %.lr.ph.i52 ], [ 1, %bb.o ]
  %.not18.i55 = icmp sgt i8 %i.cz, -1
  %i.da = select i1 %.not18.i55, i64 1, i64 2
  %i.db = add i64 %i.da, %.01420.i54              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01321.i53, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %.not.i56 = icmp eq i8 %i.dd, 0
  br i1 %.not.i56, label %._crit_edge.i57, label %.lr.ph.i52

._crit_edge.i57:                                  ; preds = %.lr.ph.i52, %bb.o
  %.014.lcssa.i58 = phi i64 [ 1, %bb.o ], [ %i.db, %.lr.ph.i52 ]
  %i.de = call ptr @_glfw_calloc(i64 noundef %.014.lcssa.i58, i64 noundef 1) #17 ; 2 uses
  %i.df = load i8, ptr %i.cx, align 1             ; 2 uses
  %.not1722.i59 = icmp eq i8 %i.df, 0
  br i1 %.not1722.i59, label %convertLatin1toUTF8.exit64, label %.lr.ph26.i60

.lr.ph26.i60:                                     ; preds = %._crit_edge.i57, %.lr.ph26.i60
  %i.dg = phi i8 [ %i.dl, %.lr.ph26.i60 ], [ %i.df, %._crit_edge.i57 ]
  %.024.i61 = phi ptr [ %i.dj, %.lr.ph26.i60 ], [ %i.de, %._crit_edge.i57 ] ; 2 uses
  %.123.i62 = phi ptr [ %i.dk, %.lr.ph26.i60 ], [ %i.cx, %._crit_edge.i57 ]
  %i.dh = sext i8 %i.dg to i32
  %i.di = call i64 @_glfwEncodeUTF8(ptr noundef %.024.i61, i32 noundef %i.dh) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %.024.i61, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.123.i62, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %.not17.i63 = icmp eq i8 %i.dl, 0
  br i1 %.not17.i63, label %convertLatin1toUTF8.exit64, label %.lr.ph26.i60

convertLatin1toUTF8.exit64:                       ; preds = %.lr.ph26.i60, %._crit_edge.i57
  store ptr %i.de, ptr %., align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dm = call ptr @_glfw_strdup(ptr noundef %i.cx) #17
  store ptr %i.dm, ptr %., align 8
  br label %bb.q

bb.q:                                             ; preds = %convertLatin1toUTF8.exit, %bb.l, %bb.j, %bb.m, %bb.p, %convertLatin1toUTF8.exit64
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.do = load ptr, ptr %i.a, align 8
  %i.dp = call i32 %i.dn(ptr noundef %i.do) #17   ; 0 uses
  %i.dq = load ptr, ptr %., align 8               ; 2 uses
  %.not43 = icmp eq ptr %i.dq, null
  br i1 %.not43, label %select.unfold, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.s

select.unfold:                                    ; preds = %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.t, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %select.unfold
  %.pre = load ptr, ptr %., align 8               ; 2 uses
  %.not44 = icmp eq ptr %.pre, null
  br i1 %.not44, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.41) #17
  %.035.pre = load ptr, ptr %., align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.thread, %.loopexit, %bb.r, %bb.a
  %.035 = phi ptr [ %.pre, %.loopexit ], [ %.035.pre, %bb.r ], [ %.035.pre87, %bb.a ], [ %i.dq, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 12803) i32 @_glfwGetEGLPlatformX11(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133564), align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133568), align 8
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 620), align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 225282
  %or.cond3 = select i1 %i.c, i1 %i.e, i1 false   ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133576), align 8
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp eq i32 %i.d, 225287
  %or.cond5 = select i1 %i.g, i1 %i.h, i1 false   ; 2 uses
  %.not16 = select i1 %or.cond5, i1 true, i1 %or.cond3
  br i1 %.not16, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %spec.store.select = select i1 %or.cond3, i32 12813, i32 0
  %spec.store.select6 = select i1 %or.cond5, i32 13392, i32 %spec.store.select
  %i.i = tail call ptr @_glfw_calloc(i64 noundef 5, i64 noundef 4) #17 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  store i32 12803, ptr %i.i, align 4
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %spec.store.select6, ptr %i.k, align 4
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 13455, ptr %i.m, align 4
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 12757, ptr %i.o, align 4
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 12344, ptr %i.q, align 4
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133548), align 4
  %i.s = icmp ne i32 %i.r, 0
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133552), align 8
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  %. = select i1 %or.cond, i32 12757, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.1 = phi i32 [ %., %.thread ], [ 12802, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_glfwGetEGLNativeDisplayX11() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_glfwGetEGLNativeWindowX11(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133496), align 8
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_glfwGetRequiredInstanceExtensionsX11(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133840), align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133860), align 4
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138544), align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133856), align 8
  %i.g = icmp ne i32 %i.f, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond5, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  store ptr @.str.21, ptr %0, align 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133860), align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138544), align 8
  %i.k = icmp ne ptr %i.j, null
  %or.cond3 = select i1 %i.i, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.str.22..str.23 = select i1 %or.cond3, ptr @.str.22, ptr @.str.23
  store ptr %.str.22..str.23, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_glfwGetPhysicalDevicePresentationSupportX11(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138040), align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.f
end_hunk_2
