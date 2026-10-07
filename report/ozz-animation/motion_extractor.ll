Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/motion_extractor?download=true
inline.NumInlined: 641
inline.NumDeleted: 405
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_:bb.a
  %i.eb = call float @llvm.fmuladd.f32(float %i.dz, float %i.ea, float %i.dy) ; 3 uses
  %i.ec = fmul float %i.dv, 4.990000e-01
  %i.ed = fcmp ogt float %i.eb, %i.ec
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = call noundef float @atan2f(float noundef %i.dz, float noundef %i.dx) #14
  %i.ef = fmul float %i.ee, 2.000000e+00
  %.sroa.041.4.vec.insert52.i.i = insertelement <2 x float> <float poison, float f0x3FC90FDB>, float %i.ef, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.t:                                             ; preds = %bb.r
  %i.eg = fmul float %i.dv, -4.990000e-01
  %i.eh = fcmp olt float %i.eb, %i.eg
  br i1 %i.eh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = call noundef float @atan2f(float noundef %i.dz, float noundef %i.dx) #14
  %i.ej = fmul float %i.ei, -2.000000e+00
  %.sroa.041.4.vec.insert50.i.i = insertelement <2 x float> <float poison, float f0xBFC90FDB>, float %i.ej, i64 0
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

bb.v:                                             ; preds = %bb.t
  %i.ek = fmul float %i.ea, 2.000000e+00          ; 2 uses
  %i.el = fmul float %i.dz, 2.000000e+00          ; 2 uses
  %i.em = fneg float %i.dw                        ; 2 uses
  %i.en = fmul float %i.el, %i.em
  %i.eo = call float @llvm.fmuladd.f32(float %i.ek, float %i.dx, float %i.en)
  %i.ep = fsub float %i.dp, %i.dq
  %i.eq = fsub float %i.ep, %i.ds
  %i.er = fadd float %i.du, %i.eq
  %i.es = call noundef float @atan2f(float noundef %i.eo, float noundef %i.er) #14
  %.sroa.041.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.es, i64 0
  %i.et = fmul float %i.eb, 2.000000e+00
  %i.eu = fdiv float %i.et, %i.dv
  %i.ev = call noundef float @asinf(float noundef %i.eu) #14
  %.sroa.041.4.vec.insert.i.i = insertelement <2 x float> %.sroa.041.0.vec.insert.i.i, float %i.ev, i64 1
  %i.ew = fmul float %i.ek, %i.em
  %i.ex = call float @llvm.fmuladd.f32(float %i.el, float %i.dx, float %i.ew)
  %i.ey = fsub float %i.dq, %i.dp
  %i.ez = fsub float %i.ey, %i.ds
  %i.fa = fadd float %i.du, %i.ez
  %i.fb = call noundef float @atan2f(float noundef %i.ex, float noundef %i.fa) #14
  %i.fc = fmul float %i.fb, %i.ch
  %i.fd = fmul float %i.fc, 5.000000e-01
  br label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i": ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.041.0.i.i = phi <2 x float> [ %.sroa.041.4.vec.insert52.i.i, %bb.s ], [ %.sroa.041.4.vec.insert50.i.i, %bb.u ], [ %.sroa.041.4.vec.insert.i.i, %bb.v ]
  %.sroa.1155.0.i.i = phi float [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.u ], [ %i.fd, %bb.v ] ; 2 uses
  %i.fe = fmul <2 x float> %.sroa.041.0.i.i, %i.ce
  %i.ff = fmul <2 x float> %i.fe, splat (float 5.000000e-01) ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fh = call noundef float @cosf(float noundef %i.fg) #14
  %i.fi = call noundef float @sinf(float noundef %i.fg) #14
  %i.fj = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fk = call noundef float @cosf(float noundef %i.fj) #14
  %i.fl = call noundef float @sinf(float noundef %i.fj) #14
  %i.fm = call noundef float @cosf(float noundef %.sroa.1155.0.i.i) #14
  %i.fn = call noundef float @sinf(float noundef %.sroa.1155.0.i.i) #14 ; 2 uses
  %i.fo = fneg float %i.fn
  %i.fp = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fq = insertelement <4 x float> %i.fp, float %i.fi, i64 1 ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fs = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fl, i64 1 ; 2 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.fv = fmul <4 x float> %i.fr, %i.fu
  %i.fw = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fx = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.fy = fmul <4 x float> %i.fw, %i.fx
  %i.fz = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fm, i64 1 ; 2 uses
  %i.gb = insertelement <4 x float> %i.ga, float %i.fo, i64 2
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.gd = fmul <4 x float> %i.fy, %i.gc
  %i.ge = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.gf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.ge, <4 x float> %i.gd) ; 2 uses
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 1, ptr %6, align 4, !tbaa !97
  %i.gi = load float, ptr %.sroa.03.08.i, align 4, !tbaa !99
  %i.gj = fdiv float %i.gi, %i.ba
  store float %i.gj, ptr %i.cn, align 4, !tbaa !100
  store <2 x float> %i.gg, ptr %i.co, align 4, !tbaa !31
  store <2 x float> %i.gh, ptr %.sroa.4.0..sroa_idx.i121, align 4, !tbaa !31
  %i.gk = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 3 uses
  %i.gl = load ptr, ptr %i.cp, align 8, !tbaa !40
  %.not.i.i10.i122 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i10.i122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.gk, ptr noundef nonnull align 4 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !41
  %i.gm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr %i.gn, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

