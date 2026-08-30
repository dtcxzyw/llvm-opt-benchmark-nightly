Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/egl_context?download=true
begin_hunk_0_@_glfwCreateContextEGL:bb.a
  %.sink168 = select i1 %switch.selectcmp, ptr %.val, ptr %.val181
  %i.dn = call ptr %.sink168(ptr noundef %i.dl, ptr noundef %i.bz, ptr noundef %i.dj, ptr noundef nonnull %i.a) #4 ; 2 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !189
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133616), align 8, !tbaa !102
  %i.dq = call i32 %i.dp() #4
  %switch.tableidx177 = add i32 %i.dq, -12288     ; 2 uses
  %i.dr = icmp ult i32 %switch.tableidx177, 15
  br i1 %i.dr, label %switch.lookup178, label %getEGLErrorString.exit142

switch.lookup178:                                 ; preds = %bb.am
  %i.ds = zext nneg i32 %switch.tableidx177 to i64
  %switch.gep179 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.makeContextCurrentEGL.5, i64 %i.ds
  %switch.load180 = load ptr, ptr %switch.gep179, align 8
  br label %getEGLErrorString.exit142

getEGLErrorString.exit142:                        ; preds = %bb.am, %switch.lookup178
  %.0.i141 = phi ptr [ %switch.load180, %switch.lookup178 ], [ @.str.65, %bb.am ]
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.42, ptr noundef nonnull %.0.i141) #4
  br label %bb.au

bb.an:                                            ; preds = %bb.al
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !190
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133536), align 8, !tbaa !135
  %.not131 = icmp eq i32 %i.dt, 0
  br i1 %.not131, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.du = load i32, ptr %1, align 8, !tbaa !173
  %i.dv = icmp eq i32 %i.du, 196610
  br i1 %i.dv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !179
  %i.dy = icmp eq i32 %i.dx, 1
  %__const._glfwCreateContextEGL.es1sonames.__const._glfwCreateContextEGL.es2sonames = select i1 %i.dy, ptr @__const._glfwCreateContextEGL.es1sonames, ptr @__const._glfwCreateContextEGL.es2sonames
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.0 = phi ptr [ %__const._glfwCreateContextEGL.es1sonames.__const._glfwCreateContextEGL.es2sonames, %bb.ap ], [ @__const._glfwCreateContextEGL.glsonames, %bb.ao ] ; 2 uses
  %i.dz = load ptr, ptr %.0, align 8, !tbaa !191  ; 2 uses
  %.not132143 = icmp eq ptr %i.dz, null
  br i1 %.not132143, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %bb.aq
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.pre151 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133520), align 8, !tbaa !98
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.as
  %i.eb = phi i32 [ %.pre151, %sub_0.lr.ph ], [ %i.em, %bb.as ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %sub_0.lr.ph ], [ %indvars.iv.next, %bb.as ]
  %i.ec = phi ptr [ %i.dz, %sub_0.lr.ph ], [ %i.eo, %bb.as ] ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 1
  %.not146 = icmp eq i8 %i.ed, 108
  br i1 %.not146, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ef = load i8, ptr %i.ee, align 1
  %.not147 = icmp eq i8 %i.ef, 105
  br i1 %.not147, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp eq i8 %i.eh, 98
  %i.ej = zext i1 %i.ei to i32
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ek = phi i32 [ 0, %sub_0 ], [ 0, %sub_1 ], [ %i.ej, %sub_2 ]
  %.not133 = icmp eq i32 %i.eb, %i.ek
  br i1 %.not133, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.tail
  %i.el = call ptr @_glfwPlatformLoadModule(ptr noundef nonnull %i.ec) #4 ; 2 uses
  store ptr %i.el, ptr %i.ea, align 8, !tbaa !192
  %.not134 = icmp eq ptr %i.el, null
  %.pre150 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133520), align 8, !tbaa !98
  br i1 %.not134, label %bb.as, label %._crit_edge

bb.as:                                            ; preds = %bb.ar, %.tail
  %i.em = phi i32 [ %.pre150, %bb.ar ], [ %i.eb, %.tail ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.next
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !191 ; 2 uses
  %.not132 = icmp eq ptr %i.eo, null
  br i1 %.not132, label %._crit_edge, label %sub_0

._crit_edge:                                      ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !192
  %.not135.not = icmp eq ptr %i.eq, null
  br i1 %.not135.not, label %bb.at, label %.critedge

bb.at:                                            ; preds = %._crit_edge
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.48) #4
  br label %bb.au

