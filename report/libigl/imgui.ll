Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !392
  %i.bm = and i32 %i.bl, 16777216
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit, label %bb.k

_ZNK11ImGuiWindow12TitleBarRectEv.exit:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bp = load <2 x float>, ptr %i.bn, align 8, !tbaa !75 ; 4 uses
  %i.bq = load <2 x float>, ptr %i.bo, align 8, !tbaa !75
  %i.br = fadd <2 x float> %i.bp, %i.bq           ; 3 uses
  store <2 x float> %i.br, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !632
  %i.bu = extractelement <2 x float> %i.bp, i64 0
  %i.bv = fadd float %i.bu, %i.bt
  %i.bw = load <2 x float>, ptr %i.bn, align 8, !tbaa !75 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.k, %i.bp
  %foldExtExtBinop265 = fadd <2 x float> %i.n, %foldExtExtBinop
  %i.bx = extractelement <2 x float> %foldExtExtBinop265, i64 1
  %i.by = fptosi float %i.bx to i32
  %i.bz = sitofp i32 %i.by to float               ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bp, <2 x float> %i.br, <2 x i32> <i32 0, i32 3>
  %i.cb = fmul <2 x float> %i.k, %i.ca
  %i.cc = fadd <2 x float> %i.n, %i.cb
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  %i.ce = sitofp <2 x i32> %i.cd to <2 x float>   ; 3 uses
  %foldExtExtBinop267 = fmul <2 x float> %i.k, %i.bw
  %foldExtExtBinop269 = fadd <2 x float> %i.n, %foldExtExtBinop267
  %i.cf = extractelement <2 x float> %foldExtExtBinop269, i64 0
  %i.cg = fptosi float %i.cf to i32
  %i.ch = sitofp i32 %i.cg to float               ; 3 uses
  %i.ci = fmul float %i.an, %i.bv
  %i.cj = fadd float %i.am, %i.ci
  %i.ck = fptosi float %i.cj to i32
  %i.cl = sitofp i32 %i.ck to float               ; 3 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.d, align 4, !tbaa !75 ; 5 uses
  %i.cm = shufflevector <2 x float> %i.br, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cn = fmul <2 x float> %i.k, %i.cm
  %i.co = fadd <2 x float> %i.n, %i.cn
  %i.cp = fptosi <2 x float> %i.co to <2 x i32>
  %i.cq = sitofp <2 x i32> %i.cp to <2 x float>   ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 3 uses
  %i.cs = fadd float %i.cr, 5.000000e+00          ; 3 uses
  %i.ct = load <2 x float>, ptr %2, align 4, !tbaa !75 ; 4 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 1 ; 6 uses
  %i.cv = fcmp ogt float %i.cu, %i.bz
  br i1 %i.cv, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.cw = fcmp olt float %.sroa.0.4.vec.extract.i.i, %i.bz
  %.sroa.0.4.vec.extract..i.i = select i1 %i.cw, float %.sroa.0.4.vec.extract.i.i, float %i.bz
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.d, %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %i.cx = phi float [ %i.cu, %_ZNK11ImGuiWindow12TitleBarRectEv.exit ], [ %.sroa.0.4.vec.extract..i.i, %bb.d ]
  %i.cy = extractelement <2 x float> %i.ct, i64 0 ; 6 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 0 ; 8 uses
  %i.cz = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.da = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cz
  %.sroa.0.0.vec.extract..i.i = select i1 %i.da, float %.sroa.0.0.vec.extract.i.i, float %i.cz
  %i.db = fcmp ogt <2 x float> %i.ct, %i.ce       ; 2 uses
  %i.dc = extractelement <2 x i1> %i.db, i64 0
  %i.dd = select i1 %i.dc, float %i.cy, float %.sroa.0.0.vec.extract..i.i
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dd, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cx, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %3, align 8, !tbaa !75
  %i.de = extractelement <2 x i1> %i.db, i64 1
  br i1 %i.de, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.e

