Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/glx_context?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwInitGLX:bb.a
  br i1 %.not47, label %extensionSupportedGLX.exit76.thread, label %bb.u

bb.u:                                             ; preds = %extensionSupportedGLX.exit76.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139608), align 8
  br label %extensionSupportedGLX.exit76.thread

extensionSupportedGLX.exit76.thread:              ; preds = %bb.t, %extensionSupportedGLX.exit72.thread, %extensionSupportedGLX.exit76.a, %bb.u
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.ct = tail call ptr %i.cq(ptr noundef %i.cr, i32 noundef %i.cs) #4, !inline_history !3 ; 2 uses
  %.not.i77 = icmp eq ptr %i.ct, null
  br i1 %.not.i77, label %extensionSupportedGLX.exit80.thread, label %bb.v

bb.v:                                             ; preds = %extensionSupportedGLX.exit76.thread
  %i.cu = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ct) #4
  %.not4.i78 = icmp eq i32 %i.cu, 0
  br i1 %.not4.i78, label %extensionSupportedGLX.exit80.thread, label %extensionSupportedGLX.exit80.a

extensionSupportedGLX.exit80.a:                   ; preds = %bb.v
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139616), align 8
  br label %extensionSupportedGLX.exit80.thread

extensionSupportedGLX.exit80.thread:              ; preds = %bb.v, %extensionSupportedGLX.exit76.thread, %extensionSupportedGLX.exit80.a
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.cy = tail call ptr %i.cv(ptr noundef %i.cw, i32 noundef %i.cx) #4, !inline_history !3 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cy, null
  br i1 %.not.i81, label %extensionSupportedGLX.exit84.thread, label %bb.w

bb.w:                                             ; preds = %extensionSupportedGLX.exit80.thread
  %i.cz = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.cy) #4
  %.not4.i82 = icmp eq i32 %i.cz, 0
  br i1 %.not4.i82, label %extensionSupportedGLX.exit84.thread, label %extensionSupportedGLX.exit84.a

extensionSupportedGLX.exit84.a:                   ; preds = %bb.w
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139612), align 4
  br label %extensionSupportedGLX.exit84.thread

extensionSupportedGLX.exit84.thread:              ; preds = %bb.w, %extensionSupportedGLX.exit80.thread, %extensionSupportedGLX.exit84.a
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.dd = tail call ptr %i.da(ptr noundef %i.db, i32 noundef %i.dc) #4, !inline_history !3 ; 2 uses
  %.not.i85 = icmp eq ptr %i.dd, null
  br i1 %.not.i85, label %extensionSupportedGLX.exit88.thread, label %bb.x

bb.x:                                             ; preds = %extensionSupportedGLX.exit84.thread
  %i.de = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.36, ptr noundef nonnull %i.dd) #4
  %.not4.i86 = icmp eq i32 %i.de, 0
  br i1 %.not4.i86, label %extensionSupportedGLX.exit88.thread, label %extensionSupportedGLX.exit88.a

extensionSupportedGLX.exit88.a:                   ; preds = %bb.x
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139620), align 4
  br label %extensionSupportedGLX.exit88.thread

extensionSupportedGLX.exit88.thread:              ; preds = %bb.x, %extensionSupportedGLX.exit84.thread, %extensionSupportedGLX.exit88.a
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.di = tail call ptr %i.df(ptr noundef %i.dg, i32 noundef %i.dh) #4, !inline_history !3 ; 2 uses
  %.not.i89 = icmp eq ptr %i.di, null
  br i1 %.not.i89, label %extensionSupportedGLX.exit92.thread, label %bb.y

bb.y:                                             ; preds = %extensionSupportedGLX.exit88.thread
  %i.dj = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.37, ptr noundef nonnull %i.di) #4
  %.not4.i90 = icmp eq i32 %i.dj, 0
  br i1 %.not4.i90, label %extensionSupportedGLX.exit92.thread, label %extensionSupportedGLX.exit92.a

extensionSupportedGLX.exit92.a:                   ; preds = %bb.y
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139624), align 8
  br label %extensionSupportedGLX.exit92.thread

