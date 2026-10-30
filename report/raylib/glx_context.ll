Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/glx_context?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwInitGLX:bb.a

extensionSupportedGLX.exit72.thread:              ; preds = %bb.s, %extensionSupportedGLX.exit68.thread, %extensionSupportedGLX.exit72
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.cn = tail call ptr %i.ck(ptr noundef %i.cl, i32 noundef %i.cm) #4, !inline_history !3 ; 2 uses
  %.not.i73 = icmp eq ptr %i.cn, null
  br i1 %.not.i73, label %extensionSupportedGLX.exit76.thread, label %bb.t

bb.t:                                             ; preds = %extensionSupportedGLX.exit72.thread
  %i.co = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.cn) #4
  %.not4.i74 = icmp eq i32 %i.co, 0
  br i1 %.not4.i74, label %extensionSupportedGLX.exit76.thread, label %extensionSupportedGLX.exit76

extensionSupportedGLX.exit76:                     ; preds = %bb.t
  %i.cp = tail call ptr @getProcAddressGLX(ptr noundef nonnull @.str.33) ; 2 uses
  store ptr %i.cp, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139576), align 8
  %.not47 = icmp eq ptr %i.cp, null
  br i1 %.not47, label %extensionSupportedGLX.exit76.thread, label %bb.u

bb.u:                                             ; preds = %extensionSupportedGLX.exit76
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139608), align 8
  br label %extensionSupportedGLX.exit76.thread

extensionSupportedGLX.exit76.thread:              ; preds = %bb.t, %extensionSupportedGLX.exit72.thread, %extensionSupportedGLX.exit76, %bb.u
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.ct = tail call ptr %i.cq(ptr noundef %i.cr, i32 noundef %i.cs) #4, !inline_history !3 ; 2 uses
  %.not.i77 = icmp eq ptr %i.ct, null
  br i1 %.not.i77, label %extensionSupportedGLX.exit80.thread, label %bb.v

bb.v:                                             ; preds = %extensionSupportedGLX.exit76.thread
  %i.cu = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ct) #4
  %.not4.i78 = icmp eq i32 %i.cu, 0
  br i1 %.not4.i78, label %extensionSupportedGLX.exit80.thread, label %extensionSupportedGLX.exit80

extensionSupportedGLX.exit80:                     ; preds = %bb.v
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139616), align 8
  br label %extensionSupportedGLX.exit80.thread

extensionSupportedGLX.exit80.thread:              ; preds = %bb.v, %extensionSupportedGLX.exit76.thread, %extensionSupportedGLX.exit80
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.cy = tail call ptr %i.cv(ptr noundef %i.cw, i32 noundef %i.cx) #4, !inline_history !3 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cy, null
  br i1 %.not.i81, label %extensionSupportedGLX.exit84.thread, label %bb.w

bb.w:                                             ; preds = %extensionSupportedGLX.exit80.thread
  %i.cz = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.cy) #4
  %.not4.i82 = icmp eq i32 %i.cz, 0
  br i1 %.not4.i82, label %extensionSupportedGLX.exit84.thread, label %extensionSupportedGLX.exit84

extensionSupportedGLX.exit84:                     ; preds = %bb.w
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139612), align 4
  br label %extensionSupportedGLX.exit84.thread

extensionSupportedGLX.exit84.thread:              ; preds = %bb.w, %extensionSupportedGLX.exit80.thread, %extensionSupportedGLX.exit84
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.dd = tail call ptr %i.da(ptr noundef %i.db, i32 noundef %i.dc) #4, !inline_history !3 ; 2 uses
  %.not.i85 = icmp eq ptr %i.dd, null
  br i1 %.not.i85, label %extensionSupportedGLX.exit88.thread, label %bb.x

bb.x:                                             ; preds = %extensionSupportedGLX.exit84.thread
  %i.de = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.36, ptr noundef nonnull %i.dd) #4
  %.not4.i86 = icmp eq i32 %i.de, 0
  br i1 %.not4.i86, label %extensionSupportedGLX.exit88.thread, label %extensionSupportedGLX.exit88

