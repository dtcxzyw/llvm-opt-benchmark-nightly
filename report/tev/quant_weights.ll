Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/quant_weights?download=true
inline.NumInlined: 1046
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN3jxl6N_SSE417ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.vt = fadd <2 x float> %i.vs, <float f0x424379A1, float -1.944150e+01>
  %i.vu = fmul <2 x float> %i.vr, %i.vt
  %i.vv = fadd <2 x float> %i.vu, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0
  %i.vx = fmul float %i.vm, %i.vw
  %i.vy = extractelement <2 x float> %i.vv, i64 1
  %i.vz = fdiv float %i.vx, %i.vy
  %i.wa = fmul float %i.ua, %i.vz
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.wb = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.lq
  %i.wc = getelementptr i8, ptr %i.wb, i64 %i.mf
  %i.wd = getelementptr i8, ptr %i.wc, i64 24
  store float %i.wa, ptr %i.wd, align 4, !tbaa !10
  %i.we = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.we, 4
  br i1 %exitcond.not, label %bb.w, label %.preheader366, !llvm.loop !86

bb.w:                                             ; preds = %bb.v
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 15 uses
  %i.wg = mul i64 %.0242379, %i.n
  %i.wh = load ptr, ptr %6, align 8               ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wg ; 24 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %i.wl = load <4 x float>, ptr %i.wj, align 4, !tbaa !10
  store <4 x float> %i.wl, ptr %i.wk, align 4, !tbaa !10
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 20
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 52
  %i.wo = load <2 x float>, ptr %i.wm, align 4, !tbaa !10
  store <2 x float> %i.wo, ptr %i.wn, align 4, !tbaa !10
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 28
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !10
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 60
  store float %i.wq, ptr %i.wr, align 4, !tbaa !10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.wt = load float, ptr %i.ws, align 16, !tbaa !10
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wf, i64 36
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wf, i64 44
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 108
  %i.wx = load <4 x float>, ptr %i.wv, align 4, !tbaa !10
  store <4 x float> %i.wx, ptr %i.ww, align 4, !tbaa !10
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wf, i64 60
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !10
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wi, i64 124
  store float %i.wz, ptr %i.xa, align 4, !tbaa !10
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %i.xc = load float, ptr %i.xb, align 16, !tbaa !10
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wf, i64 68
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wf, i64 76
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wi, i64 172
  %i.xg = load <4 x float>, ptr %i.xe, align 4, !tbaa !10
  store <4 x float> %i.xg, ptr %i.xf, align 4, !tbaa !10
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wf, i64 92
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !10
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 188
  store float %i.xi, ptr %i.xj, align 4, !tbaa !10
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wf, i64 96
  %i.xl = load float, ptr %i.xk, align 16, !tbaa !10
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wf, i64 100
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wf, i64 108
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wi, i64 236
  %i.xp = load <4 x float>, ptr %i.xn, align 4, !tbaa !10
  store <4 x float> %i.xp, ptr %i.xo, align 4, !tbaa !10
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wf, i64 124
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !10
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wi, i64 252
  store float %i.xr, ptr %i.xs, align 4, !tbaa !10
  %i.xt = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lq ; 15 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !10
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  store float %i.xv, ptr %i.xw, align 4, !tbaa !10
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xy = load float, ptr %i.xx, align 8, !tbaa !10
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  store float %i.xy, ptr %i.xz, align 4, !tbaa !10
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 12
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !10
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wi, i64 28
  store float %i.yb, ptr %i.yc, align 4, !tbaa !10
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.ye = load float, ptr %i.yd, align 16, !tbaa !10
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wi, i64 68
  store float %i.ye, ptr %i.yf, align 4, !tbaa !10
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xt, i64 20
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !10
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wi, i64 76
  store float %i.yh, ptr %i.yi, align 4, !tbaa !10
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.yk = load float, ptr %i.yj, align 8, !tbaa !10
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wi, i64 84
  store float %i.yk, ptr %i.yl, align 4, !tbaa !10
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xt, i64 28
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wi, i64 92
  %i.yp = load <2 x float>, ptr %i.wu, align 4, !tbaa !10
  %i.yq = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.yr = insertelement <4 x float> %i.yq, float %i.wt, i64 1
  %i.ys = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yt = shufflevector <4 x float> %i.yr, <4 x float> %i.ys, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.yt, ptr %i.yo, align 4, !tbaa !10
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.yv = load float, ptr %i.yu, align 16, !tbaa !10
  %i.yw = getelementptr inbounds nuw i8, ptr %i.wi, i64 132
  store float %i.yv, ptr %i.yw, align 4, !tbaa !10
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xt, i64 36
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !10
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wi, i64 140
  store float %i.yy, ptr %i.yz, align 4, !tbaa !10
  %i.za = getelementptr inbounds nuw i8, ptr %i.xt, i64 40
  %i.zb = load float, ptr %i.za, align 8, !tbaa !10
  %i.zc = getelementptr inbounds nuw i8, ptr %i.wi, i64 148
  store float %i.zb, ptr %i.zc, align 4, !tbaa !10
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xt, i64 44
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !10
  %i.zf = getelementptr inbounds nuw i8, ptr %i.wi, i64 156
  %i.zg = load <2 x float>, ptr %i.xd, align 4, !tbaa !10
  %i.zh = insertelement <4 x float> poison, float %i.ze, i64 0
  %i.zi = insertelement <4 x float> %i.zh, float %i.xc, i64 1
  %i.zj = shufflevector <2 x float> %i.zg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zk = shufflevector <4 x float> %i.zi, <4 x float> %i.zj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.zk, ptr %i.zf, align 4, !tbaa !10
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  %i.zm = load float, ptr %i.zl, align 16, !tbaa !10
  %i.zn = getelementptr inbounds nuw i8, ptr %i.wi, i64 196
  store float %i.zm, ptr %i.zn, align 4, !tbaa !10
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xt, i64 52
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !10
  %i.zq = getelementptr inbounds nuw i8, ptr %i.wi, i64 204
  store float %i.zp, ptr %i.zq, align 4, !tbaa !10
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  %i.zs = load float, ptr %i.zr, align 8, !tbaa !10
  %i.zt = getelementptr inbounds nuw i8, ptr %i.wi, i64 212
  store float %i.zs, ptr %i.zt, align 4, !tbaa !10
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xt, i64 60
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !10
  %i.zw = getelementptr inbounds nuw i8, ptr %i.wi, i64 220
  %i.zx = load <2 x float>, ptr %i.xm, align 4, !tbaa !10
  %i.zy = insertelement <4 x float> poison, float %i.zv, i64 0
  %i.zz = insertelement <4 x float> %i.zy, float %i.xl, i64 1
  %i.aaa = shufflevector <2 x float> %i.zx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aab = shufflevector <4 x float> %i.zz, <4 x float> %i.aaa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.aab, ptr %i.zw, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.aac = add nuw nsw i64 %.0242379, 1           ; 2 uses
  %exitcond414.not = icmp eq i64 %i.aac, 3
  br i1 %exitcond414.not, label %bb.x, label %bb.q, !llvm.loop !87