extensionSupportedGLX.exit92.thread:              ; preds = %bb.y, %extensionSupportedGLX.exit88.thread, %extensionSupportedGLX.exit92.a
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.dn = tail call ptr %i.dk(ptr noundef %i.dl, i32 noundef %i.dm) #4, !inline_history !3 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dn, null
  br i1 %.not.i93, label %extensionSupportedGLX.exit96.thread, label %bb.z

bb.z:                                             ; preds = %extensionSupportedGLX.exit92.thread
  %i.do = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.dn) #4
  %.not4.i94 = icmp eq i32 %i.do, 0
  br i1 %.not4.i94, label %extensionSupportedGLX.exit96.thread, label %extensionSupportedGLX.exit96.a

extensionSupportedGLX.exit96.a:                   ; preds = %bb.z
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139628), align 4
  br label %extensionSupportedGLX.exit96.thread

extensionSupportedGLX.exit96.thread:              ; preds = %bb.z, %extensionSupportedGLX.exit92.thread, %extensionSupportedGLX.exit96.a, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.029 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 1, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %extensionSupportedGLX.exit96.a ], [ 1, %extensionSupportedGLX.exit92.thread ], [ 1, %bb.z ]
  ret i32 %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_glfwPlatformLoadModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_glfwPlatformGetModuleSymbol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @extensionSupportedGLX(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.d = tail call ptr %i.a(ptr noundef %i.b, i32 noundef %i.c) #4 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_glfwStringInExtensionString(ptr noundef %0, ptr noundef nonnull %i.d) #4
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getProcAddressGLX(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139536), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(ptr noundef %0) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139544), align 8 ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr %i.c(ptr noundef %0) #4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139424), align 8
  %i.f = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.e, ptr noundef %0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %i.f, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwTerminateGLX() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139424), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.a) #4
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139424), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_glfwPlatformFreeModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwCreateContextGLX(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i32], align 16              ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.092 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.g = call fastcc i32 @chooseGLXFBConfig(ptr noundef %2, ptr noundef %i.b)
  %.not98 = trunc nuw i32 %i.g to i1
  br i1 %.not98, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.39) #4
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8
  %i.i = icmp eq i32 %i.h, 196610
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139608), align 8 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ne i32 %.pre, 0
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139612), align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139620), align 4
  %i.n = icmp ne i32 %i.m, 0
  %or.cond3 = select i1 %or.cond, i1 %i.n, i1 false
  br i1 %or.cond3, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.40) #4
  br label %bb.aq

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 0
  %i.s = icmp ne i32 %.pre, 0                     ; 2 uses
  %or.cond7 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65543, ptr noundef nonnull @.str.41) #4
  br label %bb.aq

bb.j:                                             ; preds = %.thread, %bb.h
  %i.t = phi i1 [ true, %.thread ], [ %i.s, %bb.h ]
  %i.u = phi ptr [ %i.o, %.thread ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not99 = icmp eq i32 %i.w, 0
  br i1 %.not99, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139612), align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond5 = select i1 %i.t, i1 %i.y, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65543, ptr noundef nonnull @.str.42) #4
  br label %bb.aq

