Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK4ncnn21Convolution1D_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.155561220.us.i = phi ptr [ %i.xk, %.lr.ph1223.us.i.new ], [ %.145551227.us.i, %.lr.ph1223.us.i ] ; 5 uses
  %.161219.us.i = phi <4 x float> [ %i.xi, %.lr.ph1223.us.i.new ], [ %.159611226.us.i, %.lr.ph1223.us.i ]
  %niter395 = phi i32 [ %niter395.next.3, %.lr.ph1223.us.i.new ], [ 0, %.lr.ph1223.us.i ]
  %i.wf = load float, ptr %.05201221.us.i, align 4, !tbaa !53
  %i.wg = insertelement <4 x float> poison, float %i.wf, i64 0
  %i.wh = shufflevector <4 x float> %i.wg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wi = load <4 x float>, ptr %.155561220.us.i, align 16, !tbaa !273
  %i.wj = fmul fast <4 x float> %i.wh, %i.wi
  %i.wk = fadd fast <4 x float> %i.wj, %.161219.us.i
  %i.wl = getelementptr inbounds [4 x i8], ptr %.05201221.us.i, i64 %i.wd ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.155561220.us.i, i64 16
  %i.wn = load float, ptr %i.wl, align 4, !tbaa !53
  %i.wo = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wq = load <4 x float>, ptr %i.wm, align 16, !tbaa !273
  %i.wr = fmul fast <4 x float> %i.wp, %i.wq
  %i.ws = fadd fast <4 x float> %i.wr, %i.wk
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.wl, i64 %i.wd ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.155561220.us.i, i64 32
  %i.wv = load float, ptr %i.wt, align 4, !tbaa !53
  %i.ww = insertelement <4 x float> poison, float %i.wv, i64 0
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wy = load <4 x float>, ptr %i.wu, align 16, !tbaa !273
  %i.wz = fmul fast <4 x float> %i.wx, %i.wy
  %i.xa = fadd fast <4 x float> %i.wz, %i.ws
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %i.wd ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.155561220.us.i, i64 48
  %i.xd = load float, ptr %i.xb, align 4, !tbaa !53
  %i.xe = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xg = load <4 x float>, ptr %i.xc, align 16, !tbaa !273
  %i.xh = fmul fast <4 x float> %i.xf, %i.xg
  %i.xi = fadd fast <4 x float> %i.xh, %i.xa      ; 3 uses
  %i.xj = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.wd ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.155561220.us.i, i64 64 ; 2 uses
  %niter395.next.3 = add nuw nsw i32 %niter395, 4 ; 2 uses
  %niter395.ncmp.3 = icmp eq i32 %niter395.next.3, %unroll_iter394
  br i1 %niter395.ncmp.3, label %._crit_edge.us1236.i.unr-lcssa, label %.lr.ph1223.us.i.new, !llvm.loop !286

._crit_edge.us1236.i.unr-lcssa:                   ; preds = %.lr.ph1223.us.i.new
  br i1 %lcmp.mod391.not, label %._crit_edge.us1236.i, label %.epil.preheader389

.epil.preheader389:                               ; preds = %._crit_edge.us1236.i.unr-lcssa, %.lr.ph1223.us.i
  %.05201221.us.i.epil.init = phi ptr [ %gep1235.us.i, %.lr.ph1223.us.i ], [ %i.xj, %._crit_edge.us1236.i.unr-lcssa ]
  %.155561220.us.i.epil.init = phi ptr [ %.145551227.us.i, %.lr.ph1223.us.i ], [ %i.xk, %._crit_edge.us1236.i.unr-lcssa ]
  %.161219.us.i.epil.init = phi <4 x float> [ %.159611226.us.i, %.lr.ph1223.us.i ], [ %i.xi, %._crit_edge.us1236.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod393)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader389
  %.05201221.us.i.epil = phi ptr [ %.05201221.us.i.epil.init, %.epil.preheader389 ], [ %i.xr, %bb.o ] ; 2 uses
  %.155561220.us.i.epil = phi ptr [ %.155561220.us.i.epil.init, %.epil.preheader389 ], [ %i.xs, %bb.o ] ; 2 uses
  %.161219.us.i.epil = phi <4 x float> [ %.161219.us.i.epil.init, %.epil.preheader389 ], [ %i.xq, %bb.o ]
  %epil.iter = phi i32 [ 0, %.epil.preheader389 ], [ %epil.iter.next, %bb.o ]
  %i.xl = load float, ptr %.05201221.us.i.epil, align 4, !tbaa !53
  %i.xm = insertelement <4 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xo = load <4 x float>, ptr %.155561220.us.i.epil, align 16, !tbaa !273
  %i.xp = fmul fast <4 x float> %i.xn, %i.xo
  %i.xq = fadd fast <4 x float> %i.xp, %.161219.us.i.epil ; 2 uses
  %i.xr = getelementptr inbounds [4 x i8], ptr %.05201221.us.i.epil, i64 %i.wd
  %i.xs = getelementptr inbounds nuw i8, ptr %.155561220.us.i.epil, i64 16
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter390
  br i1 %epil.iter.cmp.not, label %._crit_edge.us1236.i, label %bb.o, !llvm.loop !287

._crit_edge.us1236.i:                             ; preds = %bb.o, %._crit_edge.us1236.i.unr-lcssa
  %.lcssa385 = phi <4 x float> [ %i.xi, %._crit_edge.us1236.i.unr-lcssa ], [ %i.xq, %bb.o ] ; 2 uses
  %scevgep1653.i = getelementptr i8, ptr %.145551227.us.i, i64 16
  %scevgep1654.i = getelementptr i8, ptr %scevgep1653.i, i64 %i.gg
  %indvars.iv.next1657.i = add nuw nsw i64 %indvars.iv1656.i, 1 ; 2 uses
  %i.xt = trunc nuw i64 %indvars.iv.next1657.i to i32
  %i.xu = icmp sgt i32 %i.ev, %i.xt
  br i1 %i.xu, label %.lr.ph1223.us.i, label %._crit_edge1230.i, !llvm.loop !288

._crit_edge1230.i:                                ; preds = %._crit_edge.us1236.i, %.lr.ph1229.i, %.preheader1093.i
  %.15961.lcssa.i = phi <4 x float> [ %.13959.lcssa.i, %.preheader1093.i ], [ %.13959.lcssa.i, %.lr.ph1229.i ], [ %.lcssa385, %._crit_edge.us1236.i ]
  %i.xv = fadd fast <4 x float> %.7988.lcssa.i, %.71000.lcssa.i
  %i.xw = fadd fast <4 x float> %i.xv, %.12979.lcssa.i
  %i.xx = fadd fast <4 x float> %i.xw, %.15961.lcssa.i ; 10 uses
  switch i32 %i.dm, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.t
    i32 6, label %bb.u
  ]