bb.e:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %.sroa.0.4.vec.extract.i15.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.df = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.dg = fcmp olt float %.sroa.0.4.vec.extract.i15.i, %i.df
  %.sroa.0.4.vec.extract..i16.i = select i1 %i.dg, float %.sroa.0.4.vec.extract.i15.i, float %i.df
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.e
  %i.dh = phi float [ %i.cu, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.0.4.vec.extract..i16.i, %bb.e ]
  %i.di = fcmp ogt <2 x float> %i.ct, %i.cq       ; 2 uses
  %i.dj = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.dk = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.dj
  %.sroa.0.0.vec.extract..i18.i = select i1 %i.dk, float %.sroa.0.0.vec.extract.i.i, float %i.dj
  %i.dl = extractelement <2 x i1> %i.di, i64 0
  %i.dm = select i1 %i.dl, float %i.cy, float %.sroa.0.0.vec.extract..i18.i
  %.sroa.0.0.vec.insert.i19.i = insertelement <2 x float> poison, float %i.dm, i64 0
  %.sroa.0.4.vec.insert.i20.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i, float %i.dh, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i, ptr %i.ah, align 8, !tbaa !75
  %i.dn = extractelement <2 x i1> %i.di, i64 1
  br i1 %i.dn, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit
  %.sroa.0.4.vec.extract.i.i146 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.do = fcmp olt float %.sroa.0.4.vec.extract.i.i146, %i.cr
  %.sroa.0.4.vec.extract..i.i147 = select i1 %i.do, float %.sroa.0.4.vec.extract.i.i146, float %i.cr
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148

_ZL7ImClampRK6ImVec2S1_S_.exit.i148:              ; preds = %bb.f, %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.dp = phi float [ %i.cu, %_ZN6ImRect12ClipWithFullERKS_.exit ], [ %.sroa.0.4.vec.extract..i.i147, %bb.f ]
  %i.dq = fcmp ogt float %i.cy, %i.ch
  %i.dr = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.ch
  %.sroa.0.0.vec.extract..i.i150 = select i1 %i.dr, float %.sroa.0.0.vec.extract.i.i, float %i.ch
  %i.ds = select i1 %i.dq, float %i.cy, float %.sroa.0.0.vec.extract..i.i150
  %.sroa.0.0.vec.insert.i.i151 = insertelement <2 x float> poison, float %i.ds, i64 0
  %.sroa.0.4.vec.insert.i.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i151, float %i.dp, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i152, ptr %4, align 8, !tbaa !75
  %i.dt = fcmp olt float %i.cs, %i.cu
  br i1 %i.dt, label %_ZN6ImRect12ClipWithFullERKS_.exit164, label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148
  %.sroa.0.4.vec.extract.i15.i158 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.du = fcmp ogt float %i.cs, %.sroa.0.4.vec.extract.i15.i158
  %.sroa.0.4.vec.extract..i16.i159 = select i1 %i.du, float %.sroa.0.4.vec.extract.i15.i158, float %i.cs
  br label %_ZN6ImRect12ClipWithFullERKS_.exit164