bb.x:                                             ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_2clINS_4math10QuaternionEEEDaRKT_.exit.i"
  call void @_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.gk, ptr noundef nonnull align 4 dereferenceable(24) %6)
  br label %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i

_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 20 ; 2 uses
  %.not.i123 = icmp eq ptr %i.go, %.val114
  br i1 %.not.i123, label %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit", label %bb.r

"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit": ; preds = %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE9push_backEOS6_.exit.i, %_ZNSt6vectorIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE5clearEv.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 4, !tbaa !101, !range !84, !noundef !85
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %.preheader167, label %.loopexit168

.preheader167:                                    ; preds = %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !43 ; 2 uses
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !44 ; 3 uses
  %.not175 = icmp eq ptr %i.gu, %i.gv
  br i1 %.not175, label %.loopexit168, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader167
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 20
  %i.ha = load ptr, ptr %4, align 8, !tbaa !38
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.080169 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %bb.y ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %.080169 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = getelementptr inbounds nuw [20 x i8], ptr %i.gv, i64 %.080169 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !95 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !95 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hm = load <2 x float>, ptr %i.hc, align 4, !tbaa !31 ; 3 uses
  %i.hn = load <2 x float>, ptr %i.hf, align 4, !tbaa !31 ; 4 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.hp = fneg <2 x float> %i.hm                  ; 2 uses
  %i.hq = fneg float %i.ho
  %i.hr = fneg <2 x float> %i.hn
  %i.hs = load <2 x float>, ptr %i.hl, align 4, !tbaa !31 ; 4 uses
  %i.ht = load <2 x float>, ptr %i.he, align 4, !tbaa !31 ; 4 uses
  %i.hu = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.hp
  %i.hx = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.ht, <2 x float> %i.hw)
  %i.ia = shufflevector <2 x float> %i.hs, <2 x float> %i.ht, <2 x i32> <i32 1, i32 2>
  %i.ib = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.ia, <2 x float> %i.hz)
  %i.ic = shufflevector <2 x float> %i.hn, <2 x float> %i.hm, <2 x i32> <i32 1, i32 2>
  %i.id = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.hs, <2 x float> %i.ib)
  %i.ie = fmul float %i.hj, %i.hq
  %i.if = extractelement <2 x float> %i.hs, i64 1 ; 2 uses
  %i.ig = call float @llvm.fmuladd.f32(float %i.hh, float %i.if, float %i.ie)
  %i.ih = extractelement <2 x float> %i.hs, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.hp, i64 0
  %i.ij = call float @llvm.fmuladd.f32(float %i.ii, float %i.ih, float %i.ig)
  %i.ik = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.il = extractelement <2 x float> %i.ht, i64 0
  %i.im = call float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %i.ij)
  %foldExtExtBinop = fmul <2 x float> %i.hm, %i.ht
  %i.in = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.io = call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %i.ik, float %i.ih, float %i.io)
  %i.iq = call float @llvm.fmuladd.f32(float %i.ho, float %i.if, float %i.ip)
  %.sroa.5143.8.vec.insert = insertelement <2 x float> poison, float %i.im, i64 0
  %.sroa.5143.12.vec.insert = insertelement <2 x float> %.sroa.5143.8.vec.insert, float %i.iq, i64 1
  store <2 x float> %i.id, ptr %i.he, align 4, !tbaa !31
  store <2 x float> %.sroa.5143.12.vec.insert, ptr %i.hk, align 4, !tbaa !31
  %i.ir = add nuw i64 %.080169, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ir, %i.gz
  br i1 %exitcond.not, label %.loopexit168, label %bb.y, !llvm.loop !63