bb.m:                                             ; preds = %bb.k, %bb.j
  tail call void @_glfwGrabErrorHandlerX11() #4
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139608), align 8
  %.not100 = icmp eq i32 %i.z, 0
  br i1 %.not100, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i32, ptr %1, align 8
  %i.ab = icmp eq i32 %i.aa, 196609
  br i1 %i.ab, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %i.u, align 8
  %.not101 = icmp eq i32 %i.ac, 0
  %spec.select = select i1 %.not101, i32 0, i32 2 ; 3 uses
  %i.ad = load i32, ptr %i.v, align 4
  switch i32 %i.ad, label %.fold.split [
    i32 204801, label %bb.q
    i32 204802, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.q

.fold.split:                                      ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %.fold.split, %bb.p
  %.not105 = phi i1 [ true, %.fold.split ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ]
  %.087 = phi i32 [ 0, %.fold.split ], [ 2, %bb.p ], [ 1, %bb.o ], [ 4, %bb.n ]
  %.1 = phi i32 [ %spec.select, %.fold.split ], [ %spec.select, %bb.p ], [ %spec.select, %bb.o ], [ 0, %bb.n ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %.not102 = icmp ne i32 %i.af, 0
  %i.ag = zext i1 %.not102 to i32
  %spec.select110 = or disjoint i32 %.1, %i.ag    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139616), align 8
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond9 = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond9, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  switch i32 %i.ai, label %bb.t [
    i32 200705, label %.sink.split
    i32 200706, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i32 [ 33362, %bb.s ], [ 33377, %bb.r ]
  store i32 33366, ptr %i.a, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sink, ptr %i.am, align 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %.088 = phi i32 [ 0, %bb.r ], [ 2, %.sink.split ]
  %i.an = or disjoint i32 %spec.select110, 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.189 = phi i32 [ %.088, %bb.t ], [ 0, %bb.q ]  ; 4 uses
  %.3 = phi i32 [ %i.an, %bb.t ], [ %spec.select110, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139628), align 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond11 = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond11, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  switch i32 %i.ap, label %bb.x [
    i32 217090, label %.sink.split117
    i32 217089, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %.sink.split117

.sink.split117:                                   ; preds = %bb.v, %bb.w
  %.sink118 = phi i32 [ 8344, %bb.w ], [ 0, %bb.v ]
  %i.at = zext nneg i32 %.189 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at ; 2 uses
  store i32 8343, ptr %i.au, align 4
  %i.av = add nuw nsw i32 %.189, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %.sink118, ptr %i.aw, align 4
  br label %bb.x

bb.x:                                             ; preds = %.sink.split117, %bb.v, %bb.u
  %.290 = phi i32 [ %.189, %bb.v ], [ %.189, %bb.u ], [ %i.av, %.sink.split117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139624), align 8
  %i.bb = icmp ne i32 %i.ba, 0
  %or.cond13 = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond13, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bc = zext nneg i32 %.290 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  store i32 12723, ptr %i.bd, align 4
  %i.be = add nuw nsw i32 %.290, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 1, ptr %i.bf, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.391 = phi i32 [ %i.be, %bb.y ], [ %.290, %bb.x ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %.not103 = icmp eq i32 %i.bh, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not104 = icmp eq i32 %i.bj, 0
  %or.cond123 = select i1 %.not103, i1 %.not104, i1 false
  br i1 %or.cond123, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %i.bk = zext nneg i32 %.391 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk ; 4 uses
  store i32 8337, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bh, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 8338, ptr %i.bn, align 4
  %i.bo = add nuw nsw i32 %.391, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %i.bj, ptr %i.bp, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %.4 = phi i32 [ %i.bo, %._crit_edge ], [ %.391, %bb.z ] ; 3 uses
  br i1 %.not105, label %bb.ac, label %bb.ab
end_hunk_0
begin_hunk_1_@_glfwCreateContextGLX:bb.a
  store i32 %.087, ptr %i.bt, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5 = phi i32 [ %i.bs, %bb.ab ], [ %.4, %bb.aa ] ; 3 uses
  %.not106 = icmp eq i32 %.3, 0
  br i1 %.not106, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = zext nneg i32 %.5 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bu ; 2 uses
  store i32 8340, ptr %i.bv, align 4
  %i.bw = add nuw nsw i32 %.5, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %.3, ptr %i.bx, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.6 = phi i32 [ %i.bw, %bb.ad ], [ %.5, %bb.ac ]
  %i.by = zext nneg i32 %.6 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.by ; 2 uses
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  store i32 0, ptr %i.ca, align 4
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139576), align 8
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cd = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.ce = call ptr %i.cb(ptr noundef %i.cc, ptr noundef %i.cd, ptr noundef %.092, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8
  %.not107 = icmp eq ptr %i.ce, null
  br i1 %.not107, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139420), align 4
  %i.ci = add nsw i32 %i.ch, 13
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %1, align 8
  %i.cl = icmp eq i32 %i.ck, 196609
  br i1 %i.cl, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load i32, ptr %i.v, align 4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.co = load i32, ptr %i.u, align 8
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139504), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cs = call ptr %i.cq(ptr noundef %i.cr, ptr noundef %i.cd, i32 noundef 32788, ptr noundef %.092, i32 noundef 1) #4, !inline_history !4
  store ptr %i.cs, ptr %i.cf, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.m
  %i.ct = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139504), align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cw = tail call ptr %i.cu(ptr noundef %i.cv, ptr noundef %i.ct, i32 noundef 32788, ptr noundef %.092, i32 noundef 1) #4, !inline_history !4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.cw, ptr %i.cx, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ak
  %i.cy = phi ptr [ %i.cd, %bb.ae ], [ %i.cd, %bb.aj ], [ %i.cd, %bb.ai ], [ %i.cd, %bb.ah ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.af ], [ %i.ct, %bb.ak ]
  call void @_glfwReleaseErrorHandlerX11() #4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.da = load ptr, ptr %i.cz, align 8
  %.not108 = icmp eq ptr %i.da, null
  br i1 %.not108, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_glfwInputErrorX11(i32 noundef 65543, ptr noundef nonnull @.str.43) #4
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139520), align 8
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = call i64 %i.db(ptr noundef %i.dc, ptr noundef %i.cy, i64 noundef %i.de, ptr noundef null) #4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i64 %i.df, ptr %i.dg, align 8
  %.not109 = icmp eq i64 %i.df, 0
  br i1 %.not109, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.44) #4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @makeContextCurrentGLX, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @swapBuffersGLX, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @swapIntervalGLX, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @extensionSupportedGLX, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @getProcAddressGLX, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @destroyContextGLX, ptr %i.dm, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.l, %bb.i, %bb.g, %bb.d
  %.093 = phi i32 [ 1, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.093
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @chooseGLXFBConfig(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #4
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139448), align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.u = tail call ptr %i.s(ptr noundef %i.t, i32 noundef 1) #4 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(9) @.str.47) #5
  %i.w = icmp ne i32 %i.v, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i1 [ true, %bb.a ], [ %i.w, %bb.b ]
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139432), align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.ab = call ptr %i.y(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.r) #4 ; 3 uses
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.48) #4
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.af = sext i32 %i.ad to i64
  %i.ag = call ptr @_glfw_calloc(i64 noundef %i.af, i64 noundef 72) #4 ; 3 uses
  %i.ah = load i32, ptr %i.r, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.f