_ZN6ImRect12ClipWithFullERKS_.exit164:            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, %bb.g
  %i.dv = phi float [ %i.cu, %_ZL7ImClampRK6ImVec2S1_S_.exit.i148 ], [ %.sroa.0.4.vec.extract..i16.i159, %bb.g ]
  %i.dw = fcmp ogt float %i.cy, %i.cl
  %i.dx = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cl
  %.sroa.0.0.vec.extract..i18.i161 = select i1 %i.dx, float %.sroa.0.0.vec.extract.i.i, float %i.cl
  %i.dy = select i1 %i.dw, float %i.cy, float %.sroa.0.0.vec.extract..i18.i161
  %.sroa.0.0.vec.insert.i19.i162 = insertelement <2 x float> poison, float %i.dy, i64 0
  %.sroa.0.4.vec.insert.i20.i163 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i162, float %i.dv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i163, ptr %i.ai, align 8, !tbaa !75
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !389 ; 2 uses
  %.not41 = icmp eq ptr %i.dz, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bg, i64 848
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !630
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 848
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !630
  %i.ee = icmp eq ptr %i.eb, %i.ed
  %i.ef = select i1 %i.ee, i64 11, i64 10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.eg = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit164 ], [ %i.ef, %bb.h ]
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ei = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 5472
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 5704
  %i.el = load float, ptr %i.ej, align 4, !tbaa !278
  %i.em = load <4 x float>, ptr %i.ek, align 4, !tbaa !75
  %i.en = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.el, i64 3
  %i.eo = fmul <4 x float> %i.em, %i.en           ; 3 uses
  %i.ep = fcmp olt <4 x float> %i.eo, zeroinitializer
  %i.eq = fcmp ogt <4 x float> %i.eo, splat (float 1.000000e+00)
  %i.er = select <4 x i1> %i.eq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.eo
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.et = select <4 x i1> %i.ep, <4 x float> splat (float 5.000000e-01), <4 x float> %i.es
  %i.eu = fptosi <4 x float> %i.et to <4 x i32>
  %i.ev = shl <4 x i32> %i.eu, <i32 0, i32 8, i32 16, i32 24>
  %i.ew = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ev)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, i32 noundef %i.ew, float noundef 0.000000e+00, i32 noundef 0)
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ey = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 5472
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 5672
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.eg
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !278
  %i.fd = load <4 x float>, ptr %i.fb, align 4, !tbaa !75
  %i.fe = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fc, i64 3
  %i.ff = fmul <4 x float> %i.fd, %i.fe           ; 3 uses
  %i.fg = fcmp olt <4 x float> %i.ff, zeroinitializer
  %i.fh = fcmp ogt <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fi = select <4 x i1> %i.fh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ff
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fk = select <4 x i1> %i.fg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fj
  %i.fl = fptosi <4 x float> %i.fk to <4 x i32>
  %i.fm = shl <4 x i32> %i.fl, <i32 0, i32 8, i32 16, i32 24>
  %i.fn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fm)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ex, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i32 noundef %i.fn, float noundef 0.000000e+00, i32 noundef 0)
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.fp = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 5472
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 5752
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !278
  %i.ft = load <4 x float>, ptr %i.fr, align 4, !tbaa !75
  %i.fu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fs, i64 3
  %i.fv = fmul <4 x float> %i.ft, %i.fu           ; 3 uses
  %i.fw = fcmp olt <4 x float> %i.fv, zeroinitializer
  %i.fx = fcmp ogt <4 x float> %i.fv, splat (float 1.000000e+00)
  %i.fy = select <4 x i1> %i.fx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fv
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ga = select <4 x i1> %i.fw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fz
  %i.gb = fptosi <4 x float> %i.ga to <4 x i32>
  %i.gc = shl <4 x i32> %i.gb, <i32 0, i32 8, i32 16, i32 24>
  %i.gd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.fo, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ah, i32 noundef %i.gd, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  %i.ge = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.gf = load ptr, ptr %i.ak, align 8, !tbaa !293
  %i.gg = load float, ptr %i.al, align 8, !tbaa !294
  %i.gh = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 5472
  %.sroa.4.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %i.gh, i64 5672
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !278
  %i.gk = load <4 x float>, ptr %.sroa.4.0..sroa_idx.i187, align 4, !tbaa !75
  %i.gl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gj, i64 3
  %i.gm = fmul <4 x float> %i.gk, %i.gl           ; 5 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 0
  %i.go = fcmp olt float %i.gn, 0.000000e+00
  %i.gp = fcmp ogt <4 x float> %i.gm, splat (float 1.000000e+00)
  %i.gq = select <4 x i1> %i.gp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gm
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.gs = extractelement <4 x float> %i.gr, i64 0
  %i.gt = select i1 %i.go, float 5.000000e-01, float %i.gs
  %i.gu = fptosi float %i.gt to i32
  %5 = extractelement <4 x float> %i.gm, i64 1
  %i.gv = fcmp olt float %5, 0.000000e+00
  %i.gw = extractelement <4 x float> %i.gr, i64 1
  %i.gx = select i1 %i.gv, float 5.000000e-01, float %i.gw
  %i.gy = fptosi float %i.gx to i32
  %i.gz = shl i32 %i.gy, 8
  %i.ha = or i32 %i.gz, %i.gu
  %6 = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hb = fcmp olt <2 x float> %6, zeroinitializer
  %i.hc = shufflevector <4 x float> %i.gr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hd = select <2 x i1> %i.hb, <2 x float> splat (float 5.000000e-01), <2 x float> %i.hc
  %i.he = fptosi <2 x float> %i.hd to <2 x i32>
  %i.hf = shl <2 x i32> %i.he, <i32 16, i32 24>   ; 2 uses
  %i.hg = extractelement <2 x i32> %i.hf, i64 0
  %i.hh = or i32 %i.ha, %i.hg
  %i.hi = extractelement <2 x i32> %i.hf, i64 1
  %i.hj = or i32 %i.hh, %i.hi
  %i.hk = load ptr, ptr %i.bg, align 8, !tbaa !313 ; 5 uses
  %.not243 = icmp eq ptr %i.hk, inttoptr (i64 -1 to ptr)
  br i1 %.not243, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.hl = ptrtoaddr ptr %i.hk to i64
  %i.hm = xor i64 %i.hl, -1
  %scevgep.i = getelementptr i8, ptr %i.hk, i64 %i.hm
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.hq, %.critedge2.i ], [ %i.hk, %.lr.ph.preheader.i ] ; 5 uses
  %i.hn = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.hn, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.hp, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.hq, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.j, %.critedge2.i, %bb.i
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.i ], [ %.015.i, %bb.j ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.ge, ptr noundef %i.gf, float noundef %i.gg, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.hj, ptr noundef %i.hk, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !504
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.hr = phi i32 [ %i.bd, %bb.b ], [ %i.bd, %bb.c ], [ %.pre, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.hs
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1156
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ShowMetricsWindowEPb(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = alloca [8 x ptr], align 16               ; 5 uses
  %i.c = alloca [13 x ptr], align 16              ; 6 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImRect, align 8            ; 5 uses
  %16 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 91 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12604 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1176, !range !216, !noundef !217
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui19ShowStackToolWindowEPb(ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.99, ptr noundef %0, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !214  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i8 1, ptr %i.n, align 8, !tbaa !393
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 154
  %i.p = load i16, ptr %i.o, align 2, !tbaa !597
  %i.q = icmp sgt i16 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.fk

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.58)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 924
  %i.s = load float, ptr %i.r, align 4, !tbaa !1177 ; 2 uses
  %i.t = fdiv float 1.000000e+03, %i.s
  %i.u = fpext float %i.t to double
  %i.v = fpext float %i.s to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.101, double noundef %i.u, double noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1178
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1179 ; 2 uses
  %i.aa = sdiv i32 %i.z, 3
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.102, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 944
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1181
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.ac, i32 noundef %i.ae)
  tail call void @_ZN5ImGui9SeparatorEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZN5ImGui17ShowMetricsWindowEPb.wrt_rects_names, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.c, ptr noundef nonnull align 16 dereferenceable(104) @__const._ZN5ImGui17ShowMetricsWindowEPb.trt_rects_names, i64 104, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12612 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !421
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %i.af, align 4, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 12616 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !422
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.ai, align 8, !tbaa !422
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.121)
  br i1 %i.al, label %bb.k, label %bb.bw

bb.k:                                             ; preds = %bb.j
  %i.am = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.122, ptr noundef nonnull %i.g) ; 0 uses
  %i.an = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !214 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store i8 1, ptr %i.aq, align 8, !tbaa !393
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 147
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !652, !range !216, !noundef !217
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN5ImGui8SameLineEff.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 5548
  %i.av = load float, ptr %i.au, align 4, !tbaa !704
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !702
  %i.az = fadd float %i.av, %i.ay
  store float %i.az, ptr %i.aw, align 8, !tbaa !700
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 228
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !268
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  store float %i.bb, ptr %i.bc, align 4, !tbaa !260
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !75
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 276
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !703
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 272
  store float %i.bh, ptr %i.bi, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.k, %bb.l
  tail call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.123)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 12606
  %i.bk = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.124, ptr noundef nonnull %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 12605 ; 3 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.125, ptr noundef nonnull %i.bl) ; 0 uses
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !214 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store i8 1, ptr %i.bq, align 8, !tbaa !393
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 147
end_hunk_0
begin_hunk_1_@_ZN5ImGui13DebugNodeFontEP6ImFont:bb.a
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !211
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 7352
  store float %i.cs, ptr %i.cw, align 8, !tbaa !212
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cy = tail call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.cx, float noundef 5.000000e-03, float noundef 3.000000e-01, float noundef 2.000000e+00, ptr noundef nonnull @.str.220, i32 noundef 0) ; 0 uses
  %i.cz = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 7184
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !214 ; 10 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 144
  store i8 1, ptr %i.dc, align 8, !tbaa !393
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 147
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !652, !range !216, !noundef !217
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZN5ImGui8SameLineEff.exit110, label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 5548
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !704
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !702
  %i.dl = fadd float %i.dh, %i.dk
  store float %i.dl, ptr %i.di, align 8, !tbaa !700
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 228
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !268
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 220
  store float %i.dn, ptr %i.do, align 4, !tbaa !260
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 264
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 256
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !75
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 276
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !703
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 272
  store float %i.dt, ptr %i.du, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit110