.thread337:                                       ; preds = %bb.q, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.s, %bb.t, %.thread474, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %.preheader358, %.preheader362, %bb.g, %bb.e
  %i.aad = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.x, %bb.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.aae = load i64, ptr %5, align 8, !tbaa !38   ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.aaf = phi i64 [ %i.aad, %.loopexit.thread ], [ %i.aae, %.loopexit ] ; 3 uses
  %i.aag = load ptr, ptr %6, align 8, !tbaa !22
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaf
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aaf
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph389, %bb.z
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.aas, %bb.z ] ; 4 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.0233388
  %i.aak = load <4 x float>, ptr %i.aaj, align 1, !tbaa !15 ; 4 uses
  %i.aal = fcmp oge <4 x float> %i.aak, splat (float 1.000000e+08)
  %i.aam = fcmp olt <4 x float> %i.aak, splat (float f0x322BCC77)
  %i.aan = or <4 x i1> %i.aal, %i.aam
  %i.aao = bitcast <4 x i1> %i.aan to i4
  %or.cond354 = icmp eq i4 %i.aao, 0
  br i1 %or.cond354, label %bb.z, label %.thread340, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.aap = fdiv <4 x float> splat (float 1.000000e+00), %i.aak
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %.0233388
  store <4 x float> %i.aap, ptr %i.aaq, align 1, !tbaa !15
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %.0233388
  store <4 x float> %i.aak, ptr %i.aar, align 1, !tbaa !15
  %i.aas = add nuw i64 %.0233388, 4               ; 2 uses
  %.not255 = icmp ult i64 %i.aas, %i.o
  br i1 %.not255, label %bb.y, label %.critedge258, !llvm.loop !88

.critedge258:                                     ; preds = %bb.z, %.loopexit.thread475, %.loopexit
  %i.aat = phi i64 [ %i.jn, %.loopexit.thread475 ], [ %i.aae, %.loopexit ], [ %i.aaf, %bb.z ] ; 2 uses
  %i.aau = add i64 %i.aat, %i.o
  store i64 %i.aau, ptr %5, align 8, !tbaa !38
  %i.aav = sext i32 %i.g to i64                   ; 3 uses
  %i.aaw = sext i32 %i.k to i64                   ; 3 uses
  %i.aax = tail call noundef i64 @llvm.umin.i64(i64 %i.aaw, i64 %i.aav) ; 8 uses
  %i.aay = tail call noundef i64 @llvm.umax.i64(i64 %i.aaw, i64 %i.aav) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.aay, 3       ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.aav, 8
  %.not405 = icmp eq i64 %i.aax, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.aaw ; 2 uses
  %.not406 = icmp eq i64 %i.aay, 0
  %i.aaz = getelementptr [4 x i8], ptr %2, i64 %i.aat ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.aba = shl nuw nsw i64 %i.aay, 2              ; 27 uses
  %i.abb = add nsw i64 %i.aax, -1                 ; 3 uses
  %xtraiter = and i64 %i.aax, 7                   ; 3 uses
  %i.abc = icmp ult i64 %i.abb, 7
  br i1 %i.abc, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.aax, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.abs, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.abd = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abd, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abe = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1494 = mul i64 %factor.op.mul396, %i.abe
  %i.abf = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.1494
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abg = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2497 = mul i64 %factor.op.mul396, %i.abg
  %i.abh = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.2497
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abh, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abi = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.abi
  %i.abj = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abj, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abk = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.abk
  %i.abl = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abl, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abm = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.abm
  %i.abn = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abn, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abo = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.abo
  %i.abp = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abp, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abq = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.abq
  %i.abr = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abr, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abs = add nuw i64 %.0224397, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !89

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.abs, %._crit_edge398.unr-lcssa ]
  %lcmp.mod492 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod492)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.abu, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.abt = getelementptr [4 x i8], ptr %i.aaz, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abt, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.abu = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge398, label %.preheader.epil, !llvm.loop !90

._crit_edge398:                                   ; preds = %.preheader.epil, %._crit_edge398.unr-lcssa
  %i.abv = getelementptr i8, ptr %i.aaz, i64 %factor.op.mul ; 9 uses
  %xtraiter499 = and i64 %i.aax, 7                ; 3 uses
  %i.abw = icmp ult i64 %i.abb, 7
  br i1 %i.abw, label %.preheader.1.epil.preheader, label %._crit_edge398.new

._crit_edge398.new:                               ; preds = %._crit_edge398
  %unroll_iter503 = and i64 %i.aax, -8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %._crit_edge398.new
  %.0224397.1 = phi i64 [ 0, %._crit_edge398.new ], [ %i.acm, %.preheader.1 ] ; 9 uses
  %niter504 = phi i64 [ 0, %._crit_edge398.new ], [ %niter504.next.7, %.preheader.1 ]
  %factor.op.mul.reass.1 = mul i64 %factor.op.mul396, %.0224397.1
  %i.abx = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abx, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aby = or disjoint i64 %.0224397.1, 1
  %factor.op.mul.reass.1.1 = mul i64 %factor.op.mul396, %i.aby
  %i.abz = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.abz, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aca = or disjoint i64 %.0224397.1, 2
  %factor.op.mul.reass.1.2 = mul i64 %factor.op.mul396, %i.aca
  %i.acb = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acb, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acc = or disjoint i64 %.0224397.1, 3
  %factor.op.mul.reass.1.3 = mul i64 %factor.op.mul396, %i.acc
  %i.acd = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acd, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ace = or disjoint i64 %.0224397.1, 4
  %factor.op.mul.reass.1.4 = mul i64 %factor.op.mul396, %i.ace
  %i.acf = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acg = or disjoint i64 %.0224397.1, 5
  %factor.op.mul.reass.1.5 = mul i64 %factor.op.mul396, %i.acg
  %i.ach = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ach, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aci = or disjoint i64 %.0224397.1, 6
  %factor.op.mul.reass.1.6 = mul i64 %factor.op.mul396, %i.aci
  %i.acj = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acj, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ack = or disjoint i64 %.0224397.1, 7
  %factor.op.mul.reass.1.7 = mul i64 %factor.op.mul396, %i.ack
  %i.acl = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acl, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acm = add nuw i64 %.0224397.1, 8             ; 2 uses
  %niter504.next.7 = add i64 %niter504, 8         ; 2 uses
  %niter504.ncmp.7 = icmp eq i64 %niter504.next.7, %unroll_iter503
  br i1 %niter504.ncmp.7, label %._crit_edge398.1.unr-lcssa, label %.preheader.1, !llvm.loop !89

._crit_edge398.1.unr-lcssa:                       ; preds = %.preheader.1
  %lcmp.mod501.not = icmp eq i64 %xtraiter499, 0
  br i1 %lcmp.mod501.not, label %._crit_edge398.1, label %.preheader.1.epil.preheader

.preheader.1.epil.preheader:                      ; preds = %._crit_edge398.1.unr-lcssa, %._crit_edge398
  %.0224397.1.epil.init = phi i64 [ 0, %._crit_edge398 ], [ %i.acm, %._crit_edge398.1.unr-lcssa ]
  %lcmp.mod502 = icmp ne i64 %xtraiter499, 0
  tail call void @llvm.assume(i1 %lcmp.mod502)
  br label %.preheader.1.epil

.preheader.1.epil:                                ; preds = %.preheader.1.epil, %.preheader.1.epil.preheader
  %.0224397.1.epil = phi i64 [ %.0224397.1.epil.init, %.preheader.1.epil.preheader ], [ %i.aco, %.preheader.1.epil ] ; 2 uses
  %epil.iter500 = phi i64 [ 0, %.preheader.1.epil.preheader ], [ %epil.iter500.next, %.preheader.1.epil ]
  %factor.op.mul.reass.1.epil = mul i64 %factor.op.mul396, %.0224397.1.epil
  %i.acn = getelementptr [4 x i8], ptr %i.abv, i64 %factor.op.mul.reass.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acn, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.aco = add nuw i64 %.0224397.1.epil, 1
  %epil.iter500.next = add i64 %epil.iter500, 1   ; 2 uses
  %epil.iter500.cmp.not = icmp eq i64 %epil.iter500.next, %xtraiter499
  br i1 %epil.iter500.cmp.not, label %._crit_edge398.1, label %.preheader.1.epil, !llvm.loop !91

