Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/x11_window?download=true
inline.NumInlined: 89
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwDestroyWindowX11:bb.a
  %i.af = load i64, ptr %i.x, align 8
  %i.ag = tail call i32 %i.ad(ptr noundef %i.ae, i64 noundef %i.af) #17 ; 0 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137552), align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aj = load i64, ptr %i.x, align 8
  %i.ak = tail call i32 %i.ah(ptr noundef %i.ai, i64 noundef %i.aj) #17 ; 0 uses
  store i64 0, ptr %i.x, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load i64, ptr %i.r, align 8             ; 2 uses
  %.not25 = icmp eq i64 %i.al, 0
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137608), align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ao = tail call i32 %i.am(ptr noundef %i.an, i64 noundef %i.al) #17 ; 0 uses
  store i64 0, ptr %i.r, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ar = tail call i32 %i.ap(ptr noundef %i.aq) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @enableCursor(ptr nofree noundef captures(none) initializes((928, 936)) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.XIEventMask, align 8        ; 6 uses
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1
  store i32 1, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138664), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.i = call i32 %i.f(ptr noundef %i.g, i64 noundef %i.h, ptr noundef nonnull %1, i32 noundef 1) #17, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136960), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138016), align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.l = call i32 %i.j(ptr noundef %i.k, i64 noundef 0) #17, !inline_history !5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.n = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136944), align 8
  %i.o = fptosi <2 x double> %i.n to <2 x i32>    ; 3 uses
  store <2 x i32> %i.o, ptr %i.m, align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138048), align 8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = extractelement <2 x i32> %i.o, i64 0
  %i.u = extractelement <2 x i32> %i.o, i64 1
  %i.v = call i32 %i.p(ptr noundef %i.q, i64 noundef 0, i64 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.t, i32 noundef %i.u) #17, !inline_history !15 ; 0 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.y = call i32 %i.w(ptr noundef %i.x) #17, !inline_history !15 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.aa = load i32, ptr %i.z, align 4
  switch i32 %i.aa, label %bb.g [
    i32 212993, label %bb.d
    i32 212996, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  %i.ae = load i64, ptr %i.r, align 8             ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137512), align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = call i32 %i.af(ptr noundef %i.ad, i64 noundef %i.ae, i64 noundef %i.ah) #17, !inline_history !6 ; 0 uses
  br label %updateCursorImage.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138008), align 8
  %i.ak = call i32 %i.aj(ptr noundef %i.ad, i64 noundef %i.ae) #17, !inline_history !6 ; 0 uses
  br label %updateCursorImage.exit

bb.g:                                             ; preds = %bb.c
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137512), align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.an = load i64, ptr %i.r, align 8
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8
  %i.ap = call i32 %i.al(ptr noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao) #17, !inline_history !6 ; 0 uses
  br label %updateCursorImage.exit

updateCursorImage.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @releaseMonitorX11(ptr nofree noundef readonly captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, %0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_glfwInputMonitorWindow(ptr noundef nonnull %i.b, ptr noundef null) #17
  %i.e = load ptr, ptr %i.a, align 8
  tail call void @_glfwRestoreVideoModeX11(ptr noundef %i.e) #17
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138392), align 8
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138392), align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137944), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138396), align 4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138400), align 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138404), align 4
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138408), align 8
  %i.o = tail call i32 %i.i(ptr noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetWindowTitleX11(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137384), align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138072), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.e = load i64, ptr %i.d, align 8
  tail call void %i.b(ptr noundef %i.c, i64 noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137016), align 8
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137344), align 8
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 %i.f(ptr noundef %i.g, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.q = load i64, ptr %i.h, align 8
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137024), align 8
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137344), align 8
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i32 %i.o(ptr noundef %i.p, i64 noundef %i.q, i64 noundef %i.r, i64 noundef %i.s, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %i.u) #17 ; 0 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.y = tail call i32 %i.w(ptr noundef %i.x) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetWindowIconX11(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge:                                      ; preds = %.preheader
  %i.c = tail call ptr @_glfw_calloc(i64 noundef 0, i64 noundef 8) #17
  br label %._crit_edge60

