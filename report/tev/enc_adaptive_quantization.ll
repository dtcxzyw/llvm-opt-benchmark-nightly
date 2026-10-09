Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_adaptive_quantization?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1466
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZZN3jxl6N_AVX212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm":bb.a
bb.f:                                             ; preds = %.loopexit.i, %.lr.ph305.i
  %storemerge303.i = phi i64 [ %.0191.i, %.lr.ph305.i ], [ %i.fg, %.loopexit.i ] ; 7 uses
  %i.fg = add nuw i64 %storemerge303.i, 1         ; 4 uses
  %i.fh = icmp ult i64 %i.fg, %i.at
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 %storemerge303.i
  %i.fj = tail call i64 @llvm.usub.sat.i64(i64 %storemerge303.i, i64 1)
  %i.fk = load i64, ptr %i.ex, align 8, !tbaa !17 ; 3 uses
  %i.fl = mul i64 %i.fk, %storemerge303.i
  %i.fm = load ptr, ptr %i.ey, align 8, !tbaa !22 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fn, i64 64) ]
  %i.fo = mul i64 %i.fk, %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = mul i64 %i.fi, %i.fk
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fq ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fs = load ptr, ptr %i.ez, align 8, !tbaa !22 ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fu = mul i64 %i.ft, %i.eg                    ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.fu  ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fv, i64 64) ]
  br i1 %.not206.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fw = load float, ptr %i.fr, align 64, !tbaa !28
  %i.fx = load float, ptr %i.fp, align 64, !tbaa !28
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = load float, ptr %i.fn, align 64, !tbaa !28 ; 3 uses
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fc
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !28
  %i.gd = fadd float %i.ga, %i.gc
  %i.ge = fmul float %i.gd, 2.500000e-01
  %i.gf = fadd float %i.fz, 1.900000e-02
  %i.gg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.gf, i64 0 ; 2 uses
  %i.gh = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.gg, <4 x float> zeroinitializer, <4 x float> %i.gg) ; 4 uses
  %i.gi = extractelement <4 x float> %i.gh, i64 0
  %foldExtExtBinop113 = fmul <4 x float> %i.gh, %i.gh
  %i.gj = shufflevector <4 x float> %foldExtExtBinop113, <4 x float> %i.gh, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.gk = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.gj, <4 x float> <float f0x42EFD02B, float poison, float poison, float poison>, <4 x float> <float f0x3C23D70A, float poison, float poison, float poison>)
  %i.gl = fmul float %i.gi, f0x431D2FBD
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gn = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.gm, <4 x float> %i.gj, <4 x float> <float f0x40ACF18E, float poison, float poison, float poison>)
  %foldExtExtBinop115 = fdiv <4 x float> %i.gn, %i.gk
  %i.go = extractelement <4 x float> %foldExtExtBinop115, i64 0
  %i.gp = fsub float %i.fz, %i.ge
  %i.gq = fmul float %i.gp, %i.go                 ; 2 uses
  %i.gr = fmul float %i.gq, %i.gq                 ; 2 uses
  %i.gs = fcmp oge float %i.gr, 2.000000e-01
  %spec.store.select.i.i = select i1 %i.gs, float 2.000000e-01, float %i.gr
  %.scalar.i.i.i = tail call float @llvm.fma.f32(float %spec.store.select.i.i, float f0x480E13D6, float f0x41DC0BF4)
  %i.gt = tail call float @llvm.sqrt.f32(float %.scalar.i.i.i)
  %i.gu = fmul float %i.gt, 2.500000e-01          ; 2 uses
  %i.gv = and i64 %storemerge303.i, 3
  %.not.i217.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i217.i, label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gw = load float, ptr %i.fv, align 64, !tbaa !28
  %i.gx = fadd float %i.gu, %i.gw
  br label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i

_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i: ; preds = %bb.h, %bb.g
  %.sink.i.i = phi float [ %i.gx, %bb.h ], [ %i.gu, %bb.g ]
  store float %.sink.i.i, ptr %i.fv, align 64, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, %bb.f
  %.0194.i = phi i64 [ 1, %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i ], [ %i.eb, %bb.f ] ; 3 uses
  %i.gy = add i64 %.0194.i, 9
  %i.gz = icmp ult i64 %i.gy, %spec.select216.i
  %i.ha = and i64 %storemerge303.i, 3             ; 3 uses
  br i1 %i.gz, label %.lr.ph.i, label %.preheader288.i

.lr.ph.i:                                         ; preds = %bb.i
  %.not211.i = icmp eq i64 %i.ha, 0
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fv, i64 %i.fd ; 2 uses
  br label %bb.j

.preheader288.i:                                  ; preds = %bb.l, %bb.i
  %.1.lcssa.i = phi i64 [ %.0194.i, %bb.i ], [ %i.ig, %bb.l ] ; 2 uses
  %i.hb = icmp ult i64 %.1.lcssa.i, %spec.select216.i
  br i1 %i.hb, label %.lr.ph298.i, label %._crit_edge299.i

.lr.ph298.i:                                      ; preds = %.preheader288.i
  %.not.i220.i = icmp eq i64 %i.ha, 0
  br label %bb.m

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.1293.i = phi i64 [ %.0194.i, %.lr.ph.i ], [ %i.ig, %bb.l ] ; 7 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.1293.i ; 3 uses
  %i.hd = load <8 x float>, ptr %i.hc, align 4, !tbaa !24 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hf = load <8 x float>, ptr %i.he, align 4, !tbaa !24
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hh = load <8 x float>, ptr %i.hg, align 4, !tbaa !24
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.1293.i
  %i.hj = load <8 x float>, ptr %i.hi, align 4, !tbaa !24
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.1293.i
  %i.hl = load <8 x float>, ptr %i.hk, align 4, !tbaa !24
  %i.hm = fadd <8 x float> %i.hf, %i.hh
  %i.hn = fadd <8 x float> %i.hj, %i.hl
  %i.ho = fadd <8 x float> %i.hm, %i.hn
  %i.hp = fmul <8 x float> %i.ho, splat (float 2.500000e-01)
  %i.hq = fadd <8 x float> %i.hd, splat (float 1.900000e-02) ; 2 uses
  %i.hr = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.hq, <8 x float> zeroinitializer, <8 x float> %i.hq) ; 3 uses
  %i.hs = fmul <8 x float> %i.hr, %i.hr           ; 2 uses
  %i.ht = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hs, <8 x float> splat (float f0x42EFD02B), <8 x float> splat (float f0x3C23D70A))
  %i.hu = fmul <8 x float> %i.hr, splat (float f0x431D2FBD)
  %i.hv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hu, <8 x float> %i.hs, <8 x float> splat (float f0x40ACF18E))
  %i.hw = fdiv <8 x float> %i.hv, %i.ht
  %i.hx = fsub <8 x float> %i.hd, %i.hp
  %i.hy = fmul <8 x float> %i.hw, %i.hx           ; 2 uses
  %i.hz = fmul <8 x float> %i.hy, %i.hy
  %i.ia = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.hz, <8 x float> splat (float 2.000000e-01))
  %i.ib = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ia, <8 x float> splat (float f0x480E13D6), <8 x float> splat (float f0x41DC0BF4))
  %i.ic = tail call noundef <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ib)
  %i.id = fmul <8 x float> %i.ic, splat (float 2.500000e-01) ; 2 uses
  br i1 %.not211.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1293.i
  %i.ie = load <8 x float>, ptr %gep.i, align 4, !tbaa !24
  %i.if = fadd <8 x float> %i.id, %i.ie
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.036.0.i = phi <8 x float> [ %i.if, %bb.k ], [ %i.id, %bb.j ]
  %gep296.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1293.i
  store <8 x float> %.sroa.036.0.i, ptr %gep296.i, align 4, !tbaa !24
  %i.ig = add i64 %.1293.i, 8                     ; 2 uses
  %i.ih = add i64 %.1293.i, 17
  %i.ii = icmp ult i64 %i.ih, %spec.select216.i
  br i1 %i.ii, label %bb.j, label %.preheader288.i, !llvm.loop !543

