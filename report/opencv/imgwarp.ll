Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic32fC3EPKfS3_iPKvmNS_5Size_IiEEPfS3_iS8_:bb.a
  %i.el = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.da, float %i.ek)
  %i.em = extractelement <2 x float> %i.cd, i64 1
  %i.en = tail call float @llvm.fmuladd.f32(float %i.el, float %i.em, float %i.dv)
  %i.eo = getelementptr inbounds i8, ptr %i.ac, i64 %i.ch ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.es = load <2 x float>, ptr %i.ci, align 4, !tbaa !52
  %i.et = load <2 x float>, ptr %i.cj, align 4, !tbaa !52
  %i.eu = load <2 x float>, ptr %i.ck, align 4, !tbaa !52
  %i.ev = load <2 x float>, ptr %i.cl, align 4, !tbaa !52
  %i.ew = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ex = fmul <2 x float> %i.ew, %i.et
  %i.ey = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ey, <2 x float> %i.ex)
  %i.fa = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fc = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.fc, <2 x float> %i.fb)
  %i.fe = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fe, <2 x float> zeroinitializer)
  %i.fg = load <2 x float>, ptr %i.de, align 4, !tbaa !52
  %i.fh = load <2 x float>, ptr %i.df, align 4, !tbaa !52
  %i.fi = load <2 x float>, ptr %i.dg, align 4, !tbaa !52
  %i.fj = load <2 x float>, ptr %i.dh, align 4, !tbaa !52
  %i.fk = fmul <2 x float> %i.ew, %i.fh
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.ey, <2 x float> %i.fk)
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fa, <2 x float> %i.fl)
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fc, <2 x float> %i.fm)
  %i.fo = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fo, <2 x float> %i.ff)
  %i.fq = load <2 x float>, ptr %i.dw, align 4, !tbaa !52
  %i.fr = load <2 x float>, ptr %i.dx, align 4, !tbaa !52
  %i.fs = load <2 x float>, ptr %i.dy, align 4, !tbaa !52
  %i.ft = load <2 x float>, ptr %i.dz, align 4, !tbaa !52
  %i.fu = fmul <2 x float> %i.ew, %i.fr
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.ey, <2 x float> %i.fu)
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fa, <2 x float> %i.fv)
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fc, <2 x float> %i.fw)
  %i.fy = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.fp)
  %i.ga = load <2 x float>, ptr %i.eo, align 4, !tbaa !52
  %i.gb = load <2 x float>, ptr %i.ep, align 4, !tbaa !52
  %i.gc = load <2 x float>, ptr %i.eq, align 4, !tbaa !52
  %i.gd = load <2 x float>, ptr %i.er, align 4, !tbaa !52
  %i.ge = fmul <2 x float> %i.ew, %i.gb
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.ey, <2 x float> %i.ge)
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.fa, <2 x float> %i.gf)
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.fc, <2 x float> %i.gg)
  %i.gi = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gi, <2 x float> %i.fz)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !52
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !52
  %i.go = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.gp = load float, ptr %i.go, align 4, !tbaa !52
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !52
  %i.gs = fmul float %i.cu, %i.gn
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.cw, float %i.gs)
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.cy, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.da, float %i.gu)
  %i.gw = extractelement <2 x float> %i.bz, i64 1
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gw, float %i.en)
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.gy = select i1 %i.w, ptr %.0174301.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bh, i32 %i.bj, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.gy)
  %i.gz = load float, ptr %i.ad, align 16, !tbaa !52
  %i.ha = load float, ptr %i.ae, align 4, !tbaa !52
  %i.hb = load float, ptr %i.af, align 8, !tbaa !52
  %i.hc = load float, ptr %i.ag, align 4, !tbaa !52
  %i.hd = extractelement <2 x float> %i.ca, i64 0 ; 4 uses
  %i.he = fmul float %i.hd, %i.ha
  %i.hf = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.hf, float %i.he)
  %i.hh = extractelement <2 x float> %i.cd, i64 0 ; 4 uses
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hh, float %i.hg)
  %i.hj = extractelement <2 x float> %i.bz, i64 0 ; 4 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hj, float %i.hi)
  %i.hl = extractelement <2 x float> %i.bx, i64 1
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.hl, float 0.000000e+00)
  %i.hn = load <8 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.ho = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hp = shufflevector <8 x float> %i.hn, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.hq = fmul <2 x float> %i.ho, %i.hp
  %i.hr = shufflevector <8 x float> %i.hn, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.hs = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.hs, <2 x float> %i.hq)
  %i.hu = shufflevector <8 x float> %i.hn, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.hv = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hv, <2 x float> %i.ht)
  %i.hx = shufflevector <8 x float> %i.hn, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.hy = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hy, <2 x float> %i.hw)
  %i.ia = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.ia, <2 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bh, i32 %i.bj, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.gy)
  %i.ic = load <8 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.id = shufflevector <8 x float> %i.ic, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ie = fmul <2 x float> %i.ho, %i.id
  %i.if = shufflevector <8 x float> %i.ic, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.hs, <2 x float> %i.ie)
  %i.ih = shufflevector <8 x float> %i.ic, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.hv, <2 x float> %i.ig)
  %i.ij = shufflevector <8 x float> %i.ic, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.hy, <2 x float> %i.ii)
  %i.il = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ib)
  %i.in = load float, ptr %i.ad, align 16, !tbaa !52
  %i.io = load float, ptr %i.ae, align 4, !tbaa !52
  %i.ip = load float, ptr %i.af, align 8, !tbaa !52
  %i.iq = load float, ptr %i.ag, align 4, !tbaa !52
  %i.ir = fmul float %i.hd, %i.io
  %i.is = tail call float @llvm.fmuladd.f32(float %i.in, float %i.hf, float %i.ir)
  %i.it = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.hh, float %i.is)
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.hj, float %i.it)
  %i.iv = extractelement <2 x float> %i.ca, i64 1
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iv, float %i.hm)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bh, i32 %i.bj, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.gy)
  %i.ix = load <8 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.iz = fmul <2 x float> %i.ho, %i.iy
  %i.ja = shufflevector <8 x float> %i.ix, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %i.hs, <2 x float> %i.iz)
  %i.jc = shufflevector <8 x float> %i.ix, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.hv, <2 x float> %i.jb)
  %i.je = shufflevector <8 x float> %i.ix, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.hy, <2 x float> %i.jd)
  %i.jg = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jf, <2 x float> %i.jg, <2 x float> %i.im)
  %i.ji = load float, ptr %i.ad, align 16, !tbaa !52
  %i.jj = load float, ptr %i.ae, align 4, !tbaa !52
  %i.jk = load float, ptr %i.af, align 8, !tbaa !52
  %i.jl = load float, ptr %i.ag, align 4, !tbaa !52
  %i.jm = fmul float %i.hd, %i.jj
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.hf, float %i.jm)
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.hh, float %i.jn)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.hj, float %i.jo)
  %i.jq = extractelement <2 x float> %i.cd, i64 1
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.jq, float %i.iw)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bh, i32 %i.bj, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.gy)
  %i.js = load <8 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.jt = shufflevector <8 x float> %i.js, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ju = fmul <2 x float> %i.ho, %i.jt
  %i.jv = shufflevector <8 x float> %i.js, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.hs, <2 x float> %i.ju)
  %i.jx = shufflevector <8 x float> %i.js, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.jy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.hv, <2 x float> %i.jw)
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.hy, <2 x float> %i.jy)
  %i.kb = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kb, <2 x float> %i.jh)
  %i.kd = load float, ptr %i.ad, align 16, !tbaa !52
  %i.ke = load float, ptr %i.ae, align 4, !tbaa !52
  %i.kf = load float, ptr %i.af, align 8, !tbaa !52
  %i.kg = load float, ptr %i.ag, align 4, !tbaa !52
  %i.kh = fmul float %i.hd, %i.ke
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kd, float %i.hf, float %i.kh)
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.hh, float %i.ki)
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kg, float %i.hj, float %i.kj)
  %i.kl = extractelement <2 x float> %i.bz, i64 1
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.kl, float %i.jr)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.h, %bb.g
  %.sink.i = phi float [ %i.gx, %bb.h ], [ %i.km, %.preheader.preheader.i ], [ %.sroa.6.0.i, %bb.g ]
  %i.kn = phi <2 x float> [ %i.gj, %bb.h ], [ %i.kc, %.preheader.preheader.i ], [ %i.h, %bb.g ]
  store <2 x float> %i.kn, ptr %.0174301.i, align 4
  %i.ko = getelementptr inbounds nuw i8, ptr %.0174301.i, i64 8
  store float %.sink.i, ptr %i.ko, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kp = getelementptr i8, ptr %.0174301.i, i64 12
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !157

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic32fC4EPKfS3_iPKvmNS_5Size_IiEEPfS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 16       ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 4 uses
  %.not218.i = icmp eq ptr %9, null
  br i1 %.not218.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <4 x float>, ptr %9, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi <4 x float> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.h = bitcast i64 %5 to <2 x i32>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %i.i = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.h, <2 x i32> splat (i32 16)) ; 2 uses
  %i.j = sub nsw <2 x i32> zeroinitializer, %i.i
  %i.k = shl nuw nsw <2 x i32> %i.i, splat (i32 1)
  %i.l = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.m = uitofp nneg <2 x i32> %i.k to <2 x float> ; 2 uses
  %i.n = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.o = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.p = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated252.i = add nsw i32 %i.p, -3
  %i.q = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.q, -3
  %i.r = fadd float %i.d, 2.000000e+00
  %i.s = fadd float %i.d, 3.000000e+00
  %i.t = fneg float %i.s
  %i.u = icmp eq i32 %8, 5
  %i.v = trunc i64 %4 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.x = shl i64 %4, 1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %i.z = mul i64 %4, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %10 = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.d, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.ab = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.d, i64 2
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next347.i, %bb.i ] ; 3 uses
  %.0212339.i = phi ptr [ %6, %.lr.ph.i ], [ %i.gs, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv346.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv346.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1 ; 2 uses
  %i.am = fcmp olt <2 x float> %i.al, %i.l
  %i.an = select <2 x i1> %i.am, <2 x float> %i.l, <2 x float> %i.al ; 2 uses
  %i.ao = fcmp ogt <2 x float> %i.an, %i.m
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.m, <2 x float> %i.an ; 3 uses
  %i.aq = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ap)
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>   ; 3 uses
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 2 uses
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.au = shufflevector <4 x float> %i.at, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.av = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = fsub <4 x float> %i.au, %i.aw
  %i.ay = insertelement <4 x float> %i.at, float 0.000000e+00, i64 2
  %i.az = insertelement <4 x float> %i.av, float 0.000000e+00, i64 2
  %i.ba = fsub <4 x float> %i.ay, %i.az
  %i.bb = fsub <2 x float> %i.ap, %i.as           ; 4 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bd = extractelement <2 x i32> %i.ar, i64 0   ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 6 uses
  %i.bf = extractelement <2 x i32> %i.ar, i64 1   ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1                   ; 6 uses
  %i.bh = add nsw i32 %i.bd, 3
  %i.bi = icmp uge i32 %i.bh, %i.n
  %i.bj = add nsw i32 %i.bf, 3
  %i.bk = icmp uge i32 %i.bj, %i.o
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %.sink.split
    i32 5, label %bb.i
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bm = icmp ult i32 %i.be, %.sroa.speculated252.i
  %i.bn = icmp ult i32 %i.bg, %.sroa.speculated.i
  %i.bo = and i1 %i.bm, %i.bn
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.bb, <2 x float> %i.af)
  %i.bq = fmul <2 x float> %i.bb, %i.bb           ; 2 uses
  %i.br = fmul <4 x float> %i.bc, %i.ax           ; 2 uses
  %i.bs = fsub <4 x float> %i.ab, %i.ba           ; 2 uses
  %i.bt = fmul <4 x float> %11, %i.br
  %i.bu = fsub <4 x float> %11, %i.br
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.bw = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.bs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bx = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ca = fmul <4 x float> %i.bs, %i.bz
  %i.cb = fmul <4 x float> %i.bv, %i.ca           ; 10 uses
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bp, <2 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ce = fsub <2 x float> splat (float 1.000000e+00), %i.cd
  %i.cf = fsub <2 x float> %i.ce, %i.cc
  %i.cg = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ch = fsub <2 x float> %i.cf, %i.cg           ; 4 uses
  br i1 %i.bo, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.ci = mul nsw i32 %i.bg, %i.v
  %i.cj = shl nsw i32 %i.be, 4
  %i.ck = add nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %3, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.cq = getelementptr inbounds i8, ptr %i.w, i64 %i.cl ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cu = getelementptr inbounds i8, ptr %i.y, i64 %i.cl ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cy = getelementptr inbounds i8, ptr %i.aa, i64 %i.cl ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load <4 x float>, ptr %i.cm, align 4, !tbaa !52
  %i.dd = load <4 x float>, ptr %i.cn, align 4, !tbaa !52
  %i.de = load <4 x float>, ptr %i.co, align 4, !tbaa !52
  %i.df = load <4 x float>, ptr %i.cp, align 4, !tbaa !52
  %i.dg = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dh = fmul <4 x float> %i.dg, %i.dd
  %i.di = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.di, <4 x float> %i.dh)
  %i.dk = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dk, <4 x float> %i.dj)
  %i.dm = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dm, <4 x float> %i.dl)
  %i.do = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.do, <4 x float> zeroinitializer)
  %i.dq = load <4 x float>, ptr %i.cq, align 4, !tbaa !52
  %i.dr = load <4 x float>, ptr %i.cr, align 4, !tbaa !52
  %i.ds = load <4 x float>, ptr %i.cs, align 4, !tbaa !52
  %i.dt = load <4 x float>, ptr %i.ct, align 4, !tbaa !52
  %i.du = fmul <4 x float> %i.dg, %i.dr
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.di, <4 x float> %i.du)
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dk, <4 x float> %i.dv)
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dm, <4 x float> %i.dw)
  %i.dy = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dy, <4 x float> %i.dp)
  %i.ea = load <4 x float>, ptr %i.cu, align 4, !tbaa !52
  %i.eb = load <4 x float>, ptr %i.cv, align 4, !tbaa !52
  %i.ec = load <4 x float>, ptr %i.cw, align 4, !tbaa !52
  %i.ed = load <4 x float>, ptr %i.cx, align 4, !tbaa !52
  %i.ee = fmul <4 x float> %i.dg, %i.eb
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.di, <4 x float> %i.ee)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.dk, <4 x float> %i.ef)
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.dm, <4 x float> %i.eg)
  %i.ei = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ei, <4 x float> %i.dz)
  %i.ek = load <4 x float>, ptr %i.cy, align 4, !tbaa !52
  %i.el = load <4 x float>, ptr %i.cz, align 4, !tbaa !52
  %i.em = load <4 x float>, ptr %i.da, align 4, !tbaa !52
  %i.en = load <4 x float>, ptr %i.db, align 4, !tbaa !52
  %i.eo = fmul <4 x float> %i.dg, %i.el
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.di, <4 x float> %i.eo)
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.dk, <4 x float> %i.ep)
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.dm, <4 x float> %i.eq)
  %i.es = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.es, <4 x float> %i.ej)
  br label %.sink.split

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.eu = select i1 %i.u, ptr %.0212339.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.be, i32 %i.bg, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.eu)
  %i.ev = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.ew = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ex = shufflevector <16 x float> %i.ev, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.ey = fmul <4 x float> %i.ew, %i.ex
  %i.ez = shufflevector <16 x float> %i.ev, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.fa = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> %i.fa, <4 x float> %i.ey)
  %i.fc = shufflevector <16 x float> %i.ev, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.fd = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fd, <4 x float> %i.fb)
  %i.ff = shufflevector <16 x float> %i.ev, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fg = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fg, <4 x float> %i.fe)
  %i.fi = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.fi, <4 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.be, i32 %i.bg, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.eu)
  %i.fk = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.fl = shufflevector <16 x float> %i.fk, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fm = fmul <4 x float> %i.ew, %i.fl
  %i.fn = shufflevector <16 x float> %i.fk, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fa, <4 x float> %i.fm)
  %i.fp = shufflevector <16 x float> %i.fk, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.fd, <4 x float> %i.fo)
  %i.fr = shufflevector <16 x float> %i.fk, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fg, <4 x float> %i.fq)
  %i.ft = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.ft, <4 x float> %i.fj)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.be, i32 %i.bg, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.eu)
  %i.fv = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.fw = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fx = fmul <4 x float> %i.ew, %i.fw
  %i.fy = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fa, <4 x float> %i.fx)
  %i.ga = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.fd, <4 x float> %i.fz)
  %i.gc = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.fg, <4 x float> %i.gb)
  %i.ge = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.ge, <4 x float> %i.fu)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIffEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.be, i32 %i.bg, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.eu)
  %i.gg = load <16 x float>, ptr %i.a, align 16, !tbaa !52 ; 4 uses
  %i.gh = shufflevector <16 x float> %i.gg, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.gi = fmul <4 x float> %i.ew, %i.gh
  %i.gj = shufflevector <16 x float> %i.gg, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.fa, <4 x float> %i.gi)
  %i.gl = shufflevector <16 x float> %i.gg, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.fd, <4 x float> %i.gk)
  %i.gn = shufflevector <16 x float> %i.gg, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.fg, <4 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gp, <4 x float> %i.gf)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %.preheader.preheader.i
  %i.gr = phi <4 x float> [ %i.gq, %.preheader.preheader.i ], [ %i.et, %bb.h ], [ %i.f, %bb.g ]
  store <4 x float> %i.gr, ptr %.0212339.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.gs = getelementptr i8, ptr %.0212339.i, i64 16
  %exitcond349.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count.i
  br i1 %exitcond349.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !158

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIfLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC1EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [1 x [4 x i32]], align 16         ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not105.i = icmp eq ptr %9, null
  br i1 %.not105.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load double, ptr %9, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi double [ %i.e, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 3 uses
  %.sroa.speculated167.i = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 16) ; 2 uses
  %.sroa.speculated158.i = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 16) ; 2 uses
  %i.h = sub nsw i32 0, %.sroa.speculated167.i
  %i.i = sitofp i32 %i.h to float                 ; 2 uses
  %i.j = shl nuw nsw i32 %.sroa.speculated167.i, 1
  %i.k = uitofp nneg i32 %i.j to float            ; 2 uses
  %i.l = sub nsw i32 0, %.sroa.speculated158.i
  %i.m = sitofp i32 %i.l to float                 ; 2 uses
  %i.n = shl nuw nsw i32 %.sroa.speculated158.i, 1
  %i.o = uitofp nneg i32 %i.n to float            ; 2 uses
  %i.p = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.q = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.r = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated140.i = add nsw i32 %i.r, -3
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC1EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_:bb.a
  %i.em = extractelement <2 x float> %i.dz, i64 0
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.bv, float %i.el)
  %i.eo = extractelement <2 x float> %i.dz, i64 1
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.bu, float %i.en)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.cc, float %i.ek)
  %i.er = fpext float %i.eq to double
  br label %.sink.split.i

