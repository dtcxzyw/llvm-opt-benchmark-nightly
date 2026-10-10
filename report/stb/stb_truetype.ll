Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt_GetGlyphSDF:bb.a
  %i.s = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.t = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.s)
  %i.u = fptosi <2 x float> %i.t to <2 x i32>     ; 3 uses
  %i.v = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.k, i64 1
  %i.x = sitofp <2 x i32> %i.w to <2 x float>
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.z = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 3 uses
  %i.ab = icmp eq <2 x i32> %i.u, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 0
  %i.ad = extractelement <2 x i1> %i.ab, i64 1
  %or.cond508 = select i1 %i.ad, i1 true, i1 %i.ac
  br i1 %or.cond508, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %i.ae = extractelement <2 x i32> %i.u, i64 1
  %i.af = sub i32 %i.ae, %3                       ; 6 uses
  %i.ag = extractelement <2 x i32> %i.u, i64 0
  %i.ah = sub nsw i32 %i.ag, %3                   ; 7 uses
  %i.ai = extractelement <2 x i32> %i.aa, i64 1
  %i.aj = add nsw i32 %3, %i.ai                   ; 3 uses
  %i.ak = extractelement <2 x i32> %i.aa, i64 0
  %i.al = add nsw i32 %3, %i.ak                   ; 4 uses
  %i.am = sub nsw i32 %i.aj, %i.af                ; 4 uses
  %i.an = sub nsw i32 %i.al, %i.ah                ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.am, ptr %6, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not467 = icmp eq ptr %7, null
  br i1 %.not467, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.an, ptr %7, align 4, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not468 = icmp eq ptr %8, null
  br i1 %.not468, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.af, ptr %8, align 4, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not469 = icmp eq ptr %9, null
  br i1 %.not469, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ah, ptr %9, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = fneg float %1                           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !56
  %.not.i482 = icmp eq i32 %i.aq, 0
  br i1 %.not.i482, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = call i32 @stbtt__GetGlyphShapeTT(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %i.e), !inline_history !57
  %.pre.pre.pre = load ptr, ptr %i.e, align 8
  br label %stbtt_GetGlyphShape.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  store i32 1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  %i.as = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %10), !inline_history !57
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !60
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.av, 14
  %i.ax = call noalias ptr @malloc(i64 noundef %i.aw) #30, !inline_history !57 ; 3 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !62
  %i.az = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef nonnull %11), !inline_history !57
  %.not7.i.i = icmp eq i32 %i.az, 0
  br i1 %.not7.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !60
  br label %stbtt__GetGlyphShapeT2.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.e, align 8, !tbaa !61
  br label %stbtt__GetGlyphShapeT2.exit.i

stbtt__GetGlyphShapeT2.exit.i:                    ; preds = %bb.p, %bb.o
  %.pre.pre540 = phi ptr [ %i.ax, %bb.o ], [ null, %bb.p ]
  %.0.i.i = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %stbtt_GetGlyphShape.exit

stbtt_GetGlyphShape.exit:                         ; preds = %bb.l, %stbtt__GetGlyphShapeT2.exit.i
  %.pre.pre = phi ptr [ %.pre.pre540, %stbtt__GetGlyphShapeT2.exit.i ], [ %.pre.pre.pre, %bb.l ] ; 7 uses
  %.0.i = phi i32 [ %.0.i.i, %stbtt__GetGlyphShapeT2.exit.i ], [ %i.ar, %bb.l ]
  %.0.i.fr = freeze i32 %.0.i                     ; 7 uses
  %i.bc = mul nsw i32 %i.an, %i.am
  %i.bd = sext i32 %i.bc to i64
  %i.be = call noalias ptr @malloc(i64 noundef %i.bd) #30 ; 3 uses
  %i.bf = sext i32 %.0.i.fr to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #30 ; 4 uses
  %i.bi = icmp sgt i32 %.0.i.fr, 0                ; 2 uses
  br i1 %i.bi, label %.lr.ph, label %.preheader514

.lr.ph:                                           ; preds = %stbtt_GetGlyphShape.exit
  %i.bj = add nsw i32 %.0.i.fr, -1
  %wide.trip.count = zext nneg i32 %.0.i.fr to i64
  %i.bk = zext nneg i32 %i.bj to i64
  br label %bb.as