bb.m:                                             ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i, %.lr.ph298.i
  %.2297.i = phi i64 [ %.1.lcssa.i, %.lr.ph298.i ], [ %i.ij, %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i ] ; 7 uses
  %i.ij = add nuw i64 %.2297.i, 1                 ; 4 uses
  %i.ik = icmp ult i64 %i.ij, %i.aq
  %i.il = select i1 %i.ik, i64 %i.ij, i64 %.2297.i
  %i.im = tail call i64 @llvm.usub.sat.i64(i64 %.2297.i, i64 1)
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.2297.i
  %i.io = load float, ptr %i.in, align 4, !tbaa !28
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.2297.i
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !28
  %i.ir = fadd float %i.io, %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.im
  %i.it = load float, ptr %i.is, align 4, !tbaa !28
  %i.iu = fadd float %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.il
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !28
  %i.ix = fadd float %i.iu, %i.iw
  %i.iy = fmul float %i.ix, 2.500000e-01
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.2297.i
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !28 ; 2 uses
  %i.jb = fadd float %i.ja, 1.900000e-02
  %i.jc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.jb, i64 0 ; 2 uses
  %i.jd = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.jc, <4 x float> zeroinitializer, <4 x float> %i.jc) ; 4 uses
  %i.je = extractelement <4 x float> %i.jd, i64 0
  %foldExtExtBinop117 = fmul <4 x float> %i.jd, %i.jd
  %i.jf = shufflevector <4 x float> %foldExtExtBinop117, <4 x float> %i.jd, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.jg = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.jf, <4 x float> <float f0x42EFD02B, float poison, float poison, float poison>, <4 x float> <float f0x3C23D70A, float poison, float poison, float poison>)
  %i.jh = fmul float %i.je, f0x431D2FBD
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0
  %i.jj = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ji, <4 x float> %i.jf, <4 x float> <float f0x40ACF18E, float poison, float poison, float poison>)
  %foldExtExtBinop119 = fdiv <4 x float> %i.jj, %i.jg
  %i.jk = extractelement <4 x float> %foldExtExtBinop119, i64 0
  %i.jl = fsub float %i.ja, %i.iy
  %i.jm = fmul float %i.jl, %i.jk                 ; 2 uses
  %i.jn = fmul float %i.jm, %i.jm                 ; 2 uses
  %i.jo = fcmp oge float %i.jn, 2.000000e-01
  %spec.store.select.i218.i = select i1 %i.jo, float 2.000000e-01, float %i.jn
  %.scalar.i.i219.i = tail call float @llvm.fma.f32(float %spec.store.select.i218.i, float f0x480E13D6, float f0x41DC0BF4)
  %i.jp = tail call float @llvm.sqrt.f32(float %.scalar.i.i219.i)
  %i.jq = fmul float %i.jp, 2.500000e-01          ; 2 uses
  %i.jr = sub i64 %.2297.i, %spec.select286.i
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.jr ; 2 uses
  br i1 %.not.i220.i, label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jt = load float, ptr %i.js, align 4, !tbaa !28
  %i.ju = fadd float %i.jq, %i.jt
  br label %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i

_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i: ; preds = %bb.n, %bb.m
  %.sink.i221.i = phi float [ %i.ju, %bb.n ], [ %i.jq, %bb.m ]
  store float %.sink.i221.i, ptr %i.js, align 4, !tbaa !28
  %exitcond320.not.i = icmp eq i64 %i.ij, %spec.select216.i
  br i1 %exitcond320.not.i, label %._crit_edge299.i, label %bb.m, !llvm.loop !544

._crit_edge299.i:                                 ; preds = %_ZZN3jxl6N_AVX212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit222.i, %.preheader288.i
  %i.jv = icmp eq i64 %i.ha, 3
  br i1 %i.jv, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge299.i
  %i.jw = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.jx = getelementptr inbounds nuw [56 x i8], ptr %i.jw, i64 %i.eg ; 2 uses
  %i.jy = sub nuw i64 %storemerge303.i, %.0191.i
  %i.jz = lshr i64 %i.jy, 2                       ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !22 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !17 ; 2 uses
  %i.ke = mul i64 %i.kd, %i.jz
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kf, i64 64) ]
  br i1 %.not314.i, label %.loopexit.i, label %.lr.ph302.i.preheader

.lr.ph302.i.preheader:                            ; preds = %bb.o
  br i1 %min.iters.check, label %.lr.ph302.i.preheader125, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph302.i.preheader
  %3 = mul i64 %i.kd, %i.jz                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.kb, i64 %3
  %scevgep75.a = getelementptr i8, ptr %i.kb, i64 %i.fe
  %scevgep76.a = getelementptr i8, ptr %scevgep75.a, i64 %3
  %scevgep77.a = getelementptr i8, ptr %i.fs, i64 %i.ff
  %scevgep78 = getelementptr i8, ptr %scevgep77.a, i64 %i.fu
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %i.fv, %scevgep76.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph302.i.preheader125, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kg = shl nuw i64 %index, 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.kg
  %wide.vec = load <32 x float>, ptr %i.kh, align 64, !tbaa !28, !alias.scope !572 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec79.a = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec80.a = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec81 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ki = fadd <8 x float> %strided.vec, %strided.vec79.a
  %i.kj = fadd <8 x float> %i.ki, %strided.vec80.a
  %i.kk = fadd <8 x float> %i.kj, %strided.vec81
  %i.kl = fmul <8 x float> %i.kk, splat (float 2.500000e-01)
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %index
  store <8 x float> %i.kl, ptr %i.km, align 32, !tbaa !28, !alias.scope !573, !noalias !572
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph302.i.preheader125

.lr.ph302.i.preheader125:                         ; preds = %vector.memcheck, %.lr.ph302.i.preheader, %middle.block
  %.0187300.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph302.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph302.i.prol.loopexit, label %.lr.ph302.i.prol

.lr.ph302.i.prol:                                 ; preds = %.lr.ph302.i.preheader125
  %.idx.i.prol = shl nuw i64 %.0187300.i.ph, 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.prol ; 4 uses
  %i.kp = load float, ptr %i.ko, align 64, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !28
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !28
  %i.kv = fadd float %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !28
  %i.ky = fadd float %i.kv, %i.kx
  %i.kz = fmul float %i.ky, 2.500000e-01
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0187300.i.ph
  store float %i.kz, ptr %i.la, align 32, !tbaa !28
  %i.lb = or disjoint i64 %.0187300.i.ph, 1
  br label %.lr.ph302.i.prol.loopexit

.lr.ph302.i.prol.loopexit:                        ; preds = %.lr.ph302.i.prol, %.lr.ph302.i.preheader125
  %.0187300.i.unr = phi i64 [ %.0187300.i.ph, %.lr.ph302.i.preheader125 ], [ %i.lb, %.lr.ph302.i.prol ]
  %i.lc = icmp eq i64 %.0187300.i.ph, %invariant.op
  br i1 %i.lc, label %.loopexit.i, label %.lr.ph302.i

.lr.ph302.i:                                      ; preds = %.lr.ph302.i.prol.loopexit, %.lr.ph302.i
  %.0187300.i = phi i64 [ %i.me, %.lr.ph302.i ], [ %.0187300.i.unr, %.lr.ph302.i.prol.loopexit ] ; 4 uses
  %.idx.i = shl nuw i64 %.0187300.i, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i ; 4 uses
  %i.le = load float, ptr %i.ld, align 16, !tbaa !28
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !28
  %i.lh = fadd float %i.le, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lj = load float, ptr %i.li, align 8, !tbaa !28
  %i.lk = fadd float %i.lh, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !28
  %i.ln = fadd float %i.lk, %i.lm
  %i.lo = fmul float %i.ln, 2.500000e-01
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0187300.i
  store float %i.lo, ptr %i.lp, align 4, !tbaa !28
  %i.lq = add nuw nsw i64 %.0187300.i, 1          ; 2 uses
  %.idx.i.1 = shl nuw i64 %i.lq, 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.1 ; 4 uses
  %i.ls = load float, ptr %i.lr, align 16, !tbaa !28
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !28
  %i.lv = fadd float %i.ls, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lx = load float, ptr %i.lw, align 8, !tbaa !28
  %i.ly = fadd float %i.lv, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !28
  %i.mb = fadd float %i.ly, %i.ma
  %i.mc = fmul float %i.mb, 2.500000e-01
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.lq
  store float %i.mc, ptr %i.md, align 4, !tbaa !28
  %i.me = add nuw nsw i64 %.0187300.i, 2          ; 2 uses
  %exitcond321.not.i.1 = icmp eq i64 %i.ek, %i.me
  br i1 %exitcond321.not.i.1, label %.loopexit.i, label %.lr.ph302.i, !llvm.loop !549

.loopexit.i:                                      ; preds = %.lr.ph302.i.prol.loopexit, %.lr.ph302.i, %middle.block, %bb.o, %._crit_edge299.i
  %exitcond322.not.i = icmp eq i64 %i.fg, %.0192.i
  br i1 %exitcond322.not.i, label %._crit_edge306.loopexit.i, label %bb.f, !llvm.loop !550