bb.p:                                             ; preds = %._crit_edge1230.i
  %i.xy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.q:                                             ; preds = %._crit_edge1230.i
  %i.xz = load ptr, ptr %i.ci, align 8, !tbaa !18
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !53
  %i.yb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xx)
  %i.yc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xx)
  %i.yd = insertelement <4 x float> poison, float %i.ya, i64 0
  %i.ye = shufflevector <4 x float> %i.yd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yf = fmul fast <4 x float> %i.ye, %i.yc
  %i.yg = fadd fast <4 x float> %i.yf, %i.yb
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.r:                                             ; preds = %._crit_edge1230.i
  %i.yh = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !53
  %i.yj = insertelement <4 x float> poison, float %i.yi, i64 0
  %i.yk = shufflevector <4 x float> %i.yj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !53
  %i.yn = insertelement <4 x float> poison, float %i.ym, i64 0
  %i.yo = shufflevector <4 x float> %i.yn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.yk)
  %i.yq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> nofpclass(nan inf) %i.yo)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.s:                                             ; preds = %._crit_edge1230.i
  %i.yr = fneg fast <4 x float> %i.xx
  %i.ys = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x42B0C0A5))
  %i.yt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ys, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yu = fmul fast <4 x float> %i.yt, splat (float f0x3FB8AA3B)
  %i.yv = fadd fast <4 x float> %i.yu, splat (float 5.000000e-01) ; 2 uses
  %i.yw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yv)
  %i.yx = sitofp fast <4 x i32> %i.yw to <4 x float> ; 2 uses
  %i.yy = fcmp fast olt <4 x float> %i.yv, %i.yx
  %i.yz = select <4 x i1> %i.yy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.za = fsub fast <4 x float> %i.yx, %i.yz      ; 2 uses
  %i.zb = fmul fast <4 x float> %i.za, splat (float f0x3F317218)
  %i.zc = fsub fast <4 x float> %i.yt, %i.zb      ; 8 uses
  %i.zd = fmul fast <4 x float> %i.zc, %i.zc
  %i.ze = fmul fast <4 x float> %i.zc, splat (float f0x39506967)
  %i.zf = fadd fast <4 x float> %i.ze, splat (float f0x3AB743CE)
  %i.zg = fmul fast <4 x float> %i.zf, %i.zc
  %i.zh = fadd fast <4 x float> %i.zg, splat (float f0x3C088908)
  %i.zi = fmul fast <4 x float> %i.zh, %i.zc
  %i.zj = fadd fast <4 x float> %i.zi, splat (float f0x3D2AA9C1)
  %i.zk = fmul fast <4 x float> %i.zj, %i.zc
  %i.zl = fadd fast <4 x float> %i.zk, splat (float f0x3E2AAAAA)
  %i.zm = fmul fast <4 x float> %i.zl, %i.zc
  %i.zn = fadd fast <4 x float> %i.zm, splat (float 5.000000e-01)
  %i.zo = fmul fast <4 x float> %i.zd, %i.zn
  %i.zp = fadd fast <4 x float> %i.zc, %i.zo
  %i.zq = fadd fast <4 x float> %i.zp, splat (float 1.000000e+00)
  %i.zr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.za)
  %i.zs = shl <4 x i32> %i.zr, splat (i32 23)
  %i.zt = add <4 x i32> %i.zs, splat (i32 1065353216)
  %i.zu = bitcast <4 x i32> %i.zt to <4 x float>
  %i.zv = fmul fast <4 x float> %i.zq, %i.zu
  %i.zw = fadd fast <4 x float> %i.zv, splat (float 1.000000e+00)
  %i.zx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.t:                                             ; preds = %._crit_edge1230.i
  %i.zy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> splat (float f0x42B0C0A5))
  %i.zz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aaa = fmul fast <4 x float> %i.zz, splat (float f0x3FB8AA3B)
  %i.aab = fadd fast <4 x float> %i.aaa, splat (float 5.000000e-01) ; 2 uses
  %i.aac = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aab)
  %i.aad = sitofp fast <4 x i32> %i.aac to <4 x float> ; 2 uses
  %i.aae = fcmp fast olt <4 x float> %i.aab, %i.aad
  %i.aaf = select <4 x i1> %i.aae, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aag = fsub fast <4 x float> %i.aad, %i.aaf   ; 2 uses
  %i.aah = fmul fast <4 x float> %i.aag, splat (float f0x3F317218)
  %i.aai = fsub fast <4 x float> %i.zz, %i.aah    ; 8 uses
  %i.aaj = fmul fast <4 x float> %i.aai, %i.aai
  %i.aak = fmul fast <4 x float> %i.aai, splat (float f0x39506967)
  %i.aal = fadd fast <4 x float> %i.aak, splat (float f0x3AB743CE)
  %i.aam = fmul fast <4 x float> %i.aal, %i.aai
  %i.aan = fadd fast <4 x float> %i.aam, splat (float f0x3C088908)
  %i.aao = fmul fast <4 x float> %i.aan, %i.aai
  %i.aap = fadd fast <4 x float> %i.aao, splat (float f0x3D2AA9C1)
  %i.aaq = fmul fast <4 x float> %i.aap, %i.aai
  %i.aar = fadd fast <4 x float> %i.aaq, splat (float f0x3E2AAAAA)
  %i.aas = fmul fast <4 x float> %i.aar, %i.aai
  %i.aat = fadd fast <4 x float> %i.aas, splat (float 5.000000e-01)
  %i.aau = fmul fast <4 x float> %i.aaj, %i.aat
  %i.aav = fadd fast <4 x float> %i.aai, %i.aau
  %i.aaw = fadd fast <4 x float> %i.aav, splat (float 1.000000e+00)
  %i.aax = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aag)
  %i.aay = shl <4 x i32> %i.aax, splat (i32 23)
  %i.aaz = add <4 x i32> %i.aay, splat (i32 1065353216)
  %i.aba = bitcast <4 x i32> %i.aaz to <4 x float>
  %i.abb = fmul fast <4 x float> %i.aaw, %i.aba
  %i.abc = fadd fast <4 x float> %i.abb, splat (float 1.000000e+00) ; 2 uses
  %i.abd = fcmp fast ole <4 x float> %i.abc, zeroinitializer
  %i.abe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abc, <4 x float> splat (float f0x00800000))
  %i.abf = bitcast <4 x float> %i.abe to <4 x i32> ; 2 uses
  %i.abg = lshr <4 x i32> %i.abf, splat (i32 23)
  %i.abh = and <4 x i32> %i.abf, splat (i32 -2139095041)
  %i.abi = or disjoint <4 x i32> %i.abh, splat (i32 1056964608)
  %i.abj = bitcast <4 x i32> %i.abi to <4 x float> ; 3 uses
  %i.abk = add nsw <4 x i32> %i.abg, splat (i32 -127)
  %i.abl = sitofp fast <4 x i32> %i.abk to <4 x float> ; 2 uses
  %i.abm = fadd fast <4 x float> %i.abl, splat (float 1.000000e+00)
  %i.abn = fcmp fast olt <4 x float> %i.abj, splat (float f0x3F3504F3) ; 2 uses
  %i.abo = select <4 x i1> %i.abn, <4 x float> %i.abj, <4 x float> zeroinitializer
  %i.abp = fadd fast <4 x float> %i.abj, splat (float -1.000000e+00)
  %i.abq = select fast <4 x i1> %i.abn, <4 x float> %i.abl, <4 x float> %i.abm
  %i.abr = fadd fast <4 x float> %i.abp, %i.abo   ; 12 uses
  %i.abs = fmul fast <4 x float> %i.abr, %i.abr   ; 2 uses
  %i.abt = fmul fast <4 x float> %i.abr, splat (float f0x3D9021BB)
  %i.abu = fadd fast <4 x float> %i.abt, splat (float f0xBDEBD1B8)
  %i.abv = fmul fast <4 x float> %i.abu, %i.abr
  %i.abw = fadd fast <4 x float> %i.abv, splat (float f0x3DEF251A)
  %i.abx = fmul fast <4 x float> %i.abw, %i.abr
  %i.aby = fadd fast <4 x float> %i.abx, splat (float f0xBDFE5D4F)
  %i.abz = fmul fast <4 x float> %i.aby, %i.abr
  %i.aca = fadd fast <4 x float> %i.abz, splat (float f0x3E11E9BF)
  %i.acb = fmul fast <4 x float> %i.aca, %i.abr
  %i.acc = fadd fast <4 x float> %i.acb, splat (float f0xBE2AAE50)
  %i.acd = fmul fast <4 x float> %i.acc, %i.abr
  %i.ace = fadd fast <4 x float> %i.acd, splat (float f0x3E4CCEAC)
  %i.acf = fmul fast <4 x float> %i.ace, %i.abr
  %i.acg = fadd fast <4 x float> %i.acf, splat (float f0xBE7FFFFC)
  %i.ach = fmul fast <4 x float> %i.acg, %i.abr
  %i.aci = fadd fast <4 x float> %i.ach, splat (float f0x3EAAAAAA)
  %i.acj = fmul fast <4 x float> %i.abs, %i.abr
  %i.ack = fmul fast <4 x float> %i.acj, %i.aci
  %.neg1065.i = fmul fast <4 x float> %i.abs, splat (float -5.000000e-01)
  %reass.mul.i = fmul fast <4 x float> %i.abq, splat (float f0x3F317218)
  %5 = fadd fast <4 x float> %i.abr, %.neg1065.i
  %i.acl = fadd fast <4 x float> %5, %i.ack
  %i.acm = fadd fast <4 x float> %i.acl, %reass.mul.i
  %.neg.i = fmul fast <4 x float> %i.acm, splat (float -2.000000e+00)
  %i.acn = select fast <4 x i1> %i.abd, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.aco = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acn, <4 x float> splat (float f0x42B0C0A5))
  %i.acp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aco, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acq = fmul fast <4 x float> %i.acp, splat (float f0x3FB8AA3B)
  %i.acr = fadd fast <4 x float> %i.acq, splat (float 5.000000e-01) ; 2 uses
  %i.acs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acr)
  %i.act = sitofp fast <4 x i32> %i.acs to <4 x float> ; 2 uses
  %i.acu = fcmp fast olt <4 x float> %i.acr, %i.act
  %i.acv = select <4 x i1> %i.acu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.acw = fsub fast <4 x float> %i.act, %i.acv   ; 2 uses
  %i.acx = fmul fast <4 x float> %i.acw, splat (float f0x3F317218)
  %i.acy = fsub fast <4 x float> %i.acp, %i.acx   ; 8 uses
  %i.acz = fmul fast <4 x float> %i.acy, %i.acy
  %i.ada = fmul fast <4 x float> %i.acy, splat (float f0x39506967)
  %i.adb = fadd fast <4 x float> %i.ada, splat (float f0x3AB743CE)
  %i.adc = fmul fast <4 x float> %i.adb, %i.acy
  %i.add = fadd fast <4 x float> %i.adc, splat (float f0x3C088908)
  %i.ade = fmul fast <4 x float> %i.add, %i.acy
  %i.adf = fadd fast <4 x float> %i.ade, splat (float f0x3D2AA9C1)
  %i.adg = fmul fast <4 x float> %i.adf, %i.acy
  %i.adh = fadd fast <4 x float> %i.adg, splat (float f0x3E2AAAAA)
  %i.adi = fmul fast <4 x float> %i.adh, %i.acy
  %i.adj = fadd fast <4 x float> %i.adi, splat (float 5.000000e-01)
  %i.adk = fmul fast <4 x float> %i.acz, %i.adj
  %i.adl = fadd fast <4 x float> %i.acy, %i.adk
  %i.adm = fadd fast <4 x float> %i.adl, splat (float 1.000000e+00)
  %i.adn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acw)
  %i.ado = shl <4 x i32> %i.adn, splat (i32 23)
  %i.adp = add <4 x i32> %i.ado, splat (i32 1065353216)
  %i.adq = bitcast <4 x i32> %i.adp to <4 x float>
  %i.adr = fmul fast <4 x float> %i.adm, %i.adq
  %i.ads = fadd fast <4 x float> %i.adr, splat (float 1.000000e+00)
  %i.adt = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ads
  %i.adu = fadd fast <4 x float> %i.adt, splat (float -1.000000e+00)
  %i.adv = fmul fast <4 x float> %i.adu, %i.xx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.u:                                             ; preds = %._crit_edge1230.i
  %i.adw = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !53
  %i.ady = insertelement <4 x float> poison, float %i.adx, i64 0
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !53
  %i.aec = insertelement <4 x float> poison, float %i.aeb, i64 0
  %i.aed = shufflevector <4 x float> %i.aec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aee = fmul fast <4 x float> %i.adz, %i.xx
  %i.aef = fadd fast <4 x float> %i.aee, %i.aed
  %i.aeg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aef, <4 x float> zeroinitializer)
  %i.aeh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aeg, <4 x float> splat (float 1.000000e+00))
  %i.aei = fmul fast <4 x float> %i.aeh, %i.xx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge1230.i
  %.0.i.i = phi nsz <4 x float> [ %i.aei, %bb.u ], [ %i.xy, %bb.p ], [ %i.yg, %bb.q ], [ %i.yq, %bb.r ], [ %i.zx, %bb.s ], [ %i.adv, %bb.t ], [ %i.xx, %._crit_edge1230.i ] ; 5 uses
  switch i32 %i.ew, label %bb.w [
    i32 4, label %.thread.i
    i32 1, label %bb.v
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i.i, ptr %.05581238.i, align 1, !tbaa !273
  %i.aej = getelementptr inbounds nuw i8, ptr %.05581238.i, i64 16
  br label %bb.w

bb.v:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.0670.0.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 0
  store float %.sroa.0670.0.vec.extract.i, ptr %.05581238.i, align 4, !tbaa !53
  %.sroa.0670.4.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 1
  %i.aek = getelementptr inbounds [4 x i8], ptr %.05581238.i, i64 %i.fx
  store float %.sroa.0670.4.vec.extract.i, ptr %i.aek, align 4, !tbaa !53
  %.sroa.0670.8.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 2
  %i.ael = getelementptr inbounds [4 x i8], ptr %.05581238.i, i64 %i.fz
  store float %.sroa.0670.8.vec.extract.i, ptr %i.ael, align 4, !tbaa !53
  %.sroa.0670.12.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 3
  %i.aem = getelementptr inbounds [4 x i8], ptr %.05581238.i, i64 %i.gb
  store float %.sroa.0670.12.vec.extract.i, ptr %i.aem, align 4, !tbaa !53
  %i.aen = getelementptr inbounds nuw i8, ptr %.05581238.i, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.2560.i = phi ptr [ %i.aen, %bb.v ], [ %.05581238.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.aej, %.thread.i ]
  %indvars.iv.next1660.i = add nuw nsw i64 %indvars.iv1659.i, 1 ; 2 uses
  %exitcond1662.not.i = icmp eq i64 %indvars.iv.next1660.i, %i.fe
  br i1 %exitcond1662.not.i, label %._crit_edge.i, label %bb.k, !llvm.loop !289

._crit_edge1397.split.i:                          ; preds = %._crit_edge1389.i, %.lr.ph1396.i, %._crit_edge1248.i
  %i.aeo = shl nsw i32 %i.dt, 1                   ; 2 uses
  %i.aep = add nsw i32 %i.aeo, %i.dr
  %i.aeq = icmp slt i32 %i.aep, %i.cv
  br i1 %i.aeq, label %.lr.ph1521.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph1521.i:                                     ; preds = %._crit_edge1397.split.i
  %i.aer = load ptr, ptr %2, align 8, !tbaa !18
  %i.aes = load i32, ptr %i.cp, align 4, !tbaa !249
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !49
  %factor.op.mul1523.i = mul i64 %i.aev, %i.aet
  %i.aew = icmp sgt i32 %i.cq, 0
  %i.aex = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not.i43 = icmp eq ptr %i.aex, null
  %i.aey = icmp sgt i32 %i.cm, 7
  %i.aez = icmp ne i32 %i.ck, 8
  %i.afa = icmp eq i32 %i.ck, 4
  %i.afb = icmp ne i32 %i.ck, 1                   ; 2 uses
  %i.afc = icmp ne i32 %i.ck, 4
  %i.afd = load i32, ptr %i.d, align 4
  br i1 %i.aew, label %.lr.ph1521.split.i, label %_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph1521.split.i:                               ; preds = %.lr.ph1521.i
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.afg = load ptr, ptr %i.cb, align 8, !tbaa !18, !noalias !290
  %i.afh = load i64, ptr %i.aff, align 8, !tbaa !20, !noalias !290
  %i.afi = load i64, ptr %i.afe, align 8, !tbaa !49, !noalias !290
  %factor.op.mul1525.i = mul i64 %i.afi, %i.afh
  %i.afj = and i32 %i.cm, -8                      ; 2 uses
  %i.afk = sext i32 %i.dr to i64
  %i.afl = sext i32 %i.aeo to i64
  %i.afm = add nsw i64 %i.afl, %i.afk
  %i.afn = sext i32 %i.cv to i64
  %wide.trip.count1737.i = zext nneg i32 %i.cq to i64
  br label %.lr.ph1513.i

.lr.ph1388.i:                                     ; preds = %._crit_edge1389.i, %.lr.ph1396.split.i
  %indvars.iv1701.i = phi i64 [ 0, %.lr.ph1396.split.i ], [ %indvars.iv.next1702.i, %._crit_edge1389.i ] ; 2 uses
  %i.afo = shl nuw nsw i64 %indvars.iv1701.i, 1
  %i.afp = add nsw i64 %i.afo, %i.er              ; 4 uses
  %i.afq = mul i64 %i.afp, %i.ed
  %i.afr = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.afq
  %i.afs = add nsw i64 %i.afp, 1
  %i.aft = mul i64 %i.afs, %i.ed
  %i.afu = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.aft
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.afp
  %i.afw = trunc nsw i64 %i.afp to i32            ; 3 uses
  %i.afx = sdiv i32 %i.afw, 8
  %i.afy = srem i32 %i.afw, 8
  %.lhs.trunc1057.i = trunc nsw i32 %i.afy to i8
  %i.afz = sdiv i8 %.lhs.trunc1057.i, 4
  %.sext1058.i = sext i8 %i.afz to i32
  %i.aga = add nsw i32 %i.afx, %.sext1058.i
  %i.agb = srem i32 %i.afw, 4
  %.lhs.trunc1059.i = trunc nsw i32 %i.agb to i8
  %i.agc = sdiv i8 %.lhs.trunc1059.i, 2
  %.sext1060.i = sext i8 %i.agc to i32
  %i.agd = add nsw i32 %i.aga, %.sext1060.i
  %i.age = sext i32 %i.agd to i64
  %.reass1400.i = mul i64 %factor.op.mul1399.i, %i.age
  %i.agf = getelementptr inbounds nuw i8, ptr %i.en, i64 %.reass1400.i ; 3 uses
  %i.agg = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul1390.i = mul i32 %i.agg, %i.dv    ; 2 uses
  %i.agh = load i32, ptr %i.a, align 4            ; 9 uses
  %i.agi = icmp sgt i32 %i.agh, 0                 ; 2 uses
  %i.agj = add i32 %i.agh, -1
  %i.agk = zext i32 %i.agj to i64                 ; 2 uses
  %i.agl = shl nuw nsw i64 %i.agk, 4
  %i.agm = shl nuw nsw i64 %i.agk, 3
  %i.agn = sext i32 %i.agg to i64                 ; 2 uses
  %i.ago = load ptr, ptr %4, align 8              ; 4 uses
  %i.agp = load i32, ptr %i.ah, align 4
  %i.agq = sext i32 %i.agp to i64
  %i.agr = load i64, ptr %i.ae, align 8
  %factor.op.mul1292.i = mul i64 %i.agr, %i.agq   ; 5 uses
  %xtraiter421 = and i32 %i.agh, 1
  %i.ags = icmp eq i32 %i.agh, 1
  %unroll_iter426 = and i32 %i.agh, 2147483646
  %lcmp.mod423.not = icmp eq i32 %xtraiter421, 0
  %lcmp.mod425 = trunc i32 %i.agh to i1
  %xtraiter429 = and i32 %i.agh, 3                ; 3 uses
  %i.agt = icmp ult i32 %i.agh, 4
  %unroll_iter436 = and i32 %i.agh, 2147483644
  %lcmp.mod433.not = icmp eq i32 %xtraiter429, 0
  %lcmp.mod435 = icmp ne i32 %xtraiter429, 0
  br label %bb.x

._crit_edge1389.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i
  %indvars.iv.next1702.i = add nuw nsw i64 %indvars.iv1701.i, 1 ; 2 uses
  %exitcond1705.not.i = icmp eq i64 %indvars.iv.next1702.i, %wide.trip.count1704.i
  br i1 %exitcond1705.not.i, label %._crit_edge1397.split.i, label %.lr.ph1388.i, !llvm.loop !293

bb.x:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i, %.lr.ph1388.i
  %indvars.iv1696.i = phi i64 [ 0, %.lr.ph1388.i ], [ %indvars.iv.next1697.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 5 uses
  %.05161385.i = phi ptr [ %i.afu, %.lr.ph1388.i ], [ %i.awl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 2 uses
  %.05171384.i = phi ptr [ %i.afr, %.lr.ph1388.i ], [ %i.awk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 2 uses
  br i1 %.not569.i, label %_ZN4ncnn3MatD2Ev.exit571.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.agu = load <2 x float>, ptr %i.afv, align 4, !tbaa !53
  br label %_ZN4ncnn3MatD2Ev.exit571.i

_ZN4ncnn3MatD2Ev.exit571.i:                       ; preds = %bb.y, %bb.x
  %i.agv = phi <2 x float> [ %i.agu, %bb.y ], [ zeroinitializer, %bb.x ]
  br i1 %i.eg, label %.lr.ph1286.i, label %._crit_edge1287.i

.lr.ph1286.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit571.i
  %i.agw = trunc nuw nsw i64 %indvars.iv1696.i to i32
  %.reass1391.i = mul i32 %factor.op.mul1390.i, %i.agw
  %i.agx = sext i32 %.reass1391.i to i64
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Convolution1D_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.reass1303.us.i = mul i64 %factor.op.mul1302.i, %indvars.iv1726.i
  %gep1305.us.i = getelementptr i8, ptr %invariant.gep1304.i, i64 %.reass1303.us.i ; 2 uses
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph1293.us.i.new

.lr.ph1293.us.i.new:                              ; preds = %.lr.ph1293.us.i, %.lr.ph1293.us.i.new
  %.05201291.us.i = phi ptr [ %i.aeb, %.lr.ph1293.us.i.new ], [ %gep1305.us.i, %.lr.ph1293.us.i ] ; 2 uses
  %.155561290.us.i = phi ptr [ %i.aec, %.lr.ph1293.us.i.new ], [ %.145551297.us.i, %.lr.ph1293.us.i ] ; 3 uses
  %.161289.us.i = phi <4 x float> [ %i.aea, %.lr.ph1293.us.i.new ], [ %.1510311296.us.i, %.lr.ph1293.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph1293.us.i.new ], [ 0, %.lr.ph1293.us.i ]
  %i.acz = load i16, ptr %.05201291.us.i, align 2, !tbaa !331
  %i.ada = zext i16 %i.acz to i32
  %i.adb = shl nuw i32 %i.ada, 16
  %i.adc = insertelement <4 x i32> poison, i32 %i.adb, i64 0
  %i.add = bitcast <4 x i32> %i.adc to <4 x float>
  %i.ade = shufflevector <4 x float> %i.add, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adf = load i64, ptr %.155561290.us.i, align 1, !tbaa !273
  %i.adg = insertelement <2 x i64> poison, i64 %i.adf, i64 0
  %i.adh = bitcast <2 x i64> %i.adg to <8 x i16>
  %i.adi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adj = bitcast <8 x i16> %i.adi to <4 x float>
  %i.adk = fmul fast <4 x float> %i.ade, %i.adj
  %i.adl = fadd fast <4 x float> %i.adk, %.161289.us.i
  %i.adm = getelementptr inbounds [2 x i8], ptr %.05201291.us.i, i64 %i.acx ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.155561290.us.i, i64 8
  %i.ado = load i16, ptr %i.adm, align 2, !tbaa !331
  %i.adp = zext i16 %i.ado to i32
  %i.adq = shl nuw i32 %i.adp, 16
  %i.adr = insertelement <4 x i32> poison, i32 %i.adq, i64 0
  %i.ads = bitcast <4 x i32> %i.adr to <4 x float>
  %i.adt = shufflevector <4 x float> %i.ads, <4 x float> poison, <4 x i32> zeroinitializer
  %i.adu = load i64, ptr %i.adn, align 1, !tbaa !273
  %i.adv = insertelement <2 x i64> poison, i64 %i.adu, i64 0
  %i.adw = bitcast <2 x i64> %i.adv to <8 x i16>
  %i.adx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.adw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ady = bitcast <8 x i16> %i.adx to <4 x float>
  %i.adz = fmul fast <4 x float> %i.adt, %i.ady
  %i.aea = fadd fast <4 x float> %i.adz, %i.adl   ; 3 uses
  %i.aeb = getelementptr inbounds [2 x i8], ptr %i.adm, i64 %i.acx ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.155561290.us.i, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1306.i.unr-lcssa, label %.lr.ph1293.us.i.new, !llvm.loop !403

._crit_edge.us1306.i.unr-lcssa:                   ; preds = %.lr.ph1293.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1306.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1306.i.unr-lcssa, %.lr.ph1293.us.i
  %.05201291.us.i.epil.init = phi ptr [ %gep1305.us.i, %.lr.ph1293.us.i ], [ %i.aeb, %._crit_edge.us1306.i.unr-lcssa ]
  %.155561290.us.i.epil.init = phi ptr [ %.145551297.us.i, %.lr.ph1293.us.i ], [ %i.aec, %._crit_edge.us1306.i.unr-lcssa ]
  %.161289.us.i.epil.init = phi <4 x float> [ %.1510311296.us.i, %.lr.ph1293.us.i ], [ %i.aea, %._crit_edge.us1306.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod374)
  %i.aed = load i16, ptr %.05201291.us.i.epil.init, align 2, !tbaa !331
  %i.aee = zext i16 %i.aed to i32
  %i.aef = shl nuw i32 %i.aee, 16
  %i.aeg = insertelement <4 x i32> poison, i32 %i.aef, i64 0
  %i.aeh = bitcast <4 x i32> %i.aeg to <4 x float>
  %i.aei = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aej = load i64, ptr %.155561290.us.i.epil.init, align 1, !tbaa !273
  %i.aek = insertelement <2 x i64> poison, i64 %i.aej, i64 0
  %i.ael = bitcast <2 x i64> %i.aek to <8 x i16>
  %i.aem = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ael, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aen = bitcast <8 x i16> %i.aem to <4 x float>
  %i.aeo = fmul fast <4 x float> %i.aei, %i.aen
  %i.aep = fadd fast <4 x float> %i.aeo, %.161289.us.i.epil.init
  br label %._crit_edge.us1306.i

._crit_edge.us1306.i:                             ; preds = %._crit_edge.us1306.i.unr-lcssa, %.epil.preheader
  %.lcssa372 = phi <4 x float> [ %i.aea, %._crit_edge.us1306.i.unr-lcssa ], [ %i.aep, %.epil.preheader ] ; 2 uses
  %scevgep1723.i = getelementptr i8, ptr %.145551297.us.i, i64 8
  %scevgep1724.i = getelementptr i8, ptr %scevgep1723.i, i64 %i.fo
  %indvars.iv.next1727.i = add nuw nsw i64 %indvars.iv1726.i, 1 ; 2 uses
  %i.aeq = trunc nuw i64 %indvars.iv.next1727.i to i32
  %i.aer = icmp sgt i32 %i.ee, %i.aeq
  br i1 %i.aer, label %.lr.ph1293.us.i, label %._crit_edge1300.i, !llvm.loop !404

._crit_edge1300.i:                                ; preds = %._crit_edge.us1306.i, %.lr.ph1299.i, %.preheader1163.i
  %.151031.lcssa.i = phi <4 x float> [ %.131029.lcssa.i, %.preheader1163.i ], [ %.131029.lcssa.i, %.lr.ph1299.i ], [ %.lcssa372, %._crit_edge.us1306.i ]
  %i.aes = fadd fast <4 x float> %.71053.lcssa.i, %.71065.lcssa.i
  %i.aet = fadd fast <4 x float> %i.aes, %.121044.lcssa.i
  %i.aeu = fadd fast <4 x float> %i.aet, %.151031.lcssa.i ; 10 uses
  switch i32 %i.cv, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
  ]

bb.n:                                             ; preds = %._crit_edge1300.i
  %i.aev = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aeu, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.o:                                             ; preds = %._crit_edge1300.i
  %i.aew = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !53
  %i.aey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aeu)
  %i.aez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aeu)
  %i.afa = insertelement <4 x float> poison, float %i.aex, i64 0
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afc = fmul fast <4 x float> %i.afb, %i.aez
  %i.afd = fadd fast <4 x float> %i.afc, %i.aey
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.p:                                             ; preds = %._crit_edge1300.i
  %i.afe = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !53
  %i.afg = insertelement <4 x float> poison, float %i.aff, i64 0
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afe, i64 4
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !53
  %i.afk = insertelement <4 x float> poison, float %i.afj, i64 0
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aeu, <4 x float> nofpclass(nan inf) %i.afh)
  %i.afn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afm, <4 x float> nofpclass(nan inf) %i.afl)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.q:                                             ; preds = %._crit_edge1300.i
  %i.afo = fneg fast <4 x float> %i.aeu
  %i.afp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afo, <4 x float> splat (float f0x42B0C0A5))
  %i.afq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afr = fmul fast <4 x float> %i.afq, splat (float f0x3FB8AA3B)
  %i.afs = fadd fast <4 x float> %i.afr, splat (float 5.000000e-01) ; 2 uses
  %i.aft = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afs)
  %i.afu = sitofp fast <4 x i32> %i.aft to <4 x float> ; 2 uses
  %i.afv = fcmp fast olt <4 x float> %i.afs, %i.afu
  %i.afw = select <4 x i1> %i.afv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.afx = fsub fast <4 x float> %i.afu, %i.afw   ; 2 uses
  %i.afy = fmul fast <4 x float> %i.afx, splat (float f0x3F317218)
  %i.afz = fsub fast <4 x float> %i.afq, %i.afy   ; 8 uses
  %i.aga = fmul fast <4 x float> %i.afz, %i.afz
  %i.agb = fmul fast <4 x float> %i.afz, splat (float f0x39506967)
  %i.agc = fadd fast <4 x float> %i.agb, splat (float f0x3AB743CE)
  %i.agd = fmul fast <4 x float> %i.agc, %i.afz
  %i.age = fadd fast <4 x float> %i.agd, splat (float f0x3C088908)
  %i.agf = fmul fast <4 x float> %i.age, %i.afz
  %i.agg = fadd fast <4 x float> %i.agf, splat (float f0x3D2AA9C1)
  %i.agh = fmul fast <4 x float> %i.agg, %i.afz
  %i.agi = fadd fast <4 x float> %i.agh, splat (float f0x3E2AAAAA)
  %i.agj = fmul fast <4 x float> %i.agi, %i.afz
  %i.agk = fadd fast <4 x float> %i.agj, splat (float 5.000000e-01)
  %i.agl = fmul fast <4 x float> %i.aga, %i.agk
  %i.agm = fadd fast <4 x float> %i.afz, %i.agl
  %i.agn = fadd fast <4 x float> %i.agm, splat (float 1.000000e+00)
  %i.ago = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afx)
  %i.agp = shl <4 x i32> %i.ago, splat (i32 23)
  %i.agq = add <4 x i32> %i.agp, splat (i32 1065353216)
  %i.agr = bitcast <4 x i32> %i.agq to <4 x float>
  %i.ags = fmul fast <4 x float> %i.agn, %i.agr
  %i.agt = fadd fast <4 x float> %i.ags, splat (float 1.000000e+00)
  %i.agu = fdiv fast <4 x float> splat (float 1.000000e+00), %i.agt
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.r:                                             ; preds = %._crit_edge1300.i
  %i.agv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aeu, <4 x float> splat (float f0x42B0C0A5))
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agx = fmul fast <4 x float> %i.agw, splat (float f0x3FB8AA3B)
  %i.agy = fadd fast <4 x float> %i.agx, splat (float 5.000000e-01) ; 2 uses
  %i.agz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agy)
  %i.aha = sitofp fast <4 x i32> %i.agz to <4 x float> ; 2 uses
  %i.ahb = fcmp fast olt <4 x float> %i.agy, %i.aha
  %i.ahc = select <4 x i1> %i.ahb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahd = fsub fast <4 x float> %i.aha, %i.ahc   ; 2 uses
  %i.ahe = fmul fast <4 x float> %i.ahd, splat (float f0x3F317218)
  %i.ahf = fsub fast <4 x float> %i.agw, %i.ahe   ; 8 uses
  %i.ahg = fmul fast <4 x float> %i.ahf, %i.ahf
  %i.ahh = fmul fast <4 x float> %i.ahf, splat (float f0x39506967)
  %i.ahi = fadd fast <4 x float> %i.ahh, splat (float f0x3AB743CE)
  %i.ahj = fmul fast <4 x float> %i.ahi, %i.ahf
  %i.ahk = fadd fast <4 x float> %i.ahj, splat (float f0x3C088908)
  %i.ahl = fmul fast <4 x float> %i.ahk, %i.ahf
  %i.ahm = fadd fast <4 x float> %i.ahl, splat (float f0x3D2AA9C1)
  %i.ahn = fmul fast <4 x float> %i.ahm, %i.ahf
  %i.aho = fadd fast <4 x float> %i.ahn, splat (float f0x3E2AAAAA)
  %i.ahp = fmul fast <4 x float> %i.aho, %i.ahf
  %i.ahq = fadd fast <4 x float> %i.ahp, splat (float 5.000000e-01)
  %i.ahr = fmul fast <4 x float> %i.ahg, %i.ahq
  %i.ahs = fadd fast <4 x float> %i.ahf, %i.ahr
  %i.aht = fadd fast <4 x float> %i.ahs, splat (float 1.000000e+00)
  %i.ahu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahd)
  %i.ahv = shl <4 x i32> %i.ahu, splat (i32 23)
  %i.ahw = add <4 x i32> %i.ahv, splat (i32 1065353216)
  %i.ahx = bitcast <4 x i32> %i.ahw to <4 x float>
  %i.ahy = fmul fast <4 x float> %i.aht, %i.ahx
  %i.ahz = fadd fast <4 x float> %i.ahy, splat (float 1.000000e+00) ; 2 uses
  %i.aia = fcmp fast ole <4 x float> %i.ahz, zeroinitializer
  %i.aib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahz, <4 x float> splat (float f0x00800000))
  %i.aic = bitcast <4 x float> %i.aib to <4 x i32> ; 2 uses
  %i.aid = lshr <4 x i32> %i.aic, splat (i32 23)
  %i.aie = and <4 x i32> %i.aic, splat (i32 -2139095041)
  %i.aif = or disjoint <4 x i32> %i.aie, splat (i32 1056964608)
  %i.aig = bitcast <4 x i32> %i.aif to <4 x float> ; 3 uses
  %i.aih = add nsw <4 x i32> %i.aid, splat (i32 -127)
  %i.aii = sitofp fast <4 x i32> %i.aih to <4 x float> ; 2 uses
  %i.aij = fadd fast <4 x float> %i.aii, splat (float 1.000000e+00)
  %i.aik = fcmp fast olt <4 x float> %i.aig, splat (float f0x3F3504F3) ; 2 uses
  %i.ail = select <4 x i1> %i.aik, <4 x float> %i.aig, <4 x float> zeroinitializer
  %i.aim = fadd fast <4 x float> %i.aig, splat (float -1.000000e+00)
  %i.ain = select fast <4 x i1> %i.aik, <4 x float> %i.aii, <4 x float> %i.aij
  %i.aio = fadd fast <4 x float> %i.aim, %i.ail   ; 12 uses
  %i.aip = fmul fast <4 x float> %i.aio, %i.aio   ; 2 uses
  %i.aiq = fmul fast <4 x float> %i.aio, splat (float f0x3D9021BB)
  %i.air = fadd fast <4 x float> %i.aiq, splat (float f0xBDEBD1B8)
  %i.ais = fmul fast <4 x float> %i.air, %i.aio
  %i.ait = fadd fast <4 x float> %i.ais, splat (float f0x3DEF251A)
  %i.aiu = fmul fast <4 x float> %i.ait, %i.aio
  %i.aiv = fadd fast <4 x float> %i.aiu, splat (float f0xBDFE5D4F)
  %i.aiw = fmul fast <4 x float> %i.aiv, %i.aio
  %i.aix = fadd fast <4 x float> %i.aiw, splat (float f0x3E11E9BF)
  %i.aiy = fmul fast <4 x float> %i.aix, %i.aio
  %i.aiz = fadd fast <4 x float> %i.aiy, splat (float f0xBE2AAE50)
  %i.aja = fmul fast <4 x float> %i.aiz, %i.aio
  %i.ajb = fadd fast <4 x float> %i.aja, splat (float f0x3E4CCEAC)
  %i.ajc = fmul fast <4 x float> %i.ajb, %i.aio
  %i.ajd = fadd fast <4 x float> %i.ajc, splat (float f0xBE7FFFFC)
  %i.aje = fmul fast <4 x float> %i.ajd, %i.aio
  %i.ajf = fadd fast <4 x float> %i.aje, splat (float f0x3EAAAAAA)
  %i.ajg = fmul fast <4 x float> %i.aip, %i.aio
  %i.ajh = fmul fast <4 x float> %i.ajg, %i.ajf
  %.neg1135.i = fmul fast <4 x float> %i.aip, splat (float -5.000000e-01)
  %reass.mul.i = fmul fast <4 x float> %i.ain, splat (float f0x3F317218)
  %5 = fadd fast <4 x float> %i.aio, %.neg1135.i
  %i.aji = fadd fast <4 x float> %5, %i.ajh
  %i.ajj = fadd fast <4 x float> %i.aji, %reass.mul.i
  %.neg.i = fmul fast <4 x float> %i.ajj, splat (float -2.000000e+00)
  %i.ajk = select fast <4 x i1> %i.aia, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.ajl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajk, <4 x float> splat (float f0x42B0C0A5))
  %i.ajm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajn = fmul fast <4 x float> %i.ajm, splat (float f0x3FB8AA3B)
  %i.ajo = fadd fast <4 x float> %i.ajn, splat (float 5.000000e-01) ; 2 uses
  %i.ajp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajo)
  %i.ajq = sitofp fast <4 x i32> %i.ajp to <4 x float> ; 2 uses
  %i.ajr = fcmp fast olt <4 x float> %i.ajo, %i.ajq
  %i.ajs = select <4 x i1> %i.ajr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajt = fsub fast <4 x float> %i.ajq, %i.ajs   ; 2 uses
  %i.aju = fmul fast <4 x float> %i.ajt, splat (float f0x3F317218)
  %i.ajv = fsub fast <4 x float> %i.ajm, %i.aju   ; 8 uses
  %i.ajw = fmul fast <4 x float> %i.ajv, %i.ajv
  %i.ajx = fmul fast <4 x float> %i.ajv, splat (float f0x39506967)
  %i.ajy = fadd fast <4 x float> %i.ajx, splat (float f0x3AB743CE)
  %i.ajz = fmul fast <4 x float> %i.ajy, %i.ajv
  %i.aka = fadd fast <4 x float> %i.ajz, splat (float f0x3C088908)
  %i.akb = fmul fast <4 x float> %i.aka, %i.ajv
  %i.akc = fadd fast <4 x float> %i.akb, splat (float f0x3D2AA9C1)
  %i.akd = fmul fast <4 x float> %i.akc, %i.ajv
  %i.ake = fadd fast <4 x float> %i.akd, splat (float f0x3E2AAAAA)
  %i.akf = fmul fast <4 x float> %i.ake, %i.ajv
  %i.akg = fadd fast <4 x float> %i.akf, splat (float 5.000000e-01)
  %i.akh = fmul fast <4 x float> %i.ajw, %i.akg
  %i.aki = fadd fast <4 x float> %i.ajv, %i.akh
  %i.akj = fadd fast <4 x float> %i.aki, splat (float 1.000000e+00)
  %i.akk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajt)
  %i.akl = shl <4 x i32> %i.akk, splat (i32 23)
  %i.akm = add <4 x i32> %i.akl, splat (i32 1065353216)
  %i.akn = bitcast <4 x i32> %i.akm to <4 x float>
  %i.ako = fmul fast <4 x float> %i.akj, %i.akn
  %i.akp = fadd fast <4 x float> %i.ako, splat (float 1.000000e+00)
  %i.akq = fdiv fast <4 x float> splat (float 2.000000e+00), %i.akp
  %i.akr = fadd fast <4 x float> %i.akq, splat (float -1.000000e+00)
  %i.aks = fmul fast <4 x float> %i.akr, %i.aeu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.s:                                             ; preds = %._crit_edge1300.i
  %i.akt = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !53
  %i.akv = insertelement <4 x float> poison, float %i.aku, i64 0
  %i.akw = shufflevector <4 x float> %i.akv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !53
  %i.akz = insertelement <4 x float> poison, float %i.aky, i64 0
  %i.ala = shufflevector <4 x float> %i.akz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alb = fmul fast <4 x float> %i.akw, %i.aeu
  %i.alc = fadd fast <4 x float> %i.alb, %i.ala
  %i.ald = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alc, <4 x float> zeroinitializer)
  %i.ale = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ald, <4 x float> splat (float 1.000000e+00))
  %i.alf = fmul fast <4 x float> %i.ale, %i.aeu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %._crit_edge1300.i
  %.0.i.i = phi nsz <4 x float> [ %i.alf, %bb.s ], [ %i.aev, %bb.n ], [ %i.afd, %bb.o ], [ %i.afn, %bb.p ], [ %i.agu, %bb.q ], [ %i.aks, %bb.r ], [ %i.aeu, %._crit_edge1300.i ] ; 2 uses
  switch i32 %i.ef, label %bb.u [
    i32 4, label %.thread.i
    i32 1, label %bb.t
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.alg = bitcast <4 x float> %.0.i.i to <4 x i32>
  %i.alh = lshr <4 x i32> %i.alg, splat (i32 16)
  %i.ali = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.alh, <4 x i32> poison)
  %i.alj = bitcast <8 x i16> %i.ali to <2 x i64>
  %i.alk = extractelement <2 x i64> %i.alj, i64 0
  store i64 %i.alk, ptr %.05581308.i, align 1, !tbaa !273
  %i.all = getelementptr inbounds nuw i8, ptr %.05581308.i, i64 8
  br label %bb.u