.critedge:                                        ; preds = %._crit_edge, %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @makeContextCurrentEGL, ptr %i.er, align 8, !tbaa !193
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @swapBuffersEGL, ptr %i.es, align 8, !tbaa !194
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @swapIntervalEGL, ptr %i.et, align 8, !tbaa !195
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @extensionSupportedEGL, ptr %i.eu, align 8, !tbaa !196
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @getProcAddressEGL, ptr %i.ev, align 8, !tbaa !197
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @destroyContextEGL, ptr %i.ew, align 8, !tbaa !198
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.e, %.critedge, %getEGLErrorString.exit142, %getEGLErrorString.exit140, %getEGLErrorString.exit138, %getEGLErrorString.exit, %bb.b
  %.1109 = phi i32 [ 0, %getEGLErrorString.exit140 ], [ 0, %getEGLErrorString.exit142 ], [ 1, %.critedge ], [ 0, %bb.at ], [ 0, %getEGLErrorString.exit ], [ 0, %getEGLErrorString.exit138 ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1109
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @chooseEGLConfig(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
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
  %i.l = alloca i32, align 4                      ; 9 uses
  %3 = alloca %struct.XVisualInfo, align 8        ; 6 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.n = load i32, ptr %0, align 8, !tbaa !173
  %i.o = icmp eq i32 %i.n, 196610
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !179
  %i.r = icmp eq i32 %i.q, 1
  %. = select i1 %i.r, i32 1, i32 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.060.a = phi i32 [ %., %bb.b ], [ 8, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !199
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.66) #4
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133600), align 8, !tbaa !100
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.w = call i32 %i.u(ptr noundef %i.v, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.l) #4 ; 0 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !178  ; 2 uses
  %.not64 = icmp eq i32 %i.x, 0
  br i1 %.not64, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.67) #4
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.y = sext i32 %i.x to i64
  %i.z = call ptr @_glfw_calloc(i64 noundef %i.y, i64 noundef 8) #4 ; 3 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133600), align 8, !tbaa !100
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !178
  %i.ad = call i32 %i.aa(ptr noundef %i.ab, ptr noundef %i.z, i32 noundef %i.ac, ptr noundef nonnull %i.l) #4 ; 0 uses
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !178
  %i.af = sext i32 %i.ae to i64
  %i.ag = call ptr @_glfw_calloc(i64 noundef %i.af, i64 noundef 72) #4 ; 4 uses
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !178
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.05674 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.v ] ; 7 uses
  %.05873 = phi i32 [ 0, %.lr.ph ], [ %.159, %bb.v ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183 ; 12 uses
  %i.ao = sext i32 %.05674 to i64
  %i.ap = getelementptr inbounds [72 x i8], ptr %i.ag, i64 %i.ao ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.as = call i32 %i.aq(ptr noundef %i.ar, ptr noundef %i.an, i32 noundef 12351, ptr noundef nonnull %i.k) #4, !inline_history !200 ; 0 uses
  %i.at = load i32, ptr %i.k, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  %.not66 = icmp eq i32 %i.at, 12430
  br i1 %.not66, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.aw = call i32 %i.au(ptr noundef %i.av, ptr noundef %i.an, i32 noundef 12339, ptr noundef nonnull %i.j) #4, !inline_history !200 ; 0 uses
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  %i.ay = and i32 %i.ax, 4
  %.not67 = icmp eq i32 %i.ay, 0
  br i1 %.not67, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8, !tbaa !186
  %i.ba = icmp eq i32 %i.az, 393220
  br i1 %i.ba, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.bd = call i32 %i.bb(ptr noundef %i.bc, ptr noundef %i.an, i32 noundef 12334, ptr noundef nonnull %i.i) #4, !inline_history !200 ; 0 uses
  %i.be = load i32, ptr %i.i, align 4, !tbaa !178 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  %i.bf = sext i32 %i.be to i64
  store i64 %i.bf, ptr %i.aj, align 8, !tbaa !201
  %.not68.not = icmp eq i32 %i.be, 0
  br i1 %.not68.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.ak, align 4, !tbaa !187
  %.not69 = icmp eq i32 %i.bg, 0
  br i1 %.not69, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141648), align 8, !tbaa !203
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137840), align 8, !tbaa !204
  %i.bj = call ptr %i.bh(ptr noundef %i.bi, i64 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %i.m) #4 ; 3 uses
  %.not70 = icmp eq ptr %i.bj, null
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !205
  %i.bl = call i32 @_glfwIsVisualTransparentX11(ptr noundef %i.bk) #4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !187
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 141552), align 8, !tbaa !206
  %i.bo = call i32 %i.bn(ptr noundef nonnull %i.bj) #4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.br = call i32 %i.bp(ptr noundef %i.bq, ptr noundef %i.an, i32 noundef 12352, ptr noundef nonnull %i.h) #4, !inline_history !200 ; 0 uses
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  %i.bt = and i32 %i.bs, %.060.a
  %.not71 = icmp eq i32 %i.bt, 0
  br i1 %.not71, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.bw = call i32 %i.bu(ptr noundef %i.bv, ptr noundef %i.an, i32 noundef 12324, ptr noundef nonnull %i.g) #4, !inline_history !200 ; 0 uses
  %i.bx = load i32, ptr %i.g, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  store i32 %i.bx, ptr %i.ap, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.ca = call i32 %i.by(ptr noundef %i.bz, ptr noundef %i.an, i32 noundef 12323, ptr noundef nonnull %i.f) #4, !inline_history !200 ; 0 uses
  %i.cb = load i32, ptr %i.f, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.cf = call i32 %i.cd(ptr noundef %i.ce, ptr noundef %i.an, i32 noundef 12322, ptr noundef nonnull %i.e) #4, !inline_history !200 ; 0 uses
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.ck = call i32 %i.ci(ptr noundef %i.cj, ptr noundef %i.an, i32 noundef 12321, ptr noundef nonnull %i.d) #4, !inline_history !200 ; 0 uses
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.cp = call i32 %i.cn(ptr noundef %i.co, ptr noundef %i.an, i32 noundef 12325, ptr noundef nonnull %i.c) #4, !inline_history !200 ; 0 uses
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.cu = call i32 %i.cs(ptr noundef %i.ct, ptr noundef %i.an, i32 noundef 12326, ptr noundef nonnull %i.b) #4, !inline_history !200 ; 0 uses
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !212
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8, !tbaa !186
  %i.cy = icmp ne i32 %i.cx, 393219
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133560), align 8
  %i.da = icmp ne i32 %i.cz, 0
  %or.cond = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.ak, align 4, !tbaa !187
  %.not72 = icmp eq i32 %i.db, 0
  br i1 %.not72, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = load i32, ptr %i.cm, align 4, !tbaa !210
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133592), align 8, !tbaa !99
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.dg = call i32 %i.de(ptr noundef %i.df, ptr noundef %i.an, i32 noundef 12337, ptr noundef nonnull %i.a) #4, !inline_history !200 ; 0 uses
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !213
  %i.dj = load i32, ptr %i.al, align 8, !tbaa !185
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !185
  %i.dl = ptrtoint ptr %i.an to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !214
  %i.dn = add nsw i32 %.05674, 1
  br label %bb.v

