Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/x11_window?download=true
inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_glfwPlatformDestroyWindow:bb.a
  %.not23 = icmp eq i64 %i.al, 0
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134464), align 8, !tbaa !291
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ao = tail call i32 %i.am(ptr noundef %i.an, i64 noundef %i.al) #21 ; 0 uses
  store i64 0, ptr %i.r, align 8, !tbaa !126
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ar = tail call i32 %i.ap(ptr noundef %i.aq) #21 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @releaseMonitor(ptr nofree noundef readonly captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171
  %.not = icmp eq ptr %i.d, %0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_glfwInputMonitorWindow(ptr noundef nonnull %i.b, ptr noundef null) #21
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !135
  tail call void @_glfwRestoreVideoModeX11(ptr noundef %i.e) #21
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135272), align 8, !tbaa !169
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135272), align 8, !tbaa !169
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134816), align 8, !tbaa !170
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135276), align 4, !tbaa !174
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135280), align 8, !tbaa !175
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135284), align 4, !tbaa !176
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135288), align 8, !tbaa !177
  %i.o = tail call i32 %i.i(ptr noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.n) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowTitle(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134240), align 8, !tbaa !292
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134944), align 8, !tbaa !293
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.e = load i64, ptr %i.d, align 8, !tbaa !112
  tail call void %i.b(ptr noundef %i.c, i64 noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133872), align 8, !tbaa !294
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134200), align 8, !tbaa !88
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 %i.f(ptr noundef %i.g, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %i.m) #21 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.q = load i64, ptr %i.h, align 8, !tbaa !112
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133880), align 8, !tbaa !295
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134200), align 8, !tbaa !88
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i32 %i.o(ptr noundef %i.p, i64 noundef %i.q, i64 noundef %i.r, i64 noundef %i.s, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %1, i32 noundef %i.u) #21 ; 0 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.y = tail call i32 %i.w(ptr noundef %i.x) #21 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowIcon(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
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

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.04349 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !297
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !298
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = add i32 %.04349, 2
  %i.i = add i32 %i.h, %i.g
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !297
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !298
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = add i32 %i.i, 2
  %i.q = add i32 %i.p, %i.o                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph59.preheader.unr-lcssa, label %.lr.ph

._crit_edge:                                      ; preds = %.preheader
  %i.r = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #24
  br label %._crit_edge60