bb.t:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.alm = bitcast <4 x float> %.0.i.i to <8 x i16> ; 4 uses
  %i.aln = extractelement <8 x i16> %i.alm, i64 1
  store i16 %i.aln, ptr %.05581308.i, align 2, !tbaa !331
  %i.alo = extractelement <8 x i16> %i.alm, i64 3
  %i.alp = getelementptr inbounds [2 x i8], ptr %.05581308.i, i64 %i.ff
  store i16 %i.alo, ptr %i.alp, align 2, !tbaa !331
  %i.alq = extractelement <8 x i16> %i.alm, i64 5
  %i.alr = getelementptr inbounds [2 x i8], ptr %.05581308.i, i64 %i.fh
  store i16 %i.alq, ptr %i.alr, align 2, !tbaa !331
  %i.als = extractelement <8 x i16> %i.alm, i64 7
  %i.alt = getelementptr inbounds [2 x i8], ptr %.05581308.i, i64 %i.fj
  store i16 %i.als, ptr %i.alt, align 2, !tbaa !331
  %i.alu = getelementptr inbounds nuw i8, ptr %.05581308.i, i64 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.2560.i = phi ptr [ %i.alu, %bb.t ], [ %.05581308.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.all, %.thread.i ]
  %indvars.iv.next1730.i = add nuw nsw i64 %indvars.iv1729.i, 1 ; 2 uses
  %exitcond1732.not.i = icmp eq i64 %indvars.iv.next1730.i, %i.en
  br i1 %exitcond1732.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !405