._crit_edge306.loopexit.i:                        ; preds = %.loopexit.i
  %.pre327.i = load ptr, ptr %i.r, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [56 x i8], ptr %.pre327.i, i64 %i.eg ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre56 = load i32, ptr %.phi.trans.insert55, align 4, !tbaa !26
  %i.mf = zext i32 %.pre to i64
  %i.mg = zext i32 %.pre56 to i64
  br label %.preheader165.i

.preheader165.i:                                  ; preds = %._crit_edge306.loopexit.i, %bb.e
  %i.mh = phi i64 [ %i.mg, %._crit_edge306.loopexit.i ], [ %i.em, %bb.e ]
  %i.mi = phi i64 [ %i.mf, %._crit_edge306.loopexit.i ], [ %i.ek, %bb.e ]
  %i.mj = phi ptr [ %.pre327.i, %._crit_edge306.loopexit.i ], [ %i.eh, %bb.e ]
  %i.mk = lshr exact i64 %spec.select286.i, 2
  %.lobit.i = and i64 %i.mk, 1
  %i.ml = lshr exact i64 %.0191.i, 2
  %i.mm = and i64 %i.ml, 1
  %i.mn = shl nsw i64 %i.o, 1
  %i.mo = shl nsw i64 %i.p, 1
  %i.mp = fcmp olt float %i.u, 2.000000e+00
  %i.mq = fsub nnan float 2.000000e+00, %i.u
  %i.mr = fmul nnan float %i.mq, 5.000000e-01
  %.083.i = select i1 %i.mp, float %i.mr, float 0.000000e+00 ; 4 uses
  %i.ms = tail call float @llvm.fmuladd.f32(float %.083.i, float 0.000000e+00, float 1.250000e-01) ; 2 uses
  %i.mt = tail call float @llvm.fmuladd.f32(float %.083.i, float -1.000000e-01, float 1.000000e-01) ; 2 uses
  %i.mu = fadd float %i.ms, %i.mt
  %i.mv = tail call float @llvm.fmuladd.f32(float %.083.i, float -9.000000e-02, float 9.000000e-02) ; 2 uses
  %i.mw = fadd float %i.mv, %i.mu
  %i.mx = tail call float @llvm.fmuladd.f32(float %.083.i, float -6.000000e-02, float 6.000000e-02) ; 2 uses
  %i.my = fadd float %i.mx, %i.mw
  %i.mz = fdiv float f0x3E9964C9, %i.my           ; 4 uses
  %i.na = fmul float %i.ms, %i.mz
  %i.nb = fmul float %i.mt, %i.mz
  %i.nc = fmul float %i.mv, %i.mz
  %i.nd = fmul float %i.mx, %i.mz
  %cond = icmp eq i64 %i.l, %i.h
  br i1 %cond, label %._crit_edge313.i, label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.preheader165.i
  %i.ne = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %i.eg ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !22 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !17 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !22 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !17 ; 5 uses
  %.not173.i = icmp eq i64 %i.b, %i.m
  br i1 %.not173.i, label %._crit_edge313.i, label %.lr.ph.us.i21

.lr.ph.us.i21:                                    ; preds = %.lr.ph171.i, %._crit_edge.us.i
  %.079170.us.i = phi i64 [ %i.ql, %._crit_edge.us.i ], [ 0, %.lr.ph171.i ] ; 4 uses
  %i.nn = add i64 %.079170.us.i, %i.mm            ; 4 uses
  %i.no = tail call i64 @llvm.usub.sat.i64(i64 %i.nn, i64 1)
  %i.np = add i64 %i.nn, 1                        ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.mh
  %i.nr = select i1 %i.nq, i64 %i.np, i64 %i.nn
  %i.ns = mul i64 %i.no, %i.ni
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ns ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nt, i64 64) ]
  %i.nu = mul i64 %i.nn, %i.ni
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nu ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nv, i64 64) ]
  %i.nw = mul i64 %i.nr, %i.ni
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nw ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nx, i64 64) ]
  %i.ny = lshr i64 %.079170.us.i, 1
  %i.nz = add nuw i64 %i.ny, %i.h
  %i.oa = mul i64 %i.nz, %i.nm
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.oa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ob, i64 64) ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.m
  br label %bb.p

bb.p:                                             ; preds = %bb.ag, %.lr.ph.us.i21
  %.0169.us.i = phi i64 [ 0, %.lr.ph.us.i21 ], [ %i.qk, %bb.ag ] ; 4 uses
  %i.od = add i64 %.0169.us.i, %.lobit.i          ; 6 uses
  %i.oe = tail call i64 @llvm.usub.sat.i64(i64 %i.od, i64 1) ; 3 uses
  %i.of = add i64 %i.od, 1                        ; 2 uses
  %i.og = icmp ult i64 %i.of, %i.mi
  %i.oh = select i1 %i.og, i64 %i.of, i64 %i.od   ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.od
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !28 ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.oe
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !28 ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.oh
  %i.on = load float, ptr %i.om, align 4, !tbaa !28 ; 3 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.oe
  %i.op = load float, ptr %i.oo, align 4, !tbaa !28 ; 3 uses
  %i.oq = fcmp ogt float %i.oj, %i.ol             ; 2 uses
  %.sroa.0.0.us.i = select i1 %i.oq, float %i.ol, float %i.oj ; 3 uses
  %.sroa.28.0.us.i = select i1 %i.oq, float %i.oj, float %i.ol ; 3 uses
  %i.or = fcmp ogt float %.sroa.0.0.us.i, %i.on   ; 2 uses
  %.sroa.0.1.us.i = select i1 %i.or, float %i.on, float %.sroa.0.0.us.i ; 3 uses
  %.sroa.64.0.us.i = select i1 %i.or, float %.sroa.0.0.us.i, float %i.on ; 3 uses
  %i.os = fcmp ogt float %.sroa.0.1.us.i, %i.op   ; 2 uses
  %.sroa.0.2.us.i = select i1 %i.os, float %i.op, float %.sroa.0.1.us.i ; 6 uses
  %.sroa.100.0.us.i = select i1 %i.os, float %.sroa.0.1.us.i, float %i.op ; 3 uses
  %i.ot = fcmp ogt float %.sroa.28.0.us.i, %.sroa.64.0.us.i ; 2 uses
  %.sroa.28.1.us.i = select i1 %i.ot, float %.sroa.64.0.us.i, float %.sroa.28.0.us.i ; 3 uses
  %.sroa.64.1.us.i = select i1 %i.ot, float %.sroa.28.0.us.i, float %.sroa.64.0.us.i ; 3 uses
  %i.ou = fcmp ogt float %.sroa.28.1.us.i, %.sroa.100.0.us.i ; 2 uses
  %.sroa.28.2.us.i = select i1 %i.ou, float %.sroa.100.0.us.i, float %.sroa.28.1.us.i ; 6 uses
end_hunk_0
begin_hunk_1_@"_ZZN3jxl6N_SSE412_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_ENK3$_1clEjm":bb.a
  %i.fj = tail call i64 @llvm.usub.sat.i64(i64 %storemerge304.i, i64 1)
  %i.fk = load i64, ptr %i.ex, align 8, !tbaa !17 ; 3 uses
  %i.fl = mul i64 %i.fk, %storemerge304.i
  %i.fm = load ptr, ptr %i.ey, align 8, !tbaa !22 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fn, i64 64) ]
  %i.fo = mul i64 %i.fk, %i.fj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = mul i64 %i.fi, %i.fk
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fq ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fs = load ptr, ptr %i.ez, align 8, !tbaa !22 ; 2 uses
  %i.ft = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fu = mul i64 %i.ft, %i.eg                    ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.fu  ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fv, i64 64) ]
  br i1 %.not206.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fw = load float, ptr %i.fr, align 64, !tbaa !28
  %i.fx = load float, ptr %i.fp, align 64, !tbaa !28
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = load float, ptr %i.fn, align 64, !tbaa !28 ; 3 uses
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fc
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !28
  %i.gd = fadd float %i.ga, %i.gc
  %i.ge = fmul float %i.gd, 2.500000e-01
  %i.gf = fadd float %i.fz, 1.900000e-02
  %i.gg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.gf, i64 0 ; 2 uses
  %i.gh = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.gg, <4 x float> zeroinitializer, <4 x float> %i.gg) ; 3 uses
  %i.gi = extractelement <4 x float> %i.gh, i64 0
  %foldExtExtBinop105 = fmul <4 x float> %i.gh, %i.gh
  %i.gj = extractelement <4 x float> %foldExtExtBinop105, i64 0 ; 2 uses
  %i.gk = fmul float %i.gj, f0x42EFD02B
  %i.gl = fmul float %i.gi, f0x431D2FBD
  %i.gm = fmul float %i.gl, %i.gj
  %.scalar.i.i.i217.i = fadd float %i.gm, f0x40ACF18E
  %i.gn = fadd float %i.gk, f0x3C23D70A
  %i.go = fdiv float %.scalar.i.i.i217.i, %i.gn
  %i.gp = fsub float %i.fz, %i.ge
  %i.gq = fmul float %i.gp, %i.go                 ; 2 uses
  %i.gr = fmul float %i.gq, %i.gq                 ; 2 uses
  %i.gs = fcmp oge float %i.gr, 2.000000e-01
  %spec.store.select.i.i = select i1 %i.gs, float 2.000000e-01, float %i.gr
  %i.gt = fmul float %spec.store.select.i.i, f0x480E13D6
  %i.gu = fadd float %i.gt, f0x41DC0BF4
  %i.gv = tail call float @llvm.sqrt.f32(float %i.gu)
  %i.gw = fmul float %i.gv, 2.500000e-01          ; 2 uses
  %i.gx = and i64 %storemerge304.i, 3
  %.not.i218.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i218.i, label %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gy = load float, ptr %i.fv, align 64, !tbaa !28
  %i.gz = fadd float %i.gw, %i.gy
  br label %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i