._crit_edge398.1:                                 ; preds = %.preheader.1.epil, %._crit_edge398.1.unr-lcssa
  %factor.op.mul395.reass.reass.2 = shl i64 %factor.op.mul, 1
  %i.acp = getelementptr i8, ptr %i.aaz, i64 %factor.op.mul395.reass.reass.2 ; 9 uses
  %xtraiter505 = and i64 %i.aax, 7                ; 3 uses
  %i.acq = icmp ult i64 %i.abb, 7
  br i1 %i.acq, label %.preheader.2.epil.preheader, label %._crit_edge398.1.new

._crit_edge398.1.new:                             ; preds = %._crit_edge398.1
  %unroll_iter509 = and i64 %i.aax, -8
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %._crit_edge398.1.new
  %.0224397.2 = phi i64 [ 0, %._crit_edge398.1.new ], [ %i.adg, %.preheader.2 ] ; 9 uses
  %niter510 = phi i64 [ 0, %._crit_edge398.1.new ], [ %niter510.next.7, %.preheader.2 ]
  %factor.op.mul.reass.2 = mul i64 %factor.op.mul396, %.0224397.2
  %i.acr = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acr, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acs = or disjoint i64 %.0224397.2, 1
  %factor.op.mul.reass.2.1 = mul i64 %factor.op.mul396, %i.acs
  %i.act = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.act, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acu = or disjoint i64 %.0224397.2, 2
  %factor.op.mul.reass.2.2 = mul i64 %factor.op.mul396, %i.acu
  %i.acv = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acv, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acw = or disjoint i64 %.0224397.2, 3
  %factor.op.mul.reass.2.3 = mul i64 %factor.op.mul396, %i.acw
  %i.acx = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acx, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.acy = or disjoint i64 %.0224397.2, 4
  %factor.op.mul.reass.2.4 = mul i64 %factor.op.mul396, %i.acy
  %i.acz = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.acz, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ada = or disjoint i64 %.0224397.2, 5
  %factor.op.mul.reass.2.5 = mul i64 %factor.op.mul396, %i.ada
  %i.adb = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.adb, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.adc = or disjoint i64 %.0224397.2, 6
  %factor.op.mul.reass.2.6 = mul i64 %factor.op.mul396, %i.adc
  %i.add = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.add, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.ade = or disjoint i64 %.0224397.2, 7
  %factor.op.mul.reass.2.7 = mul i64 %factor.op.mul396, %i.ade
  %i.adf = getelementptr [4 x i8], ptr %i.acp, i64 %factor.op.mul.reass.2.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.adf, i8 0, i64 %i.aba, i1 false), !tbaa !10
  %i.adg = add nuw i64 %.0224397.2, 8             ; 2 uses
  %niter510.next.7 = add i64 %niter510, 8         ; 2 uses
  %niter510.ncmp.7 = icmp eq i64 %niter510.next.7, %unroll_iter509
  br i1 %niter510.ncmp.7, label %.thread340.loopexit.unr-lcssa, label %.preheader.2, !llvm.loop !89

.thread340.loopexit.unr-lcssa:                    ; preds = %.preheader.2
  %lcmp.mod507.not = icmp eq i64 %xtraiter505, 0
  br i1 %lcmp.mod507.not, label %.thread340, label %.preheader.2.epil.preheader

end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.sp = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.so, <4 x float> %i.sm, <4 x float> <float f0x42C519F0, float poison, float poison, float poison>)
  %foldExtExtBinop499 = fmul <4 x float> %i.sl, %i.sp
  %i.sq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sm, <4 x float> <float f0x3E5749EE, float poison, float poison, float poison>, <4 x float> <float f0xBCB621BE, float poison, float poison, float poison>)
  %i.sr = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sq, <4 x float> %i.sm, <4 x float> <float -1.944150e+01, float poison, float poison, float poison>)
  %i.ss = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.sr, <4 x float> %i.sm, <4 x float> <float f0x42C519F1, float poison, float poison, float poison>)
  %foldExtExtBinop501 = fdiv <4 x float> %foldExtExtBinop499, %i.ss
  %i.st = extractelement <4 x float> %foldExtExtBinop501, i64 0
  %i.su = fmul float %i.rg, %i.st
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.sv = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.kg
  %i.sw = getelementptr i8, ptr %i.sv, i64 %i.kv
  %i.sx = getelementptr i8, ptr %i.sw, i64 24
  store float %i.su, ptr %i.sx, align 4, !tbaa !10
  %i.sy = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.sy, 4
  br i1 %exitcond.not, label %bb.w, label %.preheader366, !llvm.loop !101

