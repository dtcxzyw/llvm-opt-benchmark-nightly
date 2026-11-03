Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.uy, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.vc, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vh = zext i32 %.0.lcssa.i119.i to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vh
  store i32 %.0.lcssa.i114.i, ptr %i.vi, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ae, %bb.ab, %bb.aa
  %i.vj = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vj, %i.rh
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.y, !llvm.loop !41

bb.ai:                                            ; preds = %bb.a, %_ZN7meshoptL12hashBuckets4Em.exit.i, %._crit_edge.i, %bb.u, %._crit_edge, %_ZN7meshoptL19computeFaceTangentsEPNS_7TangentEmPKjPKfmS5_m.exit, %.loopexit, %.noexc164, %bb.k
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  resume { ptr, i32 } %i.vk

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.v
  %exitcond248.not = icmp eq i64 %i.qz, %4
  br i1 %exitcond248.not, label %.preheader207, label %bb.v, !llvm.loop !42

._crit_edge224.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod379.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod379.not, label %._crit_edge224, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.unr-lcssa, %.lr.ph223.preheader
  %.0130222.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %i.add, %._crit_edge224.unr-lcssa ] ; 3 uses
  %lcmp.mod380 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod380)
  %i.vl = trunc i64 %.0130222.epil.init to i32    ; 2 uses
  %i.vm = and i64 %.0130222.epil.init, 4294967295
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vm ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vo, %i.vl
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil

.lr.ph.i191.epil:                                 ; preds = %.lr.ph223.epil.preheader, %.lr.ph.i191.epil
  %i.vp = phi i32 [ %i.vt, %.lr.ph.i191.epil ], [ %i.vo, %.lr.ph223.epil.preheader ] ; 3 uses
  %i.vq = phi ptr [ %i.vs, %.lr.ph.i191.epil ], [ %i.vn, %.lr.ph223.epil.preheader ]
  %i.vr = zext i32 %i.vp to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vr ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vt, ptr %i.vq, align 4, !tbaa !50
  %.not.i192.epil = icmp eq i32 %i.vp, %i.vt
  br i1 %.not.i192.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i191.epil, %.lr.ph223.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vl, %.lr.ph223.epil.preheader ], [ %i.vp, %.lr.ph.i191.epil ]
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.vu, align 4, !tbaa !50
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.vv = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.vv, i1 false)
  br i1 %.not90.i, label %.lr.ph228, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge224
  %.not.i184 = icmp eq ptr %1, null
  %i.vw = and i32 %10, 1
  %i.vx = icmp eq i32 %i.vw, 0
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i189, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.ach, %.loopexit.i189 ] ; 3 uses
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !57
  %i.wb = fcmp oeq float %i.wa, 0.000000e+00
  br i1 %i.wb, label %.loopexit.i189, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.aj
  %i.wc = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.we = getelementptr [4 x i8], ptr %1, i64 %i.wc ; 2 uses
  %i.wf = getelementptr [4 x i8], ptr %i.f, i64 %i.wc ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.an ] ; 4 uses
  %i.wg = add nuw i64 %indvars.iv.i, %i.wc        ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !50
  %i.wj = zext i32 %i.wi to i64
  %.idx.i186 = shl nuw nsw i64 %i.wj, 4
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !50
  %i.wn = zext i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !50
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr [4 x i8], ptr %i.we, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !50
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !50
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr [4 x i8], ptr %i.we, i64 %i.wx
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !50
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xa
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !50
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr [4 x i8], ptr %i.wf, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !50
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr [4 x i8], ptr %i.wf, i64 %i.xi
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.in160.i = phi ptr [ %i.wu, %bb.al ], [ %i.xf, %bb.am ]
  %.pn.i = phi i64 [ %i.wn, %bb.al ], [ %i.wg, %bb.am ]
  %.in155.i = phi ptr [ %i.xb, %bb.al ], [ %i.xj, %bb.am ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xk = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xl = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xm = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xn = zext i32 %i.xk to i64                   ; 2 uses
  %i.xo = mul i64 %i.l, %i.xn
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xo ; 3 uses
  %i.xq = zext i32 %i.xl to i64
  %i.xr = mul i64 %i.l, %i.xq
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xr ; 3 uses
  %i.xt = zext i32 %i.xm to i64
  %i.xu = mul i64 %i.l, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xu ; 3 uses
  %i.xw = mul i64 %i.m, %i.xn
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xw ; 2 uses
  %i.xy = load float, ptr %i.wd, align 4, !tbaa !63 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.ya = load float, ptr %i.xs, align 4, !tbaa !52
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !52
  %i.yi = load float, ptr %i.xz, align 4, !tbaa !52 ; 3 uses
  %i.yj = fneg float %i.yi                        ; 3 uses
  %i.yk = load float, ptr %i.xp, align 4, !tbaa !52
  %i.yl = load float, ptr %i.yb, align 4, !tbaa !52
  %i.ym = load float, ptr %i.yc, align 4, !tbaa !52
  %i.yn = load float, ptr %i.yd, align 4, !tbaa !52
  %i.yo = load float, ptr %i.ye, align 4, !tbaa !52 ; 2 uses
  %i.yp = fsub float %i.yn, %i.yo                 ; 2 uses
  %i.yq = load float, ptr %i.xv, align 4, !tbaa !52
  %i.yr = insertelement <2 x float> poison, float %i.ya, i64 0
  %i.ys = insertelement <2 x float> %i.yr, float %i.yq, i64 1
  %i.yt = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yv = fsub <2 x float> %i.ys, %i.yu           ; 3 uses
  %i.yw = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yx = insertelement <2 x float> poison, float %i.yl, i64 0
  %i.yy = insertelement <2 x float> %i.yx, float %i.yw, i64 1
  %i.yz = insertelement <2 x float> poison, float %i.ym, i64 0
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zb = fsub <2 x float> %i.yy, %i.za           ; 2 uses
  %i.zc = fsub float %i.yh, %i.yo                 ; 2 uses
  %i.zd = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.ze = insertelement <2 x float> %i.zd, float %i.zc, i64 1
  %i.zf = insertelement <2 x float> poison, float %i.yi, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zh = extractelement <2 x float> %i.yv, i64 0
  %i.zi = shufflevector <2 x float> %i.zb, <2 x float> %i.yv, <4 x i32> <i32 0, i32 3, i32 poison, i32 1>
  %i.zj = insertelement <4 x float> %i.zi, float %i.yp, i64 2
  %i.zk = load <2 x float>, ptr %i.vy, align 4, !tbaa !52 ; 3 uses
  %i.zl = load <2 x float>, ptr %i.xx, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop345 = fmul <2 x float> %i.zk, %i.zl
  %i.zm = extractelement <2 x float> %foldExtExtBinop345, i64 1
  %i.zn = extractelement <2 x float> %i.zl, i64 0
  %i.zo = extractelement <2 x float> %i.zk, i64 0
  %i.zp = tail call float @llvm.fmuladd.f32(float %i.zo, float %i.zn, float %i.zm)
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.xy, float %i.yi, float %i.zp) ; 2 uses
  %i.zr = fneg <2 x float> %i.zl                  ; 3 uses
  %i.zs = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zr, <2 x float> %i.zt, <2 x float> %i.zk) ; 4 uses
  %i.zv = tail call float @llvm.fmuladd.f32(float %i.yj, float %i.zq, float %i.xy) ; 3 uses
  %foldExtExtBinop347 = fmul <2 x float> %i.zu, %i.zu
  %i.zw = extractelement <2 x float> %foldExtExtBinop347, i64 1
  %i.zx = extractelement <2 x float> %i.zu, i64 0 ; 2 uses
  %i.zy = tail call float @llvm.fmuladd.f32(float %i.zx, float %i.zx, float %i.zw)
  %i.zz = tail call float @llvm.fmuladd.f32(float %i.zv, float %i.zv, float %i.zy) ; 2 uses
  %sqrt.i187 = tail call float @llvm.sqrt.f32(float %i.zz)
  %i.aaa = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aab = fmul <2 x float> %i.aaa, %i.zb
  %i.aac = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yv, <2 x float> %i.aac, <2 x float> %i.aab)
  %i.aae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ze, <2 x float> %i.zg, <2 x float> %i.aad) ; 3 uses
  %i.aaf = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aag = extractelement <2 x float> %i.aae, i64 0
  %i.aah = extractelement <2 x float> %i.zr, i64 0
  %i.aai = tail call float @llvm.fmuladd.f32(float %i.aah, float %i.aag, float %i.zh) ; 3 uses
  %i.aaj = shufflevector <2 x float> %i.zr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.aak = insertelement <4 x float> %i.aaj, float %i.yj, i64 2
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.aam = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aal, <4 x float> %i.aaf, <4 x float> %i.zj) ; 6 uses
  %i.aan = extractelement <2 x float> %i.aae, i64 1
  %i.aao = tail call float @llvm.fmuladd.f32(float %i.yj, float %i.aan, float %i.zc) ; 3 uses
  %i.aap = extractelement <4 x float> %i.aam, i64 0
  %foldExtExtBinop349 = fmul <4 x float> %i.aam, %i.aam
  %i.aaq = extractelement <4 x float> %foldExtExtBinop349, i64 0
  %i.aar = tail call float @llvm.fmuladd.f32(float %i.aai, float %i.aai, float %i.aaq)
  %i.aas = extractelement <4 x float> %i.aam, i64 2 ; 3 uses
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aas, float %i.aas, float %i.aar)
  %i.aau = extractelement <4 x float> %i.aam, i64 3 ; 3 uses
  %i.aav = fmul float %i.aau, %i.aau
  %i.aaw = extractelement <4 x float> %i.aam, i64 1 ; 3 uses
  %i.aax = tail call float @llvm.fmuladd.f32(float %i.aaw, float %i.aaw, float %i.aav)
  %i.aay = tail call float @llvm.fmuladd.f32(float %i.aao, float %i.aao, float %i.aax)
  %i.aaz = fmul float %i.aat, %i.aay
  %12 = tail call float @sqrtf(float noundef %i.aaz) #11 ; 3 uses
  %i.aba = fmul float %i.aap, %i.aau
  %i.abb = tail call float @llvm.fmuladd.f32(float %i.aai, float %i.aaw, float %i.aba)
  %i.abc = tail call float @llvm.fmuladd.f32(float %i.aas, float %i.aao, float %i.abb)
  %i.abd = fcmp oeq float %12, 0.000000e+00
  %i.abe = fcmp oeq float %i.zz, 0.000000e+00
  %i.abf = insertelement <2 x float> poison, float %12, i64 0
  %i.abg = insertelement <2 x float> %i.abf, float %sqrt.i187, i64 1
  %i.abh = fdiv <2 x float> splat (float 1.000000e+00), %i.abg ; 2 uses
  %i.abi = extractelement <2 x float> %i.abh, i64 0
  %i.abj = select i1 %i.abd, float 0.000000e+00, float %i.abi
  %i.abk = fmul float %i.abj, %i.abc              ; 2 uses
  %i.abl = tail call float @llvm.fabs.f32(float %i.abk) ; 2 uses
  %i.abm = fcmp ogt float %i.abl, 1.000000e+00
  %i.abn = select i1 %i.abm, float 1.000000e+00, float %i.abl ; 3 uses
  %i.abo = tail call float @llvm.fmuladd.f32(float %i.abn, float f0x3D52DA73, float f0xBE5253A5)
  %i.abp = tail call float @llvm.fmuladd.f32(float %i.abn, float %i.abo, float f0x3FC900CE)
  %i.abq = fsub float 1.000000e+00, %i.abn
  %i.abr = tail call float @sqrtf(float noundef %i.abq) #11
  %i.abs = fmul float %i.abr, %i.abp              ; 2 uses
  %i.abt = fcmp olt float %i.abk, 0.000000e+00
  %i.abu = fsub float f0x40490FDA, %i.abs
  %i.abv = select i1 %i.abt, float %i.abu, float %i.abs
  %i.abw = extractelement <2 x float> %i.abh, i64 1
  %i.abx = select i1 %i.abe, float 0.000000e+00, float %i.abw
  %i.aby = fmul float %i.abx, %i.abv              ; 2 uses
  %i.abz = fmul float %12, %i.aby
  %.0.i = select i1 %i.vx, float %i.abz, float %i.aby ; 2 uses
  %i.aca = load <2 x float>, ptr %i.wk, align 4, !tbaa !52
  %i.acb = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.acc, <2 x float> %i.aca)
  store <2 x float> %i.acd, ptr %i.wk, align 4, !tbaa !52
  %i.ace = getelementptr inbounds nuw i8, ptr %i.wk, i64 8 ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !52
  %i.acg = tail call float @llvm.fmuladd.f32(float %i.zv, float %.0.i, float %i.acf)
  store float %i.acg, ptr %i.ace, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i188, label %.loopexit.i189, label %bb.ak, !llvm.loop !43

