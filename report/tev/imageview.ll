Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imageview?download=true
inline.NumInlined: 403
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN7nanogui9ImageView4drawEP10NVGcontext:bb.a
  %i.gg = sitofp i32 %i.gf to float               ; 2 uses
  %i.gh = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.gi = add nsw i32 %i.gh, %i.fz
  %i.gj = sitofp i32 %i.gi to float
  %i.gk = call float @llvm.fmuladd.f32(float %i.ci, float -1.500000e+00, float %i.gj) ; 2 uses
  %i.gl = load ptr, ptr %i.d, align 16, !tbaa !93
  %i.gm = call float @nvgText(ptr noundef %1, float noundef %i.gg, float noundef %i.gk, ptr noundef %i.gl, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> <float 1.000000e+00, float 3.000000e-01>, <2 x float> %.sroa.42.12.vec.insert237)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.gn = load ptr, ptr %i.d, align 16, !tbaa !93
  %i.go = call float @nvgText(ptr noundef %1, float noundef %i.gg, float noundef %i.gk, ptr noundef %i.gn, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.gp = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.gq = add nsw i32 %i.gp, %i.ga
  %i.gr = sitofp i32 %i.gq to float               ; 2 uses
  %i.gs = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.gt = add nsw i32 %i.gs, %i.fz
  %i.gu = sitofp i32 %i.gt to float
  %i.gv = call float @llvm.fmuladd.f32(float %i.ci, float -5.000000e-01, float %i.gu) ; 2 uses
  %i.gw = load ptr, ptr %i.et, align 8, !tbaa !93
  %i.gx = call float @nvgText(ptr noundef %1, float noundef %i.gr, float noundef %i.gv, ptr noundef %i.gw, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> <float 3.000000e-01, float 1.000000e+00>, <2 x float> %.sroa.42.12.vec.insert237)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.gy = load ptr, ptr %i.et, align 8, !tbaa !93
  %i.gz = call float @nvgText(ptr noundef %1, float noundef %i.gr, float noundef %i.gv, ptr noundef %i.gy, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.ha = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.hb = add nsw i32 %i.ha, %i.ga
  %i.hc = sitofp i32 %i.hb to float               ; 2 uses
  %i.hd = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.he = add nsw i32 %i.hd, %i.fz
  %i.hf = sitofp i32 %i.he to float
  %i.hg = call float @llvm.fmuladd.f32(float %i.ci, float 5.000000e-01, float %i.hf) ; 2 uses
  %i.hh = load ptr, ptr %i.ev, align 16, !tbaa !93
  %i.hi = call float @nvgText(ptr noundef %1, float noundef %i.hc, float noundef %i.hg, ptr noundef %i.hh, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> splat (float 3.000000e-01), <2 x float> %.sroa.42.8.vec.insert235)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.hj = load ptr, ptr %i.ev, align 16, !tbaa !93
  %i.hk = call float @nvgText(ptr noundef %1, float noundef %i.hc, float noundef %i.hg, ptr noundef %i.hj, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> %.sroa.42.12.vec.insert)
  call void @nvgFontBlur(ptr noundef %1, float noundef 2.000000e+00)
  %i.hl = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.hm = add nsw i32 %i.hl, %i.ga
  %i.hn = sitofp i32 %i.hm to float               ; 2 uses
  %i.ho = load i32, ptr %i.bt, align 4, !tbaa !20
  %i.hp = add nsw i32 %i.ho, %i.fz
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = call float @llvm.fmuladd.f32(float %i.ci, float 1.500000e+00, float %i.hq) ; 2 uses
  %i.hs = load ptr, ptr %i.ex, align 8, !tbaa !93
  %i.ht = call float @nvgText(ptr noundef %1, float noundef %i.hn, float noundef %i.hr, ptr noundef %i.hs, ptr noundef null) ; 0 uses
  call void @nvgFillColor(ptr noundef %1, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.42.8.vec.insert233)
  call void @nvgFontBlur(ptr noundef %1, float noundef 0.000000e+00)
  %i.hu = load ptr, ptr %i.ex, align 8, !tbaa !93
  %i.hv = call float @nvgText(ptr noundef %1, float noundef %i.hn, float noundef %i.hr, ptr noundef %i.hu, ptr noundef null) ; 0 uses
  %i.hw = add nuw i32 %.046143, 1
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
  %i.ae = fmul float %exp2f.i, %i.ad              ; 3 uses
  %i.af = extractelement <2 x float> %i.z, i64 1
  %i.ag = fmul float %exp2f.i, %i.af              ; 3 uses
  %i.ah = load float, ptr %i.i, align 4, !tbaa !80 ; 3 uses
  %i.ai = extractelement <2 x float> %i.u, i64 0  ; 2 uses
  %i.aj = fcmp oge float %i.ah, %i.ai
  %i.ak = fcmp uge float %i.ah, %i.ae
  %.not9 = xor i1 %i.aj, %i.ak
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = fcmp olt float %i.ai, %i.ah
  %i.am = select i1 %i.al, ptr %.sroa.091, ptr %i.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !80 ; 2 uses
  %i.ao = fcmp olt float %i.an, %i.ae
  %i.ap = select i1 %i.ao, float %i.ae, float %i.an
  store float %i.ap, ptr %i.i, align 4, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = load float, ptr %i.j, align 16, !tbaa !80 ; 3 uses
  %i.ar = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.as = fcmp oge float %i.aq, %i.ar
  %i.at = fcmp uge float %i.aq, %i.ag
  %.not10 = xor i1 %i.as, %i.at
  br i1 %.not10, label %.preheader15.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = fcmp olt float %i.ar, %i.aq
  %.sroa.091.4..sroa_idx148 = getelementptr inbounds nuw i8, ptr %.sroa.091, i64 4
  %i.av = select i1 %i.au, ptr %.sroa.091.4..sroa_idx148, ptr %i.j
  %i.aw = load float, ptr %i.av, align 4, !tbaa !80 ; 2 uses
  %i.ax = fcmp olt float %i.aw, %i.ag
  %i.ay = select i1 %i.ax, float %i.ag, float %i.aw
  store float %i.ay, ptr %i.j, align 16, !tbaa !80
  br label %.preheader15.i

.preheader15.i:                                   ; preds = %bb.e, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !21
  %i.bd = load float, ptr %i.aa, align 8, !tbaa !62
  %i.be = fdiv float %i.bd, 5.000000e+00
  %exp2f = tail call float @exp2f(float %i.be)
  %i.bf = load ptr, ptr %i.d, align 16, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bh = load <2 x i32>, ptr %i.bg, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.466.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.668.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.870.0..sroa_idx, i8 0, i64 16, i1 false)
  %3 = load float, ptr %i.i, align 4, !tbaa !80
  %i.bi = load float, ptr %i.j, align 16, !tbaa !80
  %i.bj = fptosi float %i.bi to i32
  %i.bk = sitofp i32 %i.bj to float               ; 2 uses
  %i.bl = sitofp <2 x i32> %i.bh to <2 x float>
  %i.bm = insertelement <2 x float> poison, float %exp2f, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl           ; 4 uses
  %i.bp = fdiv <2 x float> %i.bo, splat (float 2.000000e+01) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.bs = sitofp <2 x i32> %i.bc to <2 x float>   ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = fsub float 0.000000e+00, %i.bt
  %i.bv = insertelement <2 x float> %i.bs, float %i.bu, i64 1
  %i.bw = fdiv <2 x float> splat (float 1.000000e+00), %i.bv ; 2 uses
  %i.bx = fmul nnan <2 x float> %i.bw, splat (float 2.000000e+00) ; 5 uses
  %i.by = fneg <2 x float> %i.bs
  %i.bz = fmul <2 x float> %i.bw, %i.by           ; 2 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 3 uses
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> %i.ca, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ce = fadd <4 x float> %i.cd, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> zeroinitializer, <4 x float> %i.cf) ; 2 uses
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> %i.bx, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ci = fadd <4 x float> %i.ch, <float 0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> zeroinitializer, <4 x float> %i.cj) ; 3 uses
  %i.cl = fadd <2 x float> %i.ca, zeroinitializer
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> zeroinitializer, <2 x float> %i.cl) ; 4 uses
  %4 = insertelement <2 x float> %i.bx, float 0.000000e+00, i64 1
  %i.cn = insertelement <2 x float> poison, float %3, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %i.co, <2 x float> zeroinitializer) ; 2 uses
  %i.cq = insertelement <2 x float> %i.bx, float 0.000000e+00, i64 0
  %i.cr = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cw = fadd <4 x float> %i.cv, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 1.000000e+00>
  %i.cx = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cy, <4 x float> zeroinitializer)
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> zeroinitializer, <4 x float> %i.cz)
  %i.db = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <2 x float> %i.cm, <2 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.da)
  %i.de = fadd <4 x float> %i.dd, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %.sroa.12133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = shufflevector <4 x float> %i.cg, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> zeroinitializer) ; 2 uses
  %i.dh = shufflevector <4 x float> %i.ck, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.di = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dj, <4 x float> %i.dg)
  %i.dl = shufflevector <4 x float> %i.db, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> zeroinitializer, <4 x float> %i.dk)
  %i.dn = fadd <4 x float> %i.dm, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %.sroa.20137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.do = extractelement <2 x float> %i.cp, i64 1
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.bk, float 0.000000e+00, float %i.do) ; 3 uses
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ds = fadd <4 x float> %i.dr, <float -0.000000e+00, float 0.000000e+00, float poison, float poison>
  %i.dt = shufflevector <4 x float> %i.cb, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.du = fadd <4 x float> %i.dt, %i.cw           ; 4 uses
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dw = insertelement <4 x float> %i.du, float %i.dp, i64 2 ; 2 uses
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> zeroinitializer, <4 x float> %i.dn)
  %i.dy = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dz = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer, <2 x float> %i.dz) ; 2 uses
  %i.eb = fadd <2 x float> %i.cm, %i.ea
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> zeroinitializer, <2 x float> %i.ea)
  %i.ed = insertelement <4 x float> %i.du, float %i.dp, i64 2
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eg = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eh = fadd <4 x float> %i.ef, %i.eg
  store <4 x float> %i.dv, ptr %1, align 16
  store <4 x float> %i.dx, ptr %.sroa.12133.0..sroa_idx, align 16
  %i.ei = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> <float poison, float poison, float -1.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> zeroinitializer, <4 x float> %i.ej)
  store <4 x float> %i.ek, ptr %.sroa.20137.0..sroa_idx, align 16
  store <4 x float> %i.eh, ptr %.sroa.28.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN7nanogui6Shader11set_uniformINS_5ColorEEEvNSt3__117basic_string_viewIcNS3_11char_traitsIcEEEERKT_.shape, i64 24, i1 false)
  store i64 4, ptr %i.c, align 16, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4, ptr %i.el, align 8, !tbaa !26
  call void @_ZN7nanogui6Shader10set_bufferENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_12VariableTypeEmPKmPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr nonnull @.str.5, i64 12, i32 noundef 10, i64 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.em = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.en = extractelement <2 x float> %i.bp, i64 0
  store float %i.en, ptr %2, align 4
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eo = extractelement <2 x float> %i.bp, i64 1
  store float %i.eo, ptr %.sroa.567.0..sroa_idx, align 4
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float 1.000000e+00, ptr %.sroa.769.0..sroa_idx, align 4
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float 1.000000e+00, ptr %.sroa.971.0..sroa_idx, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN7nanogui6Shader11set_uniformINS_5ColorEEEvNSt3__117basic_string_viewIcNS3_11char_traitsIcEEEERKT_.shape, i64 24, i1 false)
  store i64 4, ptr %i.b, align 16, !tbaa !26
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.ep, align 8, !tbaa !26
  call void @_ZN7nanogui6Shader10set_bufferENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_12VariableTypeEmPKmPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr nonnull @.str.6, i64 17, i32 noundef 10, i64 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.eq = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN7nanogui6Shader11set_uniformINS_5ColorEEEvNSt3__117basic_string_viewIcNS3_11char_traitsIcEEEERKT_.shape, i64 24, i1 false)
  store i64 4, ptr %i.a, align 16, !tbaa !26
  call void @_ZN7nanogui6Shader10set_bufferENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_12VariableTypeEmPKmPKv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr nonnull @.str.7, i64 16, i32 noundef 10, i64 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.es = load ptr, ptr %i.bq, align 8, !tbaa !24
  call void @_ZN7nanogui6Shader5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %i.es)
  %i.et = load ptr, ptr %i.bq, align 8, !tbaa !24
  call void @_ZN7nanogui6Shader10draw_arrayENS0_13PrimitiveTypeEmmb(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i32 noundef 3, i64 noundef 0, i64 noundef 6, i1 noundef zeroext false)
  %i.eu = load ptr, ptr %i.bq, align 8, !tbaa !24
  call void @_ZN7nanogui6Shader3endEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.091)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.preheader15.i
  ret void
}