.lr.ph59.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph59.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph59.preheader.unr-lcssa ]
  %.04648.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aa, %.lr.ph59.preheader.unr-lcssa ]
  %lcmp.mod78 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = mul nsw i32 %i.g, %i.e
  %i.i = add i32 %.04648.epil.init, 2
  %i.j = add i32 %i.i, %i.h
  br label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.lr.ph59.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa76 = phi i32 [ %i.aa, %.lr.ph59.preheader.unr-lcssa ], [ %i.j, %.lr.ph.epil.preheader ] ; 2 uses
  %i.k = sext i32 %.lcssa76 to i64
  %i.l = tail call ptr @_glfw_calloc(i64 noundef %i.k, i64 noundef 8) #17 ; 2 uses
  %wide.trip.count69 = zext nneg i32 %1 to i64
  br label %.lr.ph59

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.04648 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = mul nsw i32 %i.p, %i.n
  %i.r = add i32 %.04648, 2
  %i.s = add i32 %i.r, %i.q
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = add i32 %i.s, 2
  %i.aa = add i32 %i.z, %i.y                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph59.preheader.unr-lcssa, label %.lr.ph

._crit_edge60:                                    ; preds = %._crit_edge54, %._crit_edge
  %i.ab = phi ptr [ %i.c, %._crit_edge ], [ %i.l, %._crit_edge54 ] ; 2 uses
  %.046.lcssa72 = phi i32 [ 0, %._crit_edge ], [ %.lcssa76, %._crit_edge54 ]
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137032), align 8
  %i.ah = tail call i32 %i.ac(ptr noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ag, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef %i.ab, i32 noundef %.046.lcssa72) #17 ; 0 uses
  tail call void @_glfw_free(ptr noundef %i.ab) #17
  br label %bb.d

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %._crit_edge54
  %indvars.iv66 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next67, %._crit_edge54 ] ; 2 uses
  %.04456 = phi ptr [ %i.l, %.lr.ph59.preheader ], [ %.1.lcssa, %._crit_edge54 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv66 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.04456, i64 8
  store i64 %i.ak, ptr %.04456, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.04456, i64 16 ; 2 uses
  store i64 %i.ao, ptr %i.al, align 8
  %i.aq = load i32, ptr %i.ai, align 8
  %i.ar = load i32, ptr %i.am, align 4
  %i.as = mul nsw i32 %i.ar, %i.aq
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.lr.ph59
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %bb.b

._crit_edge54:                                    ; preds = %bb.b, %.lr.ph59
  %.1.lcssa = phi ptr [ %i.ap, %.lr.ph59 ], [ %i.bc, %bb.b ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge60, label %.lr.ph59

bb.b:                                             ; preds = %.lr.ph53, %bb.b
  %indvars.iv63 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next64, %bb.b ] ; 2 uses
  %.150 = phi ptr [ %i.ap, %.lr.ph53 ], [ %i.bc, %bb.b ] ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = shl nuw nsw i64 %indvars.iv63, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load <4 x i8>, ptr %i.ax, align 1
  %i.az = shufflevector <4 x i8> %i.ay, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ba = bitcast <4 x i8> %i.az to i32
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  store i64 %i.bb, ptr %.150, align 8
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.bd = load i32, ptr %i.ai, align 8
  %i.be = load i32, ptr %i.am, align 4
  %i.bf = mul nsw i32 %i.be, %i.bd
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next64, %i.bg
  br i1 %i.bh, label %bb.b, label %._crit_edge54

bb.c:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137032), align 8
  %i.bn = tail call i32 %i.bi(ptr noundef %i.bj, i64 noundef %i.bl, i64 noundef %i.bm) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge60
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bq = tail call i32 %i.bo(ptr noundef %i.bp) #17 ; 0 uses
  ret void
}

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_glfw_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_glfwGetWindowPosX11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138000), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.i = call i32 %i.d(ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.h, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #17 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 4
  store i32 %i.j, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.c, align 4
  store i32 %i.k, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetWindowPosX11(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137712), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = call i32 %i.b(ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull %3) #17, !inline_history !13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137400), align 8
  %i.j = call ptr %i.i() #17                      ; 7 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137704), align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.m = load i64, ptr %i.d, align 8
  %i.n = call i32 %i.k(ptr noundef %i.l, i64 noundef %i.m, ptr noundef %i.j, ptr noundef nonnull %i.a) #17
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8
  %i.p = or i64 %i.o, 4
  store i64 %i.p, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.q, align 4
end_hunk_0
begin_hunk_1_@_glfwPollEventsX11:bb.a
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %2 = alloca %union._XEvent, align 8             ; 5 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %union._XEvent, align 8             ; 10 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %4 = alloca %union._XEvent, align 8             ; 12 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
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
  %i.bn = phi ptr [ %i.ab, %.lr.ph ], [ %i.tn, %processEvent.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137792), align 8
  %i.bp = call i32 %i.bo(ptr noundef nonnull %i.bn, ptr noundef nonnull %6) #17 ; 0 uses
  %i.bq = load i32, ptr %6, align 8
  %i.br = and i32 %i.bq, -2
  %switch.i = icmp eq i32 %i.br, 2
  %i.bs = load i32, ptr %i.ae, align 4
  %.0213.i = select i1 %switch.i, i32 %i.bs, i32 0 ; 10 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137576), align 8
  %i.bu = call i32 %i.bt(ptr noundef nonnull %6, i64 noundef 0) #17, !inline_history !36 ; 2 uses
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
  %i.ca = call i32 %i.bz(ptr noundef nonnull %6) #17, !inline_history !36 ; 0 uses
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
  %i.cs = call i32 %i.cq(ptr noundef %i.cr, ptr noundef nonnull %6) #17, !inline_history !36
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
  %7 = and i8 %i.dg, 1
  %.not284.i = icmp eq i8 %7, 0
  br i1 %.not284.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = load double, ptr %i.cz, align 8
  %i.di = fadd double %i.db, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0218.i = phi ptr [ %i.dj, %bb.t ], [ %i.cz, %bb.s ]
  %.0217.i = phi double [ %i.di, %bb.t ], [ %i.db, %bb.s ]
  %i.dk = and i8 %i.dg, 2
  %.not285.i = icmp eq i8 %i.dk, 0
  br i1 %.not285.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = load double, ptr %.0218.i, align 8
  %i.dm = fadd double %i.dd, %i.dl
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0216.i = phi double [ %i.dm, %bb.v ], [ %i.dd, %bb.u ]
  call void @_glfwInputCursorPos(ptr noundef nonnull %i.ck, double noundef %.0217.i, double noundef %.0216.i) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137624), align 8
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  call void %i.dn(ptr noundef %i.do, ptr noundef nonnull %6) #17, !inline_history !36
  br label %processEvent.exit

