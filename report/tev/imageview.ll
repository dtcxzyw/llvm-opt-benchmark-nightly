Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imageview?download=true
inline.NumInlined: 403
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN7nanogui9ImageView4drawEP10NVGcontext:bb.a
  %i.o = tail call noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr noundef nonnull align 16 dereferenceable(304) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load float, ptr %i.p, align 16, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.s = load i8, ptr %i.r, align 16, !tbaa !77, !range !78, !noundef !79
  %i.t = load ptr, ptr %i.h, align 16, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load float, ptr %i.j, align 8, !tbaa !62
  %i.w = fdiv float %i.v, 5.000000e+00
  %i.x = load <2 x i32>, ptr %i.u, align 4, !tbaa !20
  %exp2f.i.i49 = tail call noundef float @exp2f(float %i.w) #15
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !80
  %i.z = tail call noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr noundef nonnull align 16 dereferenceable(304) %0)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !60, !range !78, !noundef !79
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.r, align 16, !tbaa !77, !range !78, !noundef !79
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = sitofp <2 x i32> %i.x to <2 x float>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ah = load float, ptr %i.ag, align 16, !tbaa !76
  %i.ai = insertelement <2 x float> poison, float %exp2f.i.i49, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.aj, %i.af
  %i.al = fadd <2 x float> %i.ak, %i.y
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = fadd <2 x float> %i.ao, splat (float 1.000000e+00)
  %.sroa.012.0.i54 = select i1 %i.ae, <2 x float> %i.ap, <2 x float> %i.ao
  %i.aq = trunc nuw i8 %i.s to i1
  %i.ar = fmul float %exp2f.i.i, 0.000000e+00
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fadd <2 x float> %i.at, %i.n
  %i.av = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fadd <2 x float> %i.ax, splat (float 1.000000e+00)
  %.sroa.012.0.i = select i1 %i.aq, <2 x float> %i.ay, <2 x float> %i.ax
  %i.az = fptosi <2 x float> %.sroa.012.0.i to <2 x i32>
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>   ; 3 uses
  %i.bb = fsub <2 x float> %.sroa.012.0.i54, %i.ba
  tail call void @nvgBeginPath(ptr noundef %1)
  tail call void @nvgStrokeWidth(ptr noundef %1, float noundef 1.000000e+00)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.bc, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.225.0.copyload = load <2 x float>, ptr %.sroa.225.0..sroa_idx, align 16, !tbaa !21
  tail call void @nvgStrokeColor(ptr noundef %1, <2 x float> %.sroa.024.0.copyload, <2 x float> %.sroa.225.0.copyload)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = extractelement <2 x float> %i.ba, i64 0
  %i.bf = load <2 x i32>, ptr %i.bd, align 8, !tbaa !20
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = extractelement <2 x float> %i.ba, i64 1
  %i.bi = fptosi <2 x float> %i.bb to <2 x i32>
  %i.bj = sitofp <2 x i32> %i.bi to <2 x float>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = fadd <4 x float> %i.bk, <float -5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 0
  %i.bn = fadd float %i.bm, %i.be
  %i.bo = extractelement <4 x float> %i.bl, i64 1
  %i.bp = fadd float %i.bo, %i.bh
  %i.bq = extractelement <4 x float> %i.bl, i64 2
  %i.br = extractelement <4 x float> %i.bl, i64 3
  tail call void @nvgRect(ptr noundef %1, float noundef %i.bn, float noundef %i.bp, float noundef %i.bq, float noundef %i.br)
  tail call void @nvgStroke(ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @nvgSave(ptr noundef %1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load <4 x i32>, ptr %i.bs, align 8, !tbaa !20
  %i.bw = sitofp <4 x i32> %i.bv to <4 x float>   ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = extractelement <4 x float> %i.bw, i64 1
  %i.bz = extractelement <4 x float> %i.bw, i64 2
  %i.ca = extractelement <4 x float> %i.bw, i64 3
  tail call void @nvgIntersectScissor(ptr noundef %1, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef %i.ca)
  %i.cb = load float, ptr %i.j, align 8, !tbaa !62
  %i.cc = fdiv float %i.cb, 5.000000e+00
  %exp2f.i = tail call noundef float @exp2f(float %i.cc) #15
  %i.cd = fcmp ogt float %exp2f.i, 1.000000e+02
  br i1 %i.cd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !16
  %.not140 = icmp eq ptr %i.cf, null
  br i1 %.not140, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = load float, ptr %i.j, align 8, !tbaa !62
  %i.ch = fdiv float %i.cg, 5.000000e+00
  %exp2f.i55 = tail call noundef float @exp2f(float %i.ch) #15
  %i.ci = fdiv float %exp2f.i55, 1.000000e+01     ; 5 uses
  %i.cj = load float, ptr %i.j, align 8, !tbaa !62
  %i.ck = fdiv float %i.cj, 5.000000e+00
  %exp2f.i56 = tail call noundef float @exp2f(float %i.ck) #15
  %i.cl = fadd float %exp2f.i56, -1.000000e+02
  %i.cm = fdiv float %i.cl, 1.000000e+02          ; 2 uses
  %i.cn = fcmp olt float %i.cm, 1.000000e+00
  %.sroa.speculated = select i1 %i.cn, float %i.cm, float 1.000000e+00 ; 2 uses
  tail call void @nvgFontSize(ptr noundef %1, float noundef %i.ci)
  tail call void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.4)
  tail call void @nvgTextAlign(ptr noundef %1, i32 noundef 18)
  %i.co = load i8, ptr %i.r, align 16, !tbaa !77, !range !78, !noundef !79
  %i.cp = trunc nuw i8 %i.co to i1
  %.sroa.013.0.i = select i1 %i.cp, float -1.000000e+00, float 0.000000e+00
  %i.cq = tail call noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr noundef nonnull align 16 dereferenceable(304) %0)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 256
  %i.cs = load float, ptr %i.cr, align 16, !tbaa !76
  %i.ct = fmul float %.sroa.013.0.i, %i.cs
  %i.cu = load float, ptr %i.j, align 8, !tbaa !62
  %i.cv = fdiv float %i.cu, 5.000000e+00
  %i.cw = load <2 x float>, ptr %i.m, align 4, !tbaa !80
  %i.cx = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fsub <2 x float> %i.cy, %i.cw
  %exp2f.i.i57 = tail call noundef float @exp2f(float %i.cv) #15
  %i.da = insertelement <2 x float> poison, float %exp2f.i.i57, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x float> %i.cz, %i.db
  %i.dd = fptosi <2 x float> %i.dc to <2 x i32>
  %i.de = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dd, <2 x i32> splat (i32 1)) ; 2 uses
  %i.df = extractelement <2 x i32> %i.de, i64 0
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  %i.dh = extractelement <2 x i32> %i.de, i64 1
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  %i.dj = load i8, ptr %i.r, align 16, !tbaa !77, !range !78, !noundef !79
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load <2 x i32>, ptr %i.bu, align 16, !tbaa !20
  %i.dm = sitofp <2 x i32> %i.dl to <2 x float>   ; 2 uses
  %i.dn = fadd nnan <2 x float> %i.dm, splat (float -1.000000e+00)
  %i.do = insertelement <2 x i1> poison, i1 %i.dk, i64 0
  %i.dp = shufflevector <2 x i1> %i.do, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.dn, <2 x float> %i.dm
  %i.dr = tail call noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr noundef nonnull align 16 dereferenceable(304) %0)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 256
  %i.dt = load float, ptr %i.ds, align 16, !tbaa !76
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.dq, %i.dv
  %i.dx = load <2 x float>, ptr %i.m, align 4, !tbaa !80
  %i.dy = fsub <2 x float> %i.dw, %i.dx
  %i.dz = load float, ptr %i.j, align 8, !tbaa !62
  %i.ea = fdiv float %i.dz, 5.000000e+00
  %exp2f.i.i67 = tail call noundef float @exp2f(float %i.ea) #15
  %i.eb = insertelement <2 x float> poison, float %exp2f.i.i67, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fdiv <2 x float> %i.dy, %i.ec           ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = fptosi float %i.ee to i32
  %i.eg = extractelement <2 x float> %i.ed, i64 1
  %i.eh = fptosi float %i.eg to i32
  %i.ei = add nsw i32 %i.ef, 1
  %i.ej = add nsw i32 %i.eh, 1
  %i.ek = load ptr, ptr %i.h, align 16, !tbaa !61 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load i32, ptr %i.el, align 4, !tbaa !20
  %i.en = add nsw i32 %i.em, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !20
  %i.eq = add nsw i32 %i.ep, -1
  %i.er = tail call noundef i32 @llvm.smin.i32(i32 %i.ei, i32 %i.en) ; 2 uses
  %i.es = tail call noundef i32 @llvm.smin.i32(i32 %i.ej, i32 %i.eq) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %i.c, ptr %i.d, align 16, !tbaa !93
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !93
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.ew, ptr %i.ev, align 16, !tbaa !93
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !93
  %.not47144 = icmp sgt i32 %i.di, %i.es
  br i1 %.not47144, label %._crit_edge146.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %.not48142 = icmp sgt i32 %i.dg, %i.er
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 4
  br i1 %.not48142, label %._crit_edge146.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.sroa.42.12.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.speculated, i64 1 ; 4 uses
  %.sroa.42.12.vec.insert237 = insertelement <2 x float> <float 3.000000e-01, float poison>, float %.sroa.speculated, i64 1 ; 4 uses
  %.sroa.42.8.vec.insert235 = insertelement <2 x float> %.sroa.42.12.vec.insert237, float 1.000000e+00, i64 0
  %.sroa.42.8.vec.insert233 = insertelement <2 x float> %.sroa.42.12.vec.insert237, float 1.000000e+00, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0145 = phi i32 [ %i.fc, %._crit_edge ], [ %i.di, %.preheader.preheader ] ; 4 uses
  %3 = sitofp i32 %.0145 to float
  %i.fa = fadd nnan float %3, 5.000000e-01
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 1
  br label %bb.h

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %i.fc = add nuw i32 %.0145, 1
  %exitcond148.not = icmp eq i32 %.0145, %i.es
  br i1 %exitcond148.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !89