._crit_edge:                                      ; preds = %bb.s, %bb.e
  %.066.lcssa = phi i32 [ 0, %bb.e ], [ %.1, %bb.s ]
  %i.al = call ptr @_glfwChooseFBConfig(ptr noundef %0, ptr noundef %i.ag, i32 noundef %.066.lcssa) #4 ; 2 uses
  %i.am = icmp ne ptr %i.al, null                 ; 2 uses
  br i1 %i.am, label %bb.t, label %bb.u

bb.f:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.06679 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ] ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8            ; 19 uses
  %i.ap = sext i32 %.06679 to i64
  %i.aq = getelementptr inbounds [72 x i8], ptr %i.ag, i64 %i.ap ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.at = call i32 %i.ar(ptr noundef %i.as, ptr noundef %i.ao, i32 noundef 32785, ptr noundef nonnull %i.q) #4, !inline_history !5 ; 0 uses
  %i.au = load i32, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #4
  %.not73 = trunc i32 %i.au to i1
  br i1 %.not73, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #4
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ax = call i32 %i.av(ptr noundef %i.aw, ptr noundef %i.ao, i32 noundef 32784, ptr noundef nonnull %i.p) #4, !inline_history !5 ; 0 uses
  %i.ay = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #4
  %i.az = and i32 %i.ay, 1
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond5 = and i1 %i.x, %i.ba
  br i1 %or.cond5, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #4
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bd = call i32 %i.bb(ptr noundef %i.bc, ptr noundef %i.ao, i32 noundef 5, ptr noundef nonnull %i.o) #4, !inline_history !5 ; 0 uses
  %i.be = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  %i.bf = load i32, ptr %i.aj, align 8
  %.not74 = icmp eq i32 %i.be, %i.bf
  br i1 %.not74, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.ak, align 4
  %.not75 = icmp eq i32 %i.bg, 0
  br i1 %.not75, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139512), align 8
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bj = call ptr %i.bh(ptr noundef %i.bi, ptr noundef %i.ao) #4 ; 3 uses
  %.not76 = icmp eq ptr %i.bj, null
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i32 @_glfwIsVisualTransparentX11(ptr noundef %i.bk) #4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.bo = call i32 %i.bn(ptr noundef nonnull %i.bj) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #4
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.br = call i32 %i.bp(ptr noundef %i.bq, ptr noundef %i.ao, i32 noundef 8, ptr noundef nonnull %i.n) #4, !inline_history !5 ; 0 uses
  %i.bs = load i32, ptr %i.n, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  store i32 %i.bs, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bv = call i32 %i.bt(ptr noundef %i.bu, ptr noundef %i.ao, i32 noundef 9, ptr noundef nonnull %i.m) #4, !inline_history !5 ; 0 uses
  %i.bw = load i32, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.bw, ptr %i.bx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ca = call i32 %i.by(ptr noundef %i.bz, ptr noundef %i.ao, i32 noundef 10, ptr noundef nonnull %i.l) #4, !inline_history !5 ; 0 uses
  %i.cb = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.cb, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cf = call i32 %i.cd(ptr noundef %i.ce, ptr noundef %i.ao, i32 noundef 11, ptr noundef nonnull %i.k) #4, !inline_history !5 ; 0 uses
  %i.cg = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.cg, ptr %i.ch, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ck = call i32 %i.ci(ptr noundef %i.cj, ptr noundef %i.ao, i32 noundef 12, ptr noundef nonnull %i.j) #4, !inline_history !5 ; 0 uses
  %i.cl = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %i.cl, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cp = call i32 %i.cn(ptr noundef %i.co, ptr noundef %i.ao, i32 noundef 13, ptr noundef nonnull %i.i) #4, !inline_history !5 ; 0 uses
  %i.cq = load i32, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  store i32 %i.cq, ptr %i.cr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cu = call i32 %i.cs(ptr noundef %i.ct, ptr noundef %i.ao, i32 noundef 14, ptr noundef nonnull %i.h) #4, !inline_history !5 ; 0 uses
  %i.cv = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.cv, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cz = call i32 %i.cx(ptr noundef %i.cy, ptr noundef %i.ao, i32 noundef 15, ptr noundef nonnull %i.g) #4, !inline_history !5 ; 0 uses
  %i.da = load i32, ptr %i.g, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  store i32 %i.da, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.de = call i32 %i.dc(ptr noundef %i.dd, ptr noundef %i.ao, i32 noundef 16, ptr noundef nonnull %i.f) #4, !inline_history !5 ; 0 uses
  %i.df = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.df, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dj = call i32 %i.dh(ptr noundef %i.di, ptr noundef %i.ao, i32 noundef 17, ptr noundef nonnull %i.e) #4, !inline_history !5 ; 0 uses
  %i.dk = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %i.dk, ptr %i.dl, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.do = call i32 %i.dm(ptr noundef %i.dn, ptr noundef %i.ao, i32 noundef 7, ptr noundef nonnull %i.d) #4, !inline_history !5 ; 0 uses
  %i.dp = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 %i.dp, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dt = call i32 %i.dr(ptr noundef %i.ds, ptr noundef %i.ao, i32 noundef 6, ptr noundef nonnull %i.c) #4, !inline_history !5 ; 0 uses
  %i.du = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %.not77 = icmp eq i32 %i.du, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  store i32 1, ptr %i.dv, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139596), align 4
  %.not78 = icmp eq i32 %i.dw, 0
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dz = call i32 %i.dx(ptr noundef %i.dy, ptr noundef %i.ao, i32 noundef 100001, ptr noundef nonnull %i.b) #4, !inline_history !5 ; 0 uses
  %i.ea = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i32 %i.ea, ptr %i.eb, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139600), align 8
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139604), align 4
  %i.ef = icmp ne i32 %i.ee, 0
  %or.cond3 = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ei = call i32 %i.eg(ptr noundef %i.eh, ptr noundef %i.ao, i32 noundef 8370, ptr noundef nonnull %i.a) #4, !inline_history !5 ; 0 uses
  %i.ej = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  store i32 %i.ej, ptr %i.ek, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.el = ptrtoint ptr %i.ao to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i64 %i.el, ptr %i.em, align 8
  %i.en = add nsw i32 %.06679, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.r
  %.1 = phi i32 [ %.06679, %bb.f ], [ %.06679, %bb.g ], [ %i.en, %bb.r ], [ %.06679, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i32, ptr %i.r, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.f, label %._crit_edge

bb.t:                                             ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.es = load i64, ptr %i.er, align 8
  %i.et = inttoptr i64 %i.es to ptr
  store ptr %i.et, ptr %1, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.ev = call i32 %i.eu(ptr noundef nonnull %i.ab) #4 ; 0 uses
  call void @_glfw_free(ptr noundef %i.ag) #4
  %i.ew = zext i1 %i.am to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d
  %.067 = phi i32 [ %i.ew, %bb.u ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #4
  ret i32 %.067
}

declare void @_glfwGrabErrorHandlerX11() local_unnamed_addr #2

declare void @_glfwReleaseErrorHandlerX11() local_unnamed_addr #2

declare void @_glfwInputErrorX11(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @makeContextCurrentGLX(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139480), align 8 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call i32 %i.a(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %i.f) #4
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.49) #4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = tail call i32 %i.a(ptr noundef %i.b, i64 noundef 0, ptr noundef null) #4
  %.not4 = icmp eq i32 %i.h, 0
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.50) #4
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  tail call void @_glfwPlatformSetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412), ptr noundef %0) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swapBuffersGLX(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139488), align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.d = load i64, ptr %i.c, align 8
  tail call void %i.a(ptr noundef %i.b, i64 noundef %i.d) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swapIntervalGLX(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139588), align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139560), align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.f = load i64, ptr %i.e, align 8
  tail call void %i.c(ptr noundef %i.d, i64 noundef %i.f, i32 noundef %0) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139592), align 8
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139568), align 8
  %i.i = tail call i32 %i.h(i32 noundef %0) #4    ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139584), align 8
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139552), align 8
  %i.n = tail call i32 %i.m(i32 noundef %0) #4    ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroyContextGLX(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139528), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  tail call void %i.d(ptr noundef %i.e, i64 noundef %i.c) #4
  store i64 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139472), align 8
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  tail call void %i.g(ptr noundef %i.h, ptr noundef nonnull %i.f) #4
  store ptr null, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwChooseVisualGLX(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call fastcc i32 @chooseGLXFBConfig(ptr noundef %2, ptr noundef %i.a)
  %.not = trunc nuw i32 %i.b to i1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.39) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139512), align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call ptr %i.c(ptr noundef %i.d, ptr noundef %i.e) #4 ; 4 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.45) #4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8
  store ptr %i.g, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.i = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr %4, align 4
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.f) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @glfwGetGLXContext(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8
  %.not4 = icmp eq i32 %i.b, 393220
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65550, ptr noundef nonnull @.str.46) #4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.d = load i32, ptr %i.c, align 4
  %.not5 = icmp eq i32 %i.d, 221185
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef null) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.f, %bb.g ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @glfwGetGLXWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_glfw, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65537, ptr noundef null) #4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8
  %.not3 = icmp eq i32 %i.b, 393220
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65550, ptr noundef nonnull @.str.46) #4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.d = load i32, ptr %i.c, align 4
  %.not4 = icmp eq i32 %i.d, 221185
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef null) #4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.f ], [ %i.f, %bb.g ], [ 0, %bb.b ]
  ret i64 %.0
}

declare i32 @_glfwStringInExtensionString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @_glfw_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_glfwIsVisualTransparentX11(ptr noundef) local_unnamed_addr #2

declare ptr @_glfwChooseFBConfig(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_glfw_free(ptr noundef) local_unnamed_addr #2

declare void @_glfwPlatformSetTls(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_glfwPlatformGetTls(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{ptr @extensionSupportedGLX}
!4 = distinct !{null}
!5 = distinct !{null}
end_hunk_1
