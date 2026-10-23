Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@commit_params:bb.a
  %i.us = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = fmul reassoc nsz arcp contract afn <2 x float> %i.ut, <float -2.015100e-05, float f0x382DF9B4>
  %i.uv = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = fmul reassoc nsz arcp contract afn <2 x float> %i.uw, <float f0x38EB0462, float f0x387344EC>
  %i.uy = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.va = fmul reassoc nsz arcp contract afn <2 x float> %i.uz, <float 5.310080e-06, float 1.464800e-06>
  %i.vb = fadd reassoc nsz arcp contract afn <2 x float> %i.uu, %i.va
  %i.vc = fadd reassoc nsz arcp contract afn <2 x float> %i.vb, %i.ux
  %.reass265 = fmul reassoc nsz arcp contract afn float %i.uo, -1.660080e-06
  %.reass263 = fmul reassoc nsz arcp contract afn float %i.ur, 2.648000e-05
  %.reass264 = fmul reassoc nsz arcp contract afn float %i.ul, f0x388C30BE
  %i.vd = fadd reassoc nsz arcp contract afn float %.reass265, %.reass264
  %i.ve = fadd reassoc nsz arcp contract afn float %i.vd, %.reass263
  %i.vf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vc, <2 x float> zeroinitializer)
  %i.vg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vf, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.vh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vg, splat (float f0x4196D000)
  %i.vi = fadd reassoc nsz arcp contract afn <2 x float> %i.vh, splat (float f0x3F560000)
  %i.vj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vg, splat (float 1.868750e+01)
  %i.vk = fadd reassoc nsz arcp contract afn <2 x float> %i.vj, splat (float 1.000000e+00)
  %i.vl = fdiv reassoc nsz arcp contract afn <2 x float> %i.vi, %i.vk
  %i.vm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vl, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.vn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ve, float 0.000000e+00)
  %i.vo = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vn, float f0x3E232000) ; 2 uses
  %i.vp = fmul reassoc nnan nsz arcp contract afn float %i.vo, f0x4196D000
  %i.vq = fadd reassoc nsz arcp contract afn float %i.vp, f0x3F560000
  %i.vr = fmul reassoc nnan nsz arcp contract afn float %i.vo, 1.868750e+01
  %i.vs = fadd reassoc nsz arcp contract afn float %i.vr, 1.000000e+00
  %i.vt = fdiv reassoc nsz arcp contract afn float %i.vq, %i.vs
  %i.vu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vt, float f0x430608CD) ; 3 uses
  %i.vv = extractelement <2 x float> %i.vm, i64 0 ; 3 uses
  %i.vw = extractelement <2 x float> %i.vm, i64 1 ; 3 uses
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vv, %i.vw
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, 5.000000e-01
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vu, 0.000000e+00
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vy, %i.vz ; 2 uses
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vw, 3.524000e+00
  %i.wc = fmul reassoc nsz arcp contract afn float %i.vv, f0x40822279
  %i.wd = fsub reassoc nsz arcp contract afn float %i.wb, %i.wc
  %i.we = fmul reassoc nsz arcp contract afn float %i.vu, 5.427080e-01
  %i.wf = fadd reassoc nsz arcp contract afn float %i.wd, %i.we ; 2 uses
  %i.wg = fmul reassoc nsz arcp contract afn float %i.vw, 1.990760e-01
  %i.wh = fmul reassoc nsz arcp contract afn float %i.vv, f0x3F8C63E9
  %i.wi = fadd reassoc nsz arcp contract afn float %i.wh, %i.wg
  %i.wj = fmul reassoc nsz arcp contract afn float %i.vu, f0xBFA5DF3B
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wi, %i.wj ; 2 uses
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wa, 4.400000e-01
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wa, 5.600000e-01
  %i.wn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wm
  %i.wo = fdiv reassoc nsz arcp contract afn float %i.wl, %i.wn
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wo, -1.629550e-11
  %i.wq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wp, float 0.000000e+00) ; 2 uses
  %i.wr = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.wk, float noundef %i.wf) #25
  %i.ws = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.wk, float %i.wf)
  %i.wt = fcmp reassoc nsz arcp contract afn ogt float %i.wq, 0.000000e+00
  %i.wu = fdiv reassoc nsz arcp contract afn float %i.wr, %i.wq
  %i.wv = select reassoc nsz arcp contract afn i1 %i.wt, float %i.wu, float 0.000000e+00
  %i.ww = fmul reassoc nsz arcp contract afn float %i.ws, f0x42A2A806
  %i.wx = fadd reassoc nsz arcp contract afn float %i.ww, 2.555000e+02
  %i.wy = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wx)
  %i.wz = fptosi float %i.wy to i32               ; 2 uses
  %i.xa = lshr i32 %i.wz, 22
  %i.xb = and i32 %i.xa, 512
  %i.xc = add nsw i32 %i.xb, %i.wz                ; 2 uses
  %.inv = icmp slt i32 %i.xc, 512
  %.neg = select i1 %.inv, i32 0, i32 -512
  %i.xd = add i32 %.neg, %i.xc
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.xe ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !12
  %i.xh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xg, float %i.wv)
  store float %i.xh, ptr %i.xf, align 4, !tbaa !12
  %i.xi = add nuw nsw i64 %.0187266, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.xi, 92
  br i1 %exitcond.not, label %bb.ad, label %bb.ae