_ZN5ImGui8SameLineEff.exit110:                    ; preds = %_ZN5ImGui7PopFontEv.exit, %bb.k
  tail call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.221)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !1236 ; 2 uses
  %i.dx = fpext float %i.dw to double
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !1237 ; 2 uses
  %i.ea = fpext float %i.dz to double
  %i.eb = fsub float %i.dw, %i.dz
  %i.ec = fpext float %i.eb to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.222, double noundef %i.dx, double noundef %i.ea, double noundef %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !1238 ; 9 uses
  %i.ef = zext i16 %i.ee to i32
  %i.eg = icmp ult i16 %i.ee, 128
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5ImGui8SameLineEff.exit110
  %i.eh = trunc nuw nsw i16 %i.ee to i8
  store i8 %i.eh, ptr %i.a, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

bb.m:                                             ; preds = %_ZN5ImGui8SameLineEff.exit110
  %i.ei = icmp ult i16 %i.ee, 2048
  br i1 %i.ei, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ej = lshr i16 %i.ee, 6
  %i.ek = trunc nuw nsw i16 %i.ej to i8
  %i.el = or disjoint i8 %i.ek, -64
  store i8 %i.el, ptr %i.a, align 1, !tbaa !80
  %i.em = trunc i16 %i.ee to i8
  %i.en = and i8 %i.em, 63
  %i.eo = or disjoint i8 %i.en, -128
  store i8 %i.eo, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