bb.w:                                             ; preds = %bb.v
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 15 uses
  %i.ta = mul i64 %.0242379, %i.n
  %i.tb = load ptr, ptr %6, align 8               ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.ta ; 21 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 36
  %i.tf = load <4 x float>, ptr %i.td, align 4, !tbaa !10
  store <4 x float> %i.tf, ptr %i.te, align 4, !tbaa !10
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sz, i64 20
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 52
  %i.ti = load <2 x float>, ptr %i.tg, align 4, !tbaa !10
  store <2 x float> %i.ti, ptr %i.th, align 4, !tbaa !10
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sz, i64 28
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !10
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tc, i64 60
  store float %i.tk, ptr %i.tl, align 4, !tbaa !10
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tn = load float, ptr %i.tm, align 16, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.sz, i64 36
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 44
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sz, i64 60
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !10
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tc, i64 124
  store float %i.tr, ptr %i.ts, align 4, !tbaa !10
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.tu = load float, ptr %i.tt, align 16, !tbaa !10
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sz, i64 68
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sz, i64 76
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sz, i64 92
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !10
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tc, i64 188
  store float %i.ty, ptr %i.tz, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  %i.ub = load float, ptr %i.ua, align 16, !tbaa !10
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sz, i64 100
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sz, i64 108
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sz, i64 124
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tc, i64 252
  store float %i.uf, ptr %i.ug, align 4, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.kg ; 15 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !10
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store float %i.uj, ptr %i.uk, align 4, !tbaa !10
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.um = load float, ptr %i.ul, align 8, !tbaa !10
  %i.un = getelementptr inbounds nuw i8, ptr %i.tc, i64 20
  store float %i.um, ptr %i.un, align 4, !tbaa !10
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.up = load float, ptr %i.uo, align 4, !tbaa !10
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tc, i64 28
  store float %i.up, ptr %i.uq, align 4, !tbaa !10
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.us = load float, ptr %i.ur, align 16, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tc, i64 68
  store float %i.us, ptr %i.ut, align 4, !tbaa !10
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uh, i64 20
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !10
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tc, i64 76
  store float %i.uv, ptr %i.uw, align 4, !tbaa !10
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uy = load float, ptr %i.ux, align 8, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tc, i64 84
  store float %i.uy, ptr %i.uz, align 4, !tbaa !10
  %i.va = getelementptr inbounds nuw i8, ptr %i.uh, i64 28
  %i.vb = load float, ptr %i.va, align 4, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tc, i64 92
  %i.vd = load <2 x float>, ptr %i.to, align 4, !tbaa !10
  %i.ve = load <4 x float>, ptr %i.tp, align 4, !tbaa !10
  %i.vf = insertelement <8 x float> poison, float %i.vb, i64 0
  %i.vg = insertelement <8 x float> %i.vf, float %i.tn, i64 1
  %i.vh = shufflevector <4 x float> %i.ve, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vi = shufflevector <8 x float> %i.vg, <8 x float> %i.vh, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.vj = shufflevector <2 x float> %i.vd, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vk = shufflevector <8 x float> %i.vi, <8 x float> %i.vj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.vk, ptr %i.vc, align 4, !tbaa !10
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.vm = load float, ptr %i.vl, align 16, !tbaa !10
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tc, i64 132
  store float %i.vm, ptr %i.vn, align 4, !tbaa !10
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uh, i64 36
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !10
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tc, i64 140
  store float %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !10
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tc, i64 148
  store float %i.vs, ptr %i.vt, align 4, !tbaa !10
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uh, i64 44
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !10
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tc, i64 156
  %i.vx = load <2 x float>, ptr %i.tv, align 4, !tbaa !10
  %i.vy = load <4 x float>, ptr %i.tw, align 4, !tbaa !10
  %i.vz = insertelement <8 x float> poison, float %i.vv, i64 0
  %i.wa = insertelement <8 x float> %i.vz, float %i.tu, i64 1
  %i.wb = shufflevector <4 x float> %i.vy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wc = shufflevector <8 x float> %i.wa, <8 x float> %i.wb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.wd = shufflevector <2 x float> %i.vx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.we = shufflevector <8 x float> %i.wc, <8 x float> %i.wd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.we, ptr %i.vw, align 4, !tbaa !10
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.wg = load float, ptr %i.wf, align 16, !tbaa !10
  %i.wh = getelementptr inbounds nuw i8, ptr %i.tc, i64 196
  store float %i.wg, ptr %i.wh, align 4, !tbaa !10
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uh, i64 52
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !10
  %i.wk = getelementptr inbounds nuw i8, ptr %i.tc, i64 204
  store float %i.wj, ptr %i.wk, align 4, !tbaa !10
  %i.wl = getelementptr inbounds nuw i8, ptr %i.uh, i64 56
  %i.wm = load float, ptr %i.wl, align 8, !tbaa !10
  %i.wn = getelementptr inbounds nuw i8, ptr %i.tc, i64 212
  store float %i.wm, ptr %i.wn, align 4, !tbaa !10
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uh, i64 60
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !10
  %i.wq = getelementptr inbounds nuw i8, ptr %i.tc, i64 220
  %i.wr = load <2 x float>, ptr %i.uc, align 4, !tbaa !10
  %i.ws = load <4 x float>, ptr %i.ud, align 4, !tbaa !10
  %i.wt = insertelement <8 x float> poison, float %i.wp, i64 0
  %i.wu = insertelement <8 x float> %i.wt, float %i.ub, i64 1
  %i.wv = shufflevector <4 x float> %i.ws, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ww = shufflevector <8 x float> %i.wu, <8 x float> %i.wv, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.wx = shufflevector <2 x float> %i.wr, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wy = shufflevector <8 x float> %i.ww, <8 x float> %i.wx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.wy, ptr %i.wq, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.wz = add nuw nsw i64 %.0242379, 1            ; 2 uses
  %exitcond414.not = icmp eq i64 %i.wz, 3
  br i1 %exitcond414.not, label %bb.x, label %bb.q, !llvm.loop !102

.thread337:                                       ; preds = %bb.q, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.s, %bb.t, %.thread474, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %.preheader358, %.preheader362, %bb.g, %bb.e
  %i.xa = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.x, %bb.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.xb = load i64, ptr %5, align 8, !tbaa !38    ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.xc = phi i64 [ %i.xa, %.loopexit.thread ], [ %i.xb, %.loopexit ] ; 3 uses
  %i.xd = load ptr, ptr %6, align 8, !tbaa !22
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xc
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xc
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph389, %bb.z
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.xp, %bb.z ] ; 4 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %.0233388
  %i.xh = load <8 x float>, ptr %i.xg, align 1, !tbaa !15 ; 4 uses
  %i.xi = fcmp oge <8 x float> %i.xh, splat (float 1.000000e+08)
  %i.xj = fcmp olt <8 x float> %i.xh, splat (float f0x322BCC77)
  %i.xk = or <8 x i1> %i.xi, %i.xj
  %i.xl = bitcast <8 x i1> %i.xk to i8
  %or.cond354 = icmp eq i8 %i.xl, 0
  br i1 %or.cond354, label %bb.z, label %.thread340, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.xm = fdiv <8 x float> splat (float 1.000000e+00), %i.xh
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.0233388
  store <8 x float> %i.xm, ptr %i.xn, align 1, !tbaa !15
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.0233388
  store <8 x float> %i.xh, ptr %i.xo, align 1, !tbaa !15
  %i.xp = add nuw i64 %.0233388, 8                ; 2 uses
  %.not255 = icmp ult i64 %i.xp, %i.o
  br i1 %.not255, label %bb.y, label %.critedge258, !llvm.loop !103

.critedge258:                                     ; preds = %bb.z, %.loopexit.thread475, %.loopexit
  %i.xq = phi i64 [ %i.id, %.loopexit.thread475 ], [ %i.xb, %.loopexit ], [ %i.xc, %bb.z ] ; 2 uses
  %i.xr = add i64 %i.xq, %i.o
  store i64 %i.xr, ptr %5, align 8, !tbaa !38
  %i.xs = sext i32 %i.g to i64                    ; 3 uses
  %i.xt = sext i32 %i.k to i64                    ; 3 uses
  %i.xu = tail call noundef i64 @llvm.umin.i64(i64 %i.xt, i64 %i.xs) ; 8 uses
  %i.xv = tail call noundef i64 @llvm.umax.i64(i64 %i.xt, i64 %i.xs) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.xv, 3        ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.xs, 8
  %.not405 = icmp eq i64 %i.xu, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.xt ; 2 uses
  %.not406 = icmp eq i64 %i.xv, 0
  %i.xw = getelementptr [4 x i8], ptr %2, i64 %i.xq ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.xx = shl nuw nsw i64 %i.xv, 2                ; 27 uses
  %i.xy = add nsw i64 %i.xu, -1                   ; 3 uses
  %xtraiter = and i64 %i.xu, 7                    ; 3 uses
  %i.xz = icmp ult i64 %i.xy, 7
  br i1 %i.xz, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.xu, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.yp, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.ya = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ya, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yb = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1507 = mul i64 %factor.op.mul396, %i.yb
  %i.yc = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1507
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yc, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yd = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2510 = mul i64 %factor.op.mul396, %i.yd
  %i.ye = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.2510
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ye, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yf = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.yf
  %i.yg = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yg, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yh = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.yh
  %i.yi = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yi, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yj = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.yj
  %i.yk = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yk, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yl = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.yl
  %i.ym = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ym, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yn = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.yn
  %i.yo = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yo, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yp = add nuw i64 %.0224397, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !104

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.yp, %._crit_edge398.unr-lcssa ]
  %lcmp.mod505 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod505)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.yr, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.yq = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yr = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge398, label %.preheader.epil, !llvm.loop !105

._crit_edge398:                                   ; preds = %.preheader.epil, %._crit_edge398.unr-lcssa
  %i.ys = getelementptr i8, ptr %i.xw, i64 %factor.op.mul ; 9 uses
  %xtraiter512 = and i64 %i.xu, 7                 ; 3 uses
  %i.yt = icmp ult i64 %i.xy, 7
  br i1 %i.yt, label %.preheader.1.epil.preheader, label %._crit_edge398.new

