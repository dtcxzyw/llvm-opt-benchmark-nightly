Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_RenderTextureRotated_REAL:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.ad

bb.d:                                             ; preds = %bb.b, %bb.a
  %.not.i194 = icmp eq ptr %0, null
  br i1 %.not.i194, label %SDL_ObjectValid.exit196.thread198, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit196, label %SDL_ObjectValid.exit196.thread

SDL_ObjectValid.exit196:                          ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.k, label %SDL_ObjectValid.exit196.thread, label %SDL_ObjectValid.exit196.thread198

SDL_ObjectValid.exit196.thread198:                ; preds = %bb.d, %SDL_ObjectValid.exit196
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ad

SDL_ObjectValid.exit196.thread:                   ; preds = %bb.e, %SDL_ObjectValid.exit196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.n = load i8, ptr %i.m, align 8, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %SDL_ObjectValid.exit196.thread
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ad

bb.g:                                             ; preds = %SDL_ObjectValid.exit196.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread201, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.h
  %i.s = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.s, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread201

SDL_ObjectValid.exit.thread201:                   ; preds = %bb.g, %SDL_ObjectValid.exit
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.ad

SDL_ObjectValid.exit.thread:                      ; preds = %bb.h, %SDL_ObjectValid.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %0, %i.v
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.ad

bb.j:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not185 = icmp eq ptr %i.y, null
  br i1 %.not185, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %.not186 = icmp eq ptr %i.aa, null
  br i1 %.not186, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.82) #14
  br label %bb.ad

bb.m:                                             ; preds = %bb.k, %bb.j
  store <2 x float> zeroinitializer, ptr %7, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ae = load <2 x i32>, ptr %i.ac, align 4
  %i.af = sitofp <2 x i32> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %i.ad, align 8
  %.not187 = icmp eq ptr %2, null
  br i1 %.not187, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %7) #14
  br i1 %i.ag, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %.not188 = icmp eq ptr %3, null
  br i1 %.not188, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.ah, align 8            ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.al = load float, ptr %i.ak, align 4
  store <2 x float> zeroinitializer, ptr %9, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = uitofp nneg i32 %i.an to float
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.aq = load i32, ptr %.val, align 4
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.aj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i = phi float [ %i.ap, %bb.q ], [ %i.as, %bb.r ]
  store float %.sink.i, ptr %.0133.sroa.gep143, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = uitofp nneg i32 %i.au to float
  br label %GetRenderViewportSize.exit

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sitofp i32 %i.ay to float
  %i.ba = fdiv float %i.az, %i.al
  br label %GetRenderViewportSize.exit

GetRenderViewportSize.exit:                       ; preds = %bb.t, %bb.u
  %.sink1.i = phi float [ %i.aw, %bb.t ], [ %i.ba, %bb.u ]
  store float %.sink1.i, ptr %.0133.sroa.gep152, align 4
  br label %bb.v