.loopexit.i189:                                   ; preds = %bb.an, %bb.aj
  %i.ach = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.ach, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph226, label %bb.aj, !llvm.loop !44

.lr.ph223:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph223.preheader.new
  %.0130222 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %i.add, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter382 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter382.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.aci = trunc i64 %.0130222 to i32             ; 2 uses
  %i.acj = and i64 %.0130222, 4294967294
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acj ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.acl, %i.aci
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph223, %.lr.ph.i191
  %i.acm = phi i32 [ %i.acq, %.lr.ph.i191 ], [ %i.acl, %.lr.ph223 ] ; 3 uses
  %i.acn = phi ptr [ %i.acp, %.lr.ph.i191 ], [ %i.ack, %.lr.ph223 ]
  %i.aco = zext i32 %i.acm to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aco ; 2 uses
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acq, ptr %i.acn, align 4, !tbaa !50
  %.not.i192 = icmp eq i32 %i.acm, %i.acq
  br i1 %.not.i192, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i191, %.lr.ph223
  %.0.lcssa.i = phi i32 [ %i.aci, %.lr.ph223 ], [ %i.acm, %.lr.ph.i191 ]
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222
  store i32 %.0.lcssa.i, ptr %i.acr, align 4, !tbaa !50
  %i.acs = or disjoint i64 %.0130222, 1           ; 3 uses
  %i.act = trunc i64 %i.acs to i32                ; 2 uses
  %i.acu = and i64 %i.acs, 4294967295
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acu ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.acw, %i.act
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1