._crit_edge1467.split.i:                          ; preds = %._crit_edge1459.i, %.lr.ph1466.i, %._crit_edge1318.i
  %i.alv = shl nsw i32 %i.dc, 1                   ; 2 uses
  %i.alw = add nsw i32 %i.alv, %i.da
  %i.alx = icmp slt i32 %i.alw, %i.cf
  br i1 %i.alx, label %.lr.ph1591.i, label %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph1591.i:                                     ; preds = %._crit_edge1467.split.i
  %i.aly = load ptr, ptr %2, align 8, !tbaa !18
  %i.alz = load i32, ptr %i.bz, align 4, !tbaa !249
  %i.ama = sext i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !49
  %factor.op.mul1593.i = mul i64 %i.amc, %i.ama
  %i.amd = icmp sgt i32 %i.ca, 0
  %i.ame = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not.i33 = icmp eq ptr %i.ame, null
  %i.amf = icmp sgt i32 %i.bw, 7
  %i.amg = icmp ne i32 %i.bu, 8
  %i.amh = icmp eq i32 %i.bu, 4
  %i.ami = icmp ne i32 %i.bu, 1                   ; 2 uses
  %i.amj = icmp ne i32 %i.bu, 4
  %i.amk = load i32, ptr %i.d, align 4
  br i1 %i.amd, label %.lr.ph1591.split.i, label %_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.exit