.preheader514:                                    ; preds = %bb.aw, %stbtt_GetGlyphShape.exit
  %i.bl = icmp slt i32 %i.ah, %i.al
  br i1 %i.bl, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %.preheader514
  %i.bm = icmp slt i32 %i.af, %i.aj
  %i.bn = uitofp i8 %4 to float                   ; 2 uses
  br i1 %i.bm, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bo = sext i32 %i.af to i64                   ; 2 uses
  %i.bp = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.bi, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %wide.trip.count534 = zext nneg i32 %.0.i.fr to i64
  %i.bq = insertelement <2 x float> %i.q, float %i.ao, i64 1 ; 3 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge522.split.us.us
  %.0435523.us = phi i32 [ %i.mv, %._crit_edge522.split.us.us ], [ %i.ah, %.preheader.us.preheader ] ; 3 uses
  %i.br = sitofp i32 %.0435523.us to float
  %i.bs = fadd float %i.br, 5.000000e-01          ; 8 uses
  %i.bt = fdiv float %i.bs, %i.ao
  %i.bu = sub nsw i32 %.0435523.us, %i.ah
  %i.bv = mul nuw nsw i32 %i.bu, %i.am
  %i.bw = sub i32 %i.bv, %i.af
  br label %.lr.ph519.us.us

.lr.ph519.us.us:                                  ; preds = %bb.ar, %.preheader.us
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %bb.ar ], [ %i.bo, %.preheader.us ] ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv536 to i32     ; 2 uses
  %i.by = sitofp i32 %i.bx to float
  %i.bz = fadd float %i.by, 5.000000e-01          ; 8 uses
  %i.ca = fdiv float %i.bz, %1
  %i.cb = call i32 @stbtt__compute_crossings_x(float noundef %i.ca, float noundef %i.bt, i32 noundef %.0.i.fr, ptr noundef %.pre.pre)
  br label %bb.q