declare void @_ZN7nanogui6Shader5beginEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN7nanogui6Shader10draw_arrayENS0_13PrimitiveTypeEmmb(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7nanogui6Shader3endEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui9ImageViewD2Ev(ptr noundef nonnull align 16 dead_on_return(304) dereferenceable(304) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7nanogui9ImageViewE, i64 16), ptr %0, align 16, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !16  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink2.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink2.i.i
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !0
  br label %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit

_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit: ; preds = %bb.b, %.sink.split.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !61  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #15
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit

_ZN7nanogui3refINS_7TextureEED2Ev.exit:           ; preds = %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i1, label %_ZN7nanogui3refINS_6ShaderEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #15
  br label %_ZN7nanogui3refINS_6ShaderEED2Ev.exit

_ZN7nanogui3refINS_6ShaderEED2Ev.exit:            ; preds = %_ZN7nanogui3refINS_7TextureEED2Ev.exit, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7nanogui6CanvasE, i64 16), ptr %0, align 16, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.m, null
  br i1 %.not.i.i2, label %_ZN7nanogui6CanvasD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7nanogui3refINS_6ShaderEED2Ev.exit
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #15
  br label %_ZN7nanogui6CanvasD2Ev.exit

_ZN7nanogui6CanvasD2Ev.exit:                      ; preds = %_ZN7nanogui3refINS_6ShaderEED2Ev.exit, %bb.e
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(181) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui9ImageViewD0Ev(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7nanogui9ImageViewE, i64 16), ptr %0, align 16, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !16  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %.sink.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.a
  %.sink2.i.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink2.i.i.i
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #15, !inline_history !97
  br label %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit.i

_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit.i: ; preds = %.sink.split.i.i.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !61  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7nanogui3refINS_7TextureEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit.i
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #15, !inline_history !98
  br label %_ZN7nanogui3refINS_7TextureEED2Ev.exit.i

_ZN7nanogui3refINS_7TextureEED2Ev.exit.i:         ; preds = %bb.c, %_ZNSt3__18functionIFvRKN7nanogui5ArrayIiLm2EEEPPcmEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.k, null
end_hunk_0