.lr.ph.i191.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i191.1
  %i.acx = phi i32 [ %i.adb, %.lr.ph.i191.1 ], [ %i.acw, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.acy = phi ptr [ %i.ada, %.lr.ph.i191.1 ], [ %i.acv, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.acz = zext i32 %i.acx to i64
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acz ; 2 uses
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !50 ; 3 uses
  store i32 %i.adb, ptr %i.acy, align 4, !tbaa !50
  %.not.i192.1 = icmp eq i32 %i.acx, %i.adb
  br i1 %.not.i192.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i191.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.act, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.acx, %.lr.ph.i191.1 ]
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acs
  store i32 %.0.lcssa.i.1, ptr %i.adc, align 4, !tbaa !50
  %i.add = add nuw i64 %.0130222, 2               ; 2 uses
  %niter382.next.1 = add nuw i64 %niter382, 2     ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %._crit_edge224.unr-lcssa, label %.lr.ph223, !llvm.loop !45

.lr.ph228:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit199, %._crit_edge224
  %i.ade = and i32 %10, 2
  %i.adf = icmp eq i32 %i.ade, 0
  br label %bb.ao

.lr.ph226:                                        ; preds = %.loopexit.i189, %_ZN7meshoptL7follow2EPjj.exit199
  %.0129225 = phi i64 [ %i.adx, %_ZN7meshoptL7follow2EPjj.exit199 ], [ 0, %.loopexit.i189 ] ; 5 uses
  %i.adg = trunc i64 %.0129225 to i32
  %i.adh = and i64 %.0129225, 4294967295
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.adh ; 2 uses
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !50 ; 2 uses
  %.not11.i194 = icmp eq i32 %i.adj, %i.adg
  br i1 %.not11.i194, label %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge, label %.lr.ph.i195

.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge: ; preds = %.lr.ph226
  %.pre = and i64 %.0129225, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit199

.lr.ph.i195:                                      ; preds = %.lr.ph226, %.lr.ph.i195
  %i.adk = phi i32 [ %i.ado, %.lr.ph.i195 ], [ %i.adj, %.lr.ph226 ] ; 2 uses
  %i.adl = phi ptr [ %i.adn, %.lr.ph.i195 ], [ %i.adi, %.lr.ph226 ]
  %i.adm = zext i32 %i.adk to i64                 ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.adm ; 2 uses
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ado, ptr %i.adl, align 4, !tbaa !50
  %.not.i196 = icmp eq i32 %i.adk, %i.ado
  br i1 %.not.i196, label %_ZN7meshoptL7follow2EPjj.exit199, label %.lr.ph.i195, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit199:                 ; preds = %.lr.ph.i195, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge ], [ %i.adm, %.lr.ph.i195 ]
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.pre-phi
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !58
  %i.adr = and i8 %i.adq, 1
  %.not148 = icmp eq i8 %i.adr, 0
  %i.ads = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129225, 48
  %i.adt = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.adu = getelementptr i8, ptr %i.adt, i64 44
  store float %i.ads, ptr %i.adu, align 4, !tbaa !52
  %i.adv = getelementptr i8, ptr %i.adt, i64 28
  store float %i.ads, ptr %i.adv, align 4, !tbaa !52
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adt, i64 12
  store float %i.ads, ptr %i.adw, align 4, !tbaa !52
  %i.adx = add nuw nsw i64 %.0129225, 1           ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adx, %i.a
  br i1 %exitcond250.not, label %.lr.ph228, label %.lr.ph226, !llvm.loop !46