.loopexit:                                        ; preds = %vec.epilog.scalar.ph
  %i.xj = getelementptr inbounds nuw i8, ptr %i.pz, i64 2040 ; 3 uses
  %i.xk = load float, ptr %i.xj, align 8, !tbaa !12
  %i.xl = getelementptr inbounds nuw i8, ptr %i.pz, i64 2044 ; 4 uses
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !12
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xm, %i.xk
  %i.xo = load float, ptr %i.pz, align 64, !tbaa !12
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xn, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.pz, i64 4 ; 3 uses
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !12
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xp, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.xu = load float, ptr %i.xt, align 8, !tbaa !12
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xs, %i.xu
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xv, 2.000000e-01
  store float %i.xw, ptr %i.qo, align 4, !tbaa !12
  %i.xx = load float, ptr %i.xl, align 4, !tbaa !12
  %i.xy = load float, ptr %i.pz, align 64, !tbaa !12
  %i.xz = fadd reassoc nsz arcp contract afn float %i.xy, %i.xx
  %i.ya = load float, ptr %i.xq, align 4, !tbaa !12
  %i.yb = fadd reassoc nsz arcp contract afn float %i.xz, %i.ya
  %i.yc = load float, ptr %i.xt, align 8, !tbaa !12
  %i.yd = fadd reassoc nsz arcp contract afn float %i.yb, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !12
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yd, %i.yf
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yg, 2.000000e-01
  %i.yi = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  store float %i.yh, ptr %i.yi, align 4, !tbaa !12
  %i.yj = getelementptr inbounds nuw i8, ptr %i.pz, i64 2036 ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !12
  %i.yl = load float, ptr %i.xj, align 8, !tbaa !12
  %i.ym = fadd reassoc nsz arcp contract afn float %i.yl, %i.yk
  %i.yn = load float, ptr %i.xl, align 4, !tbaa !12
  %i.yo = fadd reassoc nsz arcp contract afn float %i.ym, %i.yn
  %i.yp = load float, ptr %i.pz, align 64, !tbaa !12
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yo, %i.yp
  %i.yr = load float, ptr %i.xq, align 4, !tbaa !12
  %i.ys = fadd reassoc nsz arcp contract afn float %i.yq, %i.yr
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, 2.000000e-01
  %i.yu = getelementptr inbounds nuw i8, ptr %i.qo, i64 2044
  store float %i.yt, ptr %i.yu, align 4, !tbaa !12
  %i.yv = getelementptr inbounds nuw i8, ptr %i.pz, i64 2032
  %i.yw = load float, ptr %i.yv, align 16, !tbaa !12
  %i.yx = load float, ptr %i.yj, align 4, !tbaa !12
  %i.yy = fadd reassoc nsz arcp contract afn float %i.yx, %i.yw
  %i.yz = load float, ptr %i.xj, align 8, !tbaa !12
  %i.za = fadd reassoc nsz arcp contract afn float %i.yy, %i.yz
  %i.zb = load float, ptr %i.xl, align 4, !tbaa !12
  %i.zc = fadd reassoc nsz arcp contract afn float %i.za, %i.zb
  %i.zd = load float, ptr %i.pz, align 64, !tbaa !12
  %i.ze = fadd reassoc nsz arcp contract afn float %i.zc, %i.zd
  %i.zf = fmul reassoc nsz arcp contract afn float %i.ze, 2.000000e-01
  %i.zg = getelementptr inbounds nuw i8, ptr %i.qo, i64 2040
  store float %i.zf, ptr %i.zg, align 4, !tbaa !12
  br label %.sink.split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.0269 = phi i64 [ %.0269.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.aah, %vec.epilog.scalar.ph ] ; 6 uses
  %i.zh = getelementptr [4 x i8], ptr %i.pz, i64 %.0269 ; 2 uses
  %i.zi = getelementptr i8, ptr %i.zh, i64 -8
  %i.zj = or disjoint i64 %.0269, 1               ; 2 uses
  %i.zk = load <4 x float>, ptr %i.zi, align 4, !tbaa !12
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !12
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zm, <4 x float> %i.zk)
  %i.zn = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %.0269
  store float %i.zn, ptr %i.zo, align 4, !tbaa !12
  %i.zp = getelementptr [4 x i8], ptr %i.pz, i64 %i.zj ; 2 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 -8
  %i.zr = add nuw nsw i64 %.0269, 2               ; 2 uses
  %i.zs = load <4 x float>, ptr %i.zq, align 4, !tbaa !12
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !12
  %op.rdx.1 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zu, <4 x float> %i.zs)
  %i.zv = fmul reassoc nsz arcp contract afn float %op.rdx.1, 2.000000e-01
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.zj
  store float %i.zv, ptr %i.zw, align 4, !tbaa !12
  %i.zx = getelementptr [4 x i8], ptr %i.pz, i64 %i.zr ; 2 uses
  %i.zy = getelementptr i8, ptr %i.zx, i64 -8
  %i.zz = add nuw nsw i64 %.0269, 3               ; 2 uses
  %i.aaa = load <4 x float>, ptr %i.zy, align 4, !tbaa !12
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !12
  %op.rdx.2 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.aac, <4 x float> %i.aaa)
  %i.aad = fmul reassoc nsz arcp contract afn float %op.rdx.2, 2.000000e-01
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.zr
  store float %i.aad, ptr %i.aae, align 4, !tbaa !12
  %i.aaf = getelementptr [4 x i8], ptr %i.pz, i64 %i.zz ; 2 uses
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -8
  %i.aah = add nuw nsw i64 %.0269, 4              ; 2 uses
  %i.aai = load <4 x float>, ptr %i.aag, align 4, !tbaa !12
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !12
  %op.rdx.3 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.aak, <4 x float> %i.aai)
  %i.aal = fmul reassoc nsz arcp contract afn float %op.rdx.3, 2.000000e-01
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %i.zz
  store float %i.aal, ptr %i.aam, align 4, !tbaa !12
  %exitcond272.not.3 = icmp eq i64 %i.aah, 510
  br i1 %exitcond272.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !250

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.px, i8 0, i64 2048, i1 false), !tbaa !12
  %i.aan = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aan, i64 64) ]
  %.not.i.i = icmp eq ptr %i.aan, null
  br i1 %.not.i.i, label %dt_calloc_align_float.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.aan, i8 0, i64 2048, i1 false)
  br label %dt_calloc_align_float.exit.i