bb.q:                                             ; preds = %.thread.us.us, %.lr.ph519.us.us
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.thread.us.us ], [ 0, %.lr.ph519.us.us ] ; 4 uses
  %.0428518.us.us = phi float [ %.9.us.us, %.thread.us.us ], [ 9.999990e+05, %.lr.ph519.us.us ] ; 10 uses
  %i.cc = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv531 ; 5 uses
  %i.cd = load <2 x i16>, ptr %i.cc, align 2, !tbaa !70
  %i.ce = sitofp <2 x i16> %i.cd to <2 x float>
  %i.cf = fmul <2 x float> %i.bq, %i.ce           ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !65
  switch i8 %i.ch, label %.thread.us.us [
    i8 2, label %bb.an
    i8 3, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr i8, ptr %i.cc, i64 -14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ck = load <2 x i16>, ptr %i.ci, align 2, !tbaa !70
  %i.cl = sitofp <2 x i16> %i.ck to <2 x float>
  %i.cm = fmul <2 x float> %i.bq, %i.cl           ; 4 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.co = load <2 x i16>, ptr %i.cj, align 2, !tbaa !70
  %i.cp = sitofp <2 x i16> %i.co to <2 x float>
  %i.cq = fmul <2 x float> %i.bq, %i.cp           ; 6 uses
  %i.cr = fcmp olt <2 x float> %i.cf, %i.cq
  %i.cs = shufflevector <2 x i1> %i.cr, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> %i.cf, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cu = shufflevector <2 x float> %i.cf, <2 x float> %i.cq, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cv = select <4 x i1> %i.cs, <4 x float> %i.ct, <4 x float> %i.cu ; 3 uses
  %i.cw = fcmp olt <4 x float> %i.cv, %i.cn
  %i.cx = shufflevector <4 x float> %i.cn, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cv, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.da = select <4 x i1> %i.cw, <4 x float> %i.cx, <4 x float> %i.cz ; 2 uses
  %12 = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %13 = insertelement <2 x float> poison, float %.0428518.us.us, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = fsub <2 x float> %12, %14                 ; 2 uses
  %i.db = extractelement <2 x float> %15, i64 1
  %i.dc = fcmp ogt float %i.bz, %i.db
  %i.dd = extractelement <2 x float> %15, i64 0
  %16 = fcmp ogt float %i.bs, %i.dd
  %17 = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %18 = fadd <2 x float> %14, %17                 ; 2 uses
  %i.de = extractelement <2 x float> %18, i64 1
  %19 = fcmp olt float %i.bz, %i.de
  %or.cond477.us.us = select i1 %i.dc, i1 %19, i1 false
  %or.cond479.us.us = select i1 %or.cond477.us.us, i1 %16, i1 false
  %i.df = extractelement <2 x float> %18, i64 0
  %i.dg = fcmp olt float %i.bs, %i.df
  %or.cond481.us.us = select i1 %or.cond479.us.us, i1 %i.dg, i1 false
  br i1 %or.cond481.us.us, label %bb.s, label %.thread.us.us

bb.s:                                             ; preds = %bb.r
  %i.dh = extractelement <2 x float> %i.cf, i64 0 ; 5 uses
  %i.di = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.cq, %i.cf ; 2 uses
  %i.dj = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.dk = extractelement <2 x float> %i.cf, i64 1 ; 6 uses
  %i.dl = extractelement <2 x float> %i.cq, i64 1 ; 5 uses
  %i.dm = fsub float %i.dl, %i.dk                 ; 7 uses
  %i.dn = call float @llvm.fmuladd.f32(float %i.di, float -2.000000e+00, float %i.dh)
  %i.do = extractelement <2 x float> %i.cm, i64 0 ; 4 uses
  %i.dp = fadd float %i.do, %i.dn                 ; 3 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dl, float -2.000000e+00, float %i.dk)
  %i.dr = extractelement <2 x float> %i.cm, i64 1 ; 4 uses
  %i.ds = fadd float %i.dr, %i.dq                 ; 3 uses
  %i.dt = fsub float %i.dh, %i.bz                 ; 6 uses
  %i.du = fsub float %i.dk, %i.bs                 ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv531
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !80 ; 4 uses
  %i.dx = fcmp oeq float %i.dw, 0.000000e+00
  %i.dy = fmul float %i.dm, %i.ds
  %i.dz = call float @llvm.fmuladd.f32(float %i.dj, float %i.dp, float %i.dy)
  %i.ea = fmul float %i.dz, 3.000000e+00          ; 4 uses
  br i1 %i.dx, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = fmul float %i.ea, %i.dw                 ; 5 uses
  %i.ec = fmul float %i.dm, %i.dm
  %i.ed = call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.ec)
  %i.ee = fmul float %i.du, %i.ds
  %i.ef = call float @llvm.fmuladd.f32(float %i.dt, float %i.dp, float %i.ee)
  %i.eg = call float @llvm.fmuladd.f32(float %i.ed, float 2.000000e+00, float %i.ef)
  %i.eh = fmul float %i.eg, %i.dw                 ; 2 uses
  %i.ei = fdiv float %i.eb, -3.000000e+00         ; 4 uses
  %i.ej = fmul float %i.eb, %i.eb
  %i.ek = fdiv float %i.ej, 3.000000e+00
  %i.el = fsub float %i.eh, %i.ek                 ; 4 uses
  %i.em = fmul float %i.eb, 2.000000e+00
  %i.en = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.eh, i64 1
  %i.ep = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.dm, i64 0
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.em, i64 1
  %i.et = insertelement <2 x float> %foldExtExtBinop, float %i.eb, i64 1 ; 2 uses
  %i.eu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eq)
  %i.ev = insertelement <2 x float> %i.et, float %i.dw, i64 0
  %i.ew = fmul <2 x float> %i.eu, %i.ev           ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 1
  %i.ey = fdiv float %i.ex, 2.700000e+01
  %i.ez = extractelement <2 x float> %i.ew, i64 0
  %i.fa = fadd float %i.ez, %i.ey                 ; 5 uses
  %i.fb = fmul float %i.el, %i.el
  %i.fc = fmul float %i.el, %i.fb                 ; 2 uses
  %i.fd = fmul float %i.fc, 4.000000e+00
  %i.fe = fdiv float %i.fd, 2.700000e+01
  %i.ff = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fe) ; 2 uses
  %i.fg = fcmp ult float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sqrtf47.i.us.us = call float @sqrtf(float noundef %i.ff) #29 ; 2 uses
  %i.fh = fneg float %i.fa
  %i.fi = fsub float %sqrtf47.i.us.us, %i.fa
  %i.fj = fmul float %i.fi, 5.000000e-01          ; 3 uses
  %i.fk = fsub float %i.fh, %sqrtf47.i.us.us
  %i.fl = fmul float %i.fk, 5.000000e-01          ; 3 uses
  %i.fm = fcmp olt float %i.fj, 0.000000e+00
  br i1 %i.fm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = fpext float %i.fj to double
  %i.fo = call double @pow(double noundef %i.fn, double noundef f0x3FD5555560000000) #29
  %i.fp = fptrunc double %i.fo to float
  br label %stbtt__cuberoot.exit.i.us.us