.critedge:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.q, %.critedge, %bb.i, %bb.h, %bb.u
  %.159 = phi i32 [ %.05873, %bb.h ], [ %.05873, %bb.u ], [ 1, %bb.q ], [ %.05873, %.critedge ], [ %.05873, %bb.t ], [ %.05873, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.05674, %bb.h ], [ %i.dn, %bb.u ], [ %.05674, %bb.q ], [ %.05674, %.critedge ], [ %.05674, %bb.t ], [ %.05674, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = load i32, ptr %i.l, align 4, !tbaa !178
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v
  %i.dr = call ptr @_glfwChooseFBConfig(ptr noundef %1, ptr noundef %i.ag, i32 noundef %.1) #4 ; 2 uses
  %.not86 = icmp eq ptr %i.dr, null
  br i1 %.not86, label %bb.x, label %bb.w

._crit_edge.thread:                               ; preds = %bb.g
  %i.ds = call ptr @_glfwChooseFBConfig(ptr noundef nonnull %1, ptr noundef %i.ag, i32 noundef 0) #4 ; 2 uses
  %.not85 = icmp eq ptr %i.ds, null
  br i1 %.not85, label %.thread, label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.dt = phi ptr [ %i.ds, %._crit_edge.thread ], [ %i.dr, %._crit_edge ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !214
  %i.dw = inttoptr i64 %i.dv to ptr
  store ptr %i.dw, ptr %2, align 8, !tbaa !183
  br label %bb.ad

bb.x:                                             ; preds = %._crit_edge
  %i.dx = icmp eq i32 %.159, 0
  br i1 %i.dx, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %0, align 8, !tbaa !173
  %i.dz = icmp eq i32 %i.dy, 196610
  br i1 %i.dz, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !179
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.68) #4
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.69) #4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65542, ptr noundef nonnull @.str.70) #4
  br label %bb.ad