dt_calloc_align_float.exit.i:                     ; preds = %bb.ag, %bb.af
  %i.aao = fmul reassoc nsz arcp contract afn <8 x float> %i.ph, zeroinitializer ; 3 uses
  %i.aap = shufflevector <8 x float> %i.ph, <8 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3, i32 1>
  %i.aaq = fmul reassoc nsz arcp contract afn <8 x float> %i.aap, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aar = fadd reassoc nsz arcp contract afn <8 x float> %i.aao, %i.aaq
  %i.aas = fmul reassoc nsz arcp contract afn <5 x float> %i.pv, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.aat = shufflevector <5 x float> %i.aas, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3, i32 4>
  %i.aau = fadd reassoc nsz arcp contract afn <8 x float> %i.aar, %i.aat ; 3 uses
  %i.aav = shufflevector <8 x float> %i.aau, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %4 = shufflevector <8 x float> %i.aau, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.aaw = shufflevector <8 x float> %i.aau, <8 x float> poison, <4 x i32> <i32 6, i32 7, i32 poison, i32 poison>
  %shift = shufflevector <8 x float> %i.aao, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <8 x float> %shift, %i.aao
  %i.aax = extractelement <8 x float> %foldExtExtBinop, i64 2
  %i.aay = extractelement <5 x float> %i.pv, i64 2
  %i.aaz = fadd reassoc nsz arcp contract afn float %i.aax, %i.aay
  %.sroa.0112.8.vec.insert.i = insertelement <4 x float> %i.aaw, float %i.aaz, i64 2
  %i.aba = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aav, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.aba, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.aba, i64 1 ; 2 uses
  %i.abb = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.aba, i64 2
  %i.abc = fadd reassoc nsz arcp contract afn float %i.abb, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.abd = fcmp reassoc nsz arcp contract afn ogt float %i.abc, 0.000000e+00 ; 2 uses
  %i.abe = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.abc
  %i.abf = select reassoc nsz arcp contract afn i1 %i.abd, float %i.abe, float 3.127100e-01 ; 6 uses
  %i.abg = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.abc
  %i.abh = select reassoc nsz arcp contract afn i1 %i.abd, float %i.abg, float 3.290200e-01 ; 5 uses
  %i.abi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %4, <4 x float> zeroinitializer) ; 3 uses
  %i.abj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0112.8.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %i.abk = fadd reassoc nsz arcp contract afn float %i.abh, -3.290200e-01
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abf, -3.127100e-01 ; 2 uses
  %i.abm = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.abk, float %i.abl) ; 3 uses
  %i.abn = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.abo = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.abp = fadd reassoc nsz arcp contract afn <2 x float> %i.abn, %i.abo
  %i.abq = shufflevector <4 x float> %i.abi, <4 x float> %i.abj, <2 x i32> <i32 2, i32 6>
  %i.abr = fadd reassoc nsz arcp contract afn <2 x float> %i.abp, %i.abq ; 3 uses
  %i.abs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.abr, zeroinitializer ; 2 uses
  %i.abt = fdiv reassoc nsz arcp contract afn <2 x float> %i.abn, %i.abr
  %i.abu = select <2 x i1> %i.abs, <2 x float> %i.abt, <2 x float> splat (float 3.127100e-01) ; 3 uses
  %i.abv = fdiv reassoc nsz arcp contract afn <2 x float> %i.abo, %i.abr
  %i.abw = select <2 x i1> %i.abs, <2 x float> %i.abv, <2 x float> splat (float 3.290200e-01) ; 3 uses
  %i.abx = fadd reassoc nsz arcp contract afn <2 x float> %i.abw, splat (float -3.290200e-01)
  %i.aby = fadd reassoc nsz arcp contract afn <2 x float> %i.abu, splat (float -3.127100e-01) ; 3 uses
  %i.abz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.atan2.v2f32(<2 x float> %i.abx, <2 x float> %i.aby) ; 4 uses
  %i.aca = extractelement <2 x float> %i.abz, i64 1
  %i.acb = fsub reassoc nsz arcp contract afn float %i.abm, %i.aca ; 2 uses
  %i.acc = fcmp reassoc nsz arcp contract afn olt float %i.acb, f0xC0490FDB
  %i.acd = select reassoc nsz arcp contract afn i1 %i.acc, float f0x40C90FDB, float 0.000000e+00
  %i.ace = fadd reassoc nsz arcp contract afn float %i.acd, %i.acb ; 2 uses
  %i.acf = fcmp reassoc nsz arcp contract afn ogt float %i.ace, f0x40490FDB
  %i.acg = select reassoc nsz arcp contract afn i1 %i.acf, float f0x40C90FDB, float 0.000000e+00
  %i.ach = fsub reassoc nsz arcp contract afn float %i.ace, %i.acg
  %i.aci = shufflevector <2 x float> %i.abz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acj = insertelement <2 x float> %i.aci, float %i.abm, i64 0
  %i.ack = fsub reassoc nsz arcp contract afn <2 x float> %i.abz, %i.acj ; 2 uses
  %i.acl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ack, splat (float f0xC0490FDB)
  %i.acm = select <2 x i1> %i.acl, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.acn = fadd reassoc nsz arcp contract afn <2 x float> %i.acm, %i.ack ; 2 uses
  %i.aco = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acn, splat (float f0x40490FDB)
  %i.acp = select <2 x i1> %i.aco, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.acq = fsub reassoc nsz arcp contract afn <2 x float> %i.acn, %i.acp ; 2 uses
  %i.acr = extractelement <2 x float> %i.abw, i64 0 ; 4 uses
  %i.acs = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.acr
  %i.act = extractelement <2 x float> %i.abw, i64 1 ; 4 uses
  %i.acu = fsub reassoc nsz arcp contract afn float %i.act, %i.acr ; 2 uses
  %i.acv = extractelement <2 x float> %i.abu, i64 0 ; 5 uses
  %i.acw = extractelement <2 x float> %i.abu, i64 1 ; 5 uses
  %i.acx = fsub reassoc nsz arcp contract afn float %i.acv, %i.acw
  %i.acy = fsub reassoc nsz arcp contract afn float %i.acw, %i.acv
  %i.acz = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.abh
  %i.ada = fsub reassoc nsz arcp contract afn float %i.acr, %i.abh ; 2 uses
  %i.adb = fsub reassoc nsz arcp contract afn float %i.abf, %i.acv
  %i.adc = fsub reassoc nsz arcp contract afn float %i.acv, %i.abf
  %i.add = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.act
  %i.ade = fsub reassoc nsz arcp contract afn float %i.abh, %i.act ; 2 uses
  %i.adf = fsub reassoc nsz arcp contract afn float %i.acw, %i.abf
  %i.adg = fsub reassoc nsz arcp contract afn float %i.abf, %i.acw
  %i.adh = extractelement <2 x float> %i.aby, i64 0
  %i.adi = extractelement <2 x float> %i.aby, i64 1
  %i.adj = extractelement <2 x float> %i.acq, i64 0
  %i.adk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ach
  %shift344 = shufflevector <2 x float> %i.acq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.adl = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %shift344
  %i.adm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.adj
  br label %bb.ah

