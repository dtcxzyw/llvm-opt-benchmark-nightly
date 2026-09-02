Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/glx_context?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwCreateContextGLX:bb.a
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

bb.ab:                                            ; preds = %bb.aa
  %i.bq = zext nneg i32 %.4 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bq ; 2 uses
  store i32 37158, ptr %i.br, align 4
  %i.bs = add nuw nsw i32 %.4, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
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
  %2 = icmp ne i32 %i.v, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = phi i1 [ true, %bb.a ], [ %2, %bb.b ]
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139432), align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.aa = call ptr %i.x(ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %i.r) #4 ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.48) #4
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.ae = sext i32 %i.ac to i64
  %i.af = call ptr @_glfw_calloc(i64 noundef %i.ae, i64 noundef 72) #4 ; 3 uses
  %i.ag = load i32, ptr %i.r, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.f

._crit_edge:                                      ; preds = %bb.s, %bb.e
  %.066.lcssa = phi i32 [ 0, %bb.e ], [ %.1, %bb.s ]
  %i.ak = call ptr @_glfwChooseFBConfig(ptr noundef %0, ptr noundef %i.af, i32 noundef %.066.lcssa) #4 ; 2 uses
  %i.al = icmp ne ptr %i.ak, null                 ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.u

bb.f:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.06679 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8            ; 19 uses
  %i.ao = sext i32 %.06679 to i64
  %i.ap = getelementptr inbounds [72 x i8], ptr %i.af, i64 %i.ao ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #4
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.as = call i32 %i.aq(ptr noundef %i.ar, ptr noundef %i.an, i32 noundef 32785, ptr noundef nonnull %i.q) #4, !inline_history !5 ; 0 uses
  %i.at = load i32, ptr %i.q, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #4
  %3 = and i32 %i.at, 1
  %.not73 = icmp eq i32 %3, 0
  br i1 %.not73, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #4
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aw = call i32 %i.au(ptr noundef %i.av, ptr noundef %i.an, i32 noundef 32784, ptr noundef nonnull %i.p) #4, !inline_history !5 ; 0 uses
  %i.ax = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #4
  %4 = and i32 %i.ax, 1
  %5 = icmp eq i32 %4, 0
  %or.cond5 = and i1 %i.w, %5
  br i1 %or.cond5, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #4
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ba = call i32 %i.ay(ptr noundef %i.az, ptr noundef %i.an, i32 noundef 5, ptr noundef nonnull %i.o) #4, !inline_history !5 ; 0 uses
  %i.bb = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  %i.bc = load i32, ptr %i.ai, align 8
  %.not74 = icmp eq i32 %i.bb, %i.bc
  br i1 %.not74, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.aj, align 4
  %.not75 = icmp eq i32 %i.bd, 0
  br i1 %.not75, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139512), align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bg = call ptr %i.be(ptr noundef %i.bf, ptr noundef %i.an) #4 ; 3 uses
  %.not76 = icmp eq ptr %i.bg, null
  br i1 %.not76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i32 @_glfwIsVisualTransparentX11(ptr noundef %i.bh) #4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.bl = call i32 %i.bk(ptr noundef nonnull %i.bg) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #4
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bo = call i32 %i.bm(ptr noundef %i.bn, ptr noundef %i.an, i32 noundef 8, ptr noundef nonnull %i.n) #4, !inline_history !5 ; 0 uses
  %i.bp = load i32, ptr %i.n, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  store i32 %i.bp, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bs = call i32 %i.bq(ptr noundef %i.br, ptr noundef %i.an, i32 noundef 9, ptr noundef nonnull %i.m) #4, !inline_history !5 ; 0 uses
  %i.bt = load i32, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.bt, ptr %i.bu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.bx = call i32 %i.bv(ptr noundef %i.bw, ptr noundef %i.an, i32 noundef 10, ptr noundef nonnull %i.l) #4, !inline_history !5 ; 0 uses
  %i.by = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.by, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef %i.an, i32 noundef 11, ptr noundef nonnull %i.k) #4, !inline_history !5 ; 0 uses
  %i.cd = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %i.cd, ptr %i.ce, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ch = call i32 %i.cf(ptr noundef %i.cg, ptr noundef %i.an, i32 noundef 12, ptr noundef nonnull %i.j) #4, !inline_history !5 ; 0 uses
  %i.ci = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.ci, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cm = call i32 %i.ck(ptr noundef %i.cl, ptr noundef %i.an, i32 noundef 13, ptr noundef nonnull %i.i) #4, !inline_history !5 ; 0 uses
  %i.cn = load i32, ptr %i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.cn, ptr %i.co, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cr = call i32 %i.cp(ptr noundef %i.cq, ptr noundef %i.an, i32 noundef 14, ptr noundef nonnull %i.h) #4, !inline_history !5 ; 0 uses
  %i.cs = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.cs, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.cw = call i32 %i.cu(ptr noundef %i.cv, ptr noundef %i.an, i32 noundef 15, ptr noundef nonnull %i.g) #4, !inline_history !5 ; 0 uses
  %i.cx = load i32, ptr %i.g, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %i.cx, ptr %i.cy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.db = call i32 %i.cz(ptr noundef %i.da, ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull %i.f) #4, !inline_history !5 ; 0 uses
  %i.dc = load i32, ptr %i.f, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.dc, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dg = call i32 %i.de(ptr noundef %i.df, ptr noundef %i.an, i32 noundef 17, ptr noundef nonnull %i.e) #4, !inline_history !5 ; 0 uses
  %i.dh = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i32 %i.dh, ptr %i.di, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dl = call i32 %i.dj(ptr noundef %i.dk, ptr noundef %i.an, i32 noundef 7, ptr noundef nonnull %i.d) #4, !inline_history !5 ; 0 uses
  %i.dm = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 %i.dm, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dq = call i32 %i.do(ptr noundef %i.dp, ptr noundef %i.an, i32 noundef 6, ptr noundef nonnull %i.c) #4, !inline_history !5 ; 0 uses
  %i.dr = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %.not77 = icmp eq i32 %i.dr, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  store i32 1, ptr %i.ds, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139596), align 4
  %.not78 = icmp eq i32 %i.dt, 0
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.dw = call i32 %i.du(ptr noundef %i.dv, ptr noundef %i.an, i32 noundef 100001, ptr noundef nonnull %i.b) #4, !inline_history !5 ; 0 uses
  %i.dx = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 %i.dx, ptr %i.dy, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139600), align 8
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139604), align 4
  %i.ec = icmp ne i32 %i.eb, 0
  %or.cond3 = select i1 %i.ea, i1 true, i1 %i.ec
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 139440), align 8
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ef = call i32 %i.ed(ptr noundef %i.ee, ptr noundef %i.an, i32 noundef 8370, ptr noundef nonnull %i.a) #4, !inline_history !5 ; 0 uses
  %i.eg = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i32 %i.eg, ptr %i.eh, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ei = ptrtoint ptr %i.an to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = add nsw i32 %.06679, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.r
  %.1 = phi i32 [ %.06679, %bb.f ], [ %.06679, %bb.g ], [ %i.ek, %bb.r ], [ %.06679, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = load i32, ptr %i.r, align 4
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %bb.f, label %._crit_edge

bb.t:                                             ; preds = %._crit_edge
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = inttoptr i64 %i.ep to ptr
  store ptr %i.eq, ptr %1, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.es = call i32 %i.er(ptr noundef nonnull %i.aa) #4 ; 0 uses
  call void @_glfw_free(ptr noundef %i.af) #4
  %i.et = zext i1 %i.al to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d
end_hunk_0