.loopexit168:                                     ; preds = %bb.y, %.preheader167, %"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_1clISt6vectorINS3_11RotationKeyENS_12StdAllocatorISH_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_2SG_INS1_16RawTrackKeyframeINS_4math10QuaternionEEENSI_ISP_EEEEEDaRKT_T0_RT1_.exit"
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.it = load i8, ptr %i.is, align 4, !tbaa !102, !range !84, !noundef !85
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %.preheader166, label %.loopexit

.preheader166:                                    ; preds = %.loopexit168
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 2 uses
  %i.ix = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 5 uses
  %.not176 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not176, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader166
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  %i.jb = ashr exact i64 %i.ja, 4                 ; 2 uses
  %i.jc = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.jd = icmp eq i64 %i.ja, 16
  br i1 %i.jd, label %.epil.preheader, label %.lr.ph171.new

.lr.ph171.new:                                    ; preds = %.lr.ph171
  %unroll_iter = and i64 %i.jb, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph171.new
  %.081170 = phi i64 [ 0, %.lr.ph171.new ], [ %i.kd, %bb.z ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph171.new ], [ %niter.next.1, %bb.z ]
  %i.je = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %.081170 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %.081170 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 2 uses
  %i.ji = load <2 x float>, ptr %i.jh, align 4, !tbaa !31
  %i.jj = load <2 x float>, ptr %i.jf, align 4, !tbaa !31
  %i.jk = fsub <2 x float> %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !87
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !87
  %i.jp = fsub float %i.jm, %i.jo
  store <2 x float> %i.jk, ptr %i.jh, align 4, !tbaa !31
  store float %i.jp, ptr %i.jl, align 4, !tbaa !31
  %i.jq = or disjoint i64 %.081170, 1             ; 2 uses
  %i.jr = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %i.jq ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !31
  %i.jw = load <2 x float>, ptr %i.js, align 4, !tbaa !31
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !87
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !87
  %i.kc = fsub float %i.jz, %i.kb
  store <2 x float> %i.jx, ptr %i.ju, align 4, !tbaa !31
  store float %i.kc, ptr %i.jy, align 4, !tbaa !31
  %i.kd = add nuw i64 %.081170, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.z, !llvm.loop !64

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.z
  %10 = and i64 %i.ja, 16
  %lcmp.mod.not = icmp eq i64 %10, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph171
  %.081170.epil.init = phi i64 [ 0, %.lr.ph171 ], [ %i.kd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod200 = trunc i64 %i.jb to i1
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.ke = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %.081170.epil.init ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %.081170.epil.init ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 2 uses
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !31
  %i.kj = load <2 x float>, ptr %i.kf, align 4, !tbaa !31
  %i.kk = fsub <2 x float> %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 12 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !87
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !87
  %i.kp = fsub float %i.km, %i.ko
  store <2 x float> %i.kk, ptr %i.kh, align 4, !tbaa !31
  store float %i.kp, ptr %i.kl, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader166, %.loopexit168
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !103, !range !84, !noundef !85
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit
  %.val115 = load ptr, ptr %4, align 8, !tbaa !38
  %.val116 = load ptr, ptr %i.cl, align 8, !tbaa !39
  call fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_3ZNKS2_clES5_S8_SA_SC_SD_E3$_4EEDaRT_T0_T1_"(ptr %.val115, ptr %.val116)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !104, !range !84, !noundef !85
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.val117 = load ptr, ptr %3, align 8, !tbaa !29
  %.val118 = load ptr, ptr %i.bi, align 8, !tbaa !30
  call fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_6ZNKS2_clES5_S8_SA_SC_SD_E3$_7EEDaRT_T0_T1_"(ptr %.val117, ptr %.val118)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.kw = load i8, ptr %i.gp, align 4, !tbaa !101, !range !84, !noundef !85
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %.preheader, label %.critedge93

.preheader:                                       ; preds = %bb.ad
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47
  %i.la = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not91172.not = icmp eq ptr %i.kz, %i.la
  br i1 %.not91172.not, label %.critedge93, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 12
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph174, %bb.af
  %i.ld = phi ptr [ %i.la, %.lr.ph174 ], [ %i.ms, %bb.af ]
  %.084173 = phi i64 [ 0, %.lr.ph174 ], [ %i.mq, %bb.af ] ; 3 uses
  %i.le = load ptr, ptr %3, align 8, !tbaa !29
  %i.lf = getelementptr inbounds nuw [20 x i8], ptr %i.le, i64 %.084173
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %9, align 16, !tbaa !31
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !92
  %i.li = call noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %4, float noundef %i.lh, ptr noundef nonnull %9)
  br i1 %i.li, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %.084173 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 2 uses
  %i.ll = load float, ptr %i.lc, align 4, !tbaa !95
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 12 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lo = load <2 x float>, ptr %9, align 16, !tbaa !31 ; 3 uses
  %i.lp = load <2 x float>, ptr %i.lb, align 4, !tbaa !31 ; 4 uses
  %i.lq = fneg <2 x float> %i.lp
  %i.lr = fneg <2 x float> %i.lo                  ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lp, <2 x float> %i.lo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lt = fneg <2 x float> %i.ls
  %i.lu = load float, ptr %i.lm, align 4, !tbaa !87
  %i.lv = load <2 x float>, ptr %i.ln, align 4, !tbaa !31 ; 3 uses
  %i.lw = load <2 x float>, ptr %i.lk, align 4, !tbaa !31 ; 4 uses
  %i.lx = fmul <2 x float> %i.lp, %i.lw
  %i.ly = shufflevector <2 x float> %i.lv, <2 x float> %i.lw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lz = fmul <2 x float> %i.lo, %i.ly
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.lv, <2 x float> %i.lx)
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.lw, <2 x float> %i.lz)
  %i.mc = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> %i.md, <2 x float> %i.ma) ; 2 uses
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.md, <2 x float> %i.mb) ; 2 uses
  %i.mg = fmul <2 x float> %i.ls, %i.mf
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.me, <2 x float> %i.mg) ; 2 uses
  %shift = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop198 = fmul <2 x float> %i.lp, %shift
  %i.mi = extractelement <2 x float> %foldExtExtBinop198, i64 0
  %i.mj = extractelement <2 x float> %i.lr, i64 0
  %i.mk = extractelement <2 x float> %i.mf, i64 0
  %i.ml = call float @llvm.fmuladd.f32(float %i.mj, float %i.mk, float %i.mi) ; 2 uses
  %i.mm = fadd <2 x float> %i.lw, %i.mh
  %i.mn = fadd <2 x float> %i.mh, %i.mm
  %i.mo = fadd float %i.lu, %i.ml
  %i.mp = fadd float %i.ml, %i.mo
  store <2 x float> %i.mn, ptr %i.lk, align 4, !tbaa !31
  store float %i.mp, ptr %i.lm, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.mq = add nuw i64 %.084173, 1                 ; 2 uses
  %i.mr = load ptr, ptr %i.ky, align 8, !tbaa !47
  %i.ms = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = ashr exact i64 %i.mv, 4
  %.not91 = icmp ult i64 %i.mq, %i.mw
  br i1 %.not91, label %bb.ae, label %.critedge93, !llvm.loop !65