bb.y:                                             ; preds = %thread-pre-split.i
  call fastcc void @handleSelectionRequest(ptr noundef nonnull %6)
  br label %processEvent.exit

bb.z:                                             ; preds = %thread-pre-split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store ptr null, ptr %i.e, align 8
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137584), align 8
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dr = load i64, ptr %i.af, align 8
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133936), align 8
  %i.dt = call i32 %i.dp(ptr noundef %i.dq, i64 noundef %i.dr, i32 noundef %i.ds, ptr noundef nonnull %i.e) #17, !inline_history !36
  %.not245.i = icmp eq i32 %i.dt, 0
  br i1 %.not245.i, label %bb.aa, label %.critedge291.i

bb.aa:                                            ; preds = %bb.z
  %i.du = load i32, ptr %6, align 8
  switch i32 %i.du, label %.critedge291.i [
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
  %i.dv = load i64, ptr %i.ah, align 8
  %i.dw = load ptr, ptr %i.e, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 872
  store i64 %i.dv, ptr %i.dx, align 8
  br label %.critedge291.i

bb.ac:                                            ; preds = %bb.aa
  %or.cond.i.i = icmp ugt i32 %.0213.i, 255
  br i1 %or.cond.i.i, label %translateKeyX11.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = zext nneg i32 %.0213.i to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135730), i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = sext i16 %i.ea to i32
  br label %translateKeyX11.exit.i