bb.w:                                             ; preds = %bb.u
  %i.fq = fneg float %i.fj
  %i.fr = fpext float %i.fq to double
  %i.fs = call double @pow(double noundef %i.fr, double noundef f0x3FD5555560000000) #29
  %i.ft = fptrunc double %i.fs to float
  %i.fu = fneg float %i.ft
  br label %stbtt__cuberoot.exit.i.us.us

stbtt__cuberoot.exit.i.us.us:                     ; preds = %bb.w, %bb.v
  %.0.i.i483.us.us = phi float [ %i.fu, %bb.w ], [ %i.fp, %bb.v ]
  %i.fv = fcmp olt float %i.fl, 0.000000e+00
  br i1 %i.fv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %stbtt__cuberoot.exit.i.us.us
  %i.fw = fpext float %i.fl to double
  %i.fx = call double @pow(double noundef %i.fw, double noundef f0x3FD5555560000000) #29
  %i.fy = fptrunc double %i.fx to float
  br label %stbtt__cuberoot.exit49.i.us.us

bb.y:                                             ; preds = %stbtt__cuberoot.exit.i.us.us
  %i.fz = fneg float %i.fl
  %i.ga = fpext float %i.fz to double
  %i.gb = call double @pow(double noundef %i.ga, double noundef f0x3FD5555560000000) #29
  %i.gc = fptrunc double %i.gb to float
  %i.gd = fneg float %i.gc
  br label %stbtt__cuberoot.exit49.i.us.us

stbtt__cuberoot.exit49.i.us.us:                   ; preds = %bb.y, %bb.x
  %.0.i48.i.us.us = phi float [ %i.gd, %bb.y ], [ %i.fy, %bb.x ]
  %i.ge = fadd float %i.ei, %.0.i.i483.us.us
  %i.gf = fadd float %i.ge, %.0.i48.i.us.us
  br label %stbtt__solve_cubic.exit.us.us

bb.z:                                             ; preds = %bb.t
  %i.gg = fdiv float %i.el, -3.000000e+00
  %sqrtf.i.us.us = call float @sqrtf(float noundef %i.gg) #29 ; 2 uses
  %i.gh = fdiv float -2.700000e+01, %i.fc
  %i.gi = fpext float %i.gh to double
  %i.gj = call double @sqrt(double noundef %i.gi) #29
  %i.gk = fneg double %i.gj
  %i.gl = fpext float %i.fa to double
  %i.gm = fmul double %i.gl, %i.gk
  %i.gn = fmul double %i.gm, 5.000000e-01
  %i.go = call double @acos(double noundef %i.gn) #29
  %i.gp = fptrunc double %i.go to float
  %i.gq = fdiv float %i.gp, 3.000000e+00
  %i.gr = fpext float %i.gq to double             ; 2 uses
  %i.gs = call double @cos(double noundef %i.gr) #29
  %i.gt = fptrunc double %i.gs to float           ; 3 uses
  %i.gu = fadd double %i.gr, f0xBFF921FAFC8B007A
  %i.gv = call double @cos(double noundef %i.gu) #29
  %i.gw = fptrunc double %i.gv to float
  %i.gx = fmul float %i.gw, f0x3FDDB3D7           ; 2 uses
  %i.gy = fmul float %sqrtf.i.us.us, 2.000000e+00
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float %i.gt, float %i.ei)
  %i.ha = fadd float %i.gx, %i.gt
  %i.hb = fneg float %sqrtf.i.us.us               ; 2 uses
  %i.hc = call float @llvm.fmuladd.f32(float %i.hb, float %i.ha, float %i.ei)
  %i.hd = fsub float %i.gt, %i.gx
  %i.he = call float @llvm.fmuladd.f32(float %i.hb, float %i.hd, float %i.ei)
  br label %stbtt__solve_cubic.exit.us.us