bb.ah:                                            ; preds = %bb.an, %dt_calloc_align_float.exit.i
  %.079150.i = phi i32 [ 0, %dt_calloc_align_float.exit.i ], [ %i.aig, %bb.an ] ; 2 uses
  %i.adn = uitofp nsz nneg i32 %.079150.i to float
  %i.ado = fmul reassoc nnan nsz arcp contract afn float %i.adn, f0x3980ADFD
  %i.adp = fadd reassoc nsz arcp contract afn float %i.ado, f0xC0490FDB ; 3 uses
  %i.adq = tail call reassoc nsz arcp contract afn float @llvm.tan.f32(float %i.adp) ; 6 uses
  %i.adr = insertelement <2 x float> poison, float %i.adp, i64 0
  %i.ads = shufflevector <2 x float> %i.adr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adt = fsub reassoc nsz arcp contract afn <2 x float> %i.ads, %i.abz ; 2 uses
  %i.adu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.adt, splat (float f0xC0490FDB)
  %i.adv = select <2 x i1> %i.adu, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.adw = fadd reassoc nsz arcp contract afn <2 x float> %i.adv, %i.adt ; 2 uses
  %i.adx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adw, splat (float f0x40490FDB)
  %i.ady = select <2 x i1> %i.adx, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.adz = fsub reassoc nsz arcp contract afn <2 x float> %i.adw, %i.ady ; 2 uses
  %i.aea = extractelement <2 x float> %i.adz, i64 1
  %i.aeb = fmul reassoc nsz arcp contract afn float %i.aea, %i.adk ; 4 uses
  %i.aec = fmul reassoc nsz arcp contract afn <2 x float> %i.adz, %i.adl
  %i.aed = extractelement <2 x float> %i.aec, i64 0 ; 4 uses
  %i.aee = fcmp reassoc nsz arcp contract afn ogt float %i.aeb, 1.000000e+00
  %i.aef = fcmp reassoc nsz arcp contract afn olt float %i.aeb, 0.000000e+00
  %i.aeg = select reassoc nsz arcp contract afn i1 %i.aef, float 0.000000e+00, float %i.aeb
  %i.aeh = select reassoc nsz arcp contract afn i1 %i.aee, float 1.000000e+00, float %i.aeg
  %i.aei = fcmp reassoc nsz arcp contract afn oeq float %i.aeb, %i.aeh
  br i1 %i.aei, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aej = fmul reassoc nsz arcp contract afn float %i.adq, %i.adi
  %i.aek = fadd reassoc nsz arcp contract afn float %i.add, %i.aej
  %i.ael = fmul reassoc nsz arcp contract afn float %i.adq, %i.adf
  %i.aem = fadd reassoc nsz arcp contract afn float %i.ael, %i.ade
  %i.aen = fdiv reassoc nsz arcp contract afn float %i.aek, %i.aem ; 2 uses
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.aen, %i.adg
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aeo, %i.acw
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aen, %i.ade
  %i.aer = fadd reassoc nsz arcp contract afn float %i.aeq, %i.act
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.aes = fsub reassoc nsz arcp contract afn float %i.adp, %i.abm ; 2 uses
  %i.aet = fcmp reassoc nsz arcp contract afn olt float %i.aes, f0xC0490FDB
  %i.aeu = select reassoc nsz arcp contract afn i1 %i.aet, float f0x40C90FDB, float 0.000000e+00
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.aes ; 2 uses
  %i.aew = fcmp reassoc nsz arcp contract afn ogt float %i.aev, f0x40490FDB
  %i.aex = select reassoc nsz arcp contract afn i1 %i.aew, float f0x40C90FDB, float 0.000000e+00
  %i.aey = fsub reassoc nsz arcp contract afn float %i.aev, %i.aex
  %i.aez = fmul reassoc nsz arcp contract afn float %i.aey, %i.adm ; 4 uses
  %i.afa = fcmp reassoc nsz arcp contract afn ogt float %i.aez, 1.000000e+00
  %i.afb = fcmp reassoc nsz arcp contract afn olt float %i.aez, 0.000000e+00
  %i.afc = select reassoc nsz arcp contract afn i1 %i.afb, float 0.000000e+00, float %i.aez
  %i.afd = select reassoc nsz arcp contract afn i1 %i.afa, float 1.000000e+00, float %i.afc
  %i.afe = fcmp reassoc nsz arcp contract afn oeq float %i.aez, %i.afd
  br i1 %i.afe, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.aff = fmul reassoc nsz arcp contract afn float %i.adq, %i.abl
  %i.afg = fadd reassoc nsz arcp contract afn float %i.acz, %i.aff
  %i.afh = fmul reassoc nsz arcp contract afn float %i.adq, %i.adb
  %i.afi = fadd reassoc nsz arcp contract afn float %i.afh, %i.ada
  %i.afj = fdiv reassoc nsz arcp contract afn float %i.afg, %i.afi ; 2 uses
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afj, %i.adc
  %i.afl = fadd reassoc nsz arcp contract afn float %i.afk, %i.abf
  %i.afm = fmul reassoc nsz arcp contract afn float %i.afj, %i.ada
  %i.afn = fadd reassoc nsz arcp contract afn float %i.afm, %i.abh
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.afo = fcmp reassoc nsz arcp contract afn ogt float %i.aed, 1.000000e+00
  %i.afp = fcmp reassoc nsz arcp contract afn olt float %i.aed, 0.000000e+00
  %i.afq = select reassoc nsz arcp contract afn i1 %i.afp, float 0.000000e+00, float %i.aed
  %i.afr = select reassoc nsz arcp contract afn i1 %i.afo, float 1.000000e+00, float %i.afq
  %i.afs = fcmp reassoc nsz arcp contract afn oeq float %i.aed, %i.afr
  br i1 %i.afs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aft = fmul reassoc nsz arcp contract afn float %i.adq, %i.adh
  %i.afu = fadd reassoc nsz arcp contract afn float %i.acs, %i.aft
  %i.afv = fmul reassoc nsz arcp contract afn float %i.adq, %i.acx
  %i.afw = fadd reassoc nsz arcp contract afn float %i.afv, %i.acu
  %i.afx = fdiv reassoc nsz arcp contract afn float %i.afu, %i.afw ; 2 uses
  %i.afy = fmul reassoc nsz arcp contract afn float %i.afx, %i.acy
  %i.afz = fadd reassoc nsz arcp contract afn float %i.afy, %i.acv
  %i.aga = fmul reassoc nsz arcp contract afn float %i.afx, %i.acu
  %i.agb = fadd reassoc nsz arcp contract afn float %i.aga, %i.acr
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %.078.i = phi nsz float [ %i.aep, %bb.ai ], [ %i.afl, %bb.ak ], [ %i.afz, %bb.am ], [ 0.000000e+00, %bb.al ] ; 2 uses
  %.077.i = phi nsz float [ %i.aer, %bb.ai ], [ %i.afn, %bb.ak ], [ %i.agb, %bb.am ], [ 0.000000e+00, %bb.al ] ; 2 uses
  %i.agc = insertelement <2 x float> poison, float %.078.i, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = fmul reassoc nsz arcp contract afn <2 x float> %i.agd, <float f0xBF48B05C, float f0x3F3ECA3F>
  %i.agf = insertelement <2 x float> poison, float %.077.i, i64 0
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = fmul reassoc nsz arcp contract afn <2 x float> %i.agg, <float 2.775130e-01, float f0xBE524E0D>
  %i.agi = fmul reassoc nsz arcp contract afn float %.078.i, f0x3EA32D9A
  %i.agj = fmul reassoc nsz arcp contract afn float %.077.i, f0x400AB749
  %i.agk = fadd reassoc nsz arcp contract afn float %i.agi, f0x3E9527F8
  %i.agl = fadd reassoc nsz arcp contract afn float %i.agk, %i.agj ; 5 uses
  %i.agm = fcmp reassoc nsz arcp contract afn ult float %i.agl, 0.000000e+00
  %i.agn = fcmp reassoc nsz arcp contract afn olt float %i.agl, f0x00800000
  %i.ago = select reassoc nsz arcp contract afn i1 %i.agn, float f0x00800000, float %i.agl
  %i.agp = fcmp reassoc nsz arcp contract afn ogt float %i.agl, f0x80800000
  %i.agq = select reassoc nsz arcp contract afn i1 %i.agp, float f0x80800000, float %i.agl
  %i.agr = select reassoc nsz arcp contract afn i1 %i.agm, float %i.agq, float %i.ago
  %i.ags = fadd reassoc nsz arcp contract afn <2 x float> %i.age, <float f0x3E1D8756, float f0xBE29732A>
  %i.agt = fadd reassoc nsz arcp contract afn <2 x float> %i.ags, %i.agh
  %i.agu = insertelement <2 x float> poison, float %i.agr, i64 0
  %i.agv = shufflevector <2 x float> %i.agu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agw = fdiv reassoc nsz arcp contract afn <2 x float> %i.agt, %i.agv ; 2 uses
  %i.agx = fmul reassoc nsz arcp contract afn <2 x float> %i.agw, <float f0x3FB2C28D, float f0x3FB9C753> ; 2 uses
  %i.agy = extractelement <2 x float> %i.agx, i64 0
  %i.agz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.agw) ; 2 uses
  %i.aha = extractelement <2 x float> %i.agz, i64 0
  %i.ahb = fadd reassoc nsz arcp contract afn float %i.aha, f0x3FBEFF8B
  %i.ahc = fdiv reassoc nsz arcp contract afn float %i.agy, %i.ahb ; 2 uses
  %i.ahd = extractelement <2 x float> %i.agz, i64 1
  %i.ahe = fadd reassoc nsz arcp contract afn float %i.ahd, f0x3FC32F7A
  %i.ahf = extractelement <2 x float> %i.agx, i64 1
  %i.ahg = fdiv reassoc nsz arcp contract afn float %i.ahf, %i.ahe ; 2 uses
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.ahc, f0xBF8FFF79
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ahg, f0x3F7B00FB
  %i.ahj = fsub reassoc nsz arcp contract afn float %i.ahh, %i.ahi ; 3 uses
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.ahc, f0x3FEE7E6D
  %i.ahl = fmul reassoc nsz arcp contract afn float %i.ahg, f0x3FFC65AF
  %i.ahm = fadd reassoc nsz arcp contract afn float %i.ahl, %i.ahk ; 3 uses
  %i.ahn = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ahm, float %i.ahj)
  %i.aho = fmul reassoc nsz arcp contract afn float %i.ahn, f0x42A2A806
  %i.ahp = fadd reassoc nsz arcp contract afn float %i.aho, 2.555000e+02
  %i.ahq = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ahp)
  %i.ahr = fptosi float %i.ahq to i32             ; 2 uses
  %i.ahs = lshr i32 %i.ahr, 22
  %i.aht = and i32 %i.ahs, 512
  %i.ahu = add nsw i32 %i.aht, %i.ahr             ; 2 uses
  %.inv.i = icmp slt i32 %i.ahu, 512
  %.neg.i = select i1 %.inv.i, i32 0, i32 -512
  %i.ahv = add i32 %.neg.i, %i.ahu
  %i.ahw = fmul reassoc nsz arcp contract afn float %i.ahj, %i.ahj
  %i.ahx = fmul reassoc nsz arcp contract afn float %i.ahm, %i.ahm
  %i.ahy = sext i32 %i.ahv to i64                 ; 2 uses
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.ahy ; 2 uses
end_hunk_0