bb.o:                                             ; preds = %bb.m
  %i.ep = lshr i16 %i.ee, 12
  %i.eq = trunc nuw nsw i16 %i.ep to i8
  %i.er = or disjoint i8 %i.eq, -32
  store i8 %i.er, ptr %i.a, align 1, !tbaa !80
  %i.es = lshr i16 %i.ee, 6
  %i.et = trunc i16 %i.es to i8
  %i.eu = and i8 %i.et, 63
  %i.ev = or disjoint i8 %i.eu, -128
  store i8 %i.ev, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  %i.ew = trunc i16 %i.ee to i8
  %i.ex = and i8 %i.ew, 63
  %i.ey = or disjoint i8 %i.ex, -128
  store i8 %i.ey, ptr %.0.i.i.sroa.gep115, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit

_Z16ImTextCharToUtf8Pcj.exit:                     ; preds = %bb.l, %bb.n, %bb.o
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.l ], [ %.0.i.i.sroa.gep114, %bb.o ], [ %.0.i.i.sroa.gep115, %bb.n ]
  store i8 0, ptr %.0.i.i.sroa.phi, align 1, !tbaa !80
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.223, ptr noundef nonnull %i.a, i32 noundef %i.ef)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !304 ; 9 uses
  %i.fb = zext i16 %i.fa to i32
  %i.fc = icmp ult i16 %i.fa, 128
  br i1 %i.fc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_Z16ImTextCharToUtf8Pcj.exit
  %i.fd = trunc nuw nsw i16 %i.fa to i8
  store i8 %i.fd, ptr %i.a, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

bb.q:                                             ; preds = %_Z16ImTextCharToUtf8Pcj.exit
  %i.fe = icmp ult i16 %i.fa, 2048
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ff = lshr i16 %i.fa, 6
  %i.fg = trunc nuw nsw i16 %i.ff to i8
  %i.fh = or disjoint i8 %i.fg, -64
  store i8 %i.fh, ptr %i.a, align 1, !tbaa !80
  %i.fi = trunc i16 %i.fa to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, -128
  store i8 %i.fk, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

bb.s:                                             ; preds = %bb.q
  %i.fl = lshr i16 %i.fa, 12
  %i.fm = trunc nuw nsw i16 %i.fl to i8
  %i.fn = or disjoint i8 %i.fm, -32
  store i8 %i.fn, ptr %i.a, align 1, !tbaa !80
  %i.fo = lshr i16 %i.fa, 6
  %i.fp = trunc i16 %i.fo to i8
  %i.fq = and i8 %i.fp, 63
  %i.fr = or disjoint i8 %i.fq, -128
  store i8 %i.fr, ptr %.0.i.i.sroa.gep, align 1, !tbaa !80
  %i.fs = trunc i16 %i.fa to i8
  %i.ft = and i8 %i.fs, 63
  %i.fu = or disjoint i8 %i.ft, -128
  store i8 %i.fu, ptr %.0.i.i.sroa.gep115, align 1, !tbaa !80
  br label %_Z16ImTextCharToUtf8Pcj.exit112