.preheader.i:                                     ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.es = select i1 %i.w, ptr %.099226.i, ptr %9  ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.et = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.eu = sitofp <4 x i32> %i.et to <4 x float>   ; 4 uses
  %i.ev = extractelement <4 x float> %i.eu, i64 1
  %i.ew = fmul float %i.bq, %i.ev
  %i.ex = extractelement <4 x float> %i.eu, i64 0
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.br, float %i.ew)
  %i.ez = extractelement <4 x float> %i.eu, i64 2
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.bv, float %i.ey)
  %i.fb = extractelement <4 x float> %i.eu, i64 3
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.bu, float %i.fa)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ca, float 0.000000e+00)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.fe = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.ff = sitofp <4 x i32> %i.fe to <4 x float>   ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 1
  %i.fh = fmul float %i.bq, %i.fg
  %i.fi = extractelement <4 x float> %i.ff, i64 0
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.br, float %i.fh)
  %i.fk = extractelement <4 x float> %i.ff, i64 2
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.bv, float %i.fj)
  %i.fm = extractelement <4 x float> %i.ff, i64 3
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.bu, float %i.fl)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.ce, float %i.fd)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.fp = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.fq = sitofp <4 x i32> %i.fp to <4 x float>   ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 1
  %i.fs = fmul float %i.bq, %i.fr
  %i.ft = extractelement <4 x float> %i.fq, i64 0
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.br, float %i.fs)
  %i.fv = extractelement <4 x float> %i.fq, i64 2
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.bv, float %i.fu)
  %i.fx = extractelement <4 x float> %i.fq, i64 3
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.bu, float %i.fw)
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.ch, float %i.fo)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 1, i32 %i.av, i32 %i.aw, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.es)
  %i.ga = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.gb = sitofp <4 x i32> %i.ga to <4 x float>   ; 4 uses
  %i.gc = extractelement <4 x float> %i.gb, i64 1
  %i.gd = fmul float %i.bq, %i.gc
  %i.ge = extractelement <4 x float> %i.gb, i64 0
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.br, float %i.gd)
  %i.gg = extractelement <4 x float> %i.gb, i64 2
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.bv, float %i.gf)
  %i.gi = extractelement <4 x float> %i.gb, i64 3
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.bu, float %i.gh)
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.cc, float %i.fz)
  %i.gl = fpext float %i.gk to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.i, %bb.h, %bb.g
  %.sink.i = phi double [ %i.er, %bb.h ], [ %i.gl, %.preheader.i ], [ %i.f, %bb.g ]
  store double %.sink.i, ptr %.099226.i, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.099226.i, i64 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !159

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi1EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC2EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [2 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not142.i = icmp eq ptr %9, null
  br i1 %.not142.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load double, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi double [ %i.e, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.5.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.i = bitcast i64 %5 to <2 x i32>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %i.j = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.i, <2 x i32> splat (i32 16)) ; 2 uses
  %i.k = sub nsw <2 x i32> zeroinitializer, %i.j
  %i.l = shl nuw nsw <2 x i32> %i.j, splat (i32 1)
  %i.m = sitofp <2 x i32> %i.k to <2 x float>     ; 2 uses
  %i.n = uitofp nneg <2 x i32> %i.l to <2 x float> ; 2 uses
  %i.o = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.p = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.q = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated176.i = add nsw i32 %i.q, -3
  %i.r = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.r, -3
  %i.s = fadd float %i.d, 2.000000e+00
  %i.t = fadd float %i.d, 3.000000e+00
  %i.u = fneg float %i.t
  %i.v = icmp eq i32 %8, 5
  %i.w = trunc i64 %4 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.y = shl i64 %4, 1
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.aa = mul i64 %4, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.ad = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0136263.i = phi ptr [ %6, %.lr.ph.i ], [ %i.ll, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !52
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !52
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ak, i64 1 ; 2 uses
  %i.an = fcmp olt <2 x float> %i.am, %i.m
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.m, <2 x float> %i.am ; 2 uses
  %i.ap = fcmp ogt <2 x float> %i.ao, %i.n
  %i.aq = select <2 x i1> %i.ap, <2 x float> %i.n, <2 x float> %i.ao ; 2 uses
  %i.ar = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.aq)
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>   ; 3 uses
  %i.at = sitofp <2 x i32> %i.as to <2 x float>
  %i.au = fsub <2 x float> %i.aq, %i.at           ; 5 uses
  %i.av = extractelement <2 x i32> %i.as, i64 0   ; 2 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 6 uses
  %i.ax = extractelement <2 x i32> %i.as, i64 1   ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1                   ; 6 uses
  %i.az = add nsw i32 %i.av, 3
  %i.ba = icmp uge i32 %i.az, %i.o
  %i.bb = add nsw i32 %i.ax, 3
  %i.bc = icmp uge i32 %i.bb, %i.p
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.be = icmp ult i32 %i.aw, %.sroa.speculated176.i
  %i.bf = icmp ult i32 %i.ay, %.sroa.speculated.i
  %i.bg = and i1 %i.be, %i.bf
  %i.bh = fmul <2 x float> %i.au, %i.au           ; 3 uses
  %i.bi = extractelement <2 x float> %i.au, i64 0 ; 2 uses
  %i.bj = fsub float 1.000000e+00, %i.bi          ; 3 uses
  %i.bk = fmul float %i.d, %i.bi
  %i.bl = fmul float %i.bj, %i.bj
  %i.bm = extractelement <2 x float> %i.bh, i64 0
  %i.bn = fmul float %i.d, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bk, i64 1
  %i.bq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 13 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.au, <2 x float> %i.ag)
  %i.bu = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.bv = fsub float 1.000000e+00, %i.bu          ; 3 uses
  %i.bw = fmul float %i.d, %i.bu
  %i.bx = fmul float %i.bv, %i.bv
  %i.by = extractelement <2 x float> %i.bh, i64 1
  %i.bz = fmul float %i.d, %i.by
  %i.ca = fmul float %i.bw, %i.bx                 ; 3 uses
  %i.cb = fmul float %i.bv, %i.bz                 ; 3 uses
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bt, <2 x float> splat (float 1.000000e+00)) ; 6 uses
  %i.cd = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.ce = insertelement <2 x float> %i.cd, float %i.ca, i64 1
  %i.cf = fsub <2 x float> splat (float 1.000000e+00), %i.ce
  %i.cg = fsub <2 x float> %i.cf, %i.cc
  %i.ch = insertelement <2 x float> %i.bs, float %i.cb, i64 1
  %i.ci = fsub <2 x float> %i.cg, %i.ch           ; 4 uses
  br i1 %i.bg, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.cj = extractelement <2 x float> %i.bs, i64 0
  %i.ck = extractelement <2 x float> %i.bs, i64 1
  %i.cl = mul nsw i32 %i.ay, %i.w
  %i.cm = shl nsw i32 %i.aw, 4
  %i.cn = add nsw i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64                   ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %3, i64 %i.co ; 7 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !58
  %i.cr = fptrunc double %i.cq to float
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.db = load double, ptr %i.da, align 8, !tbaa !58
  %i.dc = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cv, i64 1
  %i.de = fptrunc <2 x double> %i.dd to <2 x float>
  %i.df = load double, ptr %i.ct, align 8, !tbaa !58
  %i.dg = fptrunc double %i.df to float
  %i.dh = load <2 x double>, ptr %i.cs, align 8, !tbaa !58
  %i.di = fptrunc <2 x double> %i.dh to <2 x float>
  %i.dj = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.dj, %i.di           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ck, float %i.dl)
  %i.dn = extractelement <2 x float> %i.ci, i64 0 ; 8 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dn, float %i.dm)
  %i.dp = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.do, i64 1
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dq, <2 x float> %i.ds) ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = getelementptr inbounds i8, ptr %i.x, i64 %i.co ; 8 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !58
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !58
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !58
  %i.ec = insertelement <2 x double> poison, double %i.db, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.dw, i64 1
  %i.ee = fptrunc <2 x double> %i.ed to <2 x float>
  %i.ef = fptrunc double %i.dy to float
  %i.eg = fptrunc double %i.cz to float
  %i.eh = extractelement <2 x float> %i.cc, i64 0 ; 6 uses
  %i.ei = fmul float %i.eh, %i.ef
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.dn, float %i.du)
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ei, i64 1
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.bs, <2 x float> %i.el) ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !58
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.es = load double, ptr %i.er, align 8, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.eu = load double, ptr %i.et, align 8, !tbaa !58
  %i.ev = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.ep, i64 1
  %i.ex = fptrunc <2 x double> %i.ew to <2 x float>
  %i.ey = load double, ptr %i.eq, align 8, !tbaa !58
  %i.ez = load double, ptr %i.dz, align 8, !tbaa !58
  %i.fa = fptrunc double %i.ey to float
  %i.fb = fptrunc double %i.ez to float
  %i.fc = fmul float %i.eh, %i.fa
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.dn, float %i.en)
  %i.fe = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fc, i64 1
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.bs, <2 x float> %i.ff) ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 1
  %i.fi = getelementptr inbounds i8, ptr %i.z, i64 %i.co ; 8 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !58
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !58
  %i.fp = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fj, i64 1
  %i.fr = fptrunc <2 x double> %i.fq to <2 x float>
  %i.fs = fptrunc double %i.fl to float
  %i.ft = fptrunc double %i.es to float
  %i.fu = fmul float %i.eh, %i.fs
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.dn, float %i.fh)
  %i.fw = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fu, i64 1
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.bs, <2 x float> %i.fx) ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !58
  %i.gh = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gb, i64 1
  %i.gj = fptrunc <2 x double> %i.gi to <2 x float>
  %i.gk = load double, ptr %i.gc, align 8, !tbaa !58
  %i.gl = load double, ptr %i.fm, align 8, !tbaa !58
  %i.gm = fptrunc double %i.gk to float
  %i.gn = fptrunc double %i.gl to float
  %i.go = fmul float %i.eh, %i.gm
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.dn, float %i.fz)
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.go, i64 1
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.bs, <2 x float> %i.gr) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 1
  %i.gu = getelementptr inbounds i8, ptr %i.ab, i64 %i.co ; 8 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !58
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !58
  %i.hb = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gv, i64 1
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float>
  %i.he = fptrunc double %i.gx to float
  %i.hf = fptrunc double %i.ge to float
  %i.hg = fmul float %i.eh, %i.he
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.dn, float %i.gt)
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.hg, i64 1
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.bs, <2 x float> %i.hj) ; 2 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !58
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !58
  %i.hr = fptrunc double %i.hq to float
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !58
  %i.hu = fptrunc double %i.ht to float
  %i.hv = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hn, i64 1
  %i.hx = fptrunc <2 x double> %i.hw to <2 x float>
  %i.hy = load double, ptr %i.ho, align 8, !tbaa !58
  %i.hz = load double, ptr %i.gy, align 8, !tbaa !58
  %i.ia = fptrunc double %i.hy to float
  %i.ib = fptrunc double %i.hz to float
  %i.ic = fmul float %i.eh, %i.ia
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.dn, float %i.hl)
  %i.ie = insertelement <2 x float> poison, float %i.id, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.ic, i64 1
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.bs, <2 x float> %i.if) ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 1
  %i.ii = shufflevector <2 x float> %i.dt, <2 x float> %i.em, <2 x i32> <i32 1, i32 2>
  %i.ij = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ik, <2 x float> zeroinitializer)
  %i.im = shufflevector <2 x float> %i.fg, <2 x float> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.in = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.in, <2 x float> %i.il)
  %i.ip = shufflevector <2 x float> %i.gs, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.iq = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.iq, <2 x float> %i.io)
  %i.is = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.dn, float %i.ih)
  %i.it = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.cj, float %i.is)
  %i.iu = insertelement <2 x float> %i.ig, float %i.it, i64 1
  %i.iv = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.ir)
  %i.iy = fpext <2 x float> %i.ix to <2 x double> ; 2 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 0
  store double %i.iz, ptr %.0136263.i, align 8, !tbaa !58
  %i.ja = extractelement <2 x double> %i.iy, i64 1
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  store double %.sroa.0.0.i, ptr %.0136263.i, align 8
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.jb = select i1 %i.v, ptr %.0136263.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.aw, i32 %i.ay, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.jb)
  %i.jc = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.jd = sitofp <4 x i32> %i.jc to <4 x float>   ; 4 uses
  %i.je = load <4 x i32>, ptr %i.ac, align 16, !tbaa !16
  %i.jf = sitofp <4 x i32> %i.je to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.aw, i32 %i.ay, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.jb)
  %i.jg = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.jh = sitofp <4 x i32> %i.jg to <4 x float>   ; 4 uses
  %i.ji = load <4 x i32>, ptr %i.ac, align 16, !tbaa !16
  %i.jj = sitofp <4 x i32> %i.ji to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.aw, i32 %i.ay, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.jb)
  %i.jk = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.jl = sitofp <4 x i32> %i.jk to <4 x float>   ; 4 uses
  %i.jm = load <4 x i32>, ptr %i.ac, align 16, !tbaa !16
  %i.jn = sitofp <4 x i32> %i.jm to <4 x float>   ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 2, i32 %i.aw, i32 %i.ay, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.jb)
  %i.jo = load <4 x i32>, ptr %i.a, align 16, !tbaa !16
  %i.jp = sitofp <4 x i32> %i.jo to <4 x float>   ; 4 uses
  %i.jq = load <4 x i32>, ptr %i.ac, align 16, !tbaa !16
  %i.jr = sitofp <4 x i32> %i.jq to <4 x float>   ; 4 uses
  %i.js = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jt = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 1, i32 5>
  %i.ju = fmul <2 x float> %i.js, %i.jt
  %i.jv = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 0, i32 4>
  %i.jw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.cd, <2 x float> %i.ju)
  %i.jx = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 2, i32 6>
  %i.jy = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.jy, <2 x float> %i.jw)
  %i.ka = shufflevector <4 x float> %i.jd, <4 x float> %i.jf, <2 x i32> <i32 3, i32 7>
  %i.kb = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kb, <2 x float> %i.jz)
  %10 = insertelement <2 x float> poison, float %i.ca, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %11, <2 x float> zeroinitializer)
  %i.ke = shufflevector <4 x float> %i.jh, <4 x float> %i.jj, <2 x i32> <i32 1, i32 5>
  %i.kf = fmul <2 x float> %i.js, %i.ke
  %i.kg = shufflevector <4 x float> %i.jh, <4 x float> %i.jj, <2 x i32> <i32 0, i32 4>
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.cd, <2 x float> %i.kf)
  %i.ki = shufflevector <4 x float> %i.jh, <4 x float> %i.jj, <2 x i32> <i32 2, i32 6>
  %i.kj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> %i.jy, <2 x float> %i.kh)
  %i.kk = shufflevector <4 x float> %i.jh, <4 x float> %i.jj, <2 x i32> <i32 3, i32 7>
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kb, <2 x float> %i.kj)
  %i.km = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.km, <2 x float> %i.kd)
  %i.ko = shufflevector <4 x float> %i.jl, <4 x float> %i.jn, <2 x i32> <i32 1, i32 5>
  %i.kp = fmul <2 x float> %i.js, %i.ko
  %i.kq = shufflevector <4 x float> %i.jl, <4 x float> %i.jn, <2 x i32> <i32 0, i32 4>
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.cd, <2 x float> %i.kp)
  %i.ks = shufflevector <4 x float> %i.jl, <4 x float> %i.jn, <2 x i32> <i32 2, i32 6>
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.jy, <2 x float> %i.kr)
  %i.ku = shufflevector <4 x float> %i.jl, <4 x float> %i.jn, <2 x i32> <i32 3, i32 7>
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kb, <2 x float> %i.kt)
  %i.kw = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kw, <2 x float> %i.kn)
  %i.ky = shufflevector <4 x float> %i.jp, <4 x float> %i.jr, <2 x i32> <i32 1, i32 5>
  %i.kz = fmul <2 x float> %i.js, %i.ky
  %i.la = shufflevector <4 x float> %i.jp, <4 x float> %i.jr, <2 x i32> <i32 0, i32 4>
  %i.lb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.cd, <2 x float> %i.kz)
  %i.lc = shufflevector <4 x float> %i.jp, <4 x float> %i.jr, <2 x i32> <i32 2, i32 6>
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.jy, <2 x float> %i.lb)
  %i.le = shufflevector <4 x float> %i.jp, <4 x float> %i.jr, <2 x i32> <i32 3, i32 7>
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.kb, <2 x float> %i.ld)
  %12 = insertelement <2 x float> poison, float %i.cb, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> %13, <2 x float> %i.kx)
  %i.lh = fpext <2 x float> %i.lg to <2 x double> ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 0
  store double %i.li, ptr %.0136263.i, align 8, !tbaa !58
  %i.lj = extractelement <2 x double> %i.lh, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.i, %bb.h
  %.sink.i = phi double [ %i.ja, %bb.h ], [ %i.lj, %.preheader.preheader.i ], [ %.sroa.5.0.i, %bb.i ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.0136263.i, i64 8
  store double %.sink.i, ptr %i.lk, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0136263.i, i64 16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !160

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi2EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC3EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [3 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 6 uses
  %.not180.i = icmp eq ptr %9, null
  br i1 %.not180.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <2 x double>, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0.i = phi double [ %i.g, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.h = phi <2 x double> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %i.j = bitcast i64 %5 to <2 x i32>
  %i.k = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.j, <2 x i32> splat (i32 16)) ; 2 uses
  %i.l = sub nsw <2 x i32> zeroinitializer, %i.k
  %i.m = shl nuw nsw <2 x i32> %i.k, splat (i32 1)
  %i.n = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.o = uitofp nneg <2 x i32> %i.m to <2 x float> ; 2 uses
  %i.p = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.q = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.r = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated214.i = add nsw i32 %i.r, -3
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.s, -3
  %i.t = fadd float %i.d, 2.000000e+00
  %i.u = fadd float %i.d, 3.000000e+00
  %i.v = fneg float %i.u
  %i.w = icmp eq i32 %8, 5
  %i.x = trunc i64 %4 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.z = shl i64 %4, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = mul i64 %4, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.0174301.i = phi ptr [ %6, %.lr.ph.i ], [ %i.nn, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !52
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !52
  %i.am = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.al, i64 1 ; 2 uses
  %i.ao = fcmp olt <2 x float> %i.an, %i.n
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.n, <2 x float> %i.an ; 2 uses
  %i.aq = fcmp ogt <2 x float> %i.ap, %i.o
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.o, <2 x float> %i.ap ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = tail call float @llvm.floor.f32(float %i.au)
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.at, i64 1
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>   ; 3 uses
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = fsub <2 x float> %i.ar, %i.az           ; 5 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 0   ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1                   ; 6 uses
  %i.bd = extractelement <2 x i32> %i.ay, i64 1   ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 6 uses
  %i.bf = add nsw i32 %i.bb, 3
  %i.bg = icmp uge i32 %i.bf, %i.p
  %i.bh = add nsw i32 %i.bd, 3
  %i.bi = icmp uge i32 %i.bh, %i.q
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bk = icmp ult i32 %i.bc, %.sroa.speculated214.i
  %i.bl = icmp ult i32 %i.be, %.sroa.speculated.i
  %i.bm = and i1 %i.bk, %i.bl
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ba, <2 x float> %i.ah)
  %i.bo = fmul <2 x float> %i.ba, %i.ba           ; 3 uses
  %i.bp = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bq = fsub float 1.000000e+00, %i.bp          ; 3 uses
  %i.br = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bs = fmul float %i.d, %i.br
  %i.bt = fsub float 1.000000e+00, %i.br          ; 3 uses
  %i.bu = fmul float %i.d, %i.bp
  %i.bv = extractelement <2 x float> %i.bo, i64 0
  %i.bw = extractelement <2 x float> %i.bo, i64 1
  %i.bx = fmul float %i.bt, %i.bt
  %i.by = fmul float %i.d, %i.bw
  %i.bz = fmul float %i.bs, %i.bx                 ; 5 uses
  %i.ca = fmul float %i.bt, %i.by                 ; 5 uses
  %i.cb = fmul float %i.bq, %i.bq
  %i.cc = fmul float %i.d, %i.bv
  %i.cd = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bu, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.cb, i64 1
  %i.ch = fmul <2 x float> %i.ce, %i.cg           ; 11 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1 ; 5 uses
  %i.cj = extractelement <2 x float> %i.ch, i64 0 ; 5 uses
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 1.000000e+00)) ; 9 uses
  %i.cl = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %i.bz, i64 1
  %i.cn = fsub <2 x float> splat (float 1.000000e+00), %i.cm
  %i.co = fsub <2 x float> %i.cn, %i.ck
  %i.cp = insertelement <2 x float> %i.ch, float %i.ca, i64 1
  %i.cq = fsub <2 x float> %i.co, %i.cp           ; 8 uses
  br i1 %i.bm, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.cr = mul nsw i32 %i.be, %i.x
  %i.cs = mul nsw i32 %i.bc, 24
  %i.ct = add nsw i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64                   ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !58
  %i.db = fptrunc double %i.da to float
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !58
  %i.de = fptrunc double %i.dd to float
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.dg = load double, ptr %i.df, align 8, !tbaa !58
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.di = load double, ptr %i.dh, align 8, !tbaa !58
  %i.dj = extractelement <2 x float> %i.ck, i64 0 ; 4 uses
  %i.dk = fmul float %i.dj, %i.de
  %i.dl = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.y, i64 %i.cu ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dv = load double, ptr %i.du, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !58
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.db, float %i.ci, float %i.dk)
  %i.dz = insertelement <2 x double> poison, double %i.di, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dr, i64 1
  %i.eb = fptrunc <2 x double> %i.ea to <2 x float>
  %i.ec = fptrunc double %i.dt to float
  %i.ed = fptrunc double %i.dg to float
  %i.ee = fmul float %i.dj, %i.ec
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.dl, float %i.dy)
  %i.eg = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ee, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ch, <2 x float> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 0
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.bz, float 0.000000e+00)
  %i.el = extractelement <2 x float> %i.ei, i64 1
  %i.em = extractelement <2 x float> %i.ck, i64 1
  %i.en = getelementptr inbounds i8, ptr %i.aa, i64 %i.cu ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.es = load double, ptr %i.er, align 8, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.eu = load double, ptr %i.et, align 8, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !58
  %i.ez = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.es, i64 1
  %i.fb = fptrunc <2 x double> %i.fa to <2 x float>
  %i.fc = fptrunc double %i.eu to float
  %i.fd = fptrunc double %i.dv to float
  %i.fe = fmul float %i.dj, %i.fc
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.dl, float %i.el)
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.fe, i64 1
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ch, <2 x float> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.em, float %i.ek)
  %i.fl = extractelement <2 x float> %i.fi, i64 1
  %i.fm = extractelement <2 x float> %i.cq, i64 1
  %i.fn = getelementptr inbounds i8, ptr %i.ac, i64 %i.cu ; 8 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !58
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !58
  %i.fx = fptrunc double %i.fw to float
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !58
  %i.ga = fptrunc double %i.fz to float
  %i.gb = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fs, i64 1
  %i.gd = fptrunc <2 x double> %i.gc to <2 x float>
  %i.ge = fptrunc double %i.fu to float
  %i.gf = fptrunc double %i.ew to float
  %i.gg = fmul float %i.dj, %i.ge
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.dl, float %i.fl)
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ch, <2 x float> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.fm, float %i.fk)
  %i.gn = extractelement <2 x float> %i.gk, i64 1
  %i.go = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.dl, float %i.gn)
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.cj, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ca, float %i.gm)
  %i.gr = load <2 x double>, ptr %i.cv, align 8, !tbaa !58
  %i.gs = fptrunc <2 x double> %i.gr to <2 x float>
  %i.gt = load <2 x double>, ptr %i.cw, align 8, !tbaa !58
  %i.gu = fptrunc <2 x double> %i.gt to <2 x float>
  %i.gv = load <2 x double>, ptr %i.cx, align 8, !tbaa !58
  %i.gw = fptrunc <2 x double> %i.gv to <2 x float>
  %i.gx = load <2 x double>, ptr %i.cy, align 8, !tbaa !58
  %i.gy = fptrunc <2 x double> %i.gx to <2 x float>
  %i.gz = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ha = fmul <2 x float> %i.gz, %i.gu
  %i.hb = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.hb, <2 x float> %i.ha)
  %i.hd = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.hd, <2 x float> %i.hc)
  %i.hf = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.hf, <2 x float> %i.he)
  %10 = insertelement <2 x float> poison, float %i.bz, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %11, <2 x float> zeroinitializer)
  %i.hi = load <2 x double>, ptr %i.dm, align 8, !tbaa !58
  %i.hj = fptrunc <2 x double> %i.hi to <2 x float>
  %i.hk = load <2 x double>, ptr %i.dn, align 8, !tbaa !58
  %i.hl = fptrunc <2 x double> %i.hk to <2 x float>
  %i.hm = load <2 x double>, ptr %i.do, align 8, !tbaa !58
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = load <2 x double>, ptr %i.dp, align 8, !tbaa !58
  %i.hp = fptrunc <2 x double> %i.ho to <2 x float>
  %i.hq = fmul <2 x float> %i.gz, %i.hl
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hb, <2 x float> %i.hq)
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.hd, <2 x float> %i.hr)
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hf, <2 x float> %i.hs)
  %i.hu = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hu, <2 x float> %i.hh)
  %i.hw = load <2 x double>, ptr %i.en, align 8, !tbaa !58
  %i.hx = fptrunc <2 x double> %i.hw to <2 x float>
  %i.hy = load <2 x double>, ptr %i.eo, align 8, !tbaa !58
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float>
  %i.ia = load <2 x double>, ptr %i.ep, align 8, !tbaa !58
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float>
  %i.ic = load <2 x double>, ptr %i.eq, align 8, !tbaa !58
  %i.id = fptrunc <2 x double> %i.ic to <2 x float>
  %i.ie = fmul <2 x float> %i.gz, %i.hz
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hb, <2 x float> %i.ie)
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hd, <2 x float> %i.if)
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.hf, <2 x float> %i.ig)
  %i.ii = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ii, <2 x float> %i.hv)
  %i.ik = load <2 x double>, ptr %i.fn, align 8, !tbaa !58
  %i.il = fptrunc <2 x double> %i.ik to <2 x float>
  %i.im = load <2 x double>, ptr %i.fo, align 8, !tbaa !58
  %i.in = fptrunc <2 x double> %i.im to <2 x float>
  %i.io = load <2 x double>, ptr %i.fp, align 8, !tbaa !58
  %i.ip = fptrunc <2 x double> %i.io to <2 x float>
  %i.iq = load <2 x double>, ptr %i.fq, align 8, !tbaa !58
  %i.ir = fptrunc <2 x double> %i.iq to <2 x float>
  %i.is = fmul <2 x float> %i.gz, %i.in
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.hb, <2 x float> %i.is)
  %i.iu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.hd, <2 x float> %i.it)
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.hf, <2 x float> %i.iu)
  %12 = insertelement <2 x float> poison, float %i.ca, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %13, <2 x float> %i.ij)
  %i.ix = fpext <2 x float> %i.iw to <2 x double>
  store <2 x double> %i.ix, ptr %.0174301.i, align 8, !tbaa !58
  %i.iy = fpext float %i.gq to double
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.g
  store <2 x double> %i.h, ptr %.0174301.i, align 8
  br label %.sink.split.i

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.iz = select i1 %i.w, ptr %.0174301.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.iz)
  %i.ja = extractelement <2 x float> %i.ck, i64 0 ; 4 uses
  %i.jb = extractelement <2 x float> %i.cq, i64 0 ; 4 uses
  %i.jc = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.jd = sitofp <4 x i32> %i.jc to <4 x float>   ; 4 uses
  %i.je = extractelement <4 x float> %i.jd, i64 1
  %i.jf = fmul float %i.ja, %i.je
  %i.jg = extractelement <4 x float> %i.jd, i64 0
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.ci, float %i.jf)
  %i.ji = extractelement <4 x float> %i.jd, i64 2
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jb, float %i.jh)
  %i.jk = extractelement <4 x float> %i.jd, i64 3
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.cj, float %i.jj)
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.bz, float 0.000000e+00)
  %i.jn = extractelement <2 x float> %i.ck, i64 1
  %i.jo = extractelement <2 x float> %i.cq, i64 1
  %i.jp = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.jq = shufflevector <8 x i32> %i.jp, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.jr = sitofp <2 x i32> %i.jq to <2 x float>
  %i.js = shufflevector <8 x i32> %i.jp, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.jt = sitofp <2 x i32> %i.js to <2 x float>
  %i.ju = shufflevector <8 x i32> %i.jp, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.jv = sitofp <2 x i32> %i.ju to <2 x float>
  %i.jw = shufflevector <8 x i32> %i.jp, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.jx = sitofp <2 x i32> %i.jw to <2 x float>
  %i.jy = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jz = fmul <2 x float> %i.jy, %i.jt
  %i.ka = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.ka, <2 x float> %i.jz)
  %i.kc = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.kc, <2 x float> %i.kb)
  %i.ke = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.ke, <2 x float> %i.kd)
  %i.kg = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.kh, <2 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.iz)
  %i.kj = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.kk = shufflevector <8 x i32> %i.kj, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.kl = sitofp <2 x i32> %i.kk to <2 x float>
  %i.km = shufflevector <8 x i32> %i.kj, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.kn = sitofp <2 x i32> %i.km to <2 x float>
  %i.ko = shufflevector <8 x i32> %i.kj, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.kp = sitofp <2 x i32> %i.ko to <2 x float>
  %i.kq = shufflevector <8 x i32> %i.kj, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.kr = sitofp <2 x i32> %i.kq to <2 x float>
  %i.ks = fmul <2 x float> %i.jy, %i.kn
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.ka, <2 x float> %i.ks)
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kc, <2 x float> %i.kt)
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.ke, <2 x float> %i.ku)
  %i.kw = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kw, <2 x float> %i.ki)
  %i.ky = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.kz = sitofp <4 x i32> %i.ky to <4 x float>   ; 4 uses
  %i.la = extractelement <4 x float> %i.kz, i64 1
  %i.lb = fmul float %i.ja, %i.la
  %i.lc = extractelement <4 x float> %i.kz, i64 0
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.ci, float %i.lb)
  %i.le = extractelement <4 x float> %i.kz, i64 2
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.le, float %i.jb, float %i.ld)
  %i.lg = extractelement <4 x float> %i.kz, i64 3
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.cj, float %i.lf)
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.jn, float %i.jm)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.iz)
  %i.lj = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.lk = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.ll = sitofp <2 x i32> %i.lk to <2 x float>
  %i.lm = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.ln = sitofp <2 x i32> %i.lm to <2 x float>
  %i.lo = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.lp = sitofp <2 x i32> %i.lo to <2 x float>
  %i.lq = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>
  %i.ls = fmul <2 x float> %i.jy, %i.ln
  %i.lt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.ka, <2 x float> %i.ls)
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.kc, <2 x float> %i.lt)
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.ke, <2 x float> %i.lu)
  %i.lw = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lw, <2 x float> %i.kx)
  %i.ly = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.lz = sitofp <4 x i32> %i.ly to <4 x float>   ; 4 uses
  %i.ma = extractelement <4 x float> %i.lz, i64 1
  %i.mb = fmul float %i.ja, %i.ma
  %i.mc = extractelement <4 x float> %i.lz, i64 0
  %i.md = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.ci, float %i.mb)
  %i.me = extractelement <4 x float> %i.lz, i64 2
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.me, float %i.jb, float %i.md)
  %i.mg = extractelement <4 x float> %i.lz, i64 3
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.cj, float %i.mf)
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.jo, float %i.li)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 3, i32 %i.bc, i32 %i.be, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.iz)
  %i.mj = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.mk = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.ml = sitofp <2 x i32> %i.mk to <2 x float>
  %i.mm = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.mn = sitofp <2 x i32> %i.mm to <2 x float>
  %i.mo = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.mp = sitofp <2 x i32> %i.mo to <2 x float>
  %i.mq = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.mr = sitofp <2 x i32> %i.mq to <2 x float>
  %i.ms = fmul <2 x float> %i.jy, %i.mn
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.ka, <2 x float> %i.ms)
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %i.kc, <2 x float> %i.mt)
  %i.mv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mr, <2 x float> %i.ke, <2 x float> %i.mu)
  %i.mw = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.my = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.mx, <2 x float> %i.lx)
  %i.mz = load <4 x i32>, ptr %i.ad, align 16, !tbaa !16
  %i.na = sitofp <4 x i32> %i.mz to <4 x float>   ; 4 uses
  %i.nb = extractelement <4 x float> %i.na, i64 1
  %i.nc = fmul float %i.ja, %i.nb
  %i.nd = extractelement <4 x float> %i.na, i64 0
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.ci, float %i.nc)
  %i.nf = extractelement <4 x float> %i.na, i64 2
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.jb, float %i.ne)
  %i.nh = extractelement <4 x float> %i.na, i64 3
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.cj, float %i.ng)
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.ni, float %i.ca, float %i.mi)
  %i.nk = fpext <2 x float> %i.my to <2 x double>
  store <2 x double> %i.nk, ptr %.0174301.i, align 8, !tbaa !58
  %i.nl = fpext float %i.nj to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.preheader.preheader.i, %bb.i, %bb.h
  %.sink.i = phi double [ %i.iy, %bb.h ], [ %i.nl, %.preheader.preheader.i ], [ %.sroa.6.0.i, %bb.i ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.0174301.i, i64 16
  store double %.sink.i, ptr %i.nm, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0174301.i, i64 24
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !161

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi3EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_112bicubic64fC4EPKfS3_iPKvmNS_5Size_IiEEPdS3_iS8_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly %3, i64 noundef %4, i64 %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) #5 {
bb.a:
  %i.a = alloca [4 x [4 x i32]], align 16         ; 11 uses
  %i.b = alloca [4 x i32], align 16               ; 6 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %7, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi float [ %i.c, %bb.b ], [ -7.500000e-01, %bb.a ] ; 5 uses
  %.not218.i = icmp eq ptr %9, null
  br i1 %.not218.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load <2 x double>, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi <2 x double> [ %i.e, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.i = phi <2 x double> [ %i.g, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.2.0.extract.shift.i.i = lshr i64 %5, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %5 to i32 ; 2 uses
  %i.k = bitcast i64 %5 to <2 x i32>
  %i.l = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.k, <2 x i32> splat (i32 16)) ; 2 uses
  %i.m = sub nsw <2 x i32> zeroinitializer, %i.l
  %i.n = shl nuw nsw <2 x i32> %i.l, splat (i32 1)
  %i.o = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
  %i.p = uitofp nneg <2 x i32> %i.n to <2 x float> ; 2 uses
  %i.q = add nsw i32 %.sroa.0.0.extract.trunc.i.i, 4
  %i.r = add nsw i32 %.sroa.2.0.extract.trunc.i.i, 4
  %i.s = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated252.i = add nsw i32 %i.s, -3
  %i.t = tail call i32 @llvm.smax.i32(i32 %.sroa.2.0.extract.trunc.i.i, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.t, -3
  %i.u = fadd float %i.d, 2.000000e+00
  %i.v = fadd float %i.d, 3.000000e+00
  %i.w = fneg float %i.v
  %i.x = icmp eq i32 %8, 5
  %i.y = trunc i64 %4 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.aa = shl i64 %4, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = mul i64 %4, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.af = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv347.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next348.i, %bb.j ] ; 3 uses
  %.0212339.i = phi ptr [ %6, %.lr.ph.i ], [ %i.nf, %bb.j ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv347.i
  %i.am = load float, ptr %i.al, align 4, !tbaa !52
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv347.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !52
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1 ; 2 uses
  %i.ar = fcmp olt <2 x float> %i.aq, %i.o
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.o, <2 x float> %i.aq ; 2 uses
  %i.at = fcmp ogt <2 x float> %i.as, %i.p
  %i.au = select <2 x i1> %i.at, <2 x float> %i.p, <2 x float> %i.as ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 1
  %i.aw = tail call float @llvm.floor.f32(float %i.av)
  %i.ax = extractelement <2 x float> %i.au, i64 0
  %i.ay = tail call float @llvm.floor.f32(float %i.ax)
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.aw, i64 1
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>   ; 3 uses
  %i.bc = sitofp <2 x i32> %i.bb to <2 x float>
  %i.bd = fsub <2 x float> %i.au, %i.bc           ; 6 uses
  %i.be = extractelement <2 x i32> %i.bb, i64 0   ; 2 uses
  %i.bf = add nsw i32 %i.be, -1                   ; 6 uses
  %i.bg = extractelement <2 x i32> %i.bb, i64 1   ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1                   ; 6 uses
  %i.bi = add nsw i32 %i.be, 3
  %i.bj = icmp uge i32 %i.bi, %i.q
  %i.bk = add nsw i32 %i.bg, 3
  %i.bl = icmp uge i32 %i.bk, %i.r
  %i.bm = or i1 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i

bb.g:                                             ; preds = %bb.f
  switch i32 %8, label %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i [
    i32 0, label %bb.i
    i32 5, label %bb.j
  ]

_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i: ; preds = %bb.g, %bb.f
  %i.bn = icmp ult i32 %i.bf, %.sroa.speculated252.i
  %i.bo = icmp ult i32 %i.bh, %.sroa.speculated.i
  %i.bp = and i1 %i.bn, %i.bo
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.bd, <2 x float> %i.ai)
  %i.br = fmul <2 x float> %i.bd, %i.bd           ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bu = fsub float 1.000000e+00, %i.bt          ; 3 uses
  %i.bv = extractelement <2 x float> %i.bd, i64 1
  %i.bw = fsub float 1.000000e+00, %i.bv          ; 3 uses
  %i.bx = fmul float %i.d, %i.bt
  %i.by = fmul float %i.bw, %i.bw
  %i.bz = shufflevector <2 x float> %i.br, <2 x float> %i.bd, <2 x i32> <i32 3, i32 1>
  %i.ca = fmul <2 x float> %i.ak, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bw, i64 1
  %i.cd = fmul <2 x float> %i.ca, %i.cc           ; 6 uses
  %i.ce = fmul float %i.bu, %i.bu
  %i.cf = fmul float %i.d, %i.bs
  %i.cg = fmul float %i.bx, %i.ce
  %i.ch = fmul float %i.bu, %i.cf                 ; 2 uses
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bq, <2 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0 ; 3 uses
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cl = fsub <2 x float> splat (float 1.000000e+00), %i.ck
  %i.cm = fsub <2 x float> %i.cl, %i.ci
  %i.cn = insertelement <2 x float> poison, float %i.ch, i64 0 ; 2 uses
  %i.co = insertelement <2 x float> %i.cd, float %i.ch, i64 0
  %i.cp = fsub <2 x float> %i.cm, %i.co           ; 4 uses
  br i1 %i.bp, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.cq = mul nsw i32 %i.bh, %i.y
  %i.cr = shl nsw i32 %i.bf, 5
  %i.cs = add nsw i32 %i.cq, %i.cr
  %i.ct = sext i32 %i.cs to i64                   ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %3, i64 %i.ct ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.dc = getelementptr inbounds i8, ptr %i.z, i64 %i.ct ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.dk = getelementptr inbounds i8, ptr %i.ab, i64 %i.ct ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %i.ds = getelementptr inbounds i8, ptr %i.ad, i64 %i.ct ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 112
  %i.ea = load <2 x double>, ptr %i.cu, align 8, !tbaa !58
  %i.eb = fptrunc <2 x double> %i.ea to <2 x float>
  %i.ec = load <2 x double>, ptr %i.cv, align 8, !tbaa !58
  %i.ed = fptrunc <2 x double> %i.ec to <2 x float>
  %i.ee = load <2 x double>, ptr %i.cw, align 8, !tbaa !58
  %i.ef = fptrunc <2 x double> %i.ee to <2 x float>
  %i.eg = load <2 x double>, ptr %i.cx, align 8, !tbaa !58
  %i.eh = fptrunc <2 x double> %i.eg to <2 x float>
  %i.ei = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ej = fmul <2 x float> %i.ei, %i.ed
  %i.ek = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.em = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.em, <2 x float> %i.el)
  %i.eo = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.eo, <2 x float> %i.en)
  %i.eq = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> zeroinitializer)
  %i.es = load <2 x double>, ptr %i.dc, align 8, !tbaa !58
  %i.et = fptrunc <2 x double> %i.es to <2 x float>
  %i.eu = load <2 x double>, ptr %i.dd, align 8, !tbaa !58
  %i.ev = fptrunc <2 x double> %i.eu to <2 x float>
  %i.ew = load <2 x double>, ptr %i.de, align 8, !tbaa !58
  %i.ex = fptrunc <2 x double> %i.ew to <2 x float>
  %i.ey = load <2 x double>, ptr %i.df, align 8, !tbaa !58
  %i.ez = fptrunc <2 x double> %i.ey to <2 x float>
  %i.fa = fmul <2 x float> %i.ei, %i.ev
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ek, <2 x float> %i.fa)
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.em, <2 x float> %i.fb)
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.eo, <2 x float> %i.fc)
  %i.fe = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fe, <2 x float> %i.er)
  %i.fg = load <2 x double>, ptr %i.dk, align 8, !tbaa !58
  %i.fh = fptrunc <2 x double> %i.fg to <2 x float>
  %i.fi = load <2 x double>, ptr %i.dl, align 8, !tbaa !58
  %i.fj = fptrunc <2 x double> %i.fi to <2 x float>
  %i.fk = load <2 x double>, ptr %i.dm, align 8, !tbaa !58
  %i.fl = fptrunc <2 x double> %i.fk to <2 x float>
  %i.fm = load <2 x double>, ptr %i.dn, align 8, !tbaa !58
  %i.fn = fptrunc <2 x double> %i.fm to <2 x float>
  %i.fo = fmul <2 x float> %i.ei, %i.fj
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.ek, <2 x float> %i.fo)
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.em, <2 x float> %i.fp)
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.eo, <2 x float> %i.fq)
  %i.fs = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fs, <2 x float> %i.ff)
  %i.fu = load <2 x double>, ptr %i.ds, align 8, !tbaa !58
  %i.fv = fptrunc <2 x double> %i.fu to <2 x float>
  %i.fw = load <2 x double>, ptr %i.dt, align 8, !tbaa !58
  %i.fx = fptrunc <2 x double> %i.fw to <2 x float>
  %i.fy = load <2 x double>, ptr %i.du, align 8, !tbaa !58
  %i.fz = fptrunc <2 x double> %i.fy to <2 x float>
  %i.ga = load <2 x double>, ptr %i.dv, align 8, !tbaa !58
  %i.gb = fptrunc <2 x double> %i.ga to <2 x float>
  %i.gc = fmul <2 x float> %i.ei, %i.fx
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.ek, <2 x float> %i.gc)
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.em, <2 x float> %i.gd)
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.eo, <2 x float> %i.ge)
  %i.gg = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.ft)
  %i.gi = fpext <2 x float> %i.gh to <2 x double>
  %i.gj = getelementptr inbounds nuw i8, ptr %.0212339.i, i64 16
  %i.gk = load <2 x double>, ptr %i.cy, align 8, !tbaa !58
  %i.gl = fptrunc <2 x double> %i.gk to <2 x float>
  %i.gm = load <2 x double>, ptr %i.cz, align 8, !tbaa !58
  %i.gn = fptrunc <2 x double> %i.gm to <2 x float>
  %i.go = load <2 x double>, ptr %i.da, align 8, !tbaa !58
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = load <2 x double>, ptr %i.db, align 8, !tbaa !58
  %i.gr = fptrunc <2 x double> %i.gq to <2 x float>
  %i.gs = fmul <2 x float> %i.ei, %i.gn
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.ek, <2 x float> %i.gs)
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.em, <2 x float> %i.gt)
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.eo, <2 x float> %i.gu)
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.eq, <2 x float> zeroinitializer)
  %i.gx = load <2 x double>, ptr %i.dg, align 8, !tbaa !58
  %i.gy = fptrunc <2 x double> %i.gx to <2 x float>
  %i.gz = load <2 x double>, ptr %i.dh, align 8, !tbaa !58
  %i.ha = fptrunc <2 x double> %i.gz to <2 x float>
  %i.hb = load <2 x double>, ptr %i.di, align 8, !tbaa !58
  %i.hc = fptrunc <2 x double> %i.hb to <2 x float>
  %i.hd = load <2 x double>, ptr %i.dj, align 8, !tbaa !58
  %i.he = fptrunc <2 x double> %i.hd to <2 x float>
  %i.hf = fmul <2 x float> %i.ei, %i.ha
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ek, <2 x float> %i.hf)
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.em, <2 x float> %i.hg)
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.eo, <2 x float> %i.hh)
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.fe, <2 x float> %i.gw)
  %i.hk = load <2 x double>, ptr %i.do, align 8, !tbaa !58
  %i.hl = fptrunc <2 x double> %i.hk to <2 x float>
  %i.hm = load <2 x double>, ptr %i.dp, align 8, !tbaa !58
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float>
  %i.ho = load <2 x double>, ptr %i.dq, align 8, !tbaa !58
  %i.hp = fptrunc <2 x double> %i.ho to <2 x float>
  %i.hq = load <2 x double>, ptr %i.dr, align 8, !tbaa !58
  %i.hr = fptrunc <2 x double> %i.hq to <2 x float>
  %i.hs = fmul <2 x float> %i.ei, %i.hn
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.ek, <2 x float> %i.hs)
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.em, <2 x float> %i.ht)
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.eo, <2 x float> %i.hu)
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.fs, <2 x float> %i.hj)
  %i.hx = load <2 x double>, ptr %i.dw, align 8, !tbaa !58
  %i.hy = fptrunc <2 x double> %i.hx to <2 x float>
  %i.hz = load <2 x double>, ptr %i.dx, align 8, !tbaa !58
  %i.ia = fptrunc <2 x double> %i.hz to <2 x float>
  %i.ib = load <2 x double>, ptr %i.dy, align 8, !tbaa !58
  %i.ic = fptrunc <2 x double> %i.ib to <2 x float>
  %i.id = load <2 x double>, ptr %i.dz, align 8, !tbaa !58
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  %i.if = fmul <2 x float> %i.ei, %i.ia
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.ek, <2 x float> %i.if)
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.em, <2 x float> %i.ig)
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.eo, <2 x float> %i.ih)
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.gg, <2 x float> %i.hw)
  store <2 x double> %i.gi, ptr %.0212339.i, align 8, !tbaa !58
  %i.ik = fpext <2 x float> %i.ij to <2 x double>
  store <2 x double> %i.ik, ptr %i.gj, align 8, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store <2 x double> %i.h, ptr %.0212339.i, align 8
  %.sroa.6.0..0212.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0212339.i, i64 16
  store <2 x double> %i.i, ptr %.sroa.6.0..0212.sroa_idx.i, align 8
  br label %bb.j