bb.ao:                                            ; preds = %.lr.ph228, %bb.ar
  %.0128227 = phi i64 [ 0, %.lr.ph228 ], [ %i.aeu, %bb.ar ] ; 4 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0128227
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !50
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = icmp eq i64 %.0128227, %i.aea
  br i1 %i.aeb, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.idx147 = shl nuw nsw i64 %.0128227, 4
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !52 ; 3 uses
  %i.aef = load <2 x float>, ptr %i.aec, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop351 = fmul <2 x float> %i.aef, %i.aef
  %i.aeg = extractelement <2 x float> %foldExtExtBinop351, i64 1
  %i.aeh = extractelement <2 x float> %i.aef, i64 0 ; 2 uses
  %i.aei = tail call float @llvm.fmuladd.f32(float %i.aeh, float %i.aeh, float %i.aeg)
  %i.aej = tail call float @llvm.fmuladd.f32(float %i.aee, float %i.aee, float %i.aei) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.aej)
  %i.aek = fcmp oeq float %i.aej, 0.000000e+00
  %i.ael = fdiv float 1.000000e+00, %sqrt
  %i.aem = select i1 %i.aek, float 0.000000e+00, float %i.ael ; 3 uses
  %i.aen = insertelement <2 x float> poison, float %i.aem, i64 0
  %i.aeo = shufflevector <2 x float> %i.aen, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aep = fmul <2 x float> %i.aef, %i.aeo        ; 2 uses
  store <2 x float> %i.aep, ptr %i.aec, align 4, !tbaa !52
  %i.aeq = fmul float %i.aee, %i.aem
  store float %i.aeq, ptr %i.aed, align 4, !tbaa !52
  br i1 %i.adf, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aer = fcmp oeq float %i.aem, 0.000000e+00
  %i.aes = extractelement <2 x float> %i.aep, i64 0
  %i.aet = select i1 %i.aer, float 1.000000e+00, float %i.aes
  store float %i.aet, ptr %i.aec, align 4, !tbaa !52
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.aeu = add nuw i64 %.0128227, 1               ; 2 uses
  %exitcond251.not = icmp eq i64 %i.aeu, %2
  br i1 %exitcond251.not, label %.lr.ph230.preheader, label %bb.ao, !llvm.loop !47

.lr.ph230.preheader:                              ; preds = %bb.ar
  %xtraiter383 = and i64 %2, 1
  %i.aev = icmp eq i64 %i.qx, 0
  br i1 %i.aev, label %.lr.ph230.epil.preheader, label %.lr.ph230.preheader.new

.lr.ph230.preheader.new:                          ; preds = %.lr.ph230.preheader
  %unroll_iter387 = and i64 %2, -2
  br label %.lr.ph230

._crit_edge231.loopexit.unr-lcssa:                ; preds = %bb.ax
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %._crit_edge231, label %.lr.ph230.epil.preheader