.lr.ph59.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph59.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph59.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph59.preheader.unr-lcssa ]
  %.04349.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.q, %.lr.ph59.preheader.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !297
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !298
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = add i32 %.04349.epil.init, 2
  %i.y = add i32 %i.x, %i.w
  br label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.lr.ph59.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa79 = phi i32 [ %i.q, %.lr.ph59.preheader.unr-lcssa ], [ %i.y, %.lr.ph.epil.preheader ] ; 2 uses
  %i.z = sext i32 %.lcssa79 to i64
  %i.aa = tail call noalias ptr @calloc(i64 noundef %i.z, i64 noundef 8) #24 ; 2 uses
  %wide.trip.count71 = zext nneg i32 %1 to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %._crit_edge54
  %indvars.iv68 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next69, %._crit_edge54 ] ; 2 uses
  %.057 = phi ptr [ %i.aa, %.lr.ph59.preheader ], [ %.1.lcssa, %._crit_edge54 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv68 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !297 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.057, i64 8
  store i64 %i.ad, ptr %.057, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !298 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.057, i64 16 ; 3 uses
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !66
  %i.aj = mul nsw i32 %i.ag, %i.ac                ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.lr.ph59
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !299 ; 3 uses
  %wide.trip.count66 = zext nneg i32 %i.aj to i64 ; 2 uses
  %xtraiter82 = and i64 %wide.trip.count66, 1
  %i.an = icmp eq i32 %i.aj, 1
  br i1 %i.an, label %.epil.preheader, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.lr.ph53
  %unroll_iter86 = and i64 %wide.trip.count66, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph53.new
  %indvars.iv63 = phi i64 [ 0, %.lr.ph53.new ], [ %indvars.iv.next64.1, %bb.b ] ; 3 uses
  %.151 = phi ptr [ %i.ai, %.lr.ph53.new ], [ %i.av, %bb.b ] ; 3 uses
  %niter87 = phi i64 [ 0, %.lr.ph53.new ], [ %niter87.next.1, %bb.b ]
  %i.ao = shl nuw nsw i64 %indvars.iv63, 2
  %3 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 3 uses
  %4 = load i16, ptr %3, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = zext i16 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !77
  %10 = zext i8 %9 to i32
  %11 = or disjoint i32 %7, %10
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 3
  %12 = load i8, ptr %i.ap, align 1, !tbaa !77
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = or disjoint i32 %11, %14
  %i.aq = sext i32 %15 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.151, i64 8
  store i64 %i.aq, ptr %.151, align 8, !tbaa !66
  %indvars.iv.next64 = shl i64 %indvars.iv63, 2
  %16 = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next64 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i16, ptr %17, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 6
  %22 = load i8, ptr %i.as, align 1, !tbaa !77
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %21, %23
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 7
  %25 = load i8, ptr %i.at, align 1, !tbaa !77
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = or disjoint i32 %24, %27
  %i.au = sext i32 %28 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.151, i64 16 ; 3 uses
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !66
  %indvars.iv.next64.1 = add nuw nsw i64 %indvars.iv63, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge54.loopexit.unr-lcssa, label %bb.b

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %._crit_edge54, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53
  %indvars.iv63.epil.init = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next64.1, %._crit_edge54.loopexit.unr-lcssa ]
  %.151.epil.init = phi ptr [ %i.ai, %.lr.ph53 ], [ %i.av, %._crit_edge54.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.aw = shl nuw nsw i64 %indvars.iv63.epil.init, 2
  %29 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw ; 3 uses
  %30 = load i16, ptr %29, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = zext i16 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !77
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  %i.ax = getelementptr inbounds nuw i8, ptr %29, i64 3
  %38 = load i8, ptr %i.ax, align 1, !tbaa !77
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %39, 24
  %41 = or disjoint i32 %37, %40
  %i.ay = sext i32 %41 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.151.epil.init, i64 8
  store i64 %i.ay, ptr %.151.epil.init, align 8, !tbaa !66
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %.epil.preheader, %._crit_edge54.loopexit.unr-lcssa, %.lr.ph59
  %.1.lcssa = phi ptr [ %i.ai, %.lr.ph59 ], [ %i.av, %._crit_edge54.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %._crit_edge54, %._crit_edge
  %i.ba = phi ptr [ %i.r, %._crit_edge ], [ %i.aa, %._crit_edge54 ] ; 2 uses
  %.043.lcssa75 = phi i32 [ 0, %._crit_edge ], [ %.lcssa79, %._crit_edge54 ]
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134272), align 8, !tbaa !89
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !112
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8, !tbaa !300
  %i.bg = tail call i32 %i.bb(ptr noundef %i.bc, i64 noundef %i.be, i64 noundef %i.bf, i64 noundef 6, i32 noundef 32, i32 noundef 0, ptr noundef %i.ba, i32 noundef %.043.lcssa75) #21 ; 0 uses
  tail call void @free(ptr noundef %i.ba) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134384), align 8, !tbaa !168
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !112
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8, !tbaa !300
  %i.bm = tail call i32 %i.bh(ptr noundef %i.bi, i64 noundef %i.bk, i64 noundef %i.bl) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge60
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.bp = tail call i32 %i.bn(ptr noundef %i.bo) #21 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @_glfwPlatformGetWindowPos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134872), align 8, !tbaa !156
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130776), align 8, !tbaa !125
  %i.i = call i32 %i.d(ptr noundef %i.e, i64 noundef %i.g, i64 noundef %i.h, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #21 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 4, !tbaa !87
  store i32 %i.j, ptr %1, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.c, align 4, !tbaa !87
  store i32 %i.k, ptr %2, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowPos(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !112
  %i.f = call i32 %i.b(ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull %3) #21, !inline_history !161 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !157
  %.not = icmp eq i32 %i.h, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134256), align 8, !tbaa !140
  %i.j = call ptr %i.i() #21                      ; 7 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134560), align 8, !tbaa !301
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.m = load i64, ptr %i.d, align 8, !tbaa !112
  %i.n = call i32 %i.k(ptr noundef %i.l, i64 noundef %i.m, ptr noundef %i.j, ptr noundef nonnull %i.a) #21
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !145
  %i.p = or i64 %i.o, 4
  store i64 %i.p, ptr %i.j, align 8, !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !302
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !303
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134840), align 8, !tbaa !155
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.u = load i64, ptr %i.d, align 8, !tbaa !112
  call void %i.s(ptr noundef %i.t, i64 noundef %i.u, ptr noundef nonnull %i.j) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134456), align 8, !tbaa !92
  %i.w = call i32 %i.v(ptr noundef %i.j) #21      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134648), align 8, !tbaa !304
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.z = load i64, ptr %i.d, align 8, !tbaa !112
  %i.aa = call i32 %i.x(ptr noundef %i.y, i64 noundef %i.z, i32 noundef %1, i32 noundef %2) #21 ; 0 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134448), align 8, !tbaa !160
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.ad = call i32 %i.ab(ptr noundef %i.ac) #21   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwPlatformWindowVisible(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.XWindowAttributes, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %i.e = call i32 %i.a(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull %1) #21 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.g = load i32, ptr %i.f, align 4, !tbaa !157
  %i.h = icmp eq i32 %i.g, 2
  %i.i = zext i1 %i.h to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformGetWindowSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.XWindowAttributes, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134568), align 8, !tbaa !114
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 130760), align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %i.e = call i32 %i.a(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull %3) #21 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !180
  store i32 %i.g, ptr %1, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !181
  store i32 %i.i, ptr %2, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @_glfwPlatformSetWindowSize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1_@_glfwInputMouseClick