.lr.ph1591.split.i:                               ; preds = %.lr.ph1591.i
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.amn = load ptr, ptr %i.bl, align 8, !tbaa !18, !noalias !406
  %i.amo = load i64, ptr %i.amm, align 8, !tbaa !20, !noalias !406
  %i.amp = load i64, ptr %i.aml, align 8, !tbaa !49, !noalias !406
  %factor.op.mul1595.i = mul i64 %i.amp, %i.amo
  %i.amq = and i32 %i.bw, -8                      ; 2 uses
  %i.amr = sext i32 %i.da to i64
  %i.ams = sext i32 %i.alv to i64
  %i.amt = add nsw i64 %i.ams, %i.amr
  %i.amu = sext i32 %i.cf to i64
  %wide.trip.count1807.i = zext nneg i32 %i.ca to i64
  br label %.lr.ph1583.i

.lr.ph1458.i:                                     ; preds = %._crit_edge1459.i, %.lr.ph1466.split.i
  %indvars.iv1771.i = phi i64 [ 0, %.lr.ph1466.split.i ], [ %indvars.iv.next1772.i, %._crit_edge1459.i ] ; 2 uses
  %i.amv = shl nuw nsw i64 %indvars.iv1771.i, 1
  %i.amw = add nsw i64 %i.amv, %i.ea              ; 4 uses
  %i.amx = mul i64 %i.amw, %i.dm
  %i.amy = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.amx
  %i.amz = add nsw i64 %i.amw, 1
  %i.ana = mul i64 %i.amz, %i.dm
  %i.anb = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ana
  %i.anc = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.amw
  %i.and = trunc nsw i64 %i.amw to i32            ; 3 uses
  %i.ane = sdiv i32 %i.and, 8
  %i.anf = srem i32 %i.and, 8
  %.lhs.trunc1127.i = trunc nsw i32 %i.anf to i8
  %i.ang = sdiv i8 %.lhs.trunc1127.i, 4
  %.sext1128.i = sext i8 %i.ang to i32
  %i.anh = add nsw i32 %i.ane, %.sext1128.i
  %i.ani = srem i32 %i.and, 4
  %.lhs.trunc1129.i = trunc nsw i32 %i.ani to i8
  %i.anj = sdiv i8 %.lhs.trunc1129.i, 2
  %.sext1130.i = sext i8 %i.anj to i32
  %i.ank = add nsw i32 %i.anh, %.sext1130.i
  %i.anl = sext i32 %i.ank to i64
  %.reass1470.i = mul i64 %factor.op.mul1469.i, %i.anl
  %i.anm = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.reass1470.i ; 3 uses
  %i.ann = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul1460.i = mul i32 %i.ann, %i.de    ; 2 uses
  %i.ano = load i32, ptr %i.a, align 4            ; 7 uses
  %i.anp = icmp sgt i32 %i.ano, 0                 ; 2 uses
  %i.anq = add i32 %i.ano, -1
  %i.anr = zext i32 %i.anq to i64                 ; 2 uses
  %i.ans = shl nuw nsw i64 %i.anr, 3
  %i.ant = shl nuw nsw i64 %i.anr, 2
  %i.anu = sext i32 %i.ann to i64                 ; 2 uses
  %i.anv = load ptr, ptr %4, align 8              ; 4 uses
  %i.anw = load i32, ptr %i.t, align 4
  %i.anx = sext i32 %i.anw to i64
  %i.any = load i64, ptr %i.q, align 8
  %factor.op.mul1362.i = mul i64 %i.any, %i.anx   ; 5 uses
  %xtraiter376 = and i32 %i.ano, 1
  %i.anz = icmp eq i32 %i.ano, 1
  %unroll_iter380 = and i32 %i.ano, 2147483646
  %lcmp.mod377.not = icmp eq i32 %xtraiter376, 0
  %lcmp.mod379 = trunc i32 %i.ano to i1
  br label %bb.v

._crit_edge1459.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i
  %indvars.iv.next1772.i = add nuw nsw i64 %indvars.iv1771.i, 1 ; 2 uses
  %exitcond1775.not.i = icmp eq i64 %indvars.iv.next1772.i, %wide.trip.count1774.i
  br i1 %exitcond1775.not.i, label %._crit_edge1467.split.i, label %.lr.ph1458.i, !llvm.loop !409

bb.v:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i, %.lr.ph1458.i
  %indvars.iv1766.i = phi i64 [ 0, %.lr.ph1458.i ], [ %indvars.iv.next1767.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 5 uses
  %.05161455.i = phi ptr [ %i.anb, %.lr.ph1458.i ], [ %i.bdn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 2 uses
  %.05171454.i = phi ptr [ %i.amy, %.lr.ph1458.i ], [ %i.bdm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit588.i ] ; 2 uses
  br i1 %.not569.i, label %_ZN4ncnn3MatD2Ev.exit571.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aoa = load <2 x float>, ptr %i.anc, align 4, !tbaa !53
  br label %_ZN4ncnn3MatD2Ev.exit571.i

_ZN4ncnn3MatD2Ev.exit571.i:                       ; preds = %bb.w, %bb.v
  %i.aob = phi <2 x float> [ %i.aoa, %bb.w ], [ zeroinitializer, %bb.v ]
  br i1 %i.dp, label %.lr.ph1356.i, label %._crit_edge1357.i

.lr.ph1356.i:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit571.i
  %i.aoc = trunc nuw nsw i64 %indvars.iv1766.i to i32
  %.reass1461.i = mul i32 %factor.op.mul1460.i, %i.aoc
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20convolution1d_packedERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.lr.ph692.split.us, label %._crit_edge693

.lr.ph692.split.us:                               ; preds = %.lr.ph692
  %i.rz = load i32, ptr %10, align 4, !tbaa !254
  %i.sa = sext i32 %i.rz to i64                   ; 2 uses
  %i.sb = add nsw i32 %i.rx, -1
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = shl nuw nsw i64 %i.sc, 5
  %i.se = zext i32 %.2203.lcssa to i64
  %xtraiter880 = and i32 %i.rx, 1
  %i.sf = icmp eq i32 %i.rx, 1
  %unroll_iter884 = and i32 %i.rx, 2147483646
  %lcmp.mod881.not = icmp eq i32 %xtraiter880, 0
  %lcmp.mod883 = trunc i32 %i.rx to i1
  br label %.lr.ph686.us

.lr.ph686.us:                                     ; preds = %._crit_edge.us699, %.lr.ph692.split.us
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %._crit_edge.us699 ], [ %i.se, %.lr.ph692.split.us ] ; 2 uses
  %.14690.us = phi ptr [ %scevgep766, %._crit_edge.us699 ], [ %.12.lcssa, %.lr.ph692.split.us ] ; 3 uses
  %.15545689.us = phi <8 x float> [ %.lcssa875, %._crit_edge.us699 ], [ %.13543.lcssa, %.lr.ph692.split.us ] ; 2 uses
  %.reass696.us = mul i64 %factor.op.mul695, %indvars.iv768
  %gep698.us = getelementptr i8, ptr %invariant.gep697, i64 %.reass696.us ; 2 uses
  br i1 %i.sf, label %.epil.preheader879, label %.lr.ph686.us.new

.lr.ph686.us.new:                                 ; preds = %.lr.ph686.us, %.lr.ph686.us.new
  %.0188684.us = phi ptr [ %i.su, %.lr.ph686.us.new ], [ %gep698.us, %.lr.ph686.us ] ; 2 uses
  %.15683.us = phi ptr [ %i.sv, %.lr.ph686.us.new ], [ %.14690.us, %.lr.ph686.us ] ; 3 uses
  %.16682.us = phi <8 x float> [ %i.st, %.lr.ph686.us.new ], [ %.15545689.us, %.lr.ph686.us ]
  %niter885 = phi i32 [ %niter885.next.1, %.lr.ph686.us.new ], [ 0, %.lr.ph686.us ]
  %i.sg = load float, ptr %.0188684.us, align 4, !tbaa !53
  %i.sh = insertelement <8 x float> poison, float %i.sg, i64 0
  %i.si = shufflevector <8 x float> %i.sh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sj = load <8 x float>, ptr %.15683.us, align 32, !tbaa !273
  %i.sk = fmul fast <8 x float> %i.si, %i.sj
  %i.sl = fadd fast <8 x float> %i.sk, %.16682.us
  %i.sm = getelementptr inbounds [4 x i8], ptr %.0188684.us, i64 %i.sa ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.15683.us, i64 32
  %i.so = load float, ptr %i.sm, align 4, !tbaa !53
  %i.sp = insertelement <8 x float> poison, float %i.so, i64 0
  %i.sq = shufflevector <8 x float> %i.sp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sr = load <8 x float>, ptr %i.sn, align 32, !tbaa !273
  %i.ss = fmul fast <8 x float> %i.sq, %i.sr
  %i.st = fadd fast <8 x float> %i.ss, %i.sl      ; 3 uses
  %i.su = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.sa ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.15683.us, i64 64 ; 2 uses
  %niter885.next.1 = add nuw nsw i32 %niter885, 2 ; 2 uses
  %niter885.ncmp.1 = icmp eq i32 %niter885.next.1, %unroll_iter884
  br i1 %niter885.ncmp.1, label %._crit_edge.us699.unr-lcssa, label %.lr.ph686.us.new, !llvm.loop !448

._crit_edge.us699.unr-lcssa:                      ; preds = %.lr.ph686.us.new
  br i1 %lcmp.mod881.not, label %._crit_edge.us699, label %.epil.preheader879

.epil.preheader879:                               ; preds = %._crit_edge.us699.unr-lcssa, %.lr.ph686.us
  %.0188684.us.epil.init = phi ptr [ %gep698.us, %.lr.ph686.us ], [ %i.su, %._crit_edge.us699.unr-lcssa ]
  %.15683.us.epil.init = phi ptr [ %.14690.us, %.lr.ph686.us ], [ %i.sv, %._crit_edge.us699.unr-lcssa ]
  %.16682.us.epil.init = phi <8 x float> [ %.15545689.us, %.lr.ph686.us ], [ %i.st, %._crit_edge.us699.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod883)
  %i.sw = load float, ptr %.0188684.us.epil.init, align 4, !tbaa !53
  %i.sx = insertelement <8 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <8 x float> %i.sx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sz = load <8 x float>, ptr %.15683.us.epil.init, align 32, !tbaa !273
  %i.ta = fmul fast <8 x float> %i.sy, %i.sz
  %i.tb = fadd fast <8 x float> %i.ta, %.16682.us.epil.init
  br label %._crit_edge.us699

._crit_edge.us699:                                ; preds = %._crit_edge.us699.unr-lcssa, %.epil.preheader879
  %.lcssa875 = phi <8 x float> [ %i.st, %._crit_edge.us699.unr-lcssa ], [ %i.tb, %.epil.preheader879 ] ; 2 uses
  %scevgep765 = getelementptr i8, ptr %.14690.us, i64 32
  %scevgep766 = getelementptr i8, ptr %scevgep765, i64 %i.sd
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1 ; 2 uses
  %i.tc = trunc nuw i64 %indvars.iv.next769 to i32
  %i.td = icmp sgt i32 %i.aa, %i.tc
  br i1 %i.td, label %.lr.ph686.us, label %._crit_edge693, !llvm.loop !449

._crit_edge693:                                   ; preds = %._crit_edge.us699, %.lr.ph692, %.preheader557
  %.15545.lcssa = phi <8 x float> [ %.13543.lcssa, %.preheader557 ], [ %.13543.lcssa, %.lr.ph692 ], [ %.lcssa875, %._crit_edge.us699 ]
  %i.te = fadd fast <8 x float> %.7499.lcssa, %.7511.lcssa
  %i.tf = fadd fast <8 x float> %i.te, %.12528.lcssa
  %i.tg = fadd fast <8 x float> %i.tf, %.15545.lcssa ; 10 uses
  %i.th = load i32, ptr %12, align 4, !tbaa !254
  switch i32 %i.th, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.m
    i32 2, label %.noexc219
    i32 3, label %bb.n
    i32 4, label %.noexc220
    i32 5, label %.noexc221
    i32 6, label %.noexc222
  ]