extensionSupportedGLX.exit88:                     ; preds = %bb.x
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139620), align 4
  br label %extensionSupportedGLX.exit88.thread

extensionSupportedGLX.exit88.thread:              ; preds = %bb.x, %extensionSupportedGLX.exit84.thread, %extensionSupportedGLX.exit88
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.di = tail call ptr %i.df(ptr noundef %i.dg, i32 noundef %i.dh) #4, !inline_history !3 ; 2 uses
  %.not.i89 = icmp eq ptr %i.di, null
  br i1 %.not.i89, label %extensionSupportedGLX.exit92.thread, label %bb.y

bb.y:                                             ; preds = %extensionSupportedGLX.exit88.thread
  %i.dj = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.37, ptr noundef nonnull %i.di) #4
  %.not4.i90 = icmp eq i32 %i.dj, 0
  br i1 %.not4.i90, label %extensionSupportedGLX.exit92.thread, label %extensionSupportedGLX.exit92

extensionSupportedGLX.exit92:                     ; preds = %bb.y
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139624), align 8
  br label %extensionSupportedGLX.exit92.thread

extensionSupportedGLX.exit92.thread:              ; preds = %bb.y, %extensionSupportedGLX.exit88.thread, %extensionSupportedGLX.exit92
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139496), align 8
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.dn = tail call ptr %i.dk(ptr noundef %i.dl, i32 noundef %i.dm) #4, !inline_history !3 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dn, null
  br i1 %.not.i93, label %extensionSupportedGLX.exit96.thread, label %bb.z

bb.z:                                             ; preds = %extensionSupportedGLX.exit92.thread
  %i.do = tail call i32 @_glfwStringInExtensionString(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.dn) #4
  %.not4.i94 = icmp eq i32 %i.do, 0
  br i1 %.not4.i94, label %extensionSupportedGLX.exit96.thread, label %extensionSupportedGLX.exit96

extensionSupportedGLX.exit96:                     ; preds = %bb.z
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139628), align 4
  br label %extensionSupportedGLX.exit96.thread

extensionSupportedGLX.exit96.thread:              ; preds = %bb.z, %extensionSupportedGLX.exit92.thread, %extensionSupportedGLX.exit96, %bb.a, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.029 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 1, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %extensionSupportedGLX.exit96 ], [ 1, %extensionSupportedGLX.exit92.thread ], [ 1, %bb.z ]
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
  %i.a = alloca [40 x i32], align 16              ; 12 uses
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
  %.not98 = icmp eq i32 %i.g, 0
  br i1 %.not98, label %bb.d, label %bb.e

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
  %.088 = phi i32 [ 2, %bb.r ], [ 4, %.sink.split ]
  %3 = phi i64 [ 1, %bb.r ], [ 3, %.sink.split ]
  %4 = phi i64 [ 0, %bb.r ], [ 2, %.sink.split ]
  %.088.a = phi i32 [ 0, %bb.r ], [ 2, %.sink.split ]
  %i.an = or disjoint i32 %spec.select110, 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.189 = phi i32 [ %.088, %bb.t ], [ 2, %bb.q ]
  %5 = phi i64 [ %3, %bb.t ], [ 1, %bb.q ]
  %6 = phi i64 [ %4, %bb.t ], [ 0, %bb.q ]
  %.189.a = phi i32 [ %.088.a, %bb.t ], [ 0, %bb.q ] ; 2 uses
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
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %6
  store i32 8343, ptr %i.at, align 4
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %5
  store i32 %.sink118, ptr %7, align 4
  br label %bb.x