.critedge:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ag

.critedge93:                                      ; preds = %bb.af, %.preheader, %bb.ad
  %i.mx = call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.my = call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.mz = and i1 %i.mx, %i.my
  %i.na = call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %i.nb = and i1 %i.mz, %i.na
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge93, %.critedge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.critedge ], [ %i.nb, %.critedge93 ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN3ozz9animation26GetJointRestPoseLocalSpaceERKNS0_8SkeletonEi(ptr dead_on_unwind writable sret(%"struct.ozz::math::Transform") align 4, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_3ZNKS2_clES5_S8_SA_SC_SD_E3$_4EEDaRT_T0_T1_"(ptr %.0.val, ptr %.8.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 3 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !31 ; 3 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.sroa.212.0.copyload = load <2 x float>, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.8.val, i64 -16
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !31 ; 3 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds i8, ptr %.8.val, i64 -8
  %.sroa.210.0.copyload = load <2 x float>, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload, i64 0 ; 2 uses
  %i.h = fneg float %.sroa.01.0.vec.extract.i     ; 2 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.copyload, i64 1 ; 3 uses
  %i.i = fneg float %.sroa.01.4.vec.extract.i     ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.210.0.copyload, i64 0 ; 3 uses
  %i.j = fneg float %.sroa.3.8.vec.extract.i      ; 2 uses
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.210.0.copyload, i64 1 ; 4 uses
  %.sroa.33.12.vec.extract.i = extractelement <2 x float> %.sroa.212.0.copyload, i64 1 ; 4 uses
  %.sroa.02.0.vec.extract.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 0 ; 3 uses
  %i.k = fmul float %.sroa.02.0.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.h, float %i.k)
  %.sroa.02.4.vec.extract.i = extractelement <2 x float> %.sroa.011.0.copyload, i64 1 ; 4 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %i.j, float %i.l)
  %.sroa.33.8.vec.extract.i = extractelement <2 x float> %.sroa.212.0.copyload, i64 0 ; 4 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.m)
  %i.o = fmul float %.sroa.02.4.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %i.h, float %i.p)
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.02.0.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.q)
  %i.s = fmul float %.sroa.33.8.vec.extract.i, %.sroa.3.12.vec.extract.i
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %i.j, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.02.0.vec.extract.i, float %i.i, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.u)
  %foldExtExtBinop = fmul <2 x float> %.sroa.011.0.copyload, %.sroa.09.0.copyload
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = tail call float @llvm.fmuladd.f32(float %.sroa.33.12.vec.extract.i, float %.sroa.3.12.vec.extract.i, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %.sroa.02.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.x)
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.33.8.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.y)
  %i.aa = uitofp i64 %i.d to float
  %i.ab = fadd float %i.aa, -1.000000e+00
  %i.ac = fadd float %i.z, -1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.01 = phi i64 [ 0, %bb.b ], [ %i.bo, %bb.c ]   ; 3 uses
  %i.ad = uitofp i64 %.01 to float
  %i.ae = fdiv float %i.ad, %i.ab                 ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.01 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ag, align 4, !tbaa !31 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.sroa.22.0.copyload = load <2 x float>, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !31 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.v, float %i.ae, float 0.000000e+00) ; 3 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float 1.000000e+00) ; 3 uses
  %i.al = fmul float %i.ai, %i.ai
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.al)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.am)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.ap = fdiv float 1.000000e+00, %sqrt.i        ; 4 uses
  %i.aq = fmul float %i.ah, %i.ap                 ; 4 uses
  %i.ar = fmul float %i.ai, %i.ap                 ; 3 uses
  %i.as = fmul float %i.aj, %i.ap                 ; 3 uses
  %i.at = fmul float %i.ak, %i.ap                 ; 4 uses
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 4 uses
  %.sroa.35.12.vec.extract.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 1 ; 4 uses
  %i.au = fmul float %i.aq, %.sroa.35.12.vec.extract.i
  %i.av = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.04.0.vec.extract.i, float %i.au)
  %.sroa.35.8.vec.extract.i = extractelement <2 x float> %.sroa.22.0.copyload, i64 0 ; 4 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.35.8.vec.extract.i, float %i.av)
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 1 ; 4 uses
  %i.ax = fneg float %i.as                        ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.04.4.vec.extract.i, float %i.aw)
  %i.az = fmul float %i.ar, %.sroa.35.12.vec.extract.i
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.04.4.vec.extract.i, float %i.az)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.as, float %.sroa.04.0.vec.extract.i, float %i.ba)
  %i.bc = fneg float %i.aq
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.35.8.vec.extract.i, float %i.bb)
  %i.be = fmul float %i.as, %.sroa.35.12.vec.extract.i
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.35.8.vec.extract.i, float %i.be)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.aq, float %.sroa.04.4.vec.extract.i, float %i.bf)
  %i.bh = fneg float %i.ar                        ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %.sroa.04.0.vec.extract.i, float %i.bg)
  %i.bj = fneg float %.sroa.04.0.vec.extract.i
  %i.bk = fmul float %i.aq, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.35.12.vec.extract.i, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bh, float %.sroa.04.4.vec.extract.i, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.35.8.vec.extract.i, float %i.bm)
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.bd, i64 1
  %.sroa.58.8.vec.insert.i = insertelement <2 x float> poison, float %i.bi, i64 0
  %.sroa.58.12.vec.insert.i = insertelement <2 x float> %.sroa.58.8.vec.insert.i, float %i.bn, i64 1
  store <2 x float> %.sroa.06.4.vec.insert.i, ptr %i.ag, align 4, !tbaa !31
  store <2 x float> %.sroa.58.12.vec.insert.i, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !31
  %i.bo = add nuw i64 %.01, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !105

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZZNK3ozz9animation7offline15MotionExtractorclERKNS1_12RawAnimationERKNS0_8SkeletonEPNS1_14RawFloat3TrackEPNS1_18RawQuaternionTrackEPS3_ENK3$_5clISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorISK_EEEZNKS2_clES5_S8_SA_SC_SD_E3$_6ZNKS2_clES5_S8_SA_SC_SD_E3$_7EEDaRT_T0_T1_"(ptr %.0.val, ptr %.8.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 20                  ; 5 uses
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %.new