_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i: ; preds = %bb.h, %bb.g
  %.sink.i.i = phi float [ %i.gz, %bb.h ], [ %i.gw, %bb.g ]
  store float %.sink.i.i, ptr %i.fv, align 64, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i, %bb.f
  %.0194.i = phi i64 [ 1, %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i ], [ %i.eb, %bb.f ] ; 3 uses
  %i.ha = add i64 %.0194.i, 5
  %i.hb = icmp ult i64 %i.ha, %spec.select216.i
  %i.hc = and i64 %storemerge304.i, 3             ; 3 uses
  br i1 %i.hb, label %.lr.ph.i, label %.preheader289.i

.lr.ph.i:                                         ; preds = %bb.i
  %.not211.i = icmp eq i64 %i.hc, 0
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.fv, i64 %i.fd ; 2 uses
  br label %bb.j

.preheader289.i:                                  ; preds = %bb.l, %bb.i
  %.1.lcssa.i = phi i64 [ %.0194.i, %bb.i ], [ %i.il, %bb.l ] ; 2 uses
  %i.hd = icmp ult i64 %.1.lcssa.i, %spec.select216.i
  br i1 %i.hd, label %.lr.ph299.i, label %._crit_edge300.i

.lr.ph299.i:                                      ; preds = %.preheader289.i
  %.not.i221.i = icmp eq i64 %i.hc, 0
  br label %bb.m

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.1294.i = phi i64 [ %.0194.i, %.lr.ph.i ], [ %i.il, %bb.l ] ; 7 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.1294.i ; 3 uses
  %i.hf = load <4 x float>, ptr %i.he, align 4, !tbaa !24, !alias.scope !644 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hh = load <4 x float>, ptr %i.hg, align 4, !tbaa !24, !alias.scope !645
  %i.hi = getelementptr inbounds i8, ptr %i.he, i64 -4
  %i.hj = load <4 x float>, ptr %i.hi, align 4, !tbaa !24, !alias.scope !646
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.1294.i
  %i.hl = load <4 x float>, ptr %i.hk, align 4, !tbaa !24, !alias.scope !647
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.1294.i
  %i.hn = load <4 x float>, ptr %i.hm, align 4, !tbaa !24, !alias.scope !648
  %i.ho = fadd <4 x float> %i.hh, %i.hj
  %i.hp = fadd <4 x float> %i.hl, %i.hn
  %i.hq = fadd <4 x float> %i.ho, %i.hp
  %i.hr = fmul <4 x float> %i.hq, splat (float 2.500000e-01)
  %i.hs = fadd <4 x float> %i.hf, splat (float 1.900000e-02) ; 2 uses
  %i.ht = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.hs, <4 x float> zeroinitializer, <4 x float> %i.hs) ; 3 uses
  %i.hu = fmul <4 x float> %i.ht, %i.ht           ; 2 uses
  %i.hv = fmul <4 x float> %i.hu, splat (float f0x42EFD02B)
  %i.hw = fadd <4 x float> %i.hv, splat (float f0x3C23D70A)
  %i.hx = fmul <4 x float> %i.ht, splat (float f0x431D2FBD)
  %i.hy = fmul <4 x float> %i.hx, %i.hu
  %i.hz = fadd <4 x float> %i.hy, splat (float f0x40ACF18E)
  %i.ia = fdiv <4 x float> %i.hz, %i.hw
  %i.ib = fsub <4 x float> %i.hf, %i.hr
  %i.ic = fmul <4 x float> %i.ib, %i.ia           ; 2 uses
  %i.id = fmul <4 x float> %i.ic, %i.ic
  %i.ie = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.id, <4 x float> splat (float 2.000000e-01))
  %i.if = fmul <4 x float> %i.ie, splat (float f0x480E13D6)
  %i.ig = fadd <4 x float> %i.if, splat (float f0x41DC0BF4)
  %i.ih = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ig)
  %i.ii = fmul <4 x float> %i.ih, splat (float 2.500000e-01) ; 2 uses
  br i1 %.not211.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1294.i
  %i.ij = load <4 x float>, ptr %gep.i, align 4, !tbaa !24, !alias.scope !649
  %i.ik = fadd <4 x float> %i.ii, %i.ij
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.036.0.i = phi <4 x float> [ %i.ik, %bb.k ], [ %i.ii, %bb.j ]
  %gep297.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.1294.i
  store <4 x float> %.sroa.036.0.i, ptr %gep297.i, align 4, !tbaa !24
  %i.il = add i64 %.1294.i, 4                     ; 2 uses
  %i.im = add i64 %.1294.i, 9
  %i.in = icmp ult i64 %i.im, %spec.select216.i
  br i1 %i.in, label %bb.j, label %.preheader289.i, !llvm.loop !613

bb.m:                                             ; preds = %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i, %.lr.ph299.i
  %.2298.i = phi i64 [ %.1.lcssa.i, %.lr.ph299.i ], [ %i.io, %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i ] ; 7 uses
  %i.io = add nuw i64 %.2298.i, 1                 ; 4 uses
  %i.ip = icmp ult i64 %i.io, %i.aq
  %i.iq = select i1 %i.ip, i64 %i.io, i64 %.2298.i
  %i.ir = tail call i64 @llvm.usub.sat.i64(i64 %.2298.i, i64 1)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.2298.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !28
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.2298.i
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !28
  %i.iw = fadd float %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ir
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !28
  %i.iz = fadd float %i.iw, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.iq
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !28
  %i.jc = fadd float %i.iz, %i.jb
  %i.jd = fmul float %i.jc, 2.500000e-01
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.2298.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !28 ; 2 uses
  %i.jg = fadd float %i.jf, 1.900000e-02
  %i.jh = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.jg, i64 0 ; 2 uses
  %i.ji = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.jh, <4 x float> zeroinitializer, <4 x float> %i.jh) ; 3 uses
  %i.jj = extractelement <4 x float> %i.ji, i64 0
  %foldExtExtBinop107 = fmul <4 x float> %i.ji, %i.ji
  %i.jk = extractelement <4 x float> %foldExtExtBinop107, i64 0 ; 2 uses
  %i.jl = fmul float %i.jk, f0x42EFD02B
  %i.jm = fmul float %i.jj, f0x431D2FBD
  %i.jn = fmul float %i.jm, %i.jk
  %.scalar.i.i.i219.i = fadd float %i.jn, f0x40ACF18E
  %i.jo = fadd float %i.jl, f0x3C23D70A
  %i.jp = fdiv float %.scalar.i.i.i219.i, %i.jo
  %i.jq = fsub float %i.jf, %i.jd
  %i.jr = fmul float %i.jq, %i.jp                 ; 2 uses
  %i.js = fmul float %i.jr, %i.jr                 ; 2 uses
  %i.jt = fcmp oge float %i.js, 2.000000e-01
  %spec.store.select.i220.i = select i1 %i.jt, float 2.000000e-01, float %i.js
  %i.ju = fmul float %spec.store.select.i220.i, f0x480E13D6
  %i.jv = fadd float %i.ju, f0x41DC0BF4
  %i.jw = tail call float @llvm.sqrt.f32(float %i.jv)
  %i.jx = fmul float %i.jw, 2.500000e-01          ; 2 uses
  %i.jy = sub i64 %.2298.i, %spec.select287.i
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.jy ; 2 uses
  br i1 %.not.i221.i, label %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !28
  %i.kb = fadd float %i.jx, %i.ka
  br label %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i

_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i: ; preds = %bb.n, %bb.m
  %.sink.i222.i = phi float [ %i.kb, %bb.n ], [ %i.jx, %bb.m ]
  store float %.sink.i222.i, ptr %i.jz, align 4, !tbaa !28
  %exitcond321.not.i = icmp eq i64 %i.io, %spec.select216.i
  br i1 %exitcond321.not.i, label %._crit_edge300.i, label %bb.m, !llvm.loop !614