_Z16ImTextCharToUtf8Pcj.exit112:                  ; preds = %bb.p, %bb.r, %bb.s
  %.0.i.i111.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.p ], [ %.0.i.i.sroa.gep114, %bb.s ], [ %.0.i.i.sroa.gep115, %bb.r ]
  store i8 0, ptr %.0.i.i111.sroa.phi, align 1, !tbaa !80
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.224, ptr noundef nonnull %i.a, i32 noundef %i.fb)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !1239 ; 2 uses
  %i.fx = sitofp i32 %i.fw to float
  %i.fy = call float @sqrtf(float noundef %i.fx) #39
  %i.fz = fptosi float %i.fy to i32               ; 2 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.225, i32 noundef %i.fw, i32 noundef %i.fz, i32 noundef %i.fz)
  %i.ga = load i16, ptr %i.j, align 8, !tbaa !1234 ; 2 uses
  %i.gb = icmp sgt i16 %i.ga, 0
  br i1 %i.gb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z16ImTextCharToUtf8Pcj.exit112
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !1232 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.u, %.lr.ph, %_Z16ImTextCharToUtf8Pcj.exit112
  %i.ge = load i32, ptr %i.h, align 8, !tbaa !1233
  %i.gf = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %i.ge)
  br i1 %i.gf, label %bb.v, label %bb.aj