.new:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !31
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !31
  %i.g = getelementptr inbounds i8, ptr %.8.val, i64 -12
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !31
  %.sroa.224.0..sroa_idx = getelementptr inbounds i8, ptr %.8.val, i64 -4
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4, !tbaa !31
  %i.h = fsub <2 x float> %.sroa.025.0.copyload, %.sroa.023.0.copyload ; 3 uses
  %i.i = fsub float %.sroa.226.0.copyload, %.sroa.224.0.copyload ; 3 uses
  %i.j = uitofp i64 %i.d to float
  %i.k = fadd float %i.j, -1.000000e+00           ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %unroll_iter = and i64 %i.d, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.01 = phi i64 [ 0, %.new ], [ %i.ag, %bb.b ]   ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.l = uitofp i64 %.01 to float
  %i.m = fdiv float %i.l, %i.k                    ; 2 uses
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %.01 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !31
  %i.p = fmul float %i.i, %i.m
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.h, %i.r
  %i.t = fadd <2 x float> %i.s, %.sroa.07.0.copyload
  %i.u = fadd float %i.p, %.sroa.28.0.copyload
  store <2 x float> %i.t, ptr %i.o, align 4, !tbaa !31
  store float %i.u, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !31
  %i.v = or disjoint i64 %.01, 1                  ; 2 uses
  %i.w = uitofp i64 %i.v to float
  %i.x = fdiv float %i.w, %i.k                    ; 2 uses
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.07.0.copyload.1 = load <2 x float>, ptr %i.z, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.28.0.copyload.1 = load float, ptr %.sroa.28.0..sroa_idx.1, align 4, !tbaa !31
  %i.aa = fmul float %i.i, %i.x
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.h, %i.ac
  %i.ae = fadd <2 x float> %i.ad, %.sroa.07.0.copyload.1
  %i.af = fadd float %i.aa, %.sroa.28.0.copyload.1
  store <2 x float> %i.ae, ptr %i.z, align 4, !tbaa !31
  store float %i.af, ptr %.sroa.28.0..sroa_idx.1, align 4, !tbaa !31
  %i.ag = add nuw i64 %.01, 2                     ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !106

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod2 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.ah = uitofp i64 %i.ag to float
  %i.ai = fdiv float %i.ah, %i.k                  ; 2 uses
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %.0.val, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.07.0.copyload.epil = load <2 x float>, ptr %i.ak, align 4, !tbaa !31
  %.sroa.28.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %.sroa.28.0.copyload.epil = load float, ptr %.sroa.28.0..sroa_idx.epil, align 4, !tbaa !31
  %i.al = fmul float %i.i, %i.ai
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.h, %i.an
  %i.ap = fadd <2 x float> %i.ao, %.sroa.07.0.copyload.epil
  %i.aq = fadd float %i.al, %.sroa.28.0.copyload.epil
  store <2 x float> %i.ap, ptr %i.ak, align 4, !tbaa !31
  store float %i.aq, ptr %.sroa.28.0..sroa_idx.epil, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56), float noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 72
  %i.o = tail call noundef ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S7_EEEEPS4_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not5.i = icmp eq ptr %i.p, %i.r
  br i1 %.not5.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.06.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %.06.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split, %bb.c
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 2 uses
  %.not.i25 = icmp eq ptr %i.t, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit
  %i.u = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.t)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !111
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEESA_EvT_SD_RT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ae, %i.f
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.ag = udiv exact i64 %i.f, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ak = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 3 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !107

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !112
  %.pre49 = ptrtoint ptr %i.ap to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.h
  %.pre-phi50 = phi i64 [ %.pre49, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.k, %bb.h ]
  %i.as = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.ac, %bb.h ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.i, %bb.h ]
  %.not4.i = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.as
  br i1 %.not4.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEESA_EvT_SD_RT0_.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit
  %i.at = sub i64 %.pre-phi50, %i.k
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 %i.at
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %.sroa.01.05.i = phi ptr [ %i.av, %.lr.ph.i26 ], [ %i.au, %.lr.ph.i26.preheader ] ; 2 uses
  tail call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %.sroa.01.05.i)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 72 ; 2 uses
  %.not.i27 = icmp eq ptr %i.av, %i.as
  br i1 %.not.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ozz9animation7offline12RawAnimation10JointTrackESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEESA_EvT_SD_RT0_.exit, label %.lr.ph.i26, !llvm.loop !108