._crit_edge300.i:                                 ; preds = %_ZZN3jxl6N_SSE412_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit223.i, %.preheader289.i
  %i.kc = icmp eq i64 %i.hc, 3
  br i1 %i.kc, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge300.i
  %i.kd = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.ke = getelementptr inbounds nuw [56 x i8], ptr %i.kd, i64 %i.eg ; 2 uses
  %i.kf = sub nuw i64 %storemerge304.i, %.0191.i
  %i.kg = lshr i64 %i.kf, 2                       ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !22 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !17 ; 2 uses
  %i.kl = mul i64 %i.kk, %i.kg
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.km, i64 64) ]
  br i1 %.not315.i, label %.loopexit.i, label %.lr.ph303.i.preheader

.lr.ph303.i.preheader:                            ; preds = %bb.o
  br i1 %min.iters.check, label %.lr.ph303.i.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph303.i.preheader
  %3 = mul i64 %i.kk, %i.kg                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ki, i64 %3
  %scevgep80.a = getelementptr i8, ptr %i.ki, i64 %i.fe
  %scevgep81.a = getelementptr i8, ptr %scevgep80.a, i64 %3
  %scevgep82.a = getelementptr i8, ptr %i.fs, i64 %i.ff
  %scevgep83 = getelementptr i8, ptr %scevgep82.a, i64 %i.fu
  %bound0 = icmp ult ptr %scevgep, %scevgep83
  %bound1 = icmp ult ptr %i.fv, %scevgep81.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph303.i.preheader109, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.kn = shl nuw i64 %index, 4
  %i.ko = shl i64 %index, 4
  %i.kp = shl i64 %index, 4
  %i.kq = shl i64 %index, 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.kn ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ko ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.kp ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.kq ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ky = load float, ptr %i.kr, align 64, !tbaa !28, !alias.scope !650
  %i.kz = load float, ptr %i.kt, align 16, !tbaa !28, !alias.scope !650
  %i.la = load float, ptr %i.kv, align 32, !tbaa !28, !alias.scope !650
  %i.lb = load float, ptr %i.kx, align 16, !tbaa !28, !alias.scope !650
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 20
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 52
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !28, !alias.scope !650
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !28, !alias.scope !650
  %i.lm = load float, ptr %i.li, align 4, !tbaa !28, !alias.scope !650
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !28, !alias.scope !650
  %i.lo = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 2
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 3
  %i.ls = fadd <4 x float> %i.lf, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.lx = load float, ptr %i.lt, align 8, !tbaa !28, !alias.scope !650
  %i.ly = load float, ptr %i.lu, align 8, !tbaa !28, !alias.scope !650
  %i.lz = load float, ptr %i.lv, align 8, !tbaa !28, !alias.scope !650
  %i.ma = load float, ptr %i.lw, align 8, !tbaa !28, !alias.scope !650
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = fadd <4 x float> %i.ls, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ks, i64 28
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ku, i64 44
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kw, i64 60
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !28, !alias.scope !650
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !28, !alias.scope !650
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !28, !alias.scope !650
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !28, !alias.scope !650
  %i.mo = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 1
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 2
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 3
  %i.ms = fadd <4 x float> %i.mf, %i.mr
  %i.mt = fmul <4 x float> %i.ms, splat (float 2.500000e-01)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index
  store <4 x float> %i.mt, ptr %i.mu, align 16, !tbaa !28, !alias.scope !651, !noalias !650
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mv = icmp eq i64 %index.next, %n.vec
  br i1 %i.mv, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph303.i.preheader109

.lr.ph303.i.preheader109:                         ; preds = %vector.memcheck, %.lr.ph303.i.preheader, %middle.block
  %.0187301.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph303.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph303.i.prol.loopexit, label %.lr.ph303.i.prol

.lr.ph303.i.prol:                                 ; preds = %.lr.ph303.i.preheader109
  %.idx.i.prol = shl nuw i64 %.0187301.i.ph, 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.prol ; 4 uses
  %i.mx = load float, ptr %i.mw, align 64, !tbaa !28
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mz = load float, ptr %i.my, align 4, !tbaa !28
  %i.na = fadd float %i.mx, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !28
  %i.nd = fadd float %i.na, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !28
  %i.ng = fadd float %i.nd, %i.nf
  %i.nh = fmul float %i.ng, 2.500000e-01
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0187301.i.ph
  store float %i.nh, ptr %i.ni, align 16, !tbaa !28
  %i.nj = or disjoint i64 %.0187301.i.ph, 1
  br label %.lr.ph303.i.prol.loopexit

.lr.ph303.i.prol.loopexit:                        ; preds = %.lr.ph303.i.prol, %.lr.ph303.i.preheader109
  %.0187301.i.unr = phi i64 [ %.0187301.i.ph, %.lr.ph303.i.preheader109 ], [ %i.nj, %.lr.ph303.i.prol ]
  %i.nk = icmp eq i64 %.0187301.i.ph, %invariant.op
  br i1 %i.nk, label %.loopexit.i, label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %.lr.ph303.i.prol.loopexit, %.lr.ph303.i
  %.0187301.i = phi i64 [ %i.om, %.lr.ph303.i ], [ %.0187301.i.unr, %.lr.ph303.i.prol.loopexit ] ; 4 uses
  %.idx.i = shl nuw i64 %.0187301.i, 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i ; 4 uses
  %i.nm = load float, ptr %i.nl, align 16, !tbaa !28
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !28
  %i.np = fadd float %i.nm, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nr = load float, ptr %i.nq, align 8, !tbaa !28
  %i.ns = fadd float %i.np, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !28
  %i.nv = fadd float %i.ns, %i.nu
  %i.nw = fmul float %i.nv, 2.500000e-01
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0187301.i
  store float %i.nw, ptr %i.nx, align 4, !tbaa !28
  %i.ny = add nuw nsw i64 %.0187301.i, 1          ; 2 uses
  %.idx.i.1 = shl nuw i64 %i.ny, 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.1 ; 4 uses
  %i.oa = load float, ptr %i.nz, align 16, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !28
  %i.od = fadd float %i.oa, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.of = load float, ptr %i.oe, align 8, !tbaa !28
  %i.og = fadd float %i.od, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !28
  %i.oj = fadd float %i.og, %i.oi
  %i.ok = fmul float %i.oj, 2.500000e-01
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.ny
  store float %i.ok, ptr %i.ol, align 4, !tbaa !28
  %i.om = add nuw nsw i64 %.0187301.i, 2          ; 2 uses
  %exitcond322.not.i.1 = icmp eq i64 %i.ek, %i.om
  br i1 %exitcond322.not.i.1, label %.loopexit.i, label %.lr.ph303.i, !llvm.loop !619

.loopexit.i:                                      ; preds = %.lr.ph303.i.prol.loopexit, %.lr.ph303.i, %middle.block, %bb.o, %._crit_edge300.i
  %exitcond323.not.i = icmp eq i64 %i.fg, %.0192.i
  br i1 %exitcond323.not.i, label %._crit_edge307.loopexit.i, label %bb.f, !llvm.loop !620

._crit_edge307.loopexit.i:                        ; preds = %.loopexit.i
  %.pre328.i = load ptr, ptr %i.r, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [56 x i8], ptr %.pre328.i, i64 %i.eg ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre58 = load i32, ptr %.phi.trans.insert57, align 4, !tbaa !26
  %i.on = zext i32 %.pre to i64
  %i.oo = zext i32 %.pre58 to i64
  br label %.preheader165.i