.lr.ph230.epil.preheader:                         ; preds = %._crit_edge231.loopexit.unr-lcssa, %.lr.ph230.preheader
  %.0229.epil.init = phi i64 [ 0, %.lr.ph230.preheader ], [ %i.afu, %._crit_edge231.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod386 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod386)
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229.epil.init
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !50
  %i.aey = zext i32 %i.aex to i64                 ; 2 uses
  %.not.epil = icmp eq i64 %.0229.epil.init, %i.aey
  br i1 %.not.epil, label %._crit_edge231, label %bb.as

bb.as:                                            ; preds = %.lr.ph230.epil.preheader
  %.idx.epil = shl i64 %.0229.epil.init, 4
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %.idx146.epil = shl nuw nsw i64 %i.aey, 4
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aez, ptr noundef nonnull align 4 dereferenceable(12) %i.afa, i64 12, i1 false)
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.loopexit.unr-lcssa, %bb.as, %.lr.ph230.epil.preheader, %.preheader207
  %i.afb = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %.not3.i = icmp eq i64 %i.afb, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %._crit_edge231, %bb.at
  %.04.i = phi i64 [ %i.afg, %bb.at ], [ %i.afb, %._crit_edge231 ] ; 2 uses
  %i.afc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.afd = getelementptr [8 x i8], ptr %11, i64 %.04.i
  %i.afe = getelementptr i8, ptr %i.afd, i64 -8
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !15
  invoke void %i.afc(ptr noundef %i.aff)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.lr.ph.i200
  %i.afg = add i64 %.04.i, -1                     ; 2 uses
  %.not.i201 = icmp eq i64 %i.afg, 0
  br i1 %.not.i201, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i200, !llvm.loop !0

bb.au:                                            ; preds = %.lr.ph.i200
  %i.afh = landingpad { ptr, i32 }
          catch ptr null
  %i.afi = extractvalue { ptr, i32 } %i.afh, 0
  tail call void @__clang_call_terminate(ptr %i.afi) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.at, %._crit_edge231
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph230:                                        ; preds = %bb.ax, %.lr.ph230.preheader.new
  %.0229 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %i.afu, %bb.ax ] ; 5 uses
  %niter388 = phi i64 [ 0, %.lr.ph230.preheader.new ], [ %niter388.next.1, %bb.ax ]
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0229
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !50
  %i.afl = zext i32 %i.afk to i64                 ; 2 uses
  %.not = icmp eq i64 %.0229, %i.afl
  br i1 %.not, label %.lr.ph230.1, label %bb.av

bb.av:                                            ; preds = %.lr.ph230
  %.idx = shl i64 %.0229, 4
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.afl, 4
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afm, ptr noundef nonnull align 4 dereferenceable(12) %i.afn, i64 12, i1 false)
  br label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230, %bb.av
  %i.afo = or disjoint i64 %.0229, 1              ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !50
  %i.afr = zext i32 %i.afq to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.afo, %i.afr
  br i1 %.not.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph230.1
  %.idx.1 = shl i64 %i.afo, 4
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.afr, 4
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afs, ptr noundef nonnull align 4 dereferenceable(12) %i.aft, i64 12, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph230.1
  %i.afu = add nuw i64 %.0229, 2                  ; 2 uses
  %niter388.next.1 = add nuw i64 %niter388, 2     ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %._crit_edge231.loopexit.unr-lcssa, label %.lr.ph230, !llvm.loop !48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #12
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN17meshopt_Allocator7StorageE", !10, i64 0, !10, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTS17meshopt_Allocator", !6, i64 0, !12, i64 192}
!14 = !{!13, !12, i64 192}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !10, i64 8}
!18 = distinct !{null}
!19 = distinct !{!19, !16}
!20 = distinct !{null}
!21 = distinct !{!21, !16}
!22 = distinct !{null}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !53}
!25 = distinct !{!25, !53}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{null}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !54, !55}
!31 = distinct !{!31, !16, !55, !54}
!32 = distinct !{null}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !16, !54, !55}
!38 = distinct !{!38, !16, !54}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!11, !10, i64 0}
!50 = !{!7, !7, i64 0}
!51 = !{!"float", !6, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"_ZTSN7meshopt7TangentE", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!57 = !{!56, !51, i64 12}
!58 = !{!6, !6, i64 0}
!59 = !{!34}
!60 = !{!36, !35}
!61 = !{!35}
!62 = !{!36}
!63 = !{!56, !51, i64 8}
end_hunk_0