translateKeyX11.exit.i:                           ; preds = %bb.ad, %bb.ac
  %.0.i.i = phi i32 [ %i.eb, %bb.ad ], [ -1, %bb.ac ] ; 2 uses
  %i.ec = load i32, ptr %i.bj, align 8            ; 5 uses
  %spec.select.i.i = and i32 %i.ec, 1
  %i.ed = lshr i32 %i.ec, 1
  %i.ee = and i32 %i.ed, 6                        ; 2 uses
  %i.ef = lshr i32 %i.ec, 3
  %i.eg = and i32 %i.ef, 8
  %i.eh = shl i32 %i.ec, 3
  %i.ei = and i32 %i.eh, 16
  %i.ej = shl i32 %i.ec, 1
  %i.ek = and i32 %i.ej, 32
  %i.el = or disjoint i32 %i.ek, %spec.select.i.i
  %.3.i.i = or disjoint i32 %i.el, %i.ei
  %i.em = or disjoint i32 %.3.i.i, %i.eg
  %.5.i.i = or disjoint i32 %i.em, %i.ee          ; 4 uses
  %.not273.i = icmp eq i32 %i.ee, 0
  %i.en = zext i1 %.not273.i to i32               ; 2 uses
  %i.eo = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 880
  %i.eq = load ptr, ptr %i.ep, align 8
  %.not274.i = icmp eq ptr %i.eq, null
  br i1 %.not274.i, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %translateKeyX11.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 936
  %i.es = sext i32 %.0213.i to i64                ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8            ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ex = sub i64 %i.ew, %i.eu
  %i.ey = icmp ne i64 %i.ew, %i.eu
  %i.ez = icmp ult i64 %i.ex, 2147483648
  %or.cond.i = and i1 %i.ey, %i.ez
  br i1 %or.cond.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not276.i = icmp eq i32 %.0213.i, 0
  br i1 %.not276.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_glfwInputKey(ptr noundef nonnull %i.eo, i32 noundef %.0.i.i, i32 noundef %.0213.i, i32 noundef 1, i32 noundef %.5.i.i) #17
  %.pre348.i = load ptr, ptr %i.e, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fa = phi ptr [ %.pre348.i, %bb.ah ], [ %i.eo, %bb.ag ]
  %i.fb = load i64, ptr %i.ai, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 936
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.es
  store i64 %i.fb, ptr %i.fd, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.not277.i = icmp eq i32 %i.bu, 0
  br i1 %.not277.i, label %bb.ak, label %.critedge291.i

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138064), align 8
  %i.ff = load ptr, ptr %i.e, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 880
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call i32 %i.fe(ptr noundef %i.fh, ptr noundef nonnull %6, ptr noundef nonnull %i.g, i32 noundef 99, ptr noundef null, ptr noundef nonnull %i.f) #17, !inline_history !36 ; 3 uses
  %i.fj = load i32, ptr %i.f, align 4             ; 2 uses
  %i.fk = icmp eq i32 %i.fj, -1
  br i1 %i.fk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fl = add nsw i32 %i.fi, 1
  %i.fm = sext i32 %i.fl to i64
  %i.fn = call ptr @_glfw_calloc(i64 noundef %i.fm, i64 noundef 1) #17 ; 2 uses
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138064), align 8
  %i.fp = load ptr, ptr %i.e, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 880
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call i32 %i.fo(ptr noundef %i.fr, ptr noundef nonnull %6, ptr noundef %i.fn, i32 noundef %i.fi, ptr noundef null, ptr noundef nonnull %i.f) #17, !inline_history !36
  %.pr325.i = load i32, ptr %i.f, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ft = phi i32 [ %.pr325.i, %bb.al ], [ %i.fj, %bb.ak ]
  %.0215.i = phi i32 [ %i.fs, %bb.al ], [ %i.fi, %bb.ak ] ; 2 uses
  %.0214.i = phi ptr [ %i.fn, %bb.al ], [ %i.g, %bb.ak ] ; 5 uses
  switch i32 %i.ft, label %.loopexit.i [
    i32 4, label %bb.an
    i32 2, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %i.fu = sext i32 %.0215.i to i64                ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.0214.i, i64 %i.fu
  store i8 0, ptr %i.fv, align 1
  %i.fw = ptrtoint ptr %.0214.i to i64
  %i.fx = icmp sgt i32 %.0215.i, 0
  br i1 %i.fx, label %.lr.ph335.i, label %.loopexit.i

.lr.ph335.i:                                      ; preds = %bb.an, %decodeUTF8.exit.i
  %.0324333.i = phi ptr [ %i.ge, %decodeUTF8.exit.i ], [ %.0214.i, %bb.an ] ; 2 uses
  %i.fy = load ptr, ptr %i.e, align 8
  %.pre.i.i = load i8, ptr %.0324333.i, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph335.i
  %i.fz = phi i8 [ %.pre.i.i, %.lr.ph335.i ], [ %i.gg, %bb.ao ]
  %i.ga = phi ptr [ %.0324333.i, %.lr.ph335.i ], [ %i.ge, %bb.ao ]
  %.06.i.i = phi i32 [ 0, %.lr.ph335.i ], [ %i.gd, %bb.ao ]
  %.0.i305.i = phi i32 [ 0, %.lr.ph335.i ], [ %i.gf, %bb.ao ] ; 2 uses
  %i.gb = shl i32 %.06.i.i, 6
  %i.gc = zext i8 %i.fz to i32
  %i.gd = add i32 %i.gb, %i.gc                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 4 uses
end_hunk_1
begin_hunk_2_@_glfwPollEventsX11:bb.a
  %i.sw = and i32 %i.sv, -3
  %or.cond13.not.i = icmp eq i32 %i.sw, 1
  br i1 %or.cond13.not.i, label %bb.es, label %.critedge291.i

bb.es:                                            ; preds = %bb.er
  %i.sx = icmp eq i32 %i.sv, 3                    ; 2 uses
  %i.sy = zext i1 %i.sx to i32                    ; 3 uses
  %i.sz = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 892
  %i.tb = load i32, ptr %i.ta, align 4
  %.not248.i = icmp eq i32 %i.tb, %i.sy
  br i1 %.not248.i, label %.critedge291.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 80
  %i.td = load ptr, ptr %i.tc, align 8
  %.not249.i = icmp eq ptr %i.td, null
  br i1 %.not249.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  br i1 %i.sx, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call fastcc void @releaseMonitorX11(ptr noundef nonnull %i.sz)
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  call fastcc void @acquireMonitorX11(ptr noundef nonnull %i.sz)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.et
  %i.te = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 892
  store i32 %i.sy, ptr %i.tf, align 4
  call void @_glfwInputWindowIconify(ptr noundef %i.te, i32 noundef %i.sy) #17
  br label %.critedge291.i

bb.ey:                                            ; preds = %bb.eq
  %i.tg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137072), align 8
  %i.th = icmp eq i64 %i.sq, %i.tg
  br i1 %i.th, label %bb.ez, label %.critedge291.i