.preheader165.i:                                  ; preds = %._crit_edge307.loopexit.i, %bb.e
  %i.op = phi i64 [ %i.oo, %._crit_edge307.loopexit.i ], [ %i.em, %bb.e ]
  %i.oq = phi i64 [ %i.on, %._crit_edge307.loopexit.i ], [ %i.ek, %bb.e ]
  %i.or = phi ptr [ %.pre328.i, %._crit_edge307.loopexit.i ], [ %i.eh, %bb.e ]
  %i.os = lshr exact i64 %spec.select287.i, 2
  %.lobit.i = and i64 %i.os, 1
  %i.ot = lshr exact i64 %.0191.i, 2
  %i.ou = and i64 %i.ot, 1
  %i.ov = shl nsw i64 %i.o, 1
  %i.ow = shl nsw i64 %i.p, 1
  %i.ox = fcmp olt float %i.u, 2.000000e+00
  %i.oy = fsub nnan float 2.000000e+00, %i.u
  %i.oz = fmul nnan float %i.oy, 5.000000e-01
  %.083.i = select i1 %i.ox, float %i.oz, float 0.000000e+00 ; 4 uses
  %i.pa = tail call float @llvm.fmuladd.f32(float %.083.i, float 0.000000e+00, float 1.250000e-01) ; 2 uses
  %i.pb = tail call float @llvm.fmuladd.f32(float %.083.i, float -1.000000e-01, float 1.000000e-01) ; 2 uses
  %i.pc = fadd float %i.pa, %i.pb
  %i.pd = tail call float @llvm.fmuladd.f32(float %.083.i, float -9.000000e-02, float 9.000000e-02) ; 2 uses
  %i.pe = fadd float %i.pd, %i.pc
  %i.pf = tail call float @llvm.fmuladd.f32(float %.083.i, float -6.000000e-02, float 6.000000e-02) ; 2 uses
  %i.pg = fadd float %i.pf, %i.pe
  %i.ph = fdiv float f0x3E9964C9, %i.pg           ; 4 uses
  %i.pi = fmul float %i.pa, %i.ph
  %i.pj = fmul float %i.pb, %i.ph
  %i.pk = fmul float %i.pd, %i.ph
  %i.pl = fmul float %i.pf, %i.ph
  %cond = icmp eq i64 %i.l, %i.h
  br i1 %cond, label %._crit_edge314.i, label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.preheader165.i
  %i.pm = getelementptr inbounds nuw [56 x i8], ptr %i.or, i64 %i.eg ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !22 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !17 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !22 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !17 ; 5 uses
  %.not173.i = icmp eq i64 %i.b, %i.m
  br i1 %.not173.i, label %._crit_edge314.i, label %.lr.ph.us.i21

.lr.ph.us.i21:                                    ; preds = %.lr.ph171.i, %._crit_edge.us.i
  %.079170.us.i = phi i64 [ %i.st, %._crit_edge.us.i ], [ 0, %.lr.ph171.i ] ; 4 uses
  %i.pv = add i64 %.079170.us.i, %i.ou            ; 4 uses
  %i.pw = tail call i64 @llvm.usub.sat.i64(i64 %i.pv, i64 1)
  %i.px = add i64 %i.pv, 1                        ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN3jxl10ThreadPool12RunCallStateIZNS_6N_SSE212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPS0_PNS_5PlaneIfEESF_E3$_0ZNS3_23AdaptiveQuantizationMapEfS7_SB_fSC_SF_SF_E3$_1E12CallDataFuncEPvjm":bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fv ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fw, i64 64) ]
  %i.fx = load ptr, ptr %i.fe, align 8, !tbaa !22 ; 2 uses
  %i.fy = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fz = mul i64 %i.fy, %i.el                    ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fx, i64 %i.fz  ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ga, i64 64) ]
  br i1 %.not206.i.i, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = and i64 %storemerge306.i.i, 3
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.gb = load float, ptr %i.fw, align 64, !tbaa !28
  %i.gc = load float, ptr %i.fu, align 64, !tbaa !28
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = load float, ptr %i.fs, align 64, !tbaa !28 ; 3 uses
  %i.gf = fadd float %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fh
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !28
  %i.gi = fadd float %i.gf, %i.gh
  %i.gj = fmul float %i.gi, 2.500000e-01
  %i.gk = fadd float %i.ge, 1.900000e-02
  %i.gl = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.gk, i64 0 ; 2 uses
  %i.gm = bitcast <4 x float> %i.gl to <4 x i32>
  %isnotneg.inv.i.i.i217.i.i = icmp slt <4 x i32> %i.gm, zeroinitializer
  %i.gn = select <4 x i1> %isnotneg.inv.i.i.i217.i.i, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.gl ; 3 uses
  %i.go = extractelement <4 x float> %i.gn, i64 0
  %foldExtExtBinop52 = fmul <4 x float> %i.gn, %i.gn
  %i.gp = extractelement <4 x float> %foldExtExtBinop52, i64 0 ; 2 uses
  %i.gq = fmul float %i.gp, f0x42EFD02B
  %i.gr = fmul float %i.go, f0x431D2FBD
  %i.gs = fmul float %i.gr, %i.gp
  %.scalar.i.i.i218.i.i = fadd float %i.gs, f0x40ACF18E
  %i.gt = fadd float %i.gq, f0x3C23D70A
  %i.gu = fdiv float %.scalar.i.i.i218.i.i, %i.gt
  %i.gv = fsub float %i.ge, %i.gj
  %i.gw = fmul float %i.gv, %i.gu                 ; 2 uses
  %i.gx = fmul float %i.gw, %i.gw                 ; 2 uses
  %i.gy = fcmp oge float %i.gx, 2.000000e-01
  %spec.store.select.i.i.i = select i1 %i.gy, float 2.000000e-01, float %i.gx
  %i.gz = fmul float %spec.store.select.i.i.i, f0x480E13D6
  %i.ha = fadd float %i.gz, f0x41DC0BF4
  %i.hb = tail call float @llvm.sqrt.f32(float %i.ha)
  %i.hc = fmul float %i.hb, 2.500000e-01          ; 2 uses
  %i.hd = and i64 %storemerge306.i.i, 3           ; 2 uses
  %.not.i219.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i219.i.i, label %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.he = load float, ptr %i.ga, align 64, !tbaa !28
  %i.hf = fadd float %i.hc, %i.he
  br label %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i

_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i: ; preds = %bb.i, %bb.h
  %.sink.i.i.i = phi float [ %i.hf, %bb.i ], [ %i.hc, %bb.h ]
  store float %.sink.i.i.i, ptr %i.ga, align 64, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.hd, %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i ] ; 3 uses
  %.0194.i.i = phi i64 [ %i.eg, %._crit_edge ], [ 1, %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit.i.i ] ; 3 uses
  %i.hg = add i64 %.0194.i.i, 5
  %i.hh = icmp ult i64 %i.hg, %spec.select216.i.i
  br i1 %i.hh, label %.lr.ph.i.i, label %.preheader291.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.not211.i.i = icmp eq i64 %.pre-phi, 0
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.ga, i64 %i.fi ; 2 uses
  br label %bb.k

.preheader291.i.i:                                ; preds = %bb.m, %bb.j
  %.1.lcssa.i.i = phi i64 [ %.0194.i.i, %bb.j ], [ %i.ir, %bb.m ] ; 2 uses
  %i.hi = icmp ult i64 %.1.lcssa.i.i, %spec.select216.i.i
  br i1 %i.hi, label %.lr.ph301.i.i, label %._crit_edge302.i.i

.lr.ph301.i.i:                                    ; preds = %.preheader291.i.i
  %.not.i223.i.i = icmp eq i64 %.pre-phi, 0
  br label %bb.n

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.1296.i.i = phi i64 [ %.0194.i.i, %.lr.ph.i.i ], [ %i.ir, %bb.m ] ; 7 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.1296.i.i ; 3 uses
  %i.hk = load <4 x float>, ptr %i.hj, align 4, !tbaa !24, !alias.scope !742 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hm = load <4 x float>, ptr %i.hl, align 4, !tbaa !24, !alias.scope !743
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.ho = load <4 x float>, ptr %i.hn, align 4, !tbaa !24, !alias.scope !744
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.1296.i.i
  %i.hq = load <4 x float>, ptr %i.hp, align 4, !tbaa !24, !alias.scope !745
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.1296.i.i
  %i.hs = load <4 x float>, ptr %i.hr, align 4, !tbaa !24, !alias.scope !746
  %i.ht = fadd <4 x float> %i.hm, %i.ho
  %i.hu = fadd <4 x float> %i.hq, %i.hs
  %i.hv = fadd <4 x float> %i.ht, %i.hu
  %i.hw = fmul <4 x float> %i.hv, splat (float 2.500000e-01)
  %i.hx = fadd <4 x float> %i.hk, splat (float 1.900000e-02) ; 2 uses
  %i.hy = bitcast <4 x float> %i.hx to <4 x i32>
  %isnotneg.inv.i.i.i = icmp slt <4 x i32> %i.hy, zeroinitializer
  %i.hz = select <4 x i1> %isnotneg.inv.i.i.i, <4 x float> zeroinitializer, <4 x float> %i.hx ; 3 uses
  %i.ia = fmul <4 x float> %i.hz, %i.hz           ; 2 uses
  %i.ib = fmul <4 x float> %i.ia, splat (float f0x42EFD02B)
  %i.ic = fadd <4 x float> %i.ib, splat (float f0x3C23D70A)
  %i.id = fmul <4 x float> %i.hz, splat (float f0x431D2FBD)
  %i.ie = fmul <4 x float> %i.id, %i.ia
  %i.if = fadd <4 x float> %i.ie, splat (float f0x40ACF18E)
  %i.ig = fdiv <4 x float> %i.if, %i.ic
  %i.ih = fsub <4 x float> %i.hk, %i.hw
  %i.ii = fmul <4 x float> %i.ig, %i.ih           ; 2 uses
  %i.ij = fmul <4 x float> %i.ii, %i.ii
  %i.ik = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ij, <4 x float> splat (float 2.000000e-01))
  %i.il = fmul <4 x float> %i.ik, splat (float f0x480E13D6)
  %i.im = fadd <4 x float> %i.il, splat (float f0x41DC0BF4)
  %i.in = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.im)
  %i.io = fmul <4 x float> %i.in, splat (float 2.500000e-01) ; 2 uses
  br i1 %.not211.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.1296.i.i
  %i.ip = load <4 x float>, ptr %gep.i.i, align 4, !tbaa !24, !alias.scope !747
  %i.iq = fadd <4 x float> %i.io, %i.ip
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.036.0.i.i = phi <4 x float> [ %i.iq, %bb.l ], [ %i.io, %bb.k ]
  %gep299.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.1296.i.i
  store <4 x float> %.sroa.036.0.i.i, ptr %gep299.i.i, align 4, !tbaa !24, !alias.scope !748
  %i.ir = add i64 %.1296.i.i, 4                   ; 2 uses
  %i.is = add i64 %.1296.i.i, 9
  %i.it = icmp ult i64 %i.is, %spec.select216.i.i
  br i1 %i.it, label %bb.k, label %.preheader291.i.i, !llvm.loop !696