bb.i:                                             ; preds = %bb.g
  %i.aw = icmp sgt i64 %i.ae, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i.i.i29, label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i29:                     ; preds = %bb.i
  %i.ax = udiv exact i64 %i.ae, 72
  br label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %.lr.ph.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i29
  %.012.i.i.i.i.i31 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i30 ], [ %i.ax, %.lr.ph.preheader.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i32 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i30 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i29 ] ; 4 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i30 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i29 ] ; 4 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i33) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 24
  %i.bb = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 48
  %i.be = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 72
  %i.bh = add nsw i64 %.012.i.i.i.i.i31, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i31, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i30, label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit, !llvm.loop !109

_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i30
  %.pre40 = load ptr, ptr %1, align 8, !tbaa !17
  %.pre41 = load ptr, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %.pre42 = load ptr, ptr %0, align 8, !tbaa !17
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !16
  %.pre44 = ptrtoint ptr %.pre41 to i64
  %.pre45 = ptrtoint ptr %.pre42 to i64
  %.pre47 = sub i64 %.pre44, %.pre45
  br label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit, %bb.i
  %.pre-phi48 = phi i64 [ %.pre47, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.ae, %bb.i ]
  %i.bj = phi ptr [ %.pre43, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.b, %bb.i ] ; 2 uses
  %i.bk = phi ptr [ %.pre41, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.ac, %bb.i ] ; 3 uses
  %i.bl = phi ptr [ %.pre40, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation10JointTrackES5_ET0_T_S7_S6_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.pre-phi48 ; 2 uses
end_hunk_0