.lr.ph.splitthread-pre-split:                     ; preds = %bb.u
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !1232
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.gg = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.gc, %.lr.ph ] ; 2 uses
  %i.gh = phi i16 [ %i.gx, %.lr.ph.splitthread-pre-split ], [ %i.ga, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %.not108 = icmp eq ptr %i.gg, null
  br i1 %.not108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split
  %i.gi = getelementptr inbounds nuw [136 x i8], ptr %i.gg, i64 %indvars.iv ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 86
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !1241
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !1242
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !1243, !range !216, !noundef !217
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  %i.gs = load <2 x float>, ptr %i.gr, align 4, !tbaa !75
  %i.gt = fpext <2 x float> %i.gs to <2 x double> ; 2 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  %i.gv = extractelement <2 x double> %i.gt, i64 0
  %i.gw = extractelement <2 x double> %i.gt, i64 1
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.226, i32 noundef %i.gu, ptr noundef nonnull %i.gj, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.gq, double noundef %i.gv, double noundef %i.gw)
  %.pre = load i16, ptr %i.j, align 8, !tbaa !1234
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.split, %bb.t
  %i.gx = phi i16 [ %i.gh, %.lr.ph.split ], [ %.pre, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = sext i16 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next, %i.gy
  br i1 %i.gz, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !1228

bb.v:                                             ; preds = %._crit_edge
  %i.ha = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 7184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !214 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 144
  store i8 1, ptr %i.hd, align 8, !tbaa !393
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 616
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !292 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 5472
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 5672
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !278
  %i.hi = load <4 x float>, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.hj = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.hh, i64 3
  %i.hk = fmul <4 x float> %i.hi, %i.hj           ; 5 uses
  %i.hl = extractelement <4 x float> %i.hk, i64 0
  %i.hm = fcmp olt float %i.hl, 0.000000e+00
  %i.hn = fcmp ogt <4 x float> %i.hk, splat (float 1.000000e+00)
  %i.ho = select <4 x i1> %i.hn, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hk
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 3 uses
  %i.hq = extractelement <4 x float> %i.hp, i64 0
  %i.hr = select i1 %i.hm, float 5.000000e-01, float %i.hq
  %i.hs = fptosi float %i.hr to i32
  %4 = extractelement <4 x float> %i.hk, i64 1
  %i.ht = fcmp olt float %4, 0.000000e+00
  %i.hu = extractelement <4 x float> %i.hp, i64 1
  %i.hv = select i1 %i.ht, float 5.000000e-01, float %i.hu
  %i.hw = fptosi float %i.hv to i32
  %i.hx = shl i32 %i.hw, 8
  %i.hy = or i32 %i.hx, %i.hs
  %5 = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hz = fcmp olt <2 x float> %5, zeroinitializer
  %i.ia = shufflevector <4 x float> %i.hp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ib = select <2 x i1> %i.hz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ia
  %i.ic = fptosi <2 x float> %i.ib to <2 x i32>
  %i.id = shl <2 x i32> %i.ic, <i32 16, i32 24>   ; 2 uses
  %i.ie = extractelement <2 x i32> %i.id, i64 0
  %i.if = or i32 %i.hy, %i.ie
  %i.ig = extractelement <2 x i32> %i.id, i64 1
  %i.ih = or i32 %i.if, %i.ig
  %i.ii = load float, ptr %i.e, align 4, !tbaa !307 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ha, i64 5552
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !1244
  %i.il = fadd float %i.ii, %i.ik                 ; 2 uses
  %i.im = fmul float %i.il, 1.600000e+01
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = insertelement <2 x float> poison, float %i.il, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.x

bb.w:                                             ; preds = %bb.ai
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.aj

bb.x:                                             ; preds = %bb.v, %bb.ai
  %.098122 = phi i32 [ 0, %bb.v ], [ %i.mf, %bb.ai ] ; 12 uses
  %i.it = and i32 %.098122, 4095
  %.not104 = icmp eq i32 %i.it, 0
  br i1 %.not104, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.y, %bb.x
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.iu = or disjoint i32 %.098122, 4095
  %i.iv = call noundef zeroext i1 @_ZN6ImFont18IsGlyphRangeUnusedEjj(ptr noundef nonnull align 8 dereferenceable(110) %0, i32 noundef %.098122, i32 noundef %i.iu)
  br i1 %i.iv, label %bb.z, label %.preheader

bb.z:                                             ; preds = %bb.y
  %i.iw = or disjoint i32 %.098122, 3840
  br label %bb.ai

bb.aa:                                            ; preds = %bb.ab
  %i.ix = icmp eq i32 %spec.select109, 0
  br i1 %i.ix, label %bb.ai, label %bb.ac

bb.ab:                                            ; preds = %.preheader, %bb.ab
  %.096120 = phi i32 [ %i.jc, %bb.ab ], [ 0, %.preheader ] ; 2 uses
  %.097119 = phi i32 [ %spec.select109, %bb.ab ], [ 0, %.preheader ]
  %i.iy = add nuw nsw i32 %.096120, %.098122
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = call noundef ptr @_ZNK6ImFont19FindGlyphNoFallbackEt(ptr noundef nonnull align 8 dereferenceable(110) %0, i16 noundef zeroext %i.iz)
  %.not107 = icmp ne ptr %i.ja, null
  %i.jb = zext i1 %.not107 to i32
  %spec.select109 = add nuw nsw i32 %.097119, %i.jb ; 4 uses
  %i.jc = add nuw nsw i32 %.096120, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jc, 256
  br i1 %exitcond.not, label %bb.aa, label %bb.ab, !llvm.loop !1229

bb.ac:                                            ; preds = %bb.aa
  %i.jd = zext nneg i32 %.098122 to i64
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = add nuw nsw i32 %.098122, 255
  %.not105 = icmp eq i32 %spec.select109, 1
  %i.jg = select i1 %.not105, ptr @.str.231, ptr @.str.230
  %i.jh = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.je, ptr noundef nonnull @.str.229, i32 noundef %.098122, i32 noundef %i.jf, i32 noundef %spec.select109, ptr noundef nonnull %i.jg)
  br i1 %i.jh, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ji = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 7184
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !214
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 216
  %.sroa.0.0.copyload.i113 = load <2 x float>, ptr %i.jl, align 8, !tbaa !75
  br label %bb.af