._crit_edge398.new:                               ; preds = %._crit_edge398
  %unroll_iter516 = and i64 %i.xu, -8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %._crit_edge398.new
  %.0224397.1 = phi i64 [ 0, %._crit_edge398.new ], [ %i.zj, %.preheader.1 ] ; 9 uses
  %niter517 = phi i64 [ 0, %._crit_edge398.new ], [ %niter517.next.7, %.preheader.1 ]
  %factor.op.mul.reass.1 = mul i64 %factor.op.mul396, %.0224397.1
  %i.yu = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yu, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yv = or disjoint i64 %.0224397.1, 1
  %factor.op.mul.reass.1.1 = mul i64 %factor.op.mul396, %i.yv
  %i.yw = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yw, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yx = or disjoint i64 %.0224397.1, 2
  %factor.op.mul.reass.1.2 = mul i64 %factor.op.mul396, %i.yx
  %i.yy = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yy, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.yz = or disjoint i64 %.0224397.1, 3
  %factor.op.mul.reass.1.3 = mul i64 %factor.op.mul396, %i.yz
  %i.za = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.za, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zb = or disjoint i64 %.0224397.1, 4
  %factor.op.mul.reass.1.4 = mul i64 %factor.op.mul396, %i.zb
  %i.zc = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zc, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zd = or disjoint i64 %.0224397.1, 5
  %factor.op.mul.reass.1.5 = mul i64 %factor.op.mul396, %i.zd
  %i.ze = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ze, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zf = or disjoint i64 %.0224397.1, 6
  %factor.op.mul.reass.1.6 = mul i64 %factor.op.mul396, %i.zf
  %i.zg = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zg, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zh = or disjoint i64 %.0224397.1, 7
  %factor.op.mul.reass.1.7 = mul i64 %factor.op.mul396, %i.zh
  %i.zi = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zi, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zj = add nuw i64 %.0224397.1, 8              ; 2 uses
  %niter517.next.7 = add i64 %niter517, 8         ; 2 uses
  %niter517.ncmp.7 = icmp eq i64 %niter517.next.7, %unroll_iter516
  br i1 %niter517.ncmp.7, label %._crit_edge398.1.unr-lcssa, label %.preheader.1, !llvm.loop !104

._crit_edge398.1.unr-lcssa:                       ; preds = %.preheader.1
  %lcmp.mod514.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod514.not, label %._crit_edge398.1, label %.preheader.1.epil.preheader

.preheader.1.epil.preheader:                      ; preds = %._crit_edge398.1.unr-lcssa, %._crit_edge398
  %.0224397.1.epil.init = phi i64 [ 0, %._crit_edge398 ], [ %i.zj, %._crit_edge398.1.unr-lcssa ]
  %lcmp.mod515 = icmp ne i64 %xtraiter512, 0
  tail call void @llvm.assume(i1 %lcmp.mod515)
  br label %.preheader.1.epil

.preheader.1.epil:                                ; preds = %.preheader.1.epil, %.preheader.1.epil.preheader
  %.0224397.1.epil = phi i64 [ %.0224397.1.epil.init, %.preheader.1.epil.preheader ], [ %i.zl, %.preheader.1.epil ] ; 2 uses
  %epil.iter513 = phi i64 [ 0, %.preheader.1.epil.preheader ], [ %epil.iter513.next, %.preheader.1.epil ]
  %factor.op.mul.reass.1.epil = mul i64 %factor.op.mul396, %.0224397.1.epil
  %i.zk = getelementptr [4 x i8], ptr %i.ys, i64 %factor.op.mul.reass.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zk, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zl = add nuw i64 %.0224397.1.epil, 1
  %epil.iter513.next = add i64 %epil.iter513, 1   ; 2 uses
  %epil.iter513.cmp.not = icmp eq i64 %epil.iter513.next, %xtraiter512
  br i1 %epil.iter513.cmp.not, label %._crit_edge398.1, label %.preheader.1.epil, !llvm.loop !106

._crit_edge398.1:                                 ; preds = %.preheader.1.epil, %._crit_edge398.1.unr-lcssa
  %factor.op.mul395.reass.reass.2 = shl i64 %factor.op.mul, 1
  %i.zm = getelementptr i8, ptr %i.xw, i64 %factor.op.mul395.reass.reass.2 ; 9 uses
  %xtraiter518 = and i64 %i.xu, 7                 ; 3 uses
  %i.zn = icmp ult i64 %i.xy, 7
  br i1 %i.zn, label %.preheader.2.epil.preheader, label %._crit_edge398.1.new

._crit_edge398.1.new:                             ; preds = %._crit_edge398.1
  %unroll_iter522 = and i64 %i.xu, -8
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %._crit_edge398.1.new
  %.0224397.2 = phi i64 [ 0, %._crit_edge398.1.new ], [ %i.aad, %.preheader.2 ] ; 9 uses
  %niter523 = phi i64 [ 0, %._crit_edge398.1.new ], [ %niter523.next.7, %.preheader.2 ]
  %factor.op.mul.reass.2 = mul i64 %factor.op.mul396, %.0224397.2
  %i.zo = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zo, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zp = or disjoint i64 %.0224397.2, 1
  %factor.op.mul.reass.2.1 = mul i64 %factor.op.mul396, %i.zp
  %i.zq = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zq, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zr = or disjoint i64 %.0224397.2, 2
  %factor.op.mul.reass.2.2 = mul i64 %factor.op.mul396, %i.zr
  %i.zs = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zs, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zt = or disjoint i64 %.0224397.2, 3
  %factor.op.mul.reass.2.3 = mul i64 %factor.op.mul396, %i.zt
  %i.zu = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zu, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zv = or disjoint i64 %.0224397.2, 4
  %factor.op.mul.reass.2.4 = mul i64 %factor.op.mul396, %i.zv
  %i.zw = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zw, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zx = or disjoint i64 %.0224397.2, 5
  %factor.op.mul.reass.2.5 = mul i64 %factor.op.mul396, %i.zx
  %i.zy = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zy, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.zz = or disjoint i64 %.0224397.2, 6
  %factor.op.mul.reass.2.6 = mul i64 %factor.op.mul396, %i.zz
  %i.aaa = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aaa, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.aab = or disjoint i64 %.0224397.2, 7
  %factor.op.mul.reass.2.7 = mul i64 %factor.op.mul396, %i.aab
  %i.aac = getelementptr [4 x i8], ptr %i.zm, i64 %factor.op.mul.reass.2.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aac, i8 0, i64 %i.xx, i1 false), !tbaa !10
  %i.aad = add nuw i64 %.0224397.2, 8             ; 2 uses
  %niter523.next.7 = add i64 %niter523, 8         ; 2 uses
  %niter523.ncmp.7 = icmp eq i64 %niter523.next.7, %unroll_iter522
  br i1 %niter523.ncmp.7, label %.thread340.loopexit.unr-lcssa, label %.preheader.2, !llvm.loop !104

.thread340.loopexit.unr-lcssa:                    ; preds = %.preheader.2
  %lcmp.mod520.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod520.not, label %.thread340, label %.preheader.2.epil.preheader