declare void @_glfwInputMouseClick(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputScroll(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @_glfwInputCursorEnter(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputFramebufferSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputWindowSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputWindowPos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputWindowCloseRequest(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @parseUriList(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  store i32 0, ptr %1, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = tail call ptr @strtok(ptr noundef %0, ptr noundef nonnull @.str.40) #21 ; 2 uses
  %.not.peel56 = icmp eq ptr %i.d, null
  br i1 %.not.peel56, label %.loopexit, label %.lr.ph

.outer.loopexit:                                  ; preds = %bb.e
  %i.e = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.40) #21 ; 2 uses
  %.not.peel = icmp eq ptr %i.e, null
  br i1 %.not.peel, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer.loopexit
  %i.f = phi ptr [ %i.e, %.outer.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.031.ph57 = phi ptr [ %i.y, %.outer.loopexit ], [ null, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !77
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %.peel.next, label %.loopexit43

.peel.next:                                       ; preds = %.lr.ph, %bb.b
  %i.i = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.40) #21 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.peel.next
  %i.j = load i8, ptr %i.i, align 1, !tbaa !77
  %i.k = icmp eq i8 %i.j, 35
  br i1 %i.k, label %.peel.next, label %.loopexit43, !llvm.loop !407

.loopexit43:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa41 = phi ptr [ %i.f, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.lcssa41, ptr noundef nonnull dereferenceable(8) @.str.39, i64 noundef 7) #23
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.loopexit39

bb.c:                                             ; preds = %.loopexit43
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa41, i64 7
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.030 = phi ptr [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 3 uses
  %i.o = load i8, ptr %.030, align 1, !tbaa !77
  %.not35 = icmp eq i8 %i.o, 47
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 1
  br i1 %.not35, label %.loopexit39, label %bb.d

.loopexit39:                                      ; preds = %bb.d, %.loopexit43
  %.1 = phi ptr [ %.lcssa41, %.loopexit43 ], [ %.030, %bb.d ] ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !87
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %1, align 4, !tbaa !87
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1) #23
  %i.t = add i64 %i.s, 1
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 1) #24 ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !87
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @realloc(ptr noundef %.031.ph57, i64 noundef %i.x) #25 ; 3 uses
  %i.z = load i32, ptr %1, align 4, !tbaa !87
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !212
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.loopexit39
  %.2 = phi ptr [ %.1, %.loopexit39 ], [ %i.an, %bb.j ] ; 4 uses
  %.0 = phi ptr [ %i.u, %.loopexit39 ], [ %i.am, %bb.j ] ; 3 uses
  %i.ad = load i8, ptr %.2, align 1, !tbaa !77    ; 2 uses
  switch i8 %i.ad, label %bb.i [
    i8 0, label %.outer.loopexit
    i8 37, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !77
  %.not37 = icmp eq i8 %i.af, 0
  br i1 %.not37, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !77
  %.not38 = icmp eq i8 %i.ah, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !77
  store i8 %i.ai, ptr %i.a, align 1, !tbaa !77
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !77
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !77
  store i8 0, ptr %i.c, align 1, !tbaa !77
  %i.ak = call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 16) #21
  %i.al = trunc i64 %i.ak to i8
  store i8 %i.al, ptr %.0, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f
  store i8 %i.ad, ptr %.0, align 1, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi ptr [ %i.ag, %bb.h ], [ %.2, %bb.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.e

.loopexit:                                        ; preds = %.outer.loopexit, %.peel.next, %bb.a
  %.031.ph55 = phi ptr [ %.031.ph57, %.peel.next ], [ null, %bb.a ], [ %i.y, %.outer.loopexit ]
  ret ptr %.031.ph55
}

declare void @_glfwInputDrop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_glfwInputWindowFocus(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputWindowDamage(ptr noundef) local_unnamed_addr #4

declare void @_glfwInputWindowIconify(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_glfwInputWindowMaximize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #15

declare void @_glfwCenterCursorInContentArea(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @isSelPropNewValueNotify(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #17 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !77
  %i.b = icmp eq i32 %i.a, 28
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  %i.o = icmp eq i64 %i.l, %i.n
  %i.p = zext i1 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.p, %bb.d ]
  ret i32 %i.q
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind allocsize(1) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"", !11, i64 0, !11, i64 4}
!15 = !{!"_GLFWinitconfig", !11, i64 0, !11, i64 4, !14, i64 8}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_GLFWfbconfig", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !16, i64 64}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"", !11, i64 0, !10, i64 4}
!21 = !{!"", !10, i64 0, !10, i64 256}
!22 = !{!"", !11, i64 0}
!23 = !{!"_GLFWwndconfig", !11, i64 0, !11, i64 4, !19, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !20, i64 60, !21, i64 320, !22, i64 832}
!24 = !{!"p1 _ZTS11_GLFWwindow", !18, i64 0}
!25 = !{!"_GLFWctxconfig", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !24, i64 40, !22, i64 48}
!26 = !{!"", !15, i64 0, !17, i64 16, !23, i64 88, !25, i64 928, !11, i64 984}
!27 = !{!"p1 _ZTS10_GLFWerror", !18, i64 0}
!28 = !{!"p1 _ZTS11_GLFWcursor", !18, i64 0}
!29 = !{!"any p2 pointer", !18, i64 0}
!30 = !{!"p2 _ZTS12_GLFWmonitor", !29, i64 0}
!31 = !{!"p1 _ZTS12_GLFWmapping", !18, i64 0}
!32 = !{!"_GLFWtlsPOSIX", !11, i64 0, !11, i64 4}
!33 = !{!"_GLFWtls", !32, i64 0}
!34 = !{!"_GLFWmutexPOSIX", !11, i64 0, !10, i64 8}
!35 = !{!"_GLFWmutex", !34, i64 0}
!36 = !{!"_GLFWtimerPOSIX", !11, i64 0, !16, i64 8}
!37 = !{!"", !16, i64 0, !36, i64 8}
!38 = !{!"", !11, i64 0, !18, i64 8, !10, i64 16, !18, i64 32, !18, i64 40, !11, i64 48, !11, i64 52, !11, i64 56}
!39 = !{!"", !18, i64 0, !18, i64 8}
!40 = !{!"p1 _ZTS9_XDisplay", !18, i64 0}
!41 = !{!"float", !10, i64 0}
!42 = !{!"p1 _ZTS4_XIM", !18, i64 0}
!43 = !{!"double", !10, i64 0}
!44 = !{!"", !18, i64 0, !11, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !18, i64 488, !18, i64 496, !18, i64 504, !18, i64 512, !18, i64 520, !18, i64 528, !18, i64 536, !18, i64 544, !18, i64 552, !18, i64 560, !18, i64 568, !18, i64 576, !18, i64 584, !18, i64 592, !18, i64 600, !18, i64 608, !18, i64 616, !18, i64 624, !18, i64 632, !18, i64 640, !18, i64 648, !18, i64 656, !18, i64 664, !18, i64 672, !18, i64 680, !18, i64 688, !18, i64 696, !18, i64 704, !18, i64 712}
!45 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!46 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168}
!47 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96}
!48 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16}
!49 = !{!"", !11, i64 0, !16, i64 8, !16, i64 16}
!50 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!51 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !18, i64 24, !18, i64 32, !18, i64 40}
!52 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!53 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !18, i64 40, !18, i64 48}
!54 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !18, i64 32, !18, i64 40, !18, i64 48}
!55 = !{!"", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56}
!56 = !{!"_GLFWlibraryX11", !40, i64 0, !11, i64 8, !16, i64 16, !41, i64 24, !41, i64 28, !16, i64 32, !16, i64 40, !11, i64 48, !42, i64 56, !11, i64 64, !19, i64 72, !19, i64 80, !10, i64 88, !10, i64 1834, !10, i64 2346, !43, i64 3048, !43, i64 3056, !24, i64 3064, !16, i64 3072, !16, i64 3080, !16, i64 3088, !16, i64 3096, !16, i64 3104, !16, i64 3112, !16, i64 3120, !16, i64 3128, !16, i64 3136, !16, i64 3144, !16, i64 3152, !16, i64 3160, !16, i64 3168, !16, i64 3176, !16, i64 3184, !16, i64 3192, !16, i64 3200, !16, i64 3208, !16, i64 3216, !16, i64 3224, !16, i64 3232, !16, i64 3240, !16, i64 3248, !16, i64 3256, !16, i64 3264, !16, i64 3272, !16, i64 3280, !16, i64 3288, !16, i64 3296, !16, i64 3304, !16, i64 3312, !16, i64 3320, !16, i64 3328, !16, i64 3336, !16, i64 3344, !16, i64 3352, !16, i64 3360, !16, i64 3368, !16, i64 3376, !16, i64 3384, !16, i64 3392, !16, i64 3400, !16, i64 3408, !16, i64 3416, !16, i64 3424, !16, i64 3432, !16, i64 3440, !16, i64 3448, !16, i64 3456, !16, i64 3464, !44, i64 3472, !45, i64 4192, !46, i64 4232, !47, i64 4408, !48, i64 4512, !49, i64 4536, !50, i64 4560, !51, i64 4616, !39, i64 4664, !52, i64 4680, !53, i64 4736, !54, i64 4792, !55, i64 4848}
!57 = !{!"_GLFWlibraryGLX", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220}
!58 = !{!"p1 _ZTS8re_dfa_t", !18, i64 0}
!59 = !{!"re_pattern_buffer", !58, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !19, i64 32, !19, i64 40, !16, i64 48, !11, i64 56, !11, i64 56, !11, i64 56, !11, i64 56, !11, i64 56, !11, i64 56, !11, i64 56}
!60 = !{!"_GLFWlibraryLinux", !11, i64 0, !11, i64 4, !59, i64 8, !11, i64 72}
!61 = !{!"_GLFWlibraryEGL", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232}
!62 = !{!"_GLFWlibraryOSMesa", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56}
!63 = !{!"_GLFWlibrary", !11, i64 0, !26, i64 8, !27, i64 1000, !28, i64 1008, !24, i64 1016, !30, i64 1024, !11, i64 1032, !11, i64 1036, !10, i64 1040, !31, i64 130576, !11, i64 130584, !33, i64 130588, !33, i64 130596, !35, i64 130608, !37, i64 130656, !38, i64 130680, !39, i64 130744, !56, i64 130760, !57, i64 135672, !60, i64 135896, !61, i64 135976, !62, i64 136216}
!64 = !{!63, !18, i64 134576}
!65 = !{!63, !40, i64 130760}
!66 = !{!16, !16, i64 0}
!67 = !{!63, !11, i64 135552}
!68 = !{!63, !18, i64 135600}
!69 = !{!"short", !10, i64 0}
!70 = !{!"", !69, i64 0, !69, i64 2, !69, i64 4, !69, i64 6, !69, i64 8, !69, i64 10, !69, i64 12, !69, i64 14}
!71 = !{!"", !16, i64 0, !11, i64 8, !11, i64 12, !70, i64 16, !16, i64 32}
!72 = !{!71, !69, i64 30}
!73 = !{!63, !18, i64 134320}
!74 = !{!63, !16, i64 134184}
!75 = !{!63, !16, i64 130792}
!76 = !{!63, !18, i64 134288}
!77 = !{!10, !10, i64 0}
!78 = !{!63, !16, i64 134168}
!79 = !{!63, !19, i64 130832}
!80 = !{!63, !19, i64 130840}
!81 = !{!"p1 _ZTS9_XExtData", !18, i64 0}
!82 = !{!"p1 _ZTS9_XPrivate", !18, i64 0}
!83 = !{!"p1 _ZTS17_XrmHashBucketRec", !18, i64 0}
!84 = !{!"", !81, i64 0, !82, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !19, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !11, i64 64, !18, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !18, i64 104, !11, i64 112, !11, i64 116, !82, i64 120, !82, i64 128, !11, i64 136, !16, i64 144, !16, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !11, i64 192, !83, i64 200, !18, i64 208, !19, i64 216, !11, i64 224, !11, i64 228, !18, i64 232, !16, i64 240, !16, i64 248, !11, i64 256, !11, i64 260, !19, i64 264, !19, i64 272, !11, i64 280, !19, i64 288}
!85 = !{!84, !11, i64 16}
!86 = !{!63, !11, i64 135896}
!87 = !{!11, !11, i64 0}
!88 = !{!63, !16, i64 134200}
!89 = !{!63, !18, i64 134272}
!90 = !{!"p1 long", !18, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!63, !18, i64 134456}
!93 = !{!63, !16, i64 134192}
!94 = !{!63, !18, i64 134760}
!95 = !{!43, !43, i64 0}
!96 = !{!"", !19, i64 0, !18, i64 8}
!97 = !{!96, !18, i64 8}
!98 = !{!96, !19, i64 0}
!99 = !{!63, !18, i64 134344}
!100 = !{!63, !42, i64 130816}
!101 = !{!"GLFWvidmode", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!102 = !{!"p1 _ZTS12_GLFWmonitor", !18, i64 0}
!103 = !{!"p1 _ZTS12__GLXcontext", !18, i64 0}
!104 = !{!"_GLFWcontextGLX", !103, i64 0, !16, i64 8}
!105 = !{!"_GLFWcontextEGL", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!106 = !{!"_GLFWcontextOSMesa", !18, i64 0, !11, i64 8, !11, i64 12, !18, i64 16}
!107 = !{!"_GLFWcontext", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !104, i64 120, !105, i64 136, !106, i64 168}
!108 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128}
!109 = !{!"p1 _ZTS4_XIC", !18, i64 0}
!110 = !{!"_GLFWwindowX11", !16, i64 0, !16, i64 8, !16, i64 16, !109, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !10, i64 80}
!111 = !{!"_GLFWwindow", !24, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !18, i64 40, !101, i64 48, !102, i64 72, !28, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !10, i64 136, !43, i64 488, !43, i64 496, !11, i64 504, !107, i64 512, !108, i64 704, !110, i64 840}
!112 = !{!111, !16, i64 848}
!113 = !{!111, !109, i64 864}
!114 = !{!63, !18, i64 134568}
!115 = !{!63, !18, i64 134504}
!116 = !{!63, !18, i64 134752}
!117 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !18, i64 24, !16, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !16, i64 56, !16, i64 64, !11, i64 72, !16, i64 80, !11, i64 88, !11, i64 92, !16, i64 96, !16, i64 104, !16, i64 112, !11, i64 120, !18, i64 128}
!118 = !{!117, !16, i64 104}
!119 = !{!18, !18, i64 0}
!120 = !{!84, !18, i64 232}
!121 = !{!63, !11, i64 130768}
!122 = !{!"p1 _ZTS4_XGC", !18, i64 0}
!123 = !{!"", !81, i64 0, !40, i64 8, !16, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !18, i64 48, !11, i64 56, !18, i64 64, !122, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !16, i64 120}
!124 = !{!123, !18, i64 64}
!125 = !{!63, !16, i64 130776}
!126 = !{!111, !16, i64 840}
!127 = !{!111, !11, i64 884}
!128 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !16, i64 48, !16, i64 56, !11, i64 64, !16, i64 72, !16, i64 80, !11, i64 88, !16, i64 96, !16, i64 104}
!129 = !{!111, !16, i64 856}
!130 = !{!63, !11, i64 130808}
!131 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!132 = !{!131, !16, i64 0}
!133 = !{!63, !16, i64 134048}
!134 = !{!63, !16, i64 133928}
!135 = !{!111, !102, i64 72}
!136 = !{!63, !16, i64 133952}
!137 = !{!111, !11, i64 880}
!138 = !{!63, !16, i64 133864}
!139 = !{!63, !16, i64 133904}
!140 = !{!63, !18, i64 134256}
!141 = !{!111, !11, i64 8}
!142 = !{!111, !11, i64 88}
!143 = !{!111, !11, i64 92}
!144 = !{!"", !16, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !14, i64 48, !14, i64 56, !11, i64 64, !11, i64 68, !11, i64 72}
!145 = !{!144, !16, i64 0}
!146 = !{!144, !11, i64 24}
!147 = !{!144, !11, i64 28}
!148 = !{!111, !11, i64 96}
!149 = !{!111, !11, i64 100}
!150 = !{!144, !11, i64 32}
!151 = !{!144, !11, i64 36}
!152 = !{!111, !11, i64 104}
!153 = !{!111, !11, i64 108}
!154 = !{!144, !11, i64 72}
!155 = !{!63, !18, i64 134840}
!156 = !{!63, !18, i64 134872}
!157 = !{!117, !11, i64 92}
!158 = !{!63, !18, i64 134632}
!159 = !{!63, !18, i64 134296}
!160 = !{!63, !18, i64 134448}
!161 = !{ptr @_glfwPlatformWindowVisible}
!162 = !{!"p1 _ZTS11GLFWvidmode", !18, i64 0}
!163 = !{!"p1 short", !18, i64 0}
!164 = !{!"GLFWgammaramp", !163, i64 0, !163, i64 8, !163, i64 16, !11, i64 24}
!165 = !{!"_GLFWmonitorX11", !16, i64 0, !16, i64 8, !16, i64 16, !11, i64 24}
end_hunk_1
