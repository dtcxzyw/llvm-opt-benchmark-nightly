Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %.not11.i111.i = icmp eq i32 %i.up, %i.us
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.am, %.lr.ph.i112.i
  %i.ut = phi i32 [ %i.ux, %.lr.ph.i112.i ], [ %i.us, %bb.am ] ; 3 uses
  %i.uu = phi ptr [ %i.uw, %.lr.ph.i112.i ], [ %i.ur, %bb.am ]
  %i.uv = zext i32 %i.ut to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.uv ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ux, ptr %i.uu, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.ut, %i.ux
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.am
  %.0.lcssa.i114.i = phi i32 [ %i.up, %bb.am ], [ %i.ut, %.lr.ph.i112.i ] ; 2 uses
  %i.uy = load i32, ptr %i.sj, align 4, !tbaa !50
  %i.uz = and i32 %i.uy, 3
  %i.va = add nuw i32 %i.uz, %i.sm                ; 3 uses
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vb ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.va, %i.vd
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.ve = phi i32 [ %i.vi, %.lr.ph.i117.i ], [ %i.vd, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.vf = phi ptr [ %i.vh, %.lr.ph.i117.i ], [ %i.vc, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vg = zext i32 %i.ve to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vi, ptr %i.vf, align 4, !tbaa !50
  %.not.i118.i = icmp eq i32 %i.ve, %i.vi
  br i1 %.not.i118.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.va, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.ve, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vj = zext i32 %.0.lcssa.i119.i to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vj
  store i32 %.0.lcssa.i114.i, ptr %i.vk, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.an, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ak, %bb.ah, %bb.ag
  %i.vl = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vl, %i.rj
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.ae, !llvm.loop !41

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.ab
  %exitcond248.not = icmp eq i64 %i.rb, %4
  br i1 %exitcond248.not, label %.preheader207, label %bb.ab, !llvm.loop !42

._crit_edge224.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod375.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod375.not, label %._crit_edge224, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.unr-lcssa, %.lr.ph223.preheader
  %.0130222.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %i.acp, %._crit_edge224.unr-lcssa ] ; 3 uses
  %lcmp.mod376 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod376)
  %i.vm = trunc i64 %.0130222.epil.init to i32    ; 2 uses
  %i.vn = and i64 %.0130222.epil.init, 4294967295
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vn ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vp, %i.vm
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil

.lr.ph.i191.epil:                                 ; preds = %.lr.ph223.epil.preheader, %.lr.ph.i191.epil
  %i.vq = phi i32 [ %i.vu, %.lr.ph.i191.epil ], [ %i.vp, %.lr.ph223.epil.preheader ] ; 3 uses
  %i.vr = phi ptr [ %i.vt, %.lr.ph.i191.epil ], [ %i.vo, %.lr.ph223.epil.preheader ]
  %i.vs = zext i32 %i.vq to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vu, ptr %i.vr, align 4, !tbaa !50
  %.not.i192.epil = icmp eq i32 %i.vq, %i.vu
  br i1 %.not.i192.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i191.epil, %.lr.ph223.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vm, %.lr.ph223.epil.preheader ], [ %i.vq, %.lr.ph.i191.epil ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.vv, align 4, !tbaa !50
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.vw = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.vw, i1 false)
  br i1 %.not90.i, label %.lr.ph228, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge224
  %.not.i184 = icmp eq ptr %1, null
  %i.vx = and i32 %10, 1
  %i.vy = icmp eq i32 %i.vx, 0
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i189, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.abt, %.loopexit.i189 ] ; 3 uses
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !57
  %i.wc = fcmp oeq float %i.wb, 0.000000e+00
  br i1 %i.wc, label %.loopexit.i189, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.ao
  %i.wd = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wf = getelementptr [4 x i8], ptr %1, i64 %i.wd ; 2 uses
  %i.wg = getelementptr [4 x i8], ptr %i.f, i64 %i.wd ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.as ] ; 4 uses
  %i.wh = add nuw i64 %indvars.iv.i, %i.wd        ; 3 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !50
  %i.wk = zext i32 %i.wj to i64
  %.idx.i186 = shl nuw nsw i64 %i.wk, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wh
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !50
  %i.wo = zext i32 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !50
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr [4 x i8], ptr %i.wf, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !50
  %i.wu = zext i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !50
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr [4 x i8], ptr %i.wf, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !50
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xb
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !50
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr [4 x i8], ptr %i.wg, i64 %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !50
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr [4 x i8], ptr %i.wg, i64 %i.xj
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.in160.i = phi ptr [ %i.wv, %bb.aq ], [ %i.xg, %bb.ar ]
  %.pn.i = phi i64 [ %i.wo, %bb.aq ], [ %i.wh, %bb.ar ]
  %.in155.i = phi ptr [ %i.xc, %bb.aq ], [ %i.xk, %bb.ar ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xl = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xm = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xn = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xo = zext i32 %i.xl to i64                   ; 2 uses
  %i.xp = mul i64 %i.l, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xp ; 3 uses
  %i.xr = zext i32 %i.xm to i64
  %i.xs = mul i64 %i.l, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xs ; 2 uses
  %i.xu = zext i32 %i.xn to i64
  %i.xv = mul i64 %i.l, %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xv ; 2 uses
  %i.xx = mul i64 %i.m, %i.xo
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xx ; 2 uses
  %i.xz = load float, ptr %i.we, align 4, !tbaa !63 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !52 ; 3 uses
  %i.yc = fneg float %i.yb                        ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xq, i64 4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !52
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !52
  %i.yj = load <2 x float>, ptr %i.vz, align 4, !tbaa !52 ; 3 uses
  %i.yk = load <2 x float>, ptr %i.xy, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop338 = fmul <2 x float> %i.yj, %i.yk
  %i.yl = extractelement <2 x float> %foldExtExtBinop338, i64 1
  %i.ym = extractelement <2 x float> %i.yk, i64 0
  %i.yn = extractelement <2 x float> %i.yj, i64 0
  %i.yo = tail call float @llvm.fmuladd.f32(float %i.yn, float %i.ym, float %i.yl)
  %i.yp = tail call float @llvm.fmuladd.f32(float %i.xz, float %i.yb, float %i.yo) ; 2 uses
  %i.yq = fneg <2 x float> %i.yk                  ; 3 uses
  %i.yr = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yq, <2 x float> %i.ys, <2 x float> %i.yj) ; 4 uses
  %i.yu = tail call float @llvm.fmuladd.f32(float %i.yc, float %i.yp, float %i.xz) ; 3 uses
  %foldExtExtBinop340 = fmul <2 x float> %i.yt, %i.yt
  %i.yv = extractelement <2 x float> %foldExtExtBinop340, i64 1
  %i.yw = extractelement <2 x float> %i.yt, i64 0 ; 2 uses
  %i.yx = tail call float @llvm.fmuladd.f32(float %i.yw, float %i.yw, float %i.yv)
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.yu, float %i.yu, float %i.yx) ; 2 uses
  %sqrt.i187 = tail call float @llvm.sqrt.f32(float %i.yy)
  %12 = load <2 x float>, ptr %i.xt, align 4, !tbaa !52 ; 2 uses
  %13 = load float, ptr %i.yd, align 4, !tbaa !52
  %i.yz = load float, ptr %i.xq, align 4, !tbaa !52
  %i.za = load float, ptr %i.yg, align 4, !tbaa !52
  %i.zb = load <2 x float>, ptr %i.xw, align 4, !tbaa !52 ; 2 uses
  %i.zc = shufflevector <2 x float> %12, <2 x float> %i.zb, <2 x i32> <i32 0, i32 2>
  %i.zd = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zf = fsub <2 x float> %i.zc, %i.ze           ; 2 uses
  %i.zg = shufflevector <2 x float> %12, <2 x float> %i.zb, <2 x i32> <i32 1, i32 3>
  %i.zh = insertelement <2 x float> poison, float %13, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fsub <2 x float> %i.zg, %i.zi           ; 2 uses
  %i.zk = insertelement <2 x float> poison, float %i.yf, i64 0
  %i.zl = insertelement <2 x float> %i.zk, float %i.yi, i64 1
  %i.zm = insertelement <2 x float> poison, float %i.za, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = fsub <2 x float> %i.zl, %i.zn           ; 2 uses
  %i.zp = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zq = fmul <2 x float> %i.zp, %i.zj
  %i.zr = shufflevector <2 x float> %i.yk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zf, <2 x float> %i.zr, <2 x float> %i.zq)
  %i.zt = insertelement <2 x float> poison, float %i.yb, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.zu, <2 x float> %i.zs) ; 3 uses
  %i.zw = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zw, <2 x float> %i.zv, <2 x float> %i.zf) ; 4 uses
  %i.zy = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.zv, <2 x float> %i.zj) ; 4 uses
  %i.aaa = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.aab = shufflevector <2 x float> %i.aaa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.zv, <2 x float> %i.zo) ; 4 uses
  %i.aad = fmul <2 x float> %i.zz, %i.zz
  %i.aae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.zx, <2 x float> %i.aad)
  %i.aaf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aac, <2 x float> %i.aae) ; 2 uses
  %shift = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342 = fmul <2 x float> %i.aaf, %shift
  %i.aag = extractelement <2 x float> %foldExtExtBinop342, i64 0
  %i.aah = tail call float @sqrtf(float noundef %i.aag) #11 ; 3 uses
  %shift344 = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345 = fmul <2 x float> %i.zz, %shift344
  %i.aai = extractelement <2 x float> %foldExtExtBinop345, i64 0
  %i.aaj = extractelement <2 x float> %i.zx, i64 0
  %i.aak = extractelement <2 x float> %i.zx, i64 1
  %i.aal = tail call float @llvm.fmuladd.f32(float %i.aaj, float %i.aak, float %i.aai)
  %i.aam = extractelement <2 x float> %i.aac, i64 0
  %i.aan = extractelement <2 x float> %i.aac, i64 1
  %i.aao = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.aan, float %i.aal)
  %i.aap = fcmp oeq float %i.aah, 0.000000e+00
  %i.aaq = fcmp oeq float %i.yy, 0.000000e+00
  %i.aar = insertelement <2 x float> poison, float %i.aah, i64 0
  %i.aas = insertelement <2 x float> %i.aar, float %sqrt.i187, i64 1
  %i.aat = fdiv <2 x float> splat (float 1.000000e+00), %i.aas ; 2 uses
  %i.aau = extractelement <2 x float> %i.aat, i64 0
  %i.aav = select i1 %i.aap, float 0.000000e+00, float %i.aau
  %i.aaw = fmul float %i.aav, %i.aao              ; 2 uses
  %i.aax = tail call float @llvm.fabs.f32(float %i.aaw) ; 2 uses
  %i.aay = fcmp ogt float %i.aax, 1.000000e+00
  %i.aaz = select i1 %i.aay, float 1.000000e+00, float %i.aax ; 3 uses
  %i.aba = tail call float @llvm.fmuladd.f32(float %i.aaz, float f0x3D52DA73, float f0xBE5253A5)
  %i.abb = tail call float @llvm.fmuladd.f32(float %i.aaz, float %i.aba, float f0x3FC900CE)
  %i.abc = fsub float 1.000000e+00, %i.aaz
  %i.abd = tail call float @sqrtf(float noundef %i.abc) #11
  %i.abe = fmul float %i.abd, %i.abb              ; 2 uses
  %i.abf = fcmp olt float %i.aaw, 0.000000e+00
  %i.abg = fsub float f0x40490FDA, %i.abe
  %i.abh = select i1 %i.abf, float %i.abg, float %i.abe
  %i.abi = extractelement <2 x float> %i.aat, i64 1
  %i.abj = select i1 %i.aaq, float 0.000000e+00, float %i.abi
  %i.abk = fmul float %i.abj, %i.abh              ; 2 uses
  %i.abl = fmul float %i.aah, %i.abk
  %.0.i = select i1 %i.vy, float %i.abl, float %i.abk ; 2 uses
  %i.abm = load <2 x float>, ptr %i.wl, align 4, !tbaa !52
  %i.abn = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yt, <2 x float> %i.abo, <2 x float> %i.abm)
  store <2 x float> %i.abp, ptr %i.wl, align 4, !tbaa !52
  %i.abq = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !52
  %i.abs = tail call float @llvm.fmuladd.f32(float %i.yu, float %.0.i, float %i.abr)
  store float %i.abs, ptr %i.abq, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i188, label %.loopexit.i189, label %bb.ap, !llvm.loop !43