bb.n:                                             ; preds = %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i, %.lr.ph301.i.i
  %.2300.i.i = phi i64 [ %.1.lcssa.i.i, %.lr.ph301.i.i ], [ %i.iu, %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i ] ; 7 uses
  %i.iu = add nuw i64 %.2300.i.i, 1               ; 4 uses
  %i.iv = icmp ult i64 %i.iu, %i.au
  %i.iw = select i1 %i.iv, i64 %i.iu, i64 %.2300.i.i
  %i.ix = tail call i64 @llvm.usub.sat.i64(i64 %.2300.i.i, i64 1)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.2300.i.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !28
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.2300.i.i
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !28
  %i.jc = fadd float %i.iz, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ix
  %i.je = load float, ptr %i.jd, align 4, !tbaa !28
  %i.jf = fadd float %i.jc, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.iw
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !28
  %i.ji = fadd float %i.jf, %i.jh
  %i.jj = fmul float %i.ji, 2.500000e-01
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.2300.i.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !28 ; 2 uses
  %i.jm = fadd float %i.jl, 1.900000e-02
  %i.jn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.jm, i64 0 ; 2 uses
  %i.jo = bitcast <4 x float> %i.jn to <4 x i32>
  %isnotneg.inv.i.i.i220.i.i = icmp slt <4 x i32> %i.jo, zeroinitializer
  %i.jp = select <4 x i1> %isnotneg.inv.i.i.i220.i.i, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.jn ; 3 uses
  %i.jq = extractelement <4 x float> %i.jp, i64 0
  %foldExtExtBinop54 = fmul <4 x float> %i.jp, %i.jp
  %i.jr = extractelement <4 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %i.js = fmul float %i.jr, f0x42EFD02B
  %i.jt = fmul float %i.jq, f0x431D2FBD
  %i.ju = fmul float %i.jt, %i.jr
  %.scalar.i.i.i221.i.i = fadd float %i.ju, f0x40ACF18E
  %i.jv = fadd float %i.js, f0x3C23D70A
  %i.jw = fdiv float %.scalar.i.i.i221.i.i, %i.jv
  %i.jx = fsub float %i.jl, %i.jj
  %i.jy = fmul float %i.jx, %i.jw                 ; 2 uses
  %i.jz = fmul float %i.jy, %i.jy                 ; 2 uses
  %i.ka = fcmp oge float %i.jz, 2.000000e-01
  %spec.store.select.i222.i.i = select i1 %i.ka, float 2.000000e-01, float %i.jz
  %i.kb = fmul float %spec.store.select.i222.i.i, f0x480E13D6
  %i.kc = fadd float %i.kb, f0x41DC0BF4
  %i.kd = tail call float @llvm.sqrt.f32(float %i.kc)
  %i.ke = fmul float %i.kd, 2.500000e-01          ; 2 uses
  %i.kf = sub i64 %.2300.i.i, %spec.select289.i.i
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.kf ; 2 uses
  br i1 %.not.i223.i.i, label %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !28
  %i.ki = fadd float %i.ke, %i.kh
  br label %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i

_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i: ; preds = %bb.o, %bb.n
  %.sink.i224.i.i = phi float [ %i.ki, %bb.o ], [ %i.ke, %bb.n ]
  store float %.sink.i224.i.i, ptr %i.kg, align 4, !tbaa !28
  %exitcond323.not.i.i = icmp eq i64 %i.iu, %spec.select216.i.i
  br i1 %exitcond323.not.i.i, label %._crit_edge302.i.i, label %bb.n, !llvm.loop !697

._crit_edge302.i.i:                               ; preds = %_ZZN3jxl6N_SSE212_GLOBAL__N_124AdaptiveQuantizationImpl11ComputeTileEffRKNS_6Image3IfEERKNS_5RectTImEESA_iPNS_5PlaneIfEESD_ENKUlmE0_clEm.exit225.i.i, %.preheader291.i.i
  %i.kj = icmp eq i64 %.pre-phi, 3
  br i1 %i.kj, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %._crit_edge302.i.i
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.kl = getelementptr inbounds nuw [56 x i8], ptr %i.kk, i64 %i.el ; 2 uses
  %i.km = sub nuw i64 %storemerge306.i.i, %.0191.i.i
  %i.kn = lshr i64 %i.km, 2                       ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !22 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !17 ; 2 uses
  %i.ks = mul i64 %i.kr, %i.kn
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ks ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kt, i64 64) ]
  br i1 %.not317.i.i, label %.loopexit.i.i, label %.lr.ph305.i.i.preheader

.lr.ph305.i.i.preheader:                          ; preds = %bb.p
  br i1 %min.iters.check, label %.lr.ph305.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph305.i.i.preheader
  %3 = mul i64 %i.kr, %i.kn                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.kp, i64 %3
  %scevgep28.a = getelementptr i8, ptr %i.kp, i64 %i.fj
  %scevgep29.a = getelementptr i8, ptr %scevgep28.a, i64 %3
  %scevgep30.a = getelementptr i8, ptr %i.fx, i64 %i.fk
  %scevgep31 = getelementptr i8, ptr %scevgep30.a, i64 %i.fz
  %bound0 = icmp ult ptr %scevgep, %scevgep31
  %bound1 = icmp ult ptr %i.ga, %scevgep29.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph305.i.i.preheader56, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ku = shl nuw i64 %index, 4
  %i.kv = shl i64 %index, 4
  %i.kw = shl i64 %index, 4
  %i.kx = shl i64 %index, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ku ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.kv ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.kw ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.kx ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %i.lf = load float, ptr %i.ky, align 64, !tbaa !28, !alias.scope !749
  %i.lg = load float, ptr %i.la, align 16, !tbaa !28, !alias.scope !749
  %i.lh = load float, ptr %i.lc, align 32, !tbaa !28, !alias.scope !749
  %i.li = load float, ptr %i.le, align 16, !tbaa !28, !alias.scope !749
  %i.lj = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lk = insertelement <4 x float> %i.lj, float %i.lg, i64 1
  %i.ll = insertelement <4 x float> %i.lk, float %i.lh, i64 2
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 36
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ld, i64 52
  %i.lr = load float, ptr %i.ln, align 4, !tbaa !28, !alias.scope !749
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !28, !alias.scope !749
  %i.lt = load float, ptr %i.lp, align 4, !tbaa !28, !alias.scope !749
  %i.lu = load float, ptr %i.lq, align 4, !tbaa !28, !alias.scope !749
  %i.lv = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.lw = insertelement <4 x float> %i.lv, float %i.ls, i64 1
  %i.lx = insertelement <4 x float> %i.lw, float %i.lt, i64 2
  %i.ly = insertelement <4 x float> %i.lx, float %i.lu, i64 3
  %i.lz = fadd <4 x float> %i.lm, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.me = load float, ptr %i.ma, align 8, !tbaa !28, !alias.scope !749
  %i.mf = load float, ptr %i.mb, align 8, !tbaa !28, !alias.scope !749
  %i.mg = load float, ptr %i.mc, align 8, !tbaa !28, !alias.scope !749
  %i.mh = load float, ptr %i.md, align 8, !tbaa !28, !alias.scope !749
  %i.mi = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 1
  %i.mk = insertelement <4 x float> %i.mj, float %i.mg, i64 2
  %i.ml = insertelement <4 x float> %i.mk, float %i.mh, i64 3
  %i.mm = fadd <4 x float> %i.lz, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lb, i64 44
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ld, i64 60
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !28, !alias.scope !749
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !28, !alias.scope !749
  %i.mt = load float, ptr %i.mp, align 4, !tbaa !28, !alias.scope !749
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !28, !alias.scope !749
  %i.mv = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.mw = insertelement <4 x float> %i.mv, float %i.ms, i64 1
  %i.mx = insertelement <4 x float> %i.mw, float %i.mt, i64 2
  %i.my = insertelement <4 x float> %i.mx, float %i.mu, i64 3
  %i.mz = fadd <4 x float> %i.mm, %i.my
  %i.na = fmul <4 x float> %i.mz, splat (float 2.500000e-01)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index
  store <4 x float> %i.na, ptr %i.nb, align 16, !tbaa !28, !alias.scope !750, !noalias !749
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph305.i.i.preheader56