end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE217ComputeQuantTableERKNS_13QuantEncodingEPfS4_mNS_10QuantTableEPm:bb.a
  %i.rv = insertelement <4 x float> %i.rs, float %i.ru, i64 0 ; 4 uses
  %i.rw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.rv)
  %i.rx = sitofp <4 x i32> %i.rw to <4 x float>   ; 2 uses
  %i.ry = fcmp olt <4 x float> %i.rv, %i.rx
  %i.rz = sitofp <4 x i1> %i.ry to <4 x float>
  %i.sa = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rv)
  %i.sb = fcmp uge <4 x float> %i.sa, splat (float f0x4B000000)
  %i.sc = fadd <4 x float> %i.rx, %i.rz
  %.v.i.i.i.i.3 = select <4 x i1> %i.sb, <4 x float> %i.rv, <4 x float> %i.sc ; 3 uses
  %i.sd = fcmp oge <4 x float> %.v.i.i.i.i.3, splat (float f0x4F000000)
  %i.se = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %.v.i.i.i.i.3)
  %i.sf = shl <4 x i32> %i.se, splat (i32 23)
  %i.sg = add <4 x i32> %i.sf, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>
  %i.si = select <4 x i1> %i.sd, <4 x float> <float 5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.sh
  %i.sj = extractelement <4 x float> %.v.i.i.i.i.3, i64 0
  %i.sk = fsub float %i.ru, %i.sj                 ; 2 uses
  %i.sl = extractelement <4 x float> %i.si, i64 0
  %i.sm = fmul float %i.sk, f0x3E5749EE
  %i.sn = insertelement <2 x float> poison, float %i.sk, i64 0 ; 2 uses
  %i.so = insertelement <2 x float> %i.sn, float %i.sm, i64 1
  %i.sp = fadd <2 x float> %i.so, <float f0x4122CC6B, float f0xBCB621BE>
  %i.sq = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sr = fmul <2 x float> %i.sq, %i.sp
  %i.ss = fadd <2 x float> %i.sr, <float f0x424379A1, float -1.944150e+01>
  %i.st = fmul <2 x float> %i.sq, %i.ss
  %i.su = fadd <2 x float> %i.st, <float f0x42C519F0, float f0x42C519F1> ; 2 uses
  %i.sv = extractelement <2 x float> %i.su, i64 0
  %i.sw = fmul float %i.sl, %i.sv
  %i.sx = extractelement <2 x float> %i.su, i64 1
  %i.sy = fdiv float %i.sw, %i.sx
  %i.sz = fmul float %i.qr, %i.sy
  %.val261.val.3 = load ptr, ptr %6, align 8, !tbaa !22
  %i.ta = getelementptr [4 x i8], ptr %.val261.val.3, i64 %i.hj
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.hy
  %i.tc = getelementptr i8, ptr %i.tb, i64 24
  store float %i.sz, ptr %i.tc, align 4, !tbaa !10
  %i.td = add nuw nsw i64 %.0240374, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.td, 4
  br i1 %exitcond.not, label %bb.x, label %.preheader366, !llvm.loop !129

bb.x:                                             ; preds = %bb.w
  %.idx250 = shl nuw nsw i64 %.0242379, 7
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx250 ; 9 uses
  %i.tf = mul i64 %.0242379, %i.n
  %i.tg = load ptr, ptr %6, align 8               ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tf ; 24 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 36
  %i.tk = load <4 x float>, ptr %i.ti, align 4, !tbaa !10
  store <4 x float> %i.tk, ptr %i.tj, align 4, !tbaa !10
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 52
  %i.tn = load <2 x float>, ptr %i.tl, align 4, !tbaa !10
  store <2 x float> %i.tn, ptr %i.tm, align 4, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.te, i64 28
  %i.tp = load float, ptr %i.to, align 4, !tbaa !10
  %i.tq = getelementptr inbounds nuw i8, ptr %i.th, i64 60
  store float %i.tp, ptr %i.tq, align 4, !tbaa !10
  %i.tr = getelementptr inbounds nuw i8, ptr %i.th, i64 96
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tt = load <4 x float>, ptr %i.ts, align 16, !tbaa !10
  store <4 x float> %i.tt, ptr %i.tr, align 4, !tbaa !10
  %i.tu = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 112
  %i.tw = load <4 x float>, ptr %i.tu, align 16, !tbaa !10
  store <4 x float> %i.tw, ptr %i.tv, align 4, !tbaa !10
  %i.tx = getelementptr inbounds nuw i8, ptr %i.th, i64 160
  %i.ty = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tz = load <4 x float>, ptr %i.ty, align 16, !tbaa !10
  store <4 x float> %i.tz, ptr %i.tx, align 4, !tbaa !10
  %i.ua = getelementptr inbounds nuw i8, ptr %i.te, i64 80
  %i.ub = getelementptr inbounds nuw i8, ptr %i.th, i64 176
  %i.uc = load <4 x float>, ptr %i.ua, align 16, !tbaa !10
  store <4 x float> %i.uc, ptr %i.ub, align 4, !tbaa !10
  %i.ud = getelementptr inbounds nuw i8, ptr %i.th, i64 224
  %i.ue = getelementptr inbounds nuw i8, ptr %i.te, i64 96
  %i.uf = load <4 x float>, ptr %i.ue, align 16, !tbaa !10
  store <4 x float> %i.uf, ptr %i.ud, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.te, i64 112
  %i.uh = getelementptr inbounds nuw i8, ptr %i.th, i64 240
  %i.ui = load <4 x float>, ptr %i.ug, align 16, !tbaa !10
  store <4 x float> %i.ui, ptr %i.uh, align 4, !tbaa !10
  %i.uj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hj ; 15 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !10
  %i.um = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  store float %i.ul, ptr %i.um, align 4, !tbaa !10
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uo = load float, ptr %i.un, align 8, !tbaa !10
  %i.up = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  store float %i.uo, ptr %i.up, align 4, !tbaa !10
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !10
  %i.us = getelementptr inbounds nuw i8, ptr %i.th, i64 28
  store float %i.ur, ptr %i.us, align 4, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.uu = load float, ptr %i.ut, align 16, !tbaa !10
  %i.uv = getelementptr inbounds nuw i8, ptr %i.th, i64 68
  store float %i.uu, ptr %i.uv, align 4, !tbaa !10
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !10
  %i.uy = getelementptr inbounds nuw i8, ptr %i.th, i64 76
  store float %i.ux, ptr %i.uy, align 4, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.va = load float, ptr %i.uz, align 8, !tbaa !10
  %i.vb = getelementptr inbounds nuw i8, ptr %i.th, i64 84
  store float %i.va, ptr %i.vb, align 4, !tbaa !10
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uj, i64 28
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !10
  %i.ve = getelementptr inbounds nuw i8, ptr %i.th, i64 92
  store float %i.vd, ptr %i.ve, align 4, !tbaa !10
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.vg = load float, ptr %i.vf, align 16, !tbaa !10
  %i.vh = getelementptr inbounds nuw i8, ptr %i.th, i64 132
  store float %i.vg, ptr %i.vh, align 4, !tbaa !10
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !10
  %i.vk = getelementptr inbounds nuw i8, ptr %i.th, i64 140
  store float %i.vj, ptr %i.vk, align 4, !tbaa !10
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !10
  %i.vn = getelementptr inbounds nuw i8, ptr %i.th, i64 148
  store float %i.vm, ptr %i.vn, align 4, !tbaa !10
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uj, i64 44
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !10
  %i.vq = getelementptr inbounds nuw i8, ptr %i.th, i64 156
  store float %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uj, i64 48
  %i.vs = load float, ptr %i.vr, align 16, !tbaa !10
  %i.vt = getelementptr inbounds nuw i8, ptr %i.th, i64 196
  store float %i.vs, ptr %i.vt, align 4, !tbaa !10
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uj, i64 52
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !10
  %i.vw = getelementptr inbounds nuw i8, ptr %i.th, i64 204
  store float %i.vv, ptr %i.vw, align 4, !tbaa !10
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.vy = load float, ptr %i.vx, align 8, !tbaa !10
  %i.vz = getelementptr inbounds nuw i8, ptr %i.th, i64 212
  store float %i.vy, ptr %i.vz, align 4, !tbaa !10
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uj, i64 60
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !10
  %i.wc = getelementptr inbounds nuw i8, ptr %i.th, i64 220
  store float %i.wb, ptr %i.wc, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.wd = add nuw nsw i64 %.0242379, 1            ; 2 uses
  %exitcond414.not = icmp eq i64 %i.wd, 3
  br i1 %exitcond414.not, label %bb.y, label %bb.r, !llvm.loop !130