.loopexit.i189:                                   ; preds = %bb.as, %bb.ao
  %i.abt = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.abt, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph226, label %bb.ao, !llvm.loop !44

.lr.ph223:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph223.preheader.new
  %.0130222 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %i.acp, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter378 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter378.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.abu = trunc i64 %.0130222 to i32             ; 2 uses
  %i.abv = and i64 %.0130222, 4294967294
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.abv ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.abx, %i.abu
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph223, %.lr.ph.i191
  %i.aby = phi i32 [ %i.acc, %.lr.ph.i191 ], [ %i.abx, %.lr.ph223 ] ; 3 uses
  %i.abz = phi ptr [ %i.acb, %.lr.ph.i191 ], [ %i.abw, %.lr.ph223 ]
  %i.aca = zext i32 %i.aby to i64
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aca ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acc, ptr %i.abz, align 4, !tbaa !50
  %.not.i192 = icmp eq i32 %i.aby, %i.acc
  br i1 %.not.i192, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i191, %.lr.ph223
  %.0.lcssa.i = phi i32 [ %i.abu, %.lr.ph223 ], [ %i.aby, %.lr.ph.i191 ]
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222
  store i32 %.0.lcssa.i, ptr %i.acd, align 4, !tbaa !50
  %i.ace = or disjoint i64 %.0130222, 1           ; 3 uses
  %i.acf = trunc i64 %i.ace to i32                ; 2 uses
  %i.acg = and i64 %i.ace, 4294967295
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acg ; 2 uses
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.aci, %i.acf
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1