bb.h:                                             ; preds = %.preheader, %bb.j
  %.046143 = phi i32 [ %i.dg, %.preheader ], [ %i.hv, %bb.j ] ; 4 uses
  %i.fd = load float, ptr %i.j, align 8, !tbaa !62
  %i.fe = fdiv float %i.fd, 5.000000e+00
  %exp2f.i.i82 = call noundef float @exp2f(float %i.fe) #15
  %i.ff = load <2 x float>, ptr %i.m, align 4, !tbaa !80
  %i.fg = call noundef ptr @_ZNK7nanogui6Widget6screenEv(ptr noundef nonnull align 16 dereferenceable(304) %0)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 256
  %i.fi = load float, ptr %i.fh, align 16, !tbaa !76
  %i.fj = load i8, ptr %i.r, align 16, !tbaa !77, !range !78, !noundef !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 %.046143, ptr %2, align 4, !tbaa !20
  store i32 %.0145, ptr %i.ez, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !96
  store i64 20, ptr %i.b, align 8, !tbaa !26
  %i.fk = load ptr, ptr %i.ce, align 16, !tbaa !16 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt3__125__throw_bad_function_callB8ne180100Ev() #18
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fm = trunc nuw i8 %i.fj to i1
  %i.fn = sitofp i32 %.046143 to float
  %i.fo = fadd nnan float %i.fn, 5.000000e-01
  %i.fp = insertelement <2 x float> %i.fb, float %i.fo, i64 0
  %i.fq = insertelement <2 x float> poison, float %exp2f.i.i82, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fp, %i.fr
  %i.ft = fadd <2 x float> %i.fs, %i.ff
  %i.fu = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fdiv <2 x float> %i.ft, %i.fv           ; 2 uses
  %i.fx = fadd <2 x float> %i.fw, splat (float 1.000000e+00)
  %.sroa.012.0.i87 = select i1 %i.fm, <2 x float> %i.fx, <2 x float> %i.fw ; 2 uses
  %.sroa.094.4.vec.extract = extractelement <2 x float> %.sroa.012.0.i87, i64 1
  %i.fy = fptosi float %.sroa.094.4.vec.extract to i32 ; 4 uses
  %.sroa.094.0.vec.extract = extractelement <2 x float> %.sroa.012.0.i87, i64 0
  %i.fz = fptosi float %.sroa.094.0.vec.extract to i32 ; 4 uses
  %i.ga = load ptr, ptr %i.fk, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.gd = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.ge = add nsw i32 %i.gd, %i.fz
  %i.gf = sitofp i32 %i.ge to float               ; 2 uses
  %i.gg = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.gh = add nsw i32 %i.gg, %i.fy
  %i.gi = sitofp i32 %i.gh to float
  %i.gj = call float @llvm.fmuladd.f32(float %i.ci, float -1.500000e+00, float %i.gi) ; 2 uses
  %i.gk = load ptr, ptr %i.d, align 16, !tbaa !93
  %i.gl = call float @nvgText(ptr noundef %1, float noundef %i.gf, float noundef %i.gj, ptr noundef %i.gk, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> <float 1.000000e+00, float 3.000000e-01>, <2 x float> %.sroa.42.12.vec.insert237)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.gm = load ptr, ptr %i.d, align 16, !tbaa !93
  %i.gn = call float @nvgText(ptr noundef %1, float noundef %i.gf, float noundef %i.gj, ptr noundef %i.gm, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.go = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.gp = add nsw i32 %i.go, %i.fz
  %i.gq = sitofp i32 %i.gp to float               ; 2 uses
  %i.gr = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.gs = add nsw i32 %i.gr, %i.fy
  %i.gt = sitofp i32 %i.gs to float
  %i.gu = call float @llvm.fmuladd.f32(float %i.ci, float -5.000000e-01, float %i.gt) ; 2 uses
  %i.gv = load ptr, ptr %i.et, align 8, !tbaa !93
  %i.gw = call float @nvgText(ptr noundef %1, float noundef %i.gq, float noundef %i.gu, ptr noundef %i.gv, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> <float 3.000000e-01, float 1.000000e+00>, <2 x float> %.sroa.42.12.vec.insert237)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.gx = load ptr, ptr %i.et, align 8, !tbaa !93
  %i.gy = call float @nvgText(ptr noundef %1, float noundef %i.gq, float noundef %i.gu, ptr noundef %i.gx, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.gz = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.ha = add nsw i32 %i.gz, %i.fz
  %i.hb = sitofp i32 %i.ha to float               ; 2 uses
  %i.hc = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.hd = add nsw i32 %i.hc, %i.fy
  %i.he = sitofp i32 %i.hd to float
  %i.hf = call float @llvm.fmuladd.f32(float %i.ci, float 5.000000e-01, float %i.he) ; 2 uses
  %i.hg = load ptr, ptr %i.ev, align 16, !tbaa !93
  %i.hh = call float @nvgText(ptr noundef %1, float noundef %i.hb, float noundef %i.hf, ptr noundef %i.hg, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> splat (float 3.000000e-01), <2 x float> %.sroa.42.8.vec.insert235)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.hi = load ptr, ptr %i.ev, align 16, !tbaa !93
  %i.hj = call float @nvgText(ptr noundef %1, float noundef %i.hb, float noundef %i.hf, ptr noundef %i.hi, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.hk = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.hl = add nsw i32 %i.hk, %i.fz
  %i.hm = sitofp i32 %i.hl to float               ; 2 uses
  %i.hn = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.ho = add nsw i32 %i.hn, %i.fy
  %i.hp = sitofp i32 %i.ho to float
  %i.hq = call float @llvm.fmuladd.f32(float %i.ci, float 1.500000e+00, float %i.hp) ; 2 uses
  %i.hr = load ptr, ptr %i.ex, align 8, !tbaa !93
  %i.hs = call float @nvgText(ptr noundef %1, float noundef %i.hm, float noundef %i.hq, ptr noundef %i.hr, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.42.8.vec.insert233)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.ht = load ptr, ptr %i.ex, align 8, !tbaa !93
  %i.hu = call float @nvgText(ptr noundef %1, float noundef %i.hm, float noundef %i.hq, ptr noundef %i.ht, ptr noundef null) ; 0 uses
  %i.hv = add nuw i32 %.046143, 1
  %exitcond.not = icmp eq i32 %.046143, %i.er
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !91

bb.k:                                             ; preds = %._crit_edge146.split, %bb.f, %bb.e
  call void @nvgRestore(ptr noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  ret void
}

declare void @_ZN7nanogui6Canvas4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(181), ptr noundef) unnamed_addr #1

declare void @nvgBeginPath(ptr noundef) local_unnamed_addr #1

declare void @nvgStrokeWidth(ptr noundef, float noundef) local_unnamed_addr #1

declare void @nvgStrokeColor(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #1

declare void @nvgRect(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgStroke(ptr noundef) local_unnamed_addr #1

declare void @nvgSave(ptr noundef) local_unnamed_addr #1

declare void @nvgIntersectScissor(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgFontSize(ptr noundef, float noundef) local_unnamed_addr #1

declare void @nvgFontFace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nvgTextAlign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @nvgFillColor(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #1

declare void @nvgFontBlur(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare float @nvgText(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nvgRestore(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui9ImageView13draw_contentsEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.sroa.091 = alloca <2 x float>, align 8        ; 5 uses
  %1 = alloca %"struct.nanogui::Matrix", align 16 ; 7 uses
  %2 = alloca %"struct.nanogui::Matrix", align 4  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !61
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load float, ptr %i.g, align 16, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !80
  %i.l = insertelement <2 x float> poison, float %i.h, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.n = fdiv <2 x float> %i.k, %i.m
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = fmul <2 x float> %i.m, %i.p
  store <2 x float> %i.q, ptr %i.i, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.091)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load <2 x i32>, ptr %i.r, align 16, !tbaa !20
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = fmul <2 x float> %i.m, %i.t              ; 3 uses
  store <2 x float> %i.u, ptr %.sroa.091, align 8
  %i.v = load ptr, ptr %i.d, align 16, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !20
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fneg <2 x float> %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !62
  %i.ac = fdiv float %i.ab, 5.000000e+00
  %exp2f.i = tail call noundef float @exp2f(float %i.ac) #15 ; 2 uses
  %i.ad = extractelement <2 x float> %i.z, i64 0
end_hunk_0