.preheader.preheader.i:                           ; preds = %_ZN2cv12cpu_baseline12_GLOBAL__N_113bicubicCoeffsEffmNS_5Size_IiEEifiRiS4_S4_RfS5_S5_S5_S5_S5_S5_S5_.exit.i
  %i.il = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.im = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.in = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.io = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.ip = select i1 %i.x, ptr %.0212339.i, ptr %9 ; 4 uses
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bf, i32 %i.bh, ptr noundef %i.b, i32 noundef 0, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ip)
  %i.iq = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.ir = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.is = sitofp <2 x i32> %i.ir to <2 x float>
  %i.it = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.iu = sitofp <2 x i32> %i.it to <2 x float>
  %i.iv = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.iw = sitofp <2 x i32> %i.iv to <2 x float>
  %i.ix = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.iy = sitofp <2 x i32> %i.ix to <2 x float>
  %i.iz = fmul <2 x float> %i.il, %i.iu
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.im, <2 x float> %i.iz)
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.in, <2 x float> %i.ja)
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.io, <2 x float> %i.jb)
  %i.jd = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jd, <2 x float> zeroinitializer)
  %i.jf = load <8 x i32>, ptr %i.ae, align 16, !tbaa !16 ; 4 uses
  %i.jg = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.jh = sitofp <2 x i32> %i.jg to <2 x float>
  %i.ji = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.jj = sitofp <2 x i32> %i.ji to <2 x float>
  %i.jk = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.jl = sitofp <2 x i32> %i.jk to <2 x float>
  %i.jm = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.jn = sitofp <2 x i32> %i.jm to <2 x float>
  %i.jo = fmul <2 x float> %i.il, %i.jj
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.im, <2 x float> %i.jo)
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.in, <2 x float> %i.jp)
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.io, <2 x float> %i.jq)
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jd, <2 x float> zeroinitializer)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bf, i32 %i.bh, ptr noundef %i.b, i32 noundef 1, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ip)
  %i.jt = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.ju = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.jv = sitofp <2 x i32> %i.ju to <2 x float>
  %i.jw = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.jx = sitofp <2 x i32> %i.jw to <2 x float>
  %i.jy = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.jz = sitofp <2 x i32> %i.jy to <2 x float>
  %i.ka = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.kb = sitofp <2 x i32> %i.ka to <2 x float>
  %i.kc = fmul <2 x float> %i.il, %i.jx
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.im, <2 x float> %i.kc)
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.in, <2 x float> %i.kd)
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.io, <2 x float> %i.ke)
  %i.kg = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.kg, <2 x float> %i.je)
  %i.ki = load <8 x i32>, ptr %i.ae, align 16, !tbaa !16 ; 4 uses
  %i.kj = shufflevector <8 x i32> %i.ki, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.kk = sitofp <2 x i32> %i.kj to <2 x float>
  %i.kl = shufflevector <8 x i32> %i.ki, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.km = sitofp <2 x i32> %i.kl to <2 x float>
  %i.kn = shufflevector <8 x i32> %i.ki, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.ko = sitofp <2 x i32> %i.kn to <2 x float>
  %i.kp = shufflevector <8 x i32> %i.ki, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.kq = sitofp <2 x i32> %i.kp to <2 x float>
  %i.kr = fmul <2 x float> %i.il, %i.km
  %i.ks = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.im, <2 x float> %i.kr)
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.in, <2 x float> %i.ks)
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.io, <2 x float> %i.kt)
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kg, <2 x float> %i.js)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bf, i32 %i.bh, ptr noundef %i.b, i32 noundef 2, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ip)
  %i.kw = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.kx = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.ky = sitofp <2 x i32> %i.kx to <2 x float>
  %i.kz = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.la = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lb = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.lc = sitofp <2 x i32> %i.lb to <2 x float>
  %i.ld = shufflevector <8 x i32> %i.kw, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.le = sitofp <2 x i32> %i.ld to <2 x float>
  %i.lf = fmul <2 x float> %i.il, %i.la
  %i.lg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.im, <2 x float> %i.lf)
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.in, <2 x float> %i.lg)
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.io, <2 x float> %i.lh)
  %i.lj = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.lj, <2 x float> %i.kh)
  %i.ll = load <8 x i32>, ptr %i.ae, align 16, !tbaa !16 ; 4 uses
  %i.lm = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.ln = sitofp <2 x i32> %i.lm to <2 x float>
  %i.lo = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.lp = sitofp <2 x i32> %i.lo to <2 x float>
  %i.lq = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>
  %i.ls = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.lt = sitofp <2 x i32> %i.ls to <2 x float>
  %i.lu = fmul <2 x float> %i.il, %i.lp
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.im, <2 x float> %i.lu)
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.in, <2 x float> %i.lv)
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.io, <2 x float> %i.lw)
  %i.ly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.lj, <2 x float> %i.kv)
  call fastcc void @_ZN2cv12cpu_baseline12_GLOBAL__N_118bicubicFetchPixelsIdiEEvPKT_mNS_5Size_IiEEiPKiS9_PiiPT0_iiS5_(ptr noundef readonly %3, i64 noundef %4, i64 %5, i32 noundef 4, i32 %i.bf, i32 %i.bh, ptr noundef %i.b, i32 noundef 3, ptr noundef %i.a, i32 noundef %8, ptr noundef %i.ip)
  %i.lz = load <8 x i32>, ptr %i.a, align 16, !tbaa !16 ; 4 uses
  %i.ma = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.mb = sitofp <2 x i32> %i.ma to <2 x float>
  %i.mc = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.md = sitofp <2 x i32> %i.mc to <2 x float>
  %i.me = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.mf = sitofp <2 x i32> %i.me to <2 x float>
  %i.mg = shufflevector <8 x i32> %i.lz, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.mh = sitofp <2 x i32> %i.mg to <2 x float>
  %i.mi = fmul <2 x float> %i.il, %i.md
  %i.mj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.im, <2 x float> %i.mi)
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.in, <2 x float> %i.mj)
  %i.ml = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %i.io, <2 x float> %i.mk)
  %i.mm = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.mn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.mm, <2 x float> %i.lk)
  %i.mo = load <8 x i32>, ptr %i.ae, align 16, !tbaa !16 ; 4 uses
  %i.mp = shufflevector <8 x i32> %i.mo, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  %i.mq = sitofp <2 x i32> %i.mp to <2 x float>
  %i.mr = shufflevector <8 x i32> %i.mo, <8 x i32> poison, <2 x i32> <i32 1, i32 5>
  %i.ms = sitofp <2 x i32> %i.mr to <2 x float>
  %i.mt = shufflevector <8 x i32> %i.mo, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  %i.mu = sitofp <2 x i32> %i.mt to <2 x float>
  %i.mv = shufflevector <8 x i32> %i.mo, <8 x i32> poison, <2 x i32> <i32 3, i32 7>
  %i.mw = sitofp <2 x i32> %i.mv to <2 x float>
  %i.mx = fmul <2 x float> %i.il, %i.ms
  %i.my = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.im, <2 x float> %i.mx)
  %i.mz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.in, <2 x float> %i.my)
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.io, <2 x float> %i.mz)
  %i.nb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.mm, <2 x float> %i.ly)
  %i.nc = fpext <2 x float> %i.mn to <2 x double>
  store <2 x double> %i.nc, ptr %.0212339.i, align 8, !tbaa !58
  %i.nd = fpext <2 x float> %i.nb to <2 x double>
  %i.ne = getelementptr inbounds nuw i8, ptr %.0212339.i, i64 16
  store <2 x double> %i.nd, ptr %i.ne, align 8, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %.preheader.preheader.i, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next348.i = add nuw nsw i64 %indvars.iv347.i, 1 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0212339.i, i64 32
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next348.i, %wide.trip.count.i
  br i1 %exitcond350.not.i, label %_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit, label %bb.f, !llvm.loop !162

_ZN2cv12cpu_baseline12_GLOBAL__N_110bicubicRefIdLi4EEEvPKfS4_iPKvmNS_5Size_IiEEPT_S4_iSA_.exit: ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN2cv14getImgWarpFuncEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN2cv12cpu_baseline19getBicubicWarpFunc_Ei(i32 noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv5remapERKNS_11_InputArrayERKNS_12_OutputArrayES2_S2_iiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 18 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 27 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 22 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator", align 1   ; 3 uses
  %33 = alloca %"class.cv::RemapInvoker", align 8 ; 18 uses
end_hunk_1