.lr.ph.i191.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i191.1
  %i.acj = phi i32 [ %i.acn, %.lr.ph.i191.1 ], [ %i.aci, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.ack = phi ptr [ %i.acm, %.lr.ph.i191.1 ], [ %i.ach, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.acl = zext i32 %i.acj to i64
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acl ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acn, ptr %i.ack, align 4, !tbaa !50
  %.not.i192.1 = icmp eq i32 %i.acj, %i.acn
  br i1 %.not.i192.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i191.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.acf, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.acj, %.lr.ph.i191.1 ]
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ace
  store i32 %.0.lcssa.i.1, ptr %i.aco, align 4, !tbaa !50
  %i.acp = add nuw i64 %.0130222, 2               ; 2 uses
  %niter378.next.1 = add nuw i64 %niter378, 2     ; 2 uses
  %niter378.ncmp.1 = icmp eq i64 %niter378.next.1, %unroll_iter377
  br i1 %niter378.ncmp.1, label %._crit_edge224.unr-lcssa, label %.lr.ph223, !llvm.loop !45

.lr.ph228:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit199, %._crit_edge224
  %i.acq = and i32 %10, 2
  %i.acr = icmp eq i32 %i.acq, 0
  br label %bb.at

.lr.ph226:                                        ; preds = %.loopexit.i189, %_ZN7meshoptL7follow2EPjj.exit199
  %.0129225 = phi i64 [ %i.adj, %_ZN7meshoptL7follow2EPjj.exit199 ], [ 0, %.loopexit.i189 ] ; 5 uses
  %i.acs = trunc i64 %.0129225 to i32
  %i.act = and i64 %.0129225, 4294967295
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.act ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !50 ; 2 uses
  %.not11.i194 = icmp eq i32 %i.acv, %i.acs
  br i1 %.not11.i194, label %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge, label %.lr.ph.i195

.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge: ; preds = %.lr.ph226
  %.pre = and i64 %.0129225, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit199

.lr.ph.i195:                                      ; preds = %.lr.ph226, %.lr.ph.i195
  %i.acw = phi i32 [ %i.ada, %.lr.ph.i195 ], [ %i.acv, %.lr.ph226 ] ; 2 uses
  %i.acx = phi ptr [ %i.acz, %.lr.ph.i195 ], [ %i.acu, %.lr.ph226 ]
  %i.acy = zext i32 %i.acw to i64                 ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.acy ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ada, ptr %i.acx, align 4, !tbaa !50
  %.not.i196 = icmp eq i32 %i.acw, %i.ada
  br i1 %.not.i196, label %_ZN7meshoptL7follow2EPjj.exit199, label %.lr.ph.i195, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit199:                 ; preds = %.lr.ph.i195, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge ], [ %i.acy, %.lr.ph.i195 ]
  %i.adb = getelementptr inbounds nuw i8, ptr %i.of, i64 %.pre-phi
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !58
  %i.add = and i8 %i.adc, 1
  %.not148 = icmp eq i8 %i.add, 0
  %i.ade = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129225, 48
  %i.adf = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.adg = getelementptr i8, ptr %i.adf, i64 44
  store float %i.ade, ptr %i.adg, align 4, !tbaa !52
  %i.adh = getelementptr i8, ptr %i.adf, i64 28
  store float %i.ade, ptr %i.adh, align 4, !tbaa !52
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 12
  store float %i.ade, ptr %i.adi, align 4, !tbaa !52
  %i.adj = add nuw nsw i64 %.0129225, 1           ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adj, %i.a
  br i1 %exitcond250.not, label %.lr.ph228, label %.lr.ph226, !llvm.loop !46

bb.at:                                            ; preds = %.lr.ph228, %bb.aw
  %.0128227 = phi i64 [ 0, %.lr.ph228 ], [ %i.aef, %bb.aw ] ; 4 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0128227
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !50
  %i.adm = zext i32 %i.adl to i64
  %i.adn = icmp eq i64 %.0128227, %i.adm
  br i1 %i.adn, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.idx147 = shl nuw nsw i64 %.0128227, 4
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !52 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 4 ; 2 uses
  %i.adr = load <2 x float>, ptr %i.adq, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop347 = fmul <2 x float> %i.adr, %i.adr
  %i.ads = extractelement <2 x float> %foldExtExtBinop347, i64 0
  %i.adt = tail call float @llvm.fmuladd.f32(float %i.adp, float %i.adp, float %i.ads)
  %i.adu = extractelement <2 x float> %i.adr, i64 1 ; 2 uses
  %i.adv = tail call float @llvm.fmuladd.f32(float %i.adu, float %i.adu, float %i.adt) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.adv)
  %i.adw = fcmp oeq float %i.adv, 0.000000e+00
  %i.adx = fdiv float 1.000000e+00, %sqrt
  %i.ady = select i1 %i.adw, float 0.000000e+00, float %i.adx ; 3 uses
end_hunk_0