bb.m:                                             ; preds = %._crit_edge693
  %i.ti = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc219:                                        ; preds = %._crit_edge693
  %i.tj = load ptr, ptr %13, align 8, !tbaa !18
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !53
  %i.tl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.tg)
  %i.tm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.tg)
  %i.tn = insertelement <8 x float> poison, float %i.tk, i64 0
  %i.to = shufflevector <8 x float> %i.tn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tp = fmul fast <8 x float> %i.to, %i.tm
  %i.tq = fadd fast <8 x float> %i.tp, %i.tl
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %._crit_edge693
  %i.tr = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !53
  %i.tt = insertelement <8 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <8 x float> %i.tt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !53
  %i.tx = insertelement <8 x float> poison, float %i.tw, i64 0
  %i.ty = shufflevector <8 x float> %i.tx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> nofpclass(nan inf) %i.tu)
  %i.ua = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tz, <8 x float> nofpclass(nan inf) %i.ty)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc220:                                        ; preds = %._crit_edge693
  %i.ub = fneg fast <8 x float> %i.tg
  %i.uc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ub, <8 x float> splat (float f0x42B0C0A5))
  %i.ud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ue = fmul fast <8 x float> %i.ud, splat (float f0x3FB8AA3B)
  %i.uf = fadd fast <8 x float> %i.ue, splat (float 5.000000e-01) ; 2 uses
  %i.ug = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.uf, i32 1) ; 2 uses
  %i.uh = fcmp fast ogt <8 x float> %i.ug, %i.uf
  %i.ui = select <8 x i1> %i.uh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.uj = fsub fast <8 x float> %i.ug, %i.ui      ; 2 uses
  %i.uk = fmul fast <8 x float> %i.uj, splat (float f0x3F317218)
  %i.ul = fsub fast <8 x float> %i.ud, %i.uk      ; 8 uses
  %i.um = fmul fast <8 x float> %i.ul, %i.ul
  %i.un = fmul fast <8 x float> %i.ul, splat (float f0x39506967)
  %i.uo = fadd fast <8 x float> %i.un, splat (float f0x3AB743CE)
  %i.up = fmul fast <8 x float> %i.uo, %i.ul
  %i.uq = fadd fast <8 x float> %i.up, splat (float f0x3C088908)
  %i.ur = fmul fast <8 x float> %i.uq, %i.ul
  %i.us = fadd fast <8 x float> %i.ur, splat (float f0x3D2AA9C1)
  %i.ut = fmul fast <8 x float> %i.us, %i.ul
  %i.uu = fadd fast <8 x float> %i.ut, splat (float f0x3E2AAAAA)
  %i.uv = fmul fast <8 x float> %i.uu, %i.ul
  %i.uw = fadd fast <8 x float> %i.uv, splat (float 5.000000e-01)
  %i.ux = fmul fast <8 x float> %i.um, %i.uw
  %i.uy = fadd fast <8 x float> %i.ul, %i.ux
  %i.uz = fadd fast <8 x float> %i.uy, splat (float 1.000000e+00)
  %i.va = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uj)
  %i.vb = shl <8 x i32> %i.va, splat (i32 23)
  %i.vc = add <8 x i32> %i.vb, splat (i32 1065353216)
  %i.vd = bitcast <8 x i32> %i.vc to <8 x float>
  %i.ve = fmul fast <8 x float> %i.uz, %i.vd
  %i.vf = fadd fast <8 x float> %i.ve, splat (float 1.000000e+00)
  %i.vg = fdiv fast <8 x float> splat (float 1.000000e+00), %i.vf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc221:                                        ; preds = %._crit_edge693
  %i.vh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> splat (float f0x42B0C0A5))
  %i.vi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.vh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.vj = fmul fast <8 x float> %i.vi, splat (float f0x3FB8AA3B)
  %i.vk = fadd fast <8 x float> %i.vj, splat (float 5.000000e-01) ; 2 uses
  %i.vl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.vk, i32 1) ; 2 uses
  %i.vm = fcmp fast ogt <8 x float> %i.vl, %i.vk
  %i.vn = select <8 x i1> %i.vm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.vo = fsub fast <8 x float> %i.vl, %i.vn      ; 2 uses
  %i.vp = fmul fast <8 x float> %i.vo, splat (float f0x3F317218)
  %i.vq = fsub fast <8 x float> %i.vi, %i.vp      ; 8 uses
  %i.vr = fmul fast <8 x float> %i.vq, %i.vq
  %i.vs = fmul fast <8 x float> %i.vq, splat (float f0x39506967)
  %i.vt = fadd fast <8 x float> %i.vs, splat (float f0x3AB743CE)
  %i.vu = fmul fast <8 x float> %i.vt, %i.vq
  %i.vv = fadd fast <8 x float> %i.vu, splat (float f0x3C088908)
  %i.vw = fmul fast <8 x float> %i.vv, %i.vq
  %i.vx = fadd fast <8 x float> %i.vw, splat (float f0x3D2AA9C1)
  %i.vy = fmul fast <8 x float> %i.vx, %i.vq
  %i.vz = fadd fast <8 x float> %i.vy, splat (float f0x3E2AAAAA)
  %i.wa = fmul fast <8 x float> %i.vz, %i.vq
  %i.wb = fadd fast <8 x float> %i.wa, splat (float 5.000000e-01)
  %i.wc = fmul fast <8 x float> %i.vr, %i.wb
  %i.wd = fadd fast <8 x float> %i.vq, %i.wc
  %i.we = fadd fast <8 x float> %i.wd, splat (float 1.000000e+00)
  %i.wf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vo)
  %i.wg = shl <8 x i32> %i.wf, splat (i32 23)
  %i.wh = add <8 x i32> %i.wg, splat (i32 1065353216)
  %i.wi = bitcast <8 x i32> %i.wh to <8 x float>
  %i.wj = fmul fast <8 x float> %i.we, %i.wi
  %i.wk = fadd fast <8 x float> %i.wj, splat (float 1.000000e+00) ; 2 uses
  %i.wl = fcmp fast ole <8 x float> %i.wk, zeroinitializer
  %i.wm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wk, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.wn = bitcast <8 x float> %i.wm to <8 x i32>
  %i.wo = bitcast <8 x float> %i.wm to <8 x i32>
  %i.wp = and <8 x i32> %i.wo, splat (i32 -2139095041)
  %i.wq = or disjoint <8 x i32> %i.wp, splat (i32 1056964608)
  %i.wr = bitcast <8 x i32> %i.wq to <8 x float>  ; 3 uses
  %i.ws = lshr <8 x i32> %i.wn, splat (i32 23)
  %i.wt = add nsw <8 x i32> %i.ws, splat (i32 -127)
  %i.wu = sitofp fast <8 x i32> %i.wt to <8 x float> ; 2 uses
  %i.wv = fadd fast <8 x float> %i.wu, splat (float 1.000000e+00)
  %i.ww = fcmp fast olt <8 x float> %i.wr, splat (float f0x3F3504F3) ; 2 uses
  %i.wx = select <8 x i1> %i.ww, <8 x float> %i.wr, <8 x float> zeroinitializer
  %i.wy = fadd fast <8 x float> %i.wr, splat (float -1.000000e+00)
  %i.wz = select fast <8 x i1> %i.ww, <8 x float> %i.wu, <8 x float> %i.wv
  %i.xa = fadd fast <8 x float> %i.wy, %i.wx      ; 12 uses
  %i.xb = fmul fast <8 x float> %i.xa, %i.xa      ; 2 uses
  %i.xc = fmul fast <8 x float> %i.xa, splat (float f0x3D9021BB)
  %i.xd = fadd fast <8 x float> %i.xc, splat (float f0xBDEBD1B8)
  %i.xe = fmul fast <8 x float> %i.xd, %i.xa
  %i.xf = fadd fast <8 x float> %i.xe, splat (float f0x3DEF251A)
  %i.xg = fmul fast <8 x float> %i.xf, %i.xa
  %i.xh = fadd fast <8 x float> %i.xg, splat (float f0xBDFE5D4F)
  %i.xi = fmul fast <8 x float> %i.xh, %i.xa
  %i.xj = fadd fast <8 x float> %i.xi, splat (float f0x3E11E9BF)
  %i.xk = fmul fast <8 x float> %i.xj, %i.xa
  %i.xl = fadd fast <8 x float> %i.xk, splat (float f0xBE2AAE50)
  %i.xm = fmul fast <8 x float> %i.xl, %i.xa
  %i.xn = fadd fast <8 x float> %i.xm, splat (float f0x3E4CCEAC)
  %i.xo = fmul fast <8 x float> %i.xn, %i.xa
  %i.xp = fadd fast <8 x float> %i.xo, splat (float f0xBE7FFFFC)
  %i.xq = fmul fast <8 x float> %i.xp, %i.xa
  %i.xr = fadd fast <8 x float> %i.xq, splat (float f0x3EAAAAAA)
  %i.xs = fmul fast <8 x float> %i.xb, %i.xa
  %i.xt = fmul fast <8 x float> %i.xs, %i.xr
  %.neg549 = fmul fast <8 x float> %i.xb, splat (float -5.000000e-01)
  %reass.mul = fmul fast <8 x float> %i.wz, splat (float f0x3F317218)
  %15 = fadd fast <8 x float> %i.xa, %.neg549
  %i.xu = fadd fast <8 x float> %i.xt, %15
  %i.xv = fadd fast <8 x float> %i.xu, %reass.mul
  %.neg = fmul fast <8 x float> %i.xv, splat (float -2.000000e+00)
  %i.xw = select fast <8 x i1> %i.wl, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.xx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xw, <8 x float> splat (float f0x42B0C0A5))
  %i.xy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xz = fmul fast <8 x float> %i.xy, splat (float f0x3FB8AA3B)
  %i.ya = fadd fast <8 x float> %i.xz, splat (float 5.000000e-01) ; 2 uses
  %i.yb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ya, i32 1) ; 2 uses
  %i.yc = fcmp fast ogt <8 x float> %i.yb, %i.ya
  %i.yd = select <8 x i1> %i.yc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ye = fsub fast <8 x float> %i.yb, %i.yd      ; 2 uses
  %i.yf = fmul fast <8 x float> %i.ye, splat (float f0x3F317218)
  %i.yg = fsub fast <8 x float> %i.xy, %i.yf      ; 8 uses
  %i.yh = fmul fast <8 x float> %i.yg, %i.yg
  %i.yi = fmul fast <8 x float> %i.yg, splat (float f0x39506967)
  %i.yj = fadd fast <8 x float> %i.yi, splat (float f0x3AB743CE)
  %i.yk = fmul fast <8 x float> %i.yj, %i.yg
  %i.yl = fadd fast <8 x float> %i.yk, splat (float f0x3C088908)
  %i.ym = fmul fast <8 x float> %i.yl, %i.yg
  %i.yn = fadd fast <8 x float> %i.ym, splat (float f0x3D2AA9C1)
  %i.yo = fmul fast <8 x float> %i.yn, %i.yg
  %i.yp = fadd fast <8 x float> %i.yo, splat (float f0x3E2AAAAA)
  %i.yq = fmul fast <8 x float> %i.yp, %i.yg
  %i.yr = fadd fast <8 x float> %i.yq, splat (float 5.000000e-01)
  %i.ys = fmul fast <8 x float> %i.yh, %i.yr
  %i.yt = fadd fast <8 x float> %i.yg, %i.ys
  %i.yu = fadd fast <8 x float> %i.yt, splat (float 1.000000e+00)
  %i.yv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ye)
  %i.yw = shl <8 x i32> %i.yv, splat (i32 23)
  %i.yx = add <8 x i32> %i.yw, splat (i32 1065353216)
  %i.yy = bitcast <8 x i32> %i.yx to <8 x float>
  %i.yz = fmul fast <8 x float> %i.yu, %i.yy
  %i.za = fadd fast <8 x float> %i.yz, splat (float 1.000000e+00)
  %i.zb = fdiv fast <8 x float> splat (float 2.000000e+00), %i.za
  %i.zc = fadd fast <8 x float> %i.zb, splat (float -1.000000e+00)
  %i.zd = fmul fast <8 x float> %i.zc, %i.tg
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc222:                                        ; preds = %._crit_edge693
  %i.ze = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !53
  %i.zg = insertelement <8 x float> poison, float %i.zf, i64 0
  %i.zh = shufflevector <8 x float> %i.zg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !53
  %i.zk = insertelement <8 x float> poison, float %i.zj, i64 0
  %i.zl = shufflevector <8 x float> %i.zk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zm = fmul fast <8 x float> %i.zh, %i.tg
  %i.zn = fadd fast <8 x float> %i.zm, %i.zl
  %i.zo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zn, <8 x float> zeroinitializer)
  %i.zp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.zo, <8 x float> splat (float 1.000000e+00))
  %i.zq = fmul fast <8 x float> %i.zp, %i.tg
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc222, %.noexc221, %.noexc220, %bb.n, %.noexc219, %bb.m, %._crit_edge693
  %.0.i = phi nsz <8 x float> [ %i.zq, %.noexc222 ], [ %i.ti, %bb.m ], [ %i.tq, %.noexc219 ], [ %i.ua, %bb.n ], [ %i.vg, %.noexc220 ], [ %i.zd, %.noexc221 ], [ %i.tg, %._crit_edge693 ] ; 11 uses
  switch i32 %i.ab, label %.thread547 [
    i32 8, label %.thread
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  store <8 x float> %.0.i, ptr %.0211701, align 32, !tbaa !273
  %i.zr = getelementptr inbounds nuw i8, ptr %.0211701, i64 32
  br label %.thread547

bb.o:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.zs = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.zs, ptr %.0211701, align 16, !tbaa !273
  %i.zt = load i32, ptr %14, align 4, !tbaa !254
  %i.zu = sext i32 %i.zt to i64
  %i.zv = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.zu
  %i.zw = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.zw, ptr %i.zv, align 16, !tbaa !273
  %i.zx = getelementptr inbounds nuw i8, ptr %.0211701, i64 16
  br label %.thread547

bb.p:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <8 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.0211701, align 4, !tbaa !53
  %.sroa.0.4.vec.extract = extractelement <8 x float> %.0.i, i64 1
  %i.zy = load i32, ptr %14, align 4, !tbaa !254  ; 7 uses
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.zz
  store float %.sroa.0.4.vec.extract, ptr %i.aaa, align 4, !tbaa !53
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %i.aab = shl nsw i32 %i.zy, 1
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aac
  store float %.sroa.0.8.vec.extract, ptr %i.aad, align 4, !tbaa !53
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %i.aae = mul nsw i32 %i.zy, 3
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aaf
  store float %.sroa.0.12.vec.extract, ptr %i.aag, align 4, !tbaa !53
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %i.aah = shl nsw i32 %i.zy, 2
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aai
  store float %.sroa.0.16.vec.extract, ptr %i.aaj, align 4, !tbaa !53
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %i.aak = mul nsw i32 %i.zy, 5
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aal
  store float %.sroa.0.20.vec.extract, ptr %i.aam, align 4, !tbaa !53
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %i.aan = mul nsw i32 %i.zy, 6
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aao
  store float %.sroa.0.24.vec.extract, ptr %i.aap, align 4, !tbaa !53
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %i.aaq = mul nsw i32 %i.zy, 7
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds [4 x i8], ptr %.0211701, i64 %i.aar
  store float %.sroa.0.28.vec.extract, ptr %i.aas, align 4, !tbaa !53
  %i.aat = getelementptr inbounds nuw i8, ptr %.0211701, i64 4
  br label %.thread547

.thread547:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.o, %.thread, %bb.p
  %.3214 = phi ptr [ %i.aat, %bb.p ], [ %.0211701, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.zr, %.thread ], [ %i.zx, %bb.o ]
  %i.aau = add nuw nsw i32 %.0210702, 1           ; 2 uses
  %exitcond771.not = icmp eq i32 %i.aau, %i.x
  br i1 %exitcond771.not, label %._crit_edge, label %bb.c, !llvm.loop !450

._crit_edge708:                                   ; preds = %._crit_edge, %.lr.ph707, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge708, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare !callback !451 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
.preheader635.loopexit:                           ; preds = %._crit_edge.us
  %i.yy = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader635

.preheader635:                                    ; preds = %.lr.ph748.split.preheader, %.preheader635.loopexit, %.preheader636
  %.13621.lcssa = phi <8 x float> [ %.8616.lcssa, %.preheader636 ], [ %i.tg, %.preheader635.loopexit ], [ %.8616.lcssa, %.lr.ph748.split.preheader ] ; 3 uses
  %.12606.lcssa = phi <8 x float> [ %.7601.lcssa, %.preheader636 ], [ %i.tp, %.preheader635.loopexit ], [ %.7601.lcssa, %.lr.ph748.split.preheader ]
  %.12.lcssa = phi ptr [ %.7.lcssa, %.preheader636 ], [ %scevgep840, %.preheader635.loopexit ], [ %.7.lcssa, %.lr.ph748.split.preheader ]
  %.2203.lcssa = phi i32 [ %.1202.lcssa, %.preheader636 ], [ %i.yy, %.preheader635.loopexit ], [ %i.sf, %.lr.ph748.split.preheader ] ; 2 uses
  %i.yz = icmp slt i32 %.2203.lcssa, %i.aa
  br i1 %i.yz, label %.lr.ph770, label %._crit_edge771

.lr.ph770:                                        ; preds = %.preheader635
  %i.za = load ptr, ptr %4, align 8, !tbaa !18
  %i.zb = load i32, ptr %i.s, align 4, !tbaa !249
  %i.zc = sext i32 %i.zb to i64
  %i.zd = load i64, ptr %i.t, align 8, !tbaa !49
  %factor.op.mul773 = mul i64 %i.zd, %i.zc
  %i.ze = load i32, ptr %8, align 4, !tbaa !254
  %i.zf = mul nsw i32 %i.ze, %.0210780
  %i.zg = sext i32 %i.zf to i64
  %invariant.gep775 = getelementptr [2 x i8], ptr %i.za, i64 %i.zg
  %i.zh = load i32, ptr %9, align 4, !tbaa !254   ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  br i1 %i.zi, label %.lr.ph770.split.us, label %._crit_edge771

.lr.ph770.split.us:                               ; preds = %.lr.ph770
  %i.zj = load i32, ptr %10, align 4, !tbaa !254
  %i.zk = sext i32 %i.zj to i64
  %i.zl = add nsw i32 %i.zh, -1
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = shl nuw nsw i64 %i.zm, 4
  %i.zo = zext i32 %.2203.lcssa to i64
  br label %.lr.ph764.us

.lr.ph764.us:                                     ; preds = %._crit_edge.us777, %.lr.ph770.split.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %._crit_edge.us777 ], [ %i.zo, %.lr.ph770.split.us ] ; 2 uses
  %.14768.us = phi ptr [ %scevgep844, %._crit_edge.us777 ], [ %.12.lcssa, %.lr.ph770.split.us ] ; 2 uses
  %.15623767.us = phi <8 x float> [ %i.aab, %._crit_edge.us777 ], [ %.13621.lcssa, %.lr.ph770.split.us ]
  %.reass774.us = mul i64 %factor.op.mul773, %indvars.iv846
  %gep776.us = getelementptr i8, ptr %invariant.gep775, i64 %.reass774.us
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph764.us, %bb.n
  %.0763.us = phi i32 [ 0, %.lr.ph764.us ], [ %i.aae, %bb.n ]
  %.0188762.us = phi ptr [ %gep776.us, %.lr.ph764.us ], [ %i.aac, %bb.n ] ; 2 uses
  %.15761.us = phi ptr [ %.14768.us, %.lr.ph764.us ], [ %i.aad, %bb.n ] ; 2 uses
  %.16760.us = phi <8 x float> [ %.15623767.us, %.lr.ph764.us ], [ %i.aab, %bb.n ]
  %i.zp = load i16, ptr %.0188762.us, align 2, !tbaa !331
  %i.zq = zext i16 %i.zp to i32
  %i.zr = shl nuw i32 %i.zq, 16
  %i.zs = insertelement <8 x i32> poison, i32 %i.zr, i64 0
  %i.zt = bitcast <8 x i32> %i.zs to <8 x float>
  %i.zu = shufflevector <8 x float> %i.zt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zv = load <8 x i16>, ptr %.15761.us, align 16, !tbaa !273 ; 2 uses
  %i.zw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.zv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.zy = shufflevector <8 x i16> %i.zw, <8 x i16> %i.zx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zz = bitcast <16 x i16> %i.zy to <8 x float>
  %i.aaa = fmul fast <8 x float> %i.zu, %i.zz
  %i.aab = fadd fast <8 x float> %i.aaa, %.16760.us ; 3 uses
  %i.aac = getelementptr inbounds [2 x i8], ptr %.0188762.us, i64 %i.zk
  %i.aad = getelementptr inbounds nuw i8, ptr %.15761.us, i64 16
  %i.aae = add nuw nsw i32 %.0763.us, 1           ; 2 uses
  %exitcond845.not = icmp eq i32 %i.aae, %i.zh
  br i1 %exitcond845.not, label %._crit_edge.us777, label %bb.n, !llvm.loop !466