bb.ez:                                            ; preds = %bb.ey
  %i.ti = load ptr, ptr %i.e, align 8
  %i.tj = call i32 @_glfwWindowMaximizedX11(ptr noundef %i.ti) ; 3 uses
  %i.tk = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 896 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8
  %.not247.i = icmp eq i32 %i.tm, %i.tj
  br i1 %.not247.i, label %.critedge291.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store i32 %i.tj, ptr %i.tl, align 8
  call void @_glfwInputWindowMaximize(ptr noundef nonnull %i.tk, i32 noundef %i.tj) #17
  br label %.critedge291.i

.critedge293.i:                                   ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %.critedge291.i

.critedge297.i:                                   ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %.critedge291.i

.critedge291.i:                                   ; preds = %.critedge297.i, %.critedge293.i, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.es, %bb.er, %bb.ep, %bb.eo, %bb.en, %bb.ee, %bb.ed, %bb.dx, %bb.dw, %bb.dp, %bb.do, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.de, %bb.dc, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %bb.cb, %bb.by, %bb.bx, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.at, %bb.aq, %bb.aj, %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %processEvent.exit

processEvent.exit:                                ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.x, %bb.y, %.critedge291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 136
  %i.tp = load i32, ptr %i.to, align 8
  %.not5 = icmp eq i32 %i.tp, 0
  br i1 %.not5, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %processEvent.exit, %bb.f
  %.lcssa18 = phi ptr [ %i.ab, %bb.f ], [ %i.tn, %processEvent.exit ]
  %i.tq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136960), align 8 ; 6 uses
  %.not6 = icmp eq ptr %i.tq, null
  br i1 %.not6, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.tr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137712), align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 864 ; 2 uses
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = call i32 %i.tr(ptr noundef nonnull %.lcssa18, i64 noundef %i.tt, ptr noundef nonnull %0) #17, !inline_history !16 ; 0 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tw = load i32, ptr %i.tv, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ty = load i32, ptr %i.tx, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tq, i64 920
  %i.ua = load i32, ptr %i.tz, align 8
  %i.ub = sdiv i32 %i.tw, 2                       ; 3 uses
  %.not7 = icmp eq i32 %i.ua, %i.ub
  br i1 %.not7, label %bb.fc, label %._crit_edge22