.thread337:                                       ; preds = %bb.r, %.preheader368.preheader, %.preheader368.1, %.preheader368.2, %bb.t, %bb.u, %.thread474, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread340

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.loopexit

.loopexit.thread:                                 ; preds = %vector.body, %bb.j, %.preheader362, %bb.g, %bb.e
  %i.we = load i64, ptr %5, align 8, !tbaa !38
  br label %.lr.ph389

.loopexit:                                        ; preds = %bb.y, %bb.m, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.wf = load i64, ptr %5, align 8, !tbaa !38    ; 2 uses
  br i1 %.not.i, label %.critedge258, label %.lr.ph389

.lr.ph389:                                        ; preds = %.loopexit.thread, %.loopexit
  %i.wg = phi i64 [ %i.we, %.loopexit.thread ], [ %i.wf, %.loopexit ] ; 3 uses
  %i.wh = load ptr, ptr %6, align 8, !tbaa !22
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.wg
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph389, %bb.aa
  %.0233388 = phi i64 [ 0, %.lr.ph389 ], [ %i.wt, %bb.aa ] ; 4 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %.0233388
  %i.wl = load <4 x float>, ptr %i.wk, align 1, !tbaa !15 ; 4 uses
  %i.wm = fcmp oge <4 x float> %i.wl, splat (float 1.000000e+08)
  %i.wn = fcmp olt <4 x float> %i.wl, splat (float f0x322BCC77)
  %i.wo = or <4 x i1> %i.wm, %i.wn
  %i.wp = bitcast <4 x i1> %i.wo to i4
  %or.cond354 = icmp eq i4 %i.wp, 0
  br i1 %or.cond354, label %bb.aa, label %.thread340, !prof !42

bb.aa:                                            ; preds = %bb.z
  %i.wq = fdiv <4 x float> splat (float 1.000000e+00), %i.wl
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.0233388
  store <4 x float> %i.wq, ptr %i.wr, align 1, !tbaa !15
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.0233388
  store <4 x float> %i.wl, ptr %i.ws, align 1, !tbaa !15
  %i.wt = add nuw i64 %.0233388, 4                ; 2 uses
  %.not255 = icmp ult i64 %i.wt, %i.o
  br i1 %.not255, label %bb.z, label %.critedge258, !llvm.loop !131

.critedge258:                                     ; preds = %bb.aa, %.loopexit.thread475, %.loopexit
  %i.wu = phi i64 [ %i.fg, %.loopexit.thread475 ], [ %i.wf, %.loopexit ], [ %i.wg, %bb.aa ] ; 2 uses
  %i.wv = add i64 %i.wu, %i.o
  store i64 %i.wv, ptr %5, align 8, !tbaa !38
  %i.ww = sext i32 %i.g to i64                    ; 3 uses
  %i.wx = sext i32 %i.k to i64                    ; 3 uses
  %i.wy = tail call noundef i64 @llvm.umin.i64(i64 %i.wx, i64 %i.ww) ; 8 uses
  %i.wz = tail call noundef i64 @llvm.umax.i64(i64 %i.wx, i64 %i.ww) ; 3 uses
  %factor.op.mul396 = shl nsw i64 %i.wz, 3        ; 27 uses
  %factor.op.mul399 = shl nsw i64 %i.ww, 8
  %.not405 = icmp eq i64 %i.wy, 0
  %factor.op.mul = mul i64 %factor.op.mul399, %i.wx ; 2 uses
  %.not406 = icmp eq i64 %i.wz, 0
  %i.xa = getelementptr [4 x i8], ptr %2, i64 %i.wu ; 11 uses
  %brmerge = or i1 %.not405, %.not406
  br i1 %brmerge, label %.thread340, label %.preheader355.preheader

.preheader355.preheader:                          ; preds = %.critedge258
  %i.xb = shl nuw nsw i64 %i.wz, 2                ; 27 uses
  %i.xc = add nsw i64 %i.wy, -1                   ; 3 uses
  %xtraiter = and i64 %i.wy, 7                    ; 3 uses
  %i.xd = icmp ult i64 %i.xc, 7
  br i1 %i.xd, label %.preheader.epil.preheader, label %.preheader355.preheader.new

.preheader355.preheader.new:                      ; preds = %.preheader355.preheader
  %unroll_iter = and i64 %i.wy, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader355.preheader.new
  %.0224397 = phi i64 [ 0, %.preheader355.preheader.new ], [ %i.xt, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader355.preheader.new ], [ %niter.next.7, %.preheader ]
  %factor.op.mul.reass = mul i64 %factor.op.mul396, %.0224397
  %i.xe = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xe, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xf = or disjoint i64 %.0224397, 1
  %factor.op.mul.reass.1484 = mul i64 %factor.op.mul396, %i.xf
  %i.xg = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.1484
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xg, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xh = or disjoint i64 %.0224397, 2
  %factor.op.mul.reass.2487 = mul i64 %factor.op.mul396, %i.xh
  %i.xi = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.2487
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xi, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xj = or disjoint i64 %.0224397, 3
  %factor.op.mul.reass.3 = mul i64 %factor.op.mul396, %i.xj
  %i.xk = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xk, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xl = or disjoint i64 %.0224397, 4
  %factor.op.mul.reass.4 = mul i64 %factor.op.mul396, %i.xl
  %i.xm = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xm, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xn = or disjoint i64 %.0224397, 5
  %factor.op.mul.reass.5 = mul i64 %factor.op.mul396, %i.xn
  %i.xo = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xo, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xp = or disjoint i64 %.0224397, 6
  %factor.op.mul.reass.6 = mul i64 %factor.op.mul396, %i.xp
  %i.xq = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xq, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xr = or disjoint i64 %.0224397, 7
  %factor.op.mul.reass.7 = mul i64 %factor.op.mul396, %i.xr
  %i.xs = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xs, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xt = add nuw i64 %.0224397, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge398.unr-lcssa, label %.preheader, !llvm.loop !132