.thread:                                          ; preds = %._crit_edge.thread, %bb.x
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65545, ptr noundef nonnull @.str.71) #4
  br label %bb.ad

bb.ad:                                            ; preds = %.thread, %bb.aa, %bb.ab, %bb.ac, %bb.w
  %i.ed = phi i32 [ 0, %.thread ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 1, %bb.w ]
  call void @_glfw_free(ptr noundef %i.z) #4
  call void @_glfw_free(ptr noundef %i.ag) #4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.ed, %bb.ad ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @makeContextCurrentEGL(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133680), align 8, !tbaa !110 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.g = tail call i32 %i.a(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.d, ptr noundef %i.f) #4
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133616), align 8, !tbaa !102
  %i.i = tail call i32 %i.h() #4
  %switch.tableidx = add i32 %i.i, -12288         ; 2 uses
  %i.j = icmp ult i32 %switch.tableidx, 15
  br i1 %i.j, label %switch.lookup, label %getEGLErrorString.exit

switch.lookup:                                    ; preds = %bb.c
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.makeContextCurrentEGL.5, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %getEGLErrorString.exit

getEGLErrorString.exit:                           ; preds = %bb.c, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.65, %bb.c ]
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.72, ptr noundef nonnull %.0.i) #4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = tail call i32 %i.a(ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #4
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133616), align 8, !tbaa !102
  %i.n = tail call i32 %i.m() #4
  %switch.tableidx9 = add i32 %i.n, -12288        ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx9, 15
  br i1 %i.o, label %switch.lookup10, label %getEGLErrorString.exit8

switch.lookup10:                                  ; preds = %bb.e
  %i.p = zext nneg i32 %switch.tableidx9 to i64
  %switch.gep11 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.makeContextCurrentEGL.5, i64 %i.p
  %switch.load12 = load ptr, ptr %switch.gep11, align 8
  br label %getEGLErrorString.exit8

getEGLErrorString.exit8:                          ; preds = %bb.e, %switch.lookup10
  %.0.i7 = phi ptr [ %switch.load12, %switch.lookup10 ], [ @.str.65, %bb.e ]
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.73, ptr noundef nonnull %.0.i7) #4
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  tail call void @_glfwPlatformSetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412), ptr noundef %0) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %getEGLErrorString.exit8, %getEGLErrorString.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swapBuffersEGL(ptr nofree noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #4
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.74) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8, !tbaa !186
  %i.c = icmp eq i32 %i.b, 393219
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.e = load i32, ptr %i.d, align 8, !tbaa !215
  %.not3 = icmp eq i32 %i.e, 0
  br i1 %.not3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133688), align 8, !tbaa !111
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.j = tail call i32 %i.f(ptr noundef %i.g, ptr noundef %i.i) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swapIntervalEGL(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133696), align 8, !tbaa !112
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133504), align 8, !tbaa !115
  %i.c = tail call i32 %i.a(ptr noundef %i.b, i32 noundef %0) #4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @getProcAddressEGL(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @_glfwPlatformGetTls(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_glfw, i64 133412)) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef nonnull %i.c, ptr noundef %0) #4 ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133712), align 8, !tbaa !114
  %i.f = tail call ptr %i.e(ptr noundef %0) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal void @destroyContextEGL(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 40), align 8, !tbaa !186
  %.not = icmp eq i32 %i.a, 393220
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load i32, ptr %i.b, align 8, !tbaa !216
  %.not12 = icmp eq i32 %i.c, 196609
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.e) #4
  store ptr null, ptr %i.d, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
end_hunk_0