._crit_edge22:                                    ; preds = %bb.fb
  %.pre23 = sdiv i32 %i.ty, 2
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tq, i64 924
  %i.ud = load i32, ptr %i.uc, align 4
  %i.ue = sdiv i32 %i.ty, 2                       ; 2 uses
  %.not8 = icmp eq i32 %i.ud, %i.ue
  br i1 %.not8, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge22, %bb.fc
  %.pre-phi = phi i32 [ %.pre23, %._crit_edge22 ], [ %i.ue, %bb.fc ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tq, i64 928
  store i32 %i.ub, ptr %i.uf, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tq, i64 932
  store i32 %.pre-phi, ptr %i.ug, align 4
  %i.uh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138048), align 8
  %i.ui = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uj = load i64, ptr %i.ts, align 8
  %i.uk = call i32 %i.uh(ptr noundef %i.ui, i64 noundef 0, i64 noundef %i.uj, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ub, i32 noundef %.pre-phi) #17, !inline_history !15 ; 0 uses
  %i.ul = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.um = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.un = call i32 %i.ul(ptr noundef %i.um) #17, !inline_history !15 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd, %._crit_edge
  %i.uo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.up = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.uq = call i32 %i.uo(ptr noundef %i.up) #17   ; 0 uses
  ret void
}

declare void @_glfwDetectJoystickConnectionLinux() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetCursorPosX11(ptr nofree noundef captures(none) initializes((928, 936)) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fptosi double %1 to i32                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i32 %i.a, ptr %i.b, align 8
  %i.c = fptosi double %2 to i32                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 932
  store i32 %i.c, ptr %i.d, align 4
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138048), align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call i32 %i.e(ptr noundef %i.f, i64 noundef 0, i64 noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.a, i32 noundef %i.c) #17 ; 0 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137592), align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.l = tail call i32 %i.j(ptr noundef %i.k) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwWaitEventsX11() local_unnamed_addr #0 {
bb.a:
  %0 = alloca [3 x %struct.pollfd], align 16      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8
  store i32 %i.c, ptr %0, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136968), align 8
  store i32 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  store i16 0, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 -1, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  store i16 0, ptr %i.l, align 2
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1932), align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139632), align 8
  store i32 %i.n, ptr %i.j, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.p = tail call i32 %i.o(ptr noundef nonnull %i.a) #17, !inline_history !8
  %.not813.i = icmp eq i32 %i.p, 0
  br i1 %.not813.i, label %.lr.ph.i, label %waitForAnyEvent.exit

.lr.ph.i:                                         ; preds = %bb.c, %.critedge.loopexit.i
  %i.q = call i32 @_glfwPollPOSIX(ptr noundef nonnull %0, i64 noundef 3, ptr noundef null) #17
  %.not9.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i, label %waitForAnyEvent.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %1 = load i16, ptr %i.i, align 2
  %2 = and i16 %1, 1
  %.not10.i = icmp eq i16 %2, 0
  br i1 %.not10.i, label %.preheader.1.i, label %waitForAnyEvent.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.r = load i16, ptr %i.l, align 2
  %3 = and i16 %i.r, 1
  %.not10.1.i = icmp eq i16 %3, 0
  br i1 %.not10.1.i, label %.critedge.loopexit.i, label %waitForAnyEvent.exit

.critedge.loopexit.i:                             ; preds = %.preheader.1.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.u = call i32 %i.s(ptr noundef %i.t) #17, !inline_history !8
  %.not8.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i, label %.lr.ph.i, label %waitForAnyEvent.exit