._crit_edge398.unr-lcssa:                         ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge398, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge398.unr-lcssa, %.preheader355.preheader
  %.0224397.epil.init = phi i64 [ 0, %.preheader355.preheader ], [ %i.xt, %._crit_edge398.unr-lcssa ]
  %lcmp.mod482 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod482)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.0224397.epil = phi i64 [ %.0224397.epil.init, %.preheader.epil.preheader ], [ %i.xv, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %factor.op.mul.reass.epil = mul i64 %factor.op.mul396, %.0224397.epil
  %i.xu = getelementptr [4 x i8], ptr %i.xa, i64 %factor.op.mul.reass.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xu, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xv = add nuw i64 %.0224397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge398, label %.preheader.epil, !llvm.loop !133

._crit_edge398:                                   ; preds = %.preheader.epil, %._crit_edge398.unr-lcssa
  %i.xw = getelementptr i8, ptr %i.xa, i64 %factor.op.mul ; 9 uses
  %xtraiter489 = and i64 %i.wy, 7                 ; 3 uses
  %i.xx = icmp ult i64 %i.xc, 7
  br i1 %i.xx, label %.preheader.1.epil.preheader, label %._crit_edge398.new

._crit_edge398.new:                               ; preds = %._crit_edge398
  %unroll_iter493 = and i64 %i.wy, -8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %._crit_edge398.new
  %.0224397.1 = phi i64 [ 0, %._crit_edge398.new ], [ %i.yn, %.preheader.1 ] ; 9 uses
  %niter494 = phi i64 [ 0, %._crit_edge398.new ], [ %niter494.next.7, %.preheader.1 ]
  %factor.op.mul.reass.1 = mul i64 %factor.op.mul396, %.0224397.1
  %i.xy = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xy, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.xz = or disjoint i64 %.0224397.1, 1
  %factor.op.mul.reass.1.1 = mul i64 %factor.op.mul396, %i.xz
  %i.ya = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ya, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yb = or disjoint i64 %.0224397.1, 2
  %factor.op.mul.reass.1.2 = mul i64 %factor.op.mul396, %i.yb
  %i.yc = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yc, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yd = or disjoint i64 %.0224397.1, 3
  %factor.op.mul.reass.1.3 = mul i64 %factor.op.mul396, %i.yd
  %i.ye = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ye, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yf = or disjoint i64 %.0224397.1, 4
  %factor.op.mul.reass.1.4 = mul i64 %factor.op.mul396, %i.yf
  %i.yg = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yg, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yh = or disjoint i64 %.0224397.1, 5
  %factor.op.mul.reass.1.5 = mul i64 %factor.op.mul396, %i.yh
  %i.yi = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yi, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yj = or disjoint i64 %.0224397.1, 6
  %factor.op.mul.reass.1.6 = mul i64 %factor.op.mul396, %i.yj
  %i.yk = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yk, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yl = or disjoint i64 %.0224397.1, 7
  %factor.op.mul.reass.1.7 = mul i64 %factor.op.mul396, %i.yl
  %i.ym = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ym, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yn = add nuw i64 %.0224397.1, 8              ; 2 uses
  %niter494.next.7 = add i64 %niter494, 8         ; 2 uses
  %niter494.ncmp.7 = icmp eq i64 %niter494.next.7, %unroll_iter493
  br i1 %niter494.ncmp.7, label %._crit_edge398.1.unr-lcssa, label %.preheader.1, !llvm.loop !132

._crit_edge398.1.unr-lcssa:                       ; preds = %.preheader.1
  %lcmp.mod491.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod491.not, label %._crit_edge398.1, label %.preheader.1.epil.preheader

.preheader.1.epil.preheader:                      ; preds = %._crit_edge398.1.unr-lcssa, %._crit_edge398
  %.0224397.1.epil.init = phi i64 [ 0, %._crit_edge398 ], [ %i.yn, %._crit_edge398.1.unr-lcssa ]
  %lcmp.mod492 = icmp ne i64 %xtraiter489, 0
  tail call void @llvm.assume(i1 %lcmp.mod492)
  br label %.preheader.1.epil

.preheader.1.epil:                                ; preds = %.preheader.1.epil, %.preheader.1.epil.preheader
  %.0224397.1.epil = phi i64 [ %.0224397.1.epil.init, %.preheader.1.epil.preheader ], [ %i.yp, %.preheader.1.epil ] ; 2 uses
  %epil.iter490 = phi i64 [ 0, %.preheader.1.epil.preheader ], [ %epil.iter490.next, %.preheader.1.epil ]
  %factor.op.mul.reass.1.epil = mul i64 %factor.op.mul396, %.0224397.1.epil
  %i.yo = getelementptr [4 x i8], ptr %i.xw, i64 %factor.op.mul.reass.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yo, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yp = add nuw i64 %.0224397.1.epil, 1
  %epil.iter490.next = add i64 %epil.iter490, 1   ; 2 uses
  %epil.iter490.cmp.not = icmp eq i64 %epil.iter490.next, %xtraiter489
  br i1 %epil.iter490.cmp.not, label %._crit_edge398.1, label %.preheader.1.epil, !llvm.loop !134

._crit_edge398.1:                                 ; preds = %.preheader.1.epil, %._crit_edge398.1.unr-lcssa
  %factor.op.mul395.reass.reass.2 = shl i64 %factor.op.mul, 1
  %i.yq = getelementptr i8, ptr %i.xa, i64 %factor.op.mul395.reass.reass.2 ; 9 uses
  %xtraiter495 = and i64 %i.wy, 7                 ; 3 uses
  %i.yr = icmp ult i64 %i.xc, 7
  br i1 %i.yr, label %.preheader.2.epil.preheader, label %._crit_edge398.1.new

._crit_edge398.1.new:                             ; preds = %._crit_edge398.1
  %unroll_iter499 = and i64 %i.wy, -8
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %._crit_edge398.1.new
  %.0224397.2 = phi i64 [ 0, %._crit_edge398.1.new ], [ %i.zh, %.preheader.2 ] ; 9 uses
  %niter500 = phi i64 [ 0, %._crit_edge398.1.new ], [ %niter500.next.7, %.preheader.2 ]
  %factor.op.mul.reass.2 = mul i64 %factor.op.mul396, %.0224397.2
  %i.ys = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ys, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yt = or disjoint i64 %.0224397.2, 1
  %factor.op.mul.reass.2.1 = mul i64 %factor.op.mul396, %i.yt
  %i.yu = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.1
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yu, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yv = or disjoint i64 %.0224397.2, 2
  %factor.op.mul.reass.2.2 = mul i64 %factor.op.mul396, %i.yv
  %i.yw = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yw, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yx = or disjoint i64 %.0224397.2, 3
  %factor.op.mul.reass.2.3 = mul i64 %factor.op.mul396, %i.yx
  %i.yy = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yy, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.yz = or disjoint i64 %.0224397.2, 4
  %factor.op.mul.reass.2.4 = mul i64 %factor.op.mul396, %i.yz
  %i.za = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.za, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.zb = or disjoint i64 %.0224397.2, 5
  %factor.op.mul.reass.2.5 = mul i64 %factor.op.mul396, %i.zb
  %i.zc = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.5
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zc, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.zd = or disjoint i64 %.0224397.2, 6
  %factor.op.mul.reass.2.6 = mul i64 %factor.op.mul396, %i.zd
  %i.ze = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ze, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.zf = or disjoint i64 %.0224397.2, 7
  %factor.op.mul.reass.2.7 = mul i64 %factor.op.mul396, %i.zf
  %i.zg = getelementptr [4 x i8], ptr %i.yq, i64 %factor.op.mul.reass.2.7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.zg, i8 0, i64 %i.xb, i1 false), !tbaa !10
  %i.zh = add nuw i64 %.0224397.2, 8              ; 2 uses
  %niter500.next.7 = add i64 %niter500, 8         ; 2 uses
  %niter500.ncmp.7 = icmp eq i64 %niter500.next.7, %unroll_iter499
  br i1 %niter500.ncmp.7, label %.thread340.loopexit.unr-lcssa, label %.preheader.2, !llvm.loop !132

.thread340.loopexit.unr-lcssa:                    ; preds = %.preheader.2
  %lcmp.mod497.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod497.not, label %.thread340, label %.preheader.2.epil.preheader

end_hunk_2