.lr.ph305.i.i.preheader56:                        ; preds = %vector.memcheck, %.lr.ph305.i.i.preheader, %middle.block
  %.0187303.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph305.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph305.i.i.prol.loopexit, label %.lr.ph305.i.i.prol

.lr.ph305.i.i.prol:                               ; preds = %.lr.ph305.i.i.preheader56
  %.idx.i.i.prol = shl nuw i64 %.0187303.i.i.ph, 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx.i.i.prol ; 4 uses
  %i.ne = load float, ptr %i.nd, align 64, !tbaa !28
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !28
  %i.nh = fadd float %i.ne, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nj = load float, ptr %i.ni, align 8, !tbaa !28
  %i.nk = fadd float %i.nh, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !28
  %i.nn = fadd float %i.nk, %i.nm
  %i.no = fmul float %i.nn, 2.500000e-01
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.0187303.i.i.ph
  store float %i.no, ptr %i.np, align 16, !tbaa !28
  %i.nq = or disjoint i64 %.0187303.i.i.ph, 1
  br label %.lr.ph305.i.i.prol.loopexit

.lr.ph305.i.i.prol.loopexit:                      ; preds = %.lr.ph305.i.i.prol, %.lr.ph305.i.i.preheader56
  %.0187303.i.i.unr = phi i64 [ %.0187303.i.i.ph, %.lr.ph305.i.i.preheader56 ], [ %i.nq, %.lr.ph305.i.i.prol ]
  %i.nr = icmp eq i64 %.0187303.i.i.ph, %invariant.op
  br i1 %i.nr, label %.loopexit.i.i, label %.lr.ph305.i.i

.lr.ph305.i.i:                                    ; preds = %.lr.ph305.i.i.prol.loopexit, %.lr.ph305.i.i
  %.0187303.i.i = phi i64 [ %i.ot, %.lr.ph305.i.i ], [ %.0187303.i.i.unr, %.lr.ph305.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i = shl nuw i64 %.0187303.i.i, 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx.i.i ; 4 uses
  %i.nt = load float, ptr %i.ns, align 16, !tbaa !28
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !28
  %i.nw = fadd float %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ny = load float, ptr %i.nx, align 8, !tbaa !28
  %i.nz = fadd float %i.nw, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !28
  %i.oc = fadd float %i.nz, %i.ob
  %i.od = fmul float %i.oc, 2.500000e-01
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.0187303.i.i
  store float %i.od, ptr %i.oe, align 4, !tbaa !28
  %i.of = add nuw nsw i64 %.0187303.i.i, 1        ; 2 uses
  %.idx.i.i.1 = shl nuw i64 %i.of, 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx.i.i.1 ; 4 uses
  %i.oh = load float, ptr %i.og, align 16, !tbaa !28
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !28
  %i.ok = fadd float %i.oh, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.om = load float, ptr %i.ol, align 8, !tbaa !28
  %i.on = fadd float %i.ok, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  %i.op = load float, ptr %i.oo, align 4, !tbaa !28
  %i.oq = fadd float %i.on, %i.op
  %i.or = fmul float %i.oq, 2.500000e-01
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.of
  store float %i.or, ptr %i.os, align 4, !tbaa !28
  %i.ot = add nuw nsw i64 %.0187303.i.i, 2        ; 2 uses
  %exitcond324.not.i.i.1 = icmp eq i64 %i.ep, %i.ot
  br i1 %exitcond324.not.i.i.1, label %.loopexit.i.i, label %.lr.ph305.i.i, !llvm.loop !702

.loopexit.i.i:                                    ; preds = %.lr.ph305.i.i.prol.loopexit, %.lr.ph305.i.i, %middle.block, %bb.p, %._crit_edge302.i.i
  %exitcond325.not.i.i = icmp eq i64 %i.fl, %.0192.i.i
  br i1 %exitcond325.not.i.i, label %._crit_edge309.loopexit.i.i, label %bb.g, !llvm.loop !703

._crit_edge309.loopexit.i.i:                      ; preds = %.loopexit.i.i
  %.pre330.i.i = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [56 x i8], ptr %.pre330.i.i, i64 %i.el ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  %.phi.trans.insert57.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %.pre58.i = load i32, ptr %.phi.trans.insert57.i, align 4, !tbaa !26
  %i.ou = zext i32 %.pre.i to i64
  %i.ov = zext i32 %.pre58.i to i64
  br label %.preheader165.i.i

.preheader165.i.i:                                ; preds = %._crit_edge309.loopexit.i.i, %bb.f
  %i.ow = phi i64 [ %i.ov, %._crit_edge309.loopexit.i.i ], [ %i.er, %bb.f ]
  %i.ox = phi i64 [ %i.ou, %._crit_edge309.loopexit.i.i ], [ %i.ep, %bb.f ]
  %i.oy = phi ptr [ %.pre330.i.i, %._crit_edge309.loopexit.i.i ], [ %i.em, %bb.f ]
  %i.oz = lshr exact i64 %spec.select289.i.i, 2
  %.lobit.i.i = and i64 %i.oz, 1
  %i.pa = lshr exact i64 %.0191.i.i, 2
  %i.pb = and i64 %i.pa, 1
  %i.pc = shl nsw i64 %i.s, 1
  %i.pd = shl nsw i64 %i.t, 1
  %i.pe = fcmp olt float %i.y, 2.000000e+00
  %i.pf = fsub nnan float 2.000000e+00, %i.y
  %i.pg = fmul nnan float %i.pf, 5.000000e-01
  %.083.i.i = select i1 %i.pe, float %i.pg, float 0.000000e+00
  %i.ph = insertelement <4 x float> poison, float %.083.i.i, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pi, <4 x float> <float 0.000000e+00, float -1.000000e-01, float -9.000000e-02, float -6.000000e-02>, <4 x float> <float 1.250000e-01, float 1.000000e-01, float 9.000000e-02, float 6.000000e-02>) ; 4 uses
  %i.pk = extractelement <4 x float> %i.pj, i64 0 ; 2 uses
  %i.pl = extractelement <4 x float> %i.pj, i64 1 ; 2 uses
  %i.pm = fadd float %i.pk, %i.pl
  %i.pn = extractelement <4 x float> %i.pj, i64 2 ; 2 uses
  %i.po = fadd float %i.pn, %i.pm
  %i.pp = extractelement <4 x float> %i.pj, i64 3 ; 2 uses
  %i.pq = fadd float %i.pp, %i.po
  %i.pr = fdiv float f0x3E9964C9, %i.pq           ; 4 uses
  %i.ps = fmul float %i.pk, %i.pr
  %i.pt = fmul float %i.pl, %i.pr
  %i.pu = fmul float %i.pn, %i.pr
  %i.pv = fmul float %i.pp, %i.pr
  %cond.i = icmp eq i64 %i.p, %i.l
  br i1 %cond.i, label %._crit_edge316.i.i, label %.lr.ph171.i.i

.lr.ph171.i.i:                                    ; preds = %.preheader165.i.i
  %i.pw = getelementptr inbounds nuw [56 x i8], ptr %i.oy, i64 %i.el ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !22 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !17 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !22 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !17 ; 5 uses
  %.not173.i.i = icmp eq i64 %i.f, %i.q
  br i1 %.not173.i.i, label %._crit_edge316.i.i, label %.lr.ph.us.i21.i

.lr.ph.us.i21.i:                                  ; preds = %.lr.ph171.i.i, %._crit_edge.us.i.i
  %.079170.us.i.i = phi i64 [ %i.td, %._crit_edge.us.i.i ], [ 0, %.lr.ph171.i.i ] ; 4 uses
end_hunk_2