._crit_edge.us777:                                ; preds = %bb.n
  %scevgep843 = getelementptr i8, ptr %.14768.us, i64 16
  %scevgep844 = getelementptr i8, ptr %scevgep843, i64 %i.zn
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %i.aaf = trunc nuw i64 %indvars.iv.next847 to i32
  %i.aag = icmp sgt i32 %i.aa, %i.aaf
  br i1 %i.aag, label %.lr.ph764.us, label %._crit_edge771, !llvm.loop !467

._crit_edge771:                                   ; preds = %._crit_edge.us777, %.lr.ph770, %.preheader635
  %.15623.lcssa = phi <8 x float> [ %.13621.lcssa, %.preheader635 ], [ %.13621.lcssa, %.lr.ph770 ], [ %i.aab, %._crit_edge.us777 ]
  %i.aah = fadd fast <8 x float> %.7577.lcssa, %.7589.lcssa
  %i.aai = fadd fast <8 x float> %i.aah, %.12606.lcssa
  %i.aaj = fadd fast <8 x float> %i.aai, %.15623.lcssa ; 10 uses
  %i.aak = load i32, ptr %12, align 4, !tbaa !254
  switch i32 %i.aak, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.o
    i32 2, label %.noexc219
    i32 3, label %bb.p
    i32 4, label %.noexc220
    i32 5, label %.noexc221
    i32 6, label %.noexc222
  ]