waitForAnyEvent.exit:                             ; preds = %.lr.ph.i, %.preheader.preheader.i, %.preheader.1.i, %.critedge.loopexit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  call void @_glfwPollEventsX11()
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwWaitEventsTimeoutX11(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [3 x %struct.pollfd], align 16      ; 12 uses
  %i.a = alloca double, align 8                   ; 2 uses
  store double %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %1, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136968), align 8
  store i32 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  store i16 0, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 -1, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  store i16 0, ptr %i.m, align 2
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 1932), align 4
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139632), align 8
  store i32 %i.o, ptr %i.k, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.b) #17, !inline_history !8
  %.not813.i = icmp eq i32 %i.q, 0
  br i1 %.not813.i, label %.lr.ph.i, label %waitForAnyEvent.exit

.lr.ph.i:                                         ; preds = %bb.c, %.critedge.loopexit.i
  %i.r = call i32 @_glfwPollPOSIX(ptr noundef nonnull %1, i64 noundef 3, ptr noundef nonnull %i.a) #17
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %waitForAnyEvent.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %2 = load i16, ptr %i.j, align 2
  %3 = and i16 %2, 1
  %.not10.i = icmp eq i16 %3, 0
  br i1 %.not10.i, label %.preheader.1.i, label %waitForAnyEvent.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.s = load i16, ptr %i.m, align 2
  %4 = and i16 %i.s, 1
  %.not10.1.i = icmp eq i16 %4, 0
  br i1 %.not10.1.i, label %.critedge.loopexit.i, label %waitForAnyEvent.exit

.critedge.loopexit.i:                             ; preds = %.preheader.1.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137816), align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.v = call i32 %i.t(ptr noundef %i.u) #17, !inline_history !8
  %.not8.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i, label %.lr.ph.i, label %waitForAnyEvent.exit

waitForAnyEvent.exit:                             ; preds = %.lr.ph.i, %.preheader.preheader.i, %.preheader.1.i, %.critedge.loopexit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @_glfwPollEventsX11()
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden void @_glfwPostEmptyEventX11() local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136972), align 4
  %i.c = call i64 @write(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1) #17
  switch i64 %i.c, label %bb.d [
    i64 1, label %writeEmptyEvent.exit
    i64 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #19
  %i.e = load i32, ptr %i.d, align 4
  %.not.i = icmp eq i32 %i.e, 4
  br i1 %.not.i, label %bb.d, label %writeEmptyEvent.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.b

writeEmptyEvent.exit:                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwGetCursorPosX11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137832), align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.k = load i64, ptr %i.j, align 8
  %i.l = call i32 %i.h(ptr noundef %i.i, i64 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #17 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.e, align 4
  %i.n = sitofp i32 %i.m to double
  store double %i.n, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.f, align 4
  %i.p = sitofp i32 %i.o to double
  store double %i.p, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwSetCursorModeX11(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.XIEventMask, align 8        ; 6 uses
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %3 = alloca %struct.XIEventMask, align 8        ; 6 uses
  %i.b = alloca [3 x i8], align 2                 ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137664), align 8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.n = call i32 %i.l(ptr noundef %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #17, !inline_history !39 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %i.p, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %1, 212995                   ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137832), align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.u = call i32 %i.s(ptr noundef %i.t, i64 noundef %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #17, !inline_history !18 ; 0 uses
  %i.v = load i32, ptr %i.g, align 4
  %i.w = sitofp i32 %i.v to double
  store double %i.w, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136944), align 8
  %i.x = load i32, ptr %i.h, align 4
  %i.y = sitofp i32 %i.x to double
  store double %i.y, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136952), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @_glfwCenterCursorInContentArea(ptr noundef nonnull %0) #17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aa = load i32, ptr %i.z, align 8
  %.not18 = icmp eq i32 %i.aa, 0
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i16 0, ptr %i.b, align 2
  store i32 1, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 2, ptr %i.ad, align 2
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138664), align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.ah = call i32 %i.ae(ptr noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull %3, i32 noundef 1) #17, !inline_history !7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136960), align 8
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.al = load i32, ptr %i.ak, align 8
  %.not17 = icmp eq i32 %i.al, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i8 0, ptr %i.a, align 1
  store i32 1, ptr %2, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.an, align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138664), align 8
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.ar = call i32 %i.ao(ptr noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %2, i32 noundef 1) #17, !inline_history !4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.as = icmp eq i32 %1, 212996
end_hunk_2