bb.v:                                             ; preds = %GetRenderViewportSize.exit, %bb.o
  %.0133.sroa.phi159 = phi ptr [ %.0133.sroa.gep136, %bb.o ], [ %.0133.sroa.gep137, %GetRenderViewportSize.exit ]
  %.0133.sroa.phi174 = phi ptr [ %.0133.sroa.gep142, %bb.o ], [ %.0133.sroa.gep143, %GetRenderViewportSize.exit ] ; 2 uses
  %.0133.sroa.phi177 = phi ptr [ %.0133.sroa.gep151, %bb.o ], [ %.0133.sroa.gep152, %GetRenderViewportSize.exit ] ; 2 uses
  %.0133 = phi ptr [ %3, %bb.o ], [ %9, %GetRenderViewportSize.exit ] ; 2 uses
  %i.bb = call fastcc zeroext i1 @UpdateTexturePalette(ptr noundef nonnull %1)
  br i1 %i.bb, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not189 = icmp eq ptr %i.bd, null
  %spec.select = select i1 %.not189, ptr %1, ptr %i.bd ; 5 uses
  %.not190 = icmp eq ptr %5, null
  br i1 %.not190, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = load i64, ptr %5, align 4               ; 2 uses
  store i64 %i.be, ptr %8, align 8
  %i.bf = bitcast i64 %i.be to <2 x float>
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bg = load float, ptr %.0133.sroa.phi174, align 4
  %i.bh = load float, ptr %.0133.sroa.phi177, align 4
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul <2 x float> %i.bj, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.bk, ptr %8, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bl = phi <2 x float> [ %i.bk, %bb.y ], [ %i.bf, %bb.x ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select, i64 304
  store i32 %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.bs = load float, ptr %i.br, align 4          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 148
  %i.bu = load float, ptr %i.bt, align 4          ; 2 uses
  %i.bv = load ptr, ptr %i.x, align 8
  %.not191 = icmp eq ptr %i.bv, null
  br i1 %.not191, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bw = fmul double %4, f0x400921FB54442D18
  %i.bx = fdiv double %i.bw, 1.800000e+02
  %i.by = fptrunc double %i.bx to float           ; 2 uses
  %i.bz = call float @SDL_sinf_REAL(float noundef %i.by) #14 ; 2 uses
  %i.ca = call float @SDL_cosf_REAL(float noundef %i.by) #14 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.cc = load <2 x float>, ptr %7, align 8       ; 3 uses
  %i.cd = load <2 x float>, ptr %i.ad, align 8
  %i.ce = fadd <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.cg = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ch = and <2 x i32> %i.cg, <i32 1, i32 2>
  %i.ci = load float, ptr %.0133.sroa.phi174, align 4
  %i.cj = load float, ptr %.0133.sroa.phi177, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cl = load <2 x i32>, ptr %i.cb, align 4
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 2 uses
  %i.cn = shufflevector <2 x float> %i.ce, <2 x float> %i.cc, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cp = fdiv <4 x float> %i.cn, %i.co
  store <4 x float> %i.cp, ptr %i.ck, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cr = shufflevector <2 x float> %i.cc, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cs = fdiv <2 x float> %i.cr, %i.cm           ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  store float %i.ct, ptr %i.b, align 16
  %i.cu = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cu, ptr %i.cq, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cw = extractelement <2 x float> %i.cs, i64 1
  store float %i.cw, ptr %i.cv, align 4
  %10 = load float, ptr %.0133, align 4           ; 3 uses
  %11 = load float, ptr %.0133.sroa.phi159, align 4 ; 3 uses
  %i.cx = insertelement <2 x float> poison, float %10, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %11, i64 1
  %i.cz = fadd <2 x float> %i.bl, %i.cy           ; 2 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.db = fadd float %10, %i.ci
  %i.dc = fadd float %11, %i.cj
  %i.dd = icmp eq <2 x i32> %i.ch, zeroinitializer
  %i.de = shufflevector <2 x i1> %i.dd, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.df = insertelement <4 x float> poison, float %10, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.db, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %11, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.dc, i64 3 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.dk = select <4 x i1> %i.de, <4 x float> %i.di, <4 x float> %i.dj ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.dm = fsub <4 x float> %i.dl, %i.da           ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.dq = fmul <4 x float> %i.do, %i.dp           ; 3 uses
  %i.dr = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul <4 x float> %i.ds, %i.dm           ; 3 uses
  %i.du = fsub <4 x float> %i.dt, %i.dq
  %i.dv = fadd <4 x float> %i.dt, %i.dq
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.dx = fadd <4 x float> %i.da, %i.dw
  store <4 x float> %i.dx, ptr %i.a, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dz = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.ca, i64 1
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ed = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = fsub <4 x float> %i.ec, %i.ed
  %i.ef = fmul <4 x float> %i.eb, %i.ee           ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dt, <4 x float> %i.dq, <4 x i32> <i32 2, i32 7, i32 0, i32 5> ; 2 uses
  %i.eh = fsub <4 x float> %i.eg, %i.ef
  %i.ei = fadd <4 x float> %i.eg, %i.ef
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ek = fadd <4 x float> %i.da, %i.ej
  store <4 x float> %i.ek, ptr %i.dy, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.em = call fastcc zeroext i1 @QueueCmdGeometry(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %i.a, i32 noundef 8, ptr noundef nonnull %i.el, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 4, ptr noundef nonnull @rect_index_order, i32 noundef 6, i32 noundef 4, float noundef %i.bs, float noundef %i.bu, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.en = call fastcc zeroext i1 @QueueCmdCopyEx(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, ptr noundef %7, ptr noundef %.0133, double noundef %4, ptr noundef %8, i32 noundef %6, float noundef %i.bs, float noundef %i.bu)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.v
  %.0131 = phi i1 [ false, %bb.v ], [ %i.em, %bb.aa ], [ %i.en, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.n, %bb.ac, %bb.l, %bb.i, %SDL_ObjectValid.exit.thread201, %bb.f, %SDL_ObjectValid.exit196.thread198, %bb.c
  %.1 = phi i1 [ %i.h, %bb.c ], [ false, %bb.f ], [ %i.w, %bb.i ], [ %.0131, %bb.ac ], [ false, %SDL_ObjectValid.exit196.thread198 ], [ %i.ab, %bb.l ], [ false, %SDL_ObjectValid.exit.thread201 ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i1 %.1
}

declare float @SDL_sinf_REAL(float noundef) local_unnamed_addr #3

declare float @SDL_cosf_REAL(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @QueueCmdCopyEx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %4, ptr noundef nonnull %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 9, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 %i.c(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, double noundef %4, ptr noundef nonnull %5, i32 noundef %6, float noundef %7, float noundef %8) #14
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0.shrunk = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0.shrunk
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_RenderTextureTiled_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.SDL_FRect, align 8          ; 10 uses
  %6 = alloca %struct.SDL_FRect, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %.not.i52 = icmp eq ptr %0, null
  br i1 %.not.i52, label %SDL_ObjectValid.exit54.thread59, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit54, label %SDL_ObjectValid.exit54.thread

SDL_ObjectValid.exit54:                           ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit54.thread, label %SDL_ObjectValid.exit54.thread59

SDL_ObjectValid.exit54.thread59:                  ; preds = %bb.a, %SDL_ObjectValid.exit54
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ab

SDL_ObjectValid.exit54.thread:                    ; preds = %bb.b, %SDL_ObjectValid.exit54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit54.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %SDL_ObjectValid.exit54.thread
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.e
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.k, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread62

SDL_ObjectValid.exit.thread62:                    ; preds = %bb.d, %SDL_ObjectValid.exit
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %bb.ab

SDL_ObjectValid.exit.thread:                      ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %.not = icmp eq ptr %0, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.o = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #14
  br label %bb.ab

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.p = fcmp ugt float %3, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.83) #14
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.s, align 4
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  store <2 x float> %i.w, ptr %i.t, align 8
  %.not44 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call zeroext i1 @SDL_GetRectIntersectionFloat_REAL(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %5) #14
  br i1 %i.x, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.not45 = icmp eq ptr %4, null
  br i1 %.not45, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 312
  %.val = load ptr, ptr %i.y, align 8             ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.ac = load float, ptr %i.ab, align 4
  store <2 x float> zeroinitializer, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = uitofp nneg i32 %i.ae to float
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %.val, align 4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fdiv float %i.ai, %i.aa
  br label %bb.o
end_hunk_0