bb.o:                                             ; preds = %._crit_edge771
  %i.aal = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aaj, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc219:                                        ; preds = %._crit_edge771
  %i.aam = load ptr, ptr %13, align 8, !tbaa !18
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !53
  %i.aao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aaj)
  %i.aap = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aaj)
  %i.aaq = insertelement <8 x float> poison, float %i.aan, i64 0
  %i.aar = shufflevector <8 x float> %i.aaq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aas = fmul fast <8 x float> %i.aar, %i.aap
  %i.aat = fadd fast <8 x float> %i.aas, %i.aao
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.p:                                             ; preds = %._crit_edge771
  %i.aau = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !53
  %i.aaw = insertelement <8 x float> poison, float %i.aav, i64 0
  %i.aax = shufflevector <8 x float> %i.aaw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 4
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !53
  %i.aba = insertelement <8 x float> poison, float %i.aaz, i64 0
  %i.abb = shufflevector <8 x float> %i.aba, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aaj, <8 x float> nofpclass(nan inf) %i.aax)
  %i.abd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abc, <8 x float> nofpclass(nan inf) %i.abb)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc220:                                        ; preds = %._crit_edge771
  %i.abe = fneg fast <8 x float> %i.aaj
  %i.abf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abe, <8 x float> splat (float f0x42B0C0A5))
  %i.abg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.abh = fmul fast <8 x float> %i.abg, splat (float f0x3FB8AA3B)
  %i.abi = fadd fast <8 x float> %i.abh, splat (float 5.000000e-01) ; 2 uses
  %i.abj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.abi, i32 1) ; 2 uses
  %i.abk = fcmp fast ogt <8 x float> %i.abj, %i.abi
  %i.abl = select <8 x i1> %i.abk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.abm = fsub fast <8 x float> %i.abj, %i.abl   ; 2 uses
  %i.abn = fmul fast <8 x float> %i.abm, splat (float f0x3F317218)
  %i.abo = fsub fast <8 x float> %i.abg, %i.abn   ; 8 uses
  %i.abp = fmul fast <8 x float> %i.abo, %i.abo
  %i.abq = fmul fast <8 x float> %i.abo, splat (float f0x39506967)
  %i.abr = fadd fast <8 x float> %i.abq, splat (float f0x3AB743CE)
  %i.abs = fmul fast <8 x float> %i.abr, %i.abo
  %i.abt = fadd fast <8 x float> %i.abs, splat (float f0x3C088908)
  %i.abu = fmul fast <8 x float> %i.abt, %i.abo
  %i.abv = fadd fast <8 x float> %i.abu, splat (float f0x3D2AA9C1)
  %i.abw = fmul fast <8 x float> %i.abv, %i.abo
  %i.abx = fadd fast <8 x float> %i.abw, splat (float f0x3E2AAAAA)
  %i.aby = fmul fast <8 x float> %i.abx, %i.abo
  %i.abz = fadd fast <8 x float> %i.aby, splat (float 5.000000e-01)
  %i.aca = fmul fast <8 x float> %i.abp, %i.abz
  %i.acb = fadd fast <8 x float> %i.abo, %i.aca
  %i.acc = fadd fast <8 x float> %i.acb, splat (float 1.000000e+00)
  %i.acd = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abm)
  %i.ace = shl <8 x i32> %i.acd, splat (i32 23)
  %i.acf = add <8 x i32> %i.ace, splat (i32 1065353216)
  %i.acg = bitcast <8 x i32> %i.acf to <8 x float>
  %i.ach = fmul fast <8 x float> %i.acc, %i.acg
  %i.aci = fadd fast <8 x float> %i.ach, splat (float 1.000000e+00)
  %i.acj = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aci
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc221:                                        ; preds = %._crit_edge771
  %i.ack = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aaj, <8 x float> splat (float f0x42B0C0A5))
  %i.acl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ack, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acm = fmul fast <8 x float> %i.acl, splat (float f0x3FB8AA3B)
  %i.acn = fadd fast <8 x float> %i.acm, splat (float 5.000000e-01) ; 2 uses
  %i.aco = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.acn, i32 1) ; 2 uses
  %i.acp = fcmp fast ogt <8 x float> %i.aco, %i.acn
  %i.acq = select <8 x i1> %i.acp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.acr = fsub fast <8 x float> %i.aco, %i.acq   ; 2 uses
  %i.acs = fmul fast <8 x float> %i.acr, splat (float f0x3F317218)
  %i.act = fsub fast <8 x float> %i.acl, %i.acs   ; 8 uses
  %i.acu = fmul fast <8 x float> %i.act, %i.act
  %i.acv = fmul fast <8 x float> %i.act, splat (float f0x39506967)
  %i.acw = fadd fast <8 x float> %i.acv, splat (float f0x3AB743CE)
  %i.acx = fmul fast <8 x float> %i.acw, %i.act
  %i.acy = fadd fast <8 x float> %i.acx, splat (float f0x3C088908)
  %i.acz = fmul fast <8 x float> %i.acy, %i.act
  %i.ada = fadd fast <8 x float> %i.acz, splat (float f0x3D2AA9C1)
  %i.adb = fmul fast <8 x float> %i.ada, %i.act
  %i.adc = fadd fast <8 x float> %i.adb, splat (float f0x3E2AAAAA)
  %i.add = fmul fast <8 x float> %i.adc, %i.act
  %i.ade = fadd fast <8 x float> %i.add, splat (float 5.000000e-01)
  %i.adf = fmul fast <8 x float> %i.acu, %i.ade
  %i.adg = fadd fast <8 x float> %i.act, %i.adf
  %i.adh = fadd fast <8 x float> %i.adg, splat (float 1.000000e+00)
  %i.adi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acr)
  %i.adj = shl <8 x i32> %i.adi, splat (i32 23)
  %i.adk = add <8 x i32> %i.adj, splat (i32 1065353216)
  %i.adl = bitcast <8 x i32> %i.adk to <8 x float>
  %i.adm = fmul fast <8 x float> %i.adh, %i.adl
  %i.adn = fadd fast <8 x float> %i.adm, splat (float 1.000000e+00) ; 2 uses
  %i.ado = fcmp fast ole <8 x float> %i.adn, zeroinitializer
  %i.adp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.adq = bitcast <8 x float> %i.adp to <8 x i32>
  %i.adr = bitcast <8 x float> %i.adp to <8 x i32>
  %i.ads = and <8 x i32> %i.adr, splat (i32 -2139095041)
  %i.adt = or disjoint <8 x i32> %i.ads, splat (i32 1056964608)
  %i.adu = bitcast <8 x i32> %i.adt to <8 x float> ; 3 uses
  %i.adv = lshr <8 x i32> %i.adq, splat (i32 23)
  %i.adw = add nsw <8 x i32> %i.adv, splat (i32 -127)
  %i.adx = sitofp fast <8 x i32> %i.adw to <8 x float> ; 2 uses
  %i.ady = fadd fast <8 x float> %i.adx, splat (float 1.000000e+00)
  %i.adz = fcmp fast olt <8 x float> %i.adu, splat (float f0x3F3504F3) ; 2 uses
  %i.aea = select <8 x i1> %i.adz, <8 x float> %i.adu, <8 x float> zeroinitializer
  %i.aeb = fadd fast <8 x float> %i.adu, splat (float -1.000000e+00)
  %i.aec = select fast <8 x i1> %i.adz, <8 x float> %i.adx, <8 x float> %i.ady
  %i.aed = fadd fast <8 x float> %i.aeb, %i.aea   ; 12 uses
  %i.aee = fmul fast <8 x float> %i.aed, %i.aed   ; 2 uses
  %i.aef = fmul fast <8 x float> %i.aed, splat (float f0x3D9021BB)
  %i.aeg = fadd fast <8 x float> %i.aef, splat (float f0xBDEBD1B8)
  %i.aeh = fmul fast <8 x float> %i.aeg, %i.aed
  %i.aei = fadd fast <8 x float> %i.aeh, splat (float f0x3DEF251A)
  %i.aej = fmul fast <8 x float> %i.aei, %i.aed
  %i.aek = fadd fast <8 x float> %i.aej, splat (float f0xBDFE5D4F)
  %i.ael = fmul fast <8 x float> %i.aek, %i.aed
  %i.aem = fadd fast <8 x float> %i.ael, splat (float f0x3E11E9BF)
  %i.aen = fmul fast <8 x float> %i.aem, %i.aed
  %i.aeo = fadd fast <8 x float> %i.aen, splat (float f0xBE2AAE50)
  %i.aep = fmul fast <8 x float> %i.aeo, %i.aed
  %i.aeq = fadd fast <8 x float> %i.aep, splat (float f0x3E4CCEAC)
  %i.aer = fmul fast <8 x float> %i.aeq, %i.aed
  %i.aes = fadd fast <8 x float> %i.aer, splat (float f0xBE7FFFFC)
  %i.aet = fmul fast <8 x float> %i.aes, %i.aed
  %i.aeu = fadd fast <8 x float> %i.aet, splat (float f0x3EAAAAAA)
  %i.aev = fmul fast <8 x float> %i.aee, %i.aed
  %i.aew = fmul fast <8 x float> %i.aev, %i.aeu
  %.neg627 = fmul fast <8 x float> %i.aee, splat (float -5.000000e-01)
  %reass.mul = fmul fast <8 x float> %i.aec, splat (float f0x3F317218)
  %15 = fadd fast <8 x float> %i.aed, %.neg627
  %i.aex = fadd fast <8 x float> %i.aew, %15
  %i.aey = fadd fast <8 x float> %i.aex, %reass.mul
  %.neg = fmul fast <8 x float> %i.aey, splat (float -2.000000e+00)
  %i.aez = select fast <8 x i1> %i.ado, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.afa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aez, <8 x float> splat (float f0x42B0C0A5))
  %i.afb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afa, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afc = fmul fast <8 x float> %i.afb, splat (float f0x3FB8AA3B)
  %i.afd = fadd fast <8 x float> %i.afc, splat (float 5.000000e-01) ; 2 uses
  %i.afe = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.afd, i32 1) ; 2 uses
  %i.aff = fcmp fast ogt <8 x float> %i.afe, %i.afd
  %i.afg = select <8 x i1> %i.aff, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.afh = fsub fast <8 x float> %i.afe, %i.afg   ; 2 uses
  %i.afi = fmul fast <8 x float> %i.afh, splat (float f0x3F317218)
  %i.afj = fsub fast <8 x float> %i.afb, %i.afi   ; 8 uses
  %i.afk = fmul fast <8 x float> %i.afj, %i.afj
  %i.afl = fmul fast <8 x float> %i.afj, splat (float f0x39506967)
  %i.afm = fadd fast <8 x float> %i.afl, splat (float f0x3AB743CE)
  %i.afn = fmul fast <8 x float> %i.afm, %i.afj
  %i.afo = fadd fast <8 x float> %i.afn, splat (float f0x3C088908)
  %i.afp = fmul fast <8 x float> %i.afo, %i.afj
  %i.afq = fadd fast <8 x float> %i.afp, splat (float f0x3D2AA9C1)
  %i.afr = fmul fast <8 x float> %i.afq, %i.afj
  %i.afs = fadd fast <8 x float> %i.afr, splat (float f0x3E2AAAAA)
  %i.aft = fmul fast <8 x float> %i.afs, %i.afj
  %i.afu = fadd fast <8 x float> %i.aft, splat (float 5.000000e-01)
  %i.afv = fmul fast <8 x float> %i.afk, %i.afu
  %i.afw = fadd fast <8 x float> %i.afj, %i.afv
  %i.afx = fadd fast <8 x float> %i.afw, splat (float 1.000000e+00)
  %i.afy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.afh)
  %i.afz = shl <8 x i32> %i.afy, splat (i32 23)
  %i.aga = add <8 x i32> %i.afz, splat (i32 1065353216)
  %i.agb = bitcast <8 x i32> %i.aga to <8 x float>
  %i.agc = fmul fast <8 x float> %i.afx, %i.agb
  %i.agd = fadd fast <8 x float> %i.agc, splat (float 1.000000e+00)
  %i.age = fdiv fast <8 x float> splat (float 2.000000e+00), %i.agd
  %i.agf = fadd fast <8 x float> %i.age, splat (float -1.000000e+00)
  %i.agg = fmul fast <8 x float> %i.agf, %i.aaj
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc222:                                        ; preds = %._crit_edge771
  %i.agh = load ptr, ptr %13, align 8, !tbaa !18  ; 2 uses
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !53
  %i.agj = insertelement <8 x float> poison, float %i.agi, i64 0
  %i.agk = shufflevector <8 x float> %i.agj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !53
  %i.agn = insertelement <8 x float> poison, float %i.agm, i64 0
  %i.ago = shufflevector <8 x float> %i.agn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agp = fmul fast <8 x float> %i.agk, %i.aaj
  %i.agq = fadd fast <8 x float> %i.agp, %i.ago
  %i.agr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agq, <8 x float> zeroinitializer)
  %i.ags = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float 1.000000e+00))
  %i.agt = fmul fast <8 x float> %i.ags, %i.aaj
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc222, %.noexc221, %.noexc220, %bb.p, %.noexc219, %bb.o, %._crit_edge771
  %.0.i = phi nsz <8 x float> [ %i.agt, %.noexc222 ], [ %i.aal, %bb.o ], [ %i.aat, %.noexc219 ], [ %i.abd, %bb.p ], [ %i.acj, %.noexc220 ], [ %i.agg, %.noexc221 ], [ %i.aaj, %._crit_edge771 ] ; 4 uses
  switch i32 %i.ab, label %.thread625 [
    i32 8, label %.thread
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.agu = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.agv = shufflevector <8 x i32> %i.agu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agw = shufflevector <8 x i32> %i.agu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.agx = lshr <4 x i32> %i.agv, splat (i32 16)
  %i.agy = lshr <4 x i32> %i.agw, splat (i32 16)
  %i.agz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.agx, <4 x i32> %i.agy)
  store <8 x i16> %i.agz, ptr %.0211779, align 16, !tbaa !273
  %i.aha = getelementptr inbounds nuw i8, ptr %.0211779, i64 16
  br label %.thread625

bb.q:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ahb = bitcast <8 x float> %.0.i to <8 x i32>
  %i.ahc = shufflevector <8 x i32> %i.ahb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahd = lshr <4 x i32> %i.ahc, splat (i32 16)
  %i.ahe = bitcast <8 x float> %.0.i to <8 x i32>
  %i.ahf = shufflevector <8 x i32> %i.ahe, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahg = lshr <4 x i32> %i.ahf, splat (i32 16)
  %i.ahh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahd, <4 x i32> %i.ahg)
  %i.ahi = bitcast <8 x i16> %i.ahh to <2 x i64>  ; 2 uses
  %i.ahj = extractelement <2 x i64> %i.ahi, i64 0
  store i64 %i.ahj, ptr %.0211779, align 1, !tbaa !273
  %i.ahk = load i32, ptr %14, align 4, !tbaa !254
  %i.ahl = sext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ahl
  %i.ahn = extractelement <2 x i64> %i.ahi, i64 1
  store i64 %i.ahn, ptr %i.ahm, align 1, !tbaa !273
  %i.aho = getelementptr inbounds nuw i8, ptr %.0211779, i64 8
  br label %.thread625

bb.r:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ahp = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.ahq = extractelement <16 x i16> %i.ahp, i64 1
  store i16 %i.ahq, ptr %.0211779, align 2, !tbaa !331
  %i.ahr = extractelement <16 x i16> %i.ahp, i64 3
  %i.ahs = load i32, ptr %14, align 4, !tbaa !254 ; 7 uses
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aht
  store i16 %i.ahr, ptr %i.ahu, align 2, !tbaa !331
  %i.ahv = extractelement <16 x i16> %i.ahp, i64 5
  %i.ahw = shl nsw i32 %i.ahs, 1
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ahx
  store i16 %i.ahv, ptr %i.ahy, align 2, !tbaa !331
  %i.ahz = extractelement <16 x i16> %i.ahp, i64 7
  %i.aia = mul nsw i32 %i.ahs, 3
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aib
  store i16 %i.ahz, ptr %i.aic, align 2, !tbaa !331
  %i.aid = extractelement <16 x i16> %i.ahp, i64 9
  %i.aie = shl nsw i32 %i.ahs, 2
  %i.aif = sext i32 %i.aie to i64
  %i.aig = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aif
  store i16 %i.aid, ptr %i.aig, align 2, !tbaa !331
  %i.aih = extractelement <16 x i16> %i.ahp, i64 11
  %i.aii = mul nsw i32 %i.ahs, 5
  %i.aij = sext i32 %i.aii to i64
  %i.aik = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.aij
  store i16 %i.aih, ptr %i.aik, align 2, !tbaa !331
  %i.ail = extractelement <16 x i16> %i.ahp, i64 13
  %i.aim = mul nsw i32 %i.ahs, 6
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.ain
  store i16 %i.ail, ptr %i.aio, align 2, !tbaa !331
  %i.aip = extractelement <16 x i16> %i.ahp, i64 15
  %i.aiq = mul nsw i32 %i.ahs, 7
  %i.air = sext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds [2 x i8], ptr %.0211779, i64 %i.air
  store i16 %i.aip, ptr %i.ais, align 2, !tbaa !331
  %i.ait = getelementptr inbounds nuw i8, ptr %.0211779, i64 2
  br label %.thread625

.thread625:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.q, %.thread, %bb.r
  %.3214 = phi ptr [ %i.ait, %bb.r ], [ %.0211779, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.aha, %.thread ], [ %i.aho, %bb.q ]
  %i.aiu = add nuw nsw i32 %.0210780, 1           ; 2 uses
  %exitcond849.not = icmp eq i32 %i.aiu, %i.x
  br i1 %exitcond849.not, label %._crit_edge, label %bb.c, !llvm.loop !468

._crit_edge786:                                   ; preds = %._crit_edge, %.lr.ph785, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge786, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_3