bb.aa:                                            ; preds = %bb.s
  %i.hf = fmul float %i.dm, %i.dm
  %i.hg = call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.hf)
  %i.hh = fmul float %i.du, %i.ds
  %i.hi = call float @llvm.fmuladd.f32(float %i.dt, float %i.dp, float %i.hh)
  %i.hj = call float @llvm.fmuladd.f32(float %i.hg, float 2.000000e+00, float %i.hi) ; 6 uses
  %i.hk = fmul float %i.du, %i.dm
  %i.hl = call float @llvm.fmuladd.f32(float %i.dt, float %i.dj, float %i.hk) ; 2 uses
  %i.hm = call float @llvm.fabs.f32(float %i.ea)
  %i.hn = fcmp olt float %i.hm, f0x35800000
  br i1 %i.hn, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ho = fmul float %i.ea, 4.000000e+00
  %i.hp = fneg float %i.hl
  %i.hq = fmul float %i.ho, %i.hp
  %i.hr = call float @llvm.fmuladd.f32(float %i.hj, float %i.hj, float %i.hq) ; 2 uses
  %i.hs = fcmp olt float %i.hr, 0.000000e+00
  br i1 %i.hs, label %stbtt__solve_cubic.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %sqrtf.us.us = call float @sqrtf(float noundef %i.hr) #29 ; 2 uses
  %i.ht = fneg float %i.hj
  %i.hu = fmul float %i.ea, 2.000000e+00
  %i.hv = fsub float %i.ht, %sqrtf.us.us
  %i.hw = fsub float %sqrtf.us.us, %i.hj
  %i.hx = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.hw, i64 1
  %i.ib = fdiv <2 x float> %i.ia, %i.hy           ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = extractelement <2 x float> %i.ib, i64 1
  br label %stbtt__solve_cubic.exit.us.us

bb.ad:                                            ; preds = %bb.aa
  %i.ie = call float @llvm.fabs.f32(float %i.hj)
  %i.if = fcmp ult float %i.ie, f0x35800000
  br i1 %i.if, label %stbtt__solve_cubic.exit.us.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ig = fneg float %i.hl
  %i.ih = fdiv float %i.ig, %i.hj
  br label %stbtt__solve_cubic.exit.us.us

stbtt__solve_cubic.exit.us.us:                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %stbtt__cuberoot.exit49.i.us.us
  %.sroa.0.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ %i.ih, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ %i.ic, %bb.ac ], [ %i.gz, %bb.z ], [ %i.gf, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %.sroa.8.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ %i.id, %bb.ac ], [ %i.hc, %bb.z ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %.sroa.11.0.us.us = phi float [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.ac ], [ %i.he, %bb.z ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i.us.us ] ; 6 uses
  %i.ii = phi i1 [ false, %bb.ad ], [ true, %bb.ae ], [ false, %bb.ab ], [ true, %bb.ac ], [ true, %bb.z ], [ true, %stbtt__cuberoot.exit49.i.us.us ]
  %i.ij = phi i1 [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ab ], [ true, %bb.ac ], [ true, %bb.z ], [ false, %stbtt__cuberoot.exit49.i.us.us ]
  %i.ik = phi i1 [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.ac ], [ true, %bb.z ], [ false, %stbtt__cuberoot.exit49.i.us.us ]
  %i.il = fmul float %i.du, %i.du
  %i.im = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.il) ; 2 uses
  %i.in = fmul float %.0428518.us.us, %.0428518.us.us
  %i.io = fcmp olt float %i.im, %i.in
  %sqrt510.us.us = call float @llvm.sqrt.f32(float %i.im)
  %.4.us.us = select i1 %i.io, float %sqrt510.us.us, float %.0428518.us.us ; 4 uses
  %i.ip = fcmp oge float %.sroa.0.0.us.us, 0.000000e+00
end_hunk_0