bb.x:                                             ; preds = %.sink.split117, %bb.v, %bb.u
  %.290 = phi i32 [ %.189.a, %bb.v ], [ %.189.a, %bb.u ], [ %.189, %.sink.split117 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139624), align 8
  %i.ay = icmp ne i32 %i.ax, 0
  %or.cond13 = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond13, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = zext nneg i32 %.290 to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  store i32 12723, ptr %i.ba, align 4
  %i.bb = add nuw nsw i32 %.290, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 1, ptr %i.bc, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.391 = phi i32 [ %i.bb, %bb.y ], [ %.290, %bb.x ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8            ; 2 uses
  %.not103 = icmp eq i32 %i.be, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %.not104 = icmp eq i32 %i.bg, 0
  %or.cond123 = select i1 %.not103, i1 %.not104, i1 false
  br i1 %or.cond123, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %i.bh = zext nneg i32 %.391 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bh ; 4 uses
  store i32 8337, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %i.be, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 8338, ptr %i.bk, align 4
  %i.bl = add nuw nsw i32 %.391, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %i.bg, ptr %i.bm, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %.4 = phi i32 [ %i.bl, %._crit_edge ], [ %.391, %bb.z ] ; 3 uses
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = zext nneg i32 %.4 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bn ; 2 uses
  store i32 37158, ptr %i.bo, align 4
  %i.bp = add nuw nsw i32 %.4, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %.087, ptr %i.bq, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5 = phi i32 [ %i.bp, %bb.ab ], [ %.4, %bb.aa ] ; 3 uses
  %.not106 = icmp eq i32 %.3, 0
  br i1 %.not106, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = zext nneg i32 %.5 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br ; 2 uses
  store i32 8340, ptr %i.bs, align 4
  %i.bt = add nuw nsw i32 %.5, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.3, ptr %i.bu, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.6 = phi i32 [ %i.bt, %bb.ad ], [ %.5, %bb.ac ]
  %i.bv = zext nneg i32 %.6 to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139576), align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ca = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.cb = call ptr %i.by(ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %.092, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8
  %.not107 = icmp eq ptr %i.cb, null
  br i1 %.not107, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139420), align 4
  %i.cf = add nsw i32 %i.ce, 13
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i32, ptr %1, align 8
  %i.ci = icmp eq i32 %i.ch, 196609
  br i1 %i.ci, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load i32, ptr %i.v, align 4
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load i32, ptr %i.u, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139504), align 8
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cp = call ptr %i.cn(ptr noundef %i.co, ptr noundef %i.ca, i32 noundef 32788, ptr noundef %.092, i32 noundef 1) #4, !inline_history !4
  store ptr %i.cp, ptr %i.cc, align 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.m
  %i.cq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139504), align 8
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ct = tail call ptr %i.cr(ptr noundef %i.cs, ptr noundef %i.cq, i32 noundef 32788, ptr noundef %.092, i32 noundef 1) #4, !inline_history !4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.ct, ptr %i.cu, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ak
  %i.cv = phi ptr [ %i.ca, %bb.ae ], [ %i.ca, %bb.aj ], [ %i.ca, %bb.ai ], [ %i.ca, %bb.ah ], [ %i.ca, %bb.ag ], [ %i.ca, %bb.af ], [ %i.cq, %bb.ak ]
  call void @_glfwReleaseErrorHandlerX11() #4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not108 = icmp eq ptr %i.cx, null
  br i1 %.not108, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_glfwInputErrorX11(i32 noundef 65543, ptr noundef nonnull @.str.43) #4
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139520), align 8
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = call i64 %i.cy(ptr noundef %i.cz, ptr noundef %i.cv, i64 noundef %i.db, ptr noundef null) #4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i64 %i.dc, ptr %i.dd, align 8
  %.not109 = icmp eq i64 %i.dc, 0
  br i1 %.not109, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.44) #4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @makeContextCurrentGLX, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @swapBuffersGLX, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @swapIntervalGLX, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @extensionSupportedGLX, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @getProcAddressGLX, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @destroyContextGLX, ptr %i.dj, align 8
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
end_hunk_0