bb.ae:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store <2 x float> %i.io, ptr %3, align 8, !tbaa !75
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad, %.critedge
  %.0121 = phi i32 [ 0, %bb.ad ], [ %i.me, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  %i.jm = and i32 %.0121, 15
  %i.jn = lshr i32 %.0121, 4
  %i.jo = uitofp nneg i32 %i.jm to float
  %i.jp = uitofp nneg i32 %i.jn to float
  %i.jq = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jr = insertelement <2 x float> %i.jq, float %i.jp, i64 1
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.iq, <2 x float> %.sroa.0.0.copyload.i113) ; 2 uses
  store <2 x float> %i.js, ptr %1, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.jt = fadd <2 x float> %i.is, %i.js
  store <2 x float> %i.jt, ptr %2, align 8, !tbaa !75
  %i.ju = add nuw nsw i32 %.0121, %.098122        ; 2 uses
  %i.jv = trunc i32 %i.ju to i16                  ; 2 uses
  %i.jw = call noundef ptr @_ZNK6ImFont19FindGlyphNoFallbackEt(ptr noundef nonnull align 8 dereferenceable(110) %0, i16 noundef zeroext %i.jv) ; 11 uses
  %.not106 = icmp eq ptr %i.jw, null              ; 2 uses
  %i.jx = select i1 %.not106, i32 855638015, i32 1694498815
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.hf, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.jx, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  br i1 %.not106, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 8, !tbaa !75
  call void @_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt(ptr noundef nonnull align 8 dereferenceable(110) %0, ptr noundef nonnull %i.hf, float noundef %i.ii, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.ih, i16 noundef zeroext %i.jv)
  %i.jy = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.jz = load <2 x float>, ptr %1, align 8, !tbaa !75 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 7184
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !214 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 520
  %.sroa.018.0.vec.extract21.i = extractelement <2 x float> %i.jz, i64 0 ; 2 uses
  %.val5.i.i = load float, ptr %i.kc, align 4, !tbaa !187 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.018.0.vec.extract21.i, %.val5.i.i
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.018.0.vec.extract21.i, float %.val5.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 5572 ; 2 uses
  %.val8.i = load float, ptr %i.kd, align 4, !tbaa !187
  %i.ke = fsub float %..i.i.i, %.val8.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 296
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !187 ; 2 uses
  %i.kh = fcmp ult float %i.kg, %i.ke
  br i1 %i.kh, label %.critedge, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.ag
  %i.ki = load <2 x float>, ptr %2, align 8, !tbaa !75 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 528
  %.sroa.018.4.vec.extract23.i = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 524
  %.val6.i.i = load float, ptr %i.kk, align 4, !tbaa !188 ; 2 uses
  %.inv6.i.i.i = fcmp oge float %.sroa.018.4.vec.extract23.i, %.val6.i.i
  %i.kl = select i1 %.inv6.i.i.i, float %.sroa.018.4.vec.extract23.i, float %.val6.i.i
  %i.km = getelementptr i8, ptr %i.jy, i64 5576
  %i.kn = load <2 x float>, ptr %i.kj, align 4, !tbaa !75 ; 2 uses
  %i.ko = fcmp olt <2 x float> %i.ki, %i.kn
  %i.kp = select <2 x i1> %i.ko, <2 x float> %i.ki, <2 x float> %i.kn
  %.val9.i = load float, ptr %i.km, align 8, !tbaa !188
  %i.kq = load <2 x float>, ptr %i.kd, align 4, !tbaa !75
  %i.kr = fadd <2 x float> %i.kp, %i.kq           ; 2 uses
  %i.ks = fsub float %i.kl, %.val9.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jy, i64 300
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !188 ; 2 uses
  %i.kv = fcmp oge float %i.ku, %i.ks
  %i.kw = extractelement <2 x float> %i.kr, i64 0
  %i.kx = fcmp olt float %i.kg, %i.kw
  %or.cond.i.i = select i1 %i.kv, i1 %i.kx, i1 false
  %i.ky = extractelement <2 x float> %i.kr, i64 1
  %i.kz = fcmp olt float %i.ku, %i.ky
  %spec.select.i = select i1 %or.cond.i.i, i1 %i.kz, i1 false
  br i1 %spec.select.i, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  call void @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.232, i32 noundef %i.ju)
  call void @_ZN5ImGui9SeparatorEv()
  %i.la = load i32, ptr %i.jw, align 4
  %i.lb = lshr i32 %i.la, 1
  %i.lc = and i32 %i.lb, 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.233, i32 noundef %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.le = load float, ptr %i.ld, align 4, !tbaa !1245
  %i.lf = fpext float %i.le to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.234, double noundef %i.lf)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !308
  %i.li = fpext float %i.lh to double
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !1246
  %i.ll = fpext float %i.lk to double
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !306
  %i.lo = fpext float %i.ln to double
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !1247
  %i.lr = fpext float %i.lq to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.235, double noundef %i.li, double noundef %i.ll, double noundef %i.lo, double noundef %i.lr)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !1248
  %i.lu = fpext float %i.lt to double
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jw, i64 28
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !1249
  %i.lx = fpext float %i.lw to double
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !1250
  %i.ma = fpext float %i.lz to double
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jw, i64 36
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !1251
  %i.md = fpext float %i.mc to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.236, double noundef %i.lu, double noundef %i.lx, double noundef %i.ma, double noundef %i.md)
  call void @_ZN5ImGui3EndEv()
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %bb.ah, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.me = add nuw nsw i32 %.0121, 1               ; 2 uses
end_hunk_1
