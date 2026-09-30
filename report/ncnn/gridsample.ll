Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample?download=true
inline.NumInlined: 78
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bd:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  br i1 %.not.i.i, label %bb.bf, label %bb.be

_ZN4ncnnL13compute_coordEfiii.exit.i349:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  %i.wg = sitofp fast i32 %i.bj to float
  %i.wh = insertelement <2 x float> poison, float %i.da, i64 0
  %i.wi = insertelement <2 x float> %i.wh, float %i.wg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.be:                                            ; preds = %bb.bd
  %i.wj = sitofp fast i32 %i.bj to float
  %i.wk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.wl = insertelement <2 x float> %i.wk, float %i.wj, i64 1
  %i.wm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wl)
  %i.wn = fsub fast <2 x float> %i.wm, %i.al
  %i.wo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wn)
  %i.wp = fsub fast <2 x float> %i.al, %i.wo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bf:                                            ; preds = %bb.bd
  %i.wq = sitofp fast i32 %i.bj to float
  %i.wr = insertelement <2 x float> poison, float %i.da, i64 0
  %i.ws = insertelement <2 x float> %i.wr, float %i.wq, i64 1
  %i.wt = fadd fast <2 x float> %i.ws, splat (float 5.000000e-01)
  %i.wu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wt)
  %i.wv = fsub fast <2 x float> %i.wu, %i.am
  %i.ww = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wv)
  %i.wx = fsub fast <2 x float> %i.an, %i.ww
  %i.wy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wx, <2 x float> zeroinitializer)
  %i.wz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

_ZN4ncnnL13compute_coordEfiii.exit16.i335:        ; preds = %bb.bf, %bb.be, %_ZN4ncnnL13compute_coordEfiii.exit.i349, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344
  %i.xa = phi <2 x float> [ %i.wf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344 ], [ %i.wp, %bb.be ], [ %i.wz, %bb.bf ], [ %i.wi, %_ZN4ncnnL13compute_coordEfiii.exit.i349 ]
  %i.xb = fptosi <2 x float> %i.xa to <2 x i32>   ; 3 uses
  %i.xc = extractelement <2 x i32> %i.xb, i64 0   ; 2 uses
  %i.xd = extractelement <2 x i32> %i.xb, i64 1   ; 2 uses
  %i.xe = or i32 %i.xd, %i.xc
  %or.cond.i.i.i338 = icmp sgt i32 %i.xe, -1
  %i.xf = icmp sgt <2 x i32> %i.ah, %i.xb         ; 2 uses
  %i.xg = extractelement <2 x i1> %i.xf, i64 0
  %or.cond9.i.i.i339 = select i1 %or.cond.i.i.i338, i1 %i.xg, i1 false
  %i.xh = extractelement <2 x i1> %i.xf, i64 1
  %i.xi = select i1 %or.cond9.i.i.i339, i1 %i.xh, i1 false
  br i1 %i.xi, label %bb.bg, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

bb.bg:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %i.xj = sext i32 %i.xd to i64
  %i.xk = mul i64 %i.ao, %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.xk
  %i.xm = sext i32 %i.xc to i64
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xm
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350: ; preds = %bb.bg, %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %i.xp = phi fast float [ %i.xo, %bb.bg ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i335 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i366 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
    i32 3, label %bb.bh
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.xq = sitofp fast i32 %i.bj to float
  %i.xr = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.xs = insertelement <2 x float> %i.xr, float %i.xq, i64 1
  %i.xt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xs, <2 x float> zeroinitializer)
  %i.xu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.xt, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bh:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

_ZN4ncnnL13compute_coordEfiii.exit.i366:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.xv = sitofp fast i32 %i.bj to float
  %i.xw = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.xx = insertelement <2 x float> %i.xw, float %i.xv, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bi:                                            ; preds = %bb.bh
  %i.xy = sitofp fast i32 %i.bj to float
  %i.xz = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ya = insertelement <2 x float> %i.xz, float %i.xy, i64 1
  %i.yb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ya)
  %i.yc = fsub fast <2 x float> %i.yb, %i.al
  %i.yd = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yc)
  %i.ye = fsub fast <2 x float> %i.al, %i.yd
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bj:                                            ; preds = %bb.bh
  %i.yf = sitofp fast i32 %i.bj to float
  %i.yg = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.yh = insertelement <2 x float> %i.yg, float %i.yf, i64 1
  %i.yi = fadd fast <2 x float> %i.yh, splat (float 5.000000e-01)
  %i.yj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yi)
  %i.yk = fsub fast <2 x float> %i.yj, %i.am
  %i.yl = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yk)
  %i.ym = fsub fast <2 x float> %i.an, %i.yl
  %i.yn = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ym, <2 x float> zeroinitializer)
  %i.yo = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.yn, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

_ZN4ncnnL13compute_coordEfiii.exit16.i352:        ; preds = %bb.bj, %bb.bi, %_ZN4ncnnL13compute_coordEfiii.exit.i366, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
  %i.yp = phi <2 x float> [ %i.xu, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361 ], [ %i.ye, %bb.bi ], [ %i.yo, %bb.bj ], [ %i.xx, %_ZN4ncnnL13compute_coordEfiii.exit.i366 ]
  %i.yq = fptosi <2 x float> %i.yp to <2 x i32>   ; 3 uses
  %i.yr = extractelement <2 x i32> %i.yq, i64 0   ; 2 uses
  %i.ys = extractelement <2 x i32> %i.yq, i64 1   ; 2 uses
  %i.yt = or i32 %i.ys, %i.yr
  %or.cond.i.i.i355 = icmp sgt i32 %i.yt, -1
  %i.yu = icmp sgt <2 x i32> %i.ah, %i.yq         ; 2 uses
  %i.yv = extractelement <2 x i1> %i.yu, i64 0
  %or.cond9.i.i.i356 = select i1 %or.cond.i.i.i355, i1 %i.yv, i1 false
  %i.yw = extractelement <2 x i1> %i.yu, i64 1
  %i.yx = select i1 %or.cond9.i.i.i356, i1 %i.yw, i1 false
  br i1 %i.yx, label %bb.bk, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

bb.bk:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %i.yy = sext i32 %i.ys to i64
  %i.yz = mul i64 %i.ao, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.yz
  %i.zb = sext i32 %i.yr to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.za, i64 %i.zb
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367: ; preds = %bb.bk, %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %i.ze = phi fast float [ %i.zd, %bb.bk ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i352 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i383 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
    i32 3, label %bb.bl
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.zf = sitofp fast i32 %i.bj to float
  %i.zg = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.zf, i64 1
  %i.zi = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.zh, <2 x float> zeroinitializer)
  %i.zj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.zi, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bl:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

_ZN4ncnnL13compute_coordEfiii.exit.i383:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.zk = sitofp fast i32 %i.bj to float
  %i.zl = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %i.zk, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bm:                                            ; preds = %bb.bl
  %i.zn = sitofp fast i32 %i.bj to float
  %i.zo = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.zn, i64 1
  %i.zq = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zp)
  %i.zr = fsub fast <2 x float> %i.zq, %i.al
  %i.zs = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zr)
  %i.zt = fsub fast <2 x float> %i.al, %i.zs
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bn:                                            ; preds = %bb.bl
  %i.zu = sitofp fast i32 %i.bj to float
  %i.zv = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zu, i64 1
  %i.zx = fadd fast <2 x float> %i.zw, splat (float 5.000000e-01)
  %i.zy = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zx)
  %i.zz = fsub fast <2 x float> %i.zy, %i.am
  %i.aaa = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zz)
  %i.aab = fsub fast <2 x float> %i.an, %i.aaa
  %i.aac = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aab, <2 x float> zeroinitializer)
  %i.aad = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aac, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

_ZN4ncnnL13compute_coordEfiii.exit16.i369:        ; preds = %bb.bn, %bb.bm, %_ZN4ncnnL13compute_coordEfiii.exit.i383, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
  %i.aae = phi <2 x float> [ %i.zj, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378 ], [ %i.zt, %bb.bm ], [ %i.aad, %bb.bn ], [ %i.zm, %_ZN4ncnnL13compute_coordEfiii.exit.i383 ]
  %i.aaf = fptosi <2 x float> %i.aae to <2 x i32> ; 3 uses
  %i.aag = extractelement <2 x i32> %i.aaf, i64 0 ; 2 uses
  %i.aah = extractelement <2 x i32> %i.aaf, i64 1 ; 2 uses
  %i.aai = or i32 %i.aah, %i.aag
  %or.cond.i.i.i372 = icmp sgt i32 %i.aai, -1
  %i.aaj = icmp sgt <2 x i32> %i.ah, %i.aaf       ; 2 uses
  %i.aak = extractelement <2 x i1> %i.aaj, i64 0
  %or.cond9.i.i.i373 = select i1 %or.cond.i.i.i372, i1 %i.aak, i1 false
  %i.aal = extractelement <2 x i1> %i.aaj, i64 1
  %i.aam = select i1 %or.cond9.i.i.i373, i1 %i.aal, i1 false
  br i1 %i.aam, label %bb.bo, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

bb.bo:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %i.aan = sext i32 %i.aah to i64
  %i.aao = mul i64 %i.ao, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aao
  %i.aaq = sext i32 %i.aag to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aap, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384: ; preds = %bb.bo, %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %i.aat = phi fast float [ %i.aas, %bb.bo ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i369 ]
  %i.aau = fsub fast float %i.ay, %i.da           ; 5 uses
  %i.aav = fadd fast float %i.aau, 1.000000e+00   ; 3 uses
  %i.aaw = fsub fast float 1.000000e+00, %i.aau   ; 3 uses
  %i.aax = fmul fast float %i.aav, %i.aav
  %9 = insertelement <2 x float> poison, float %i.aav, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul fast <2 x float> %10, <float 7.500000e-01, float 6.000000e+00>
  %12 = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %11 ; 2 uses
  %13 = extractelement <2 x float> %12, i64 0
  %reass.mul.i = fmul fast float %i.aax, %13
  %14 = extractelement <2 x float> %12, i64 1
  %i.aay = fadd fast float %reass.mul.i, %14      ; 5 uses
  %i.aaz = fmul fast float %i.aau, %i.aau
  %i.aba = fmul fast float %i.aau, 1.250000e+00
  %i.abb = fadd fast float %i.aba, -2.250000e+00
  %i.abc = fmul fast float %i.aaz, %i.abb
  %i.abd = fadd fast float %i.abc, 1.000000e+00   ; 5 uses
  %i.abe = fmul fast float %i.aaw, %i.aaw
  %i.abf = fmul fast float %i.aaw, 1.250000e+00
  %i.abg = fadd fast float %i.abf, -2.250000e+00
  %i.abh = fmul fast float %i.abe, %i.abg         ; 2 uses
  %i.abi = fadd fast float %i.abh, 1.000000e+00   ; 4 uses
  %i.abj = fadd fast float %i.abh, %i.abd
  %i.abk = fadd fast float %i.abj, %i.aay         ; 4 uses
  %i.abl = sitofp fast i32 %i.bd to float
  %i.abm = fsub fast float %i.az, %i.abl          ; 5 uses
  %i.abn = fadd fast float %i.abm, 1.000000e+00   ; 3 uses
  %i.abo = fsub fast float 1.000000e+00, %i.abm   ; 3 uses
  %i.abp = fmul fast float %i.abn, %i.abn
  %15 = insertelement <2 x float> poison, float %i.abn, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul fast <2 x float> %16, <float 7.500000e-01, float 6.000000e+00>
  %18 = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %17 ; 2 uses
  %19 = extractelement <2 x float> %18, i64 0
  %reass.mul.i385 = fmul fast float %i.abp, %19
  %20 = extractelement <2 x float> %18, i64 1
  %i.abq = fadd fast float %reass.mul.i385, %20   ; 2 uses
  %i.abr = fmul fast float %i.abm, %i.abm
  %i.abs = fmul fast float %i.abm, 1.250000e+00
  %i.abt = fadd fast float %i.abs, -2.250000e+00
  %i.abu = fmul fast float %i.abr, %i.abt
  %i.abv = fadd fast float %i.abu, 1.000000e+00   ; 2 uses
  %i.abw = fmul fast float %i.abo, %i.abo
  %i.abx = fmul fast float %i.abo, 1.250000e+00
  %i.aby = fadd fast float %i.abx, -2.250000e+00
  %i.abz = fmul fast float %i.abw, %i.aby         ; 2 uses
  %i.aca = fadd fast float %i.abz, 1.000000e+00
  %i.acb = fadd fast float %i.abz, %i.abv
  %i.acc = fadd fast float %i.acb, %i.abq
  %i.acd = fmul fast float %i.cz, %i.aay
  %i.ace = fmul fast float %i.ep, %i.abd
  %i.acf = fadd fast float %i.ace, %i.acd
  %i.acg = fmul fast float %i.gf, %i.abi
  %i.ach = fadd fast float %i.acf, %i.acg
  %i.aci = fmul fast float %i.abk, %i.hv
  %i.acj = fsub fast float %i.ach, %i.aci
  %i.ack = fmul fast float %i.jk, %i.aay
  %i.acl = fmul fast float %i.kz, %i.abd
  %i.acm = fadd fast float %i.acl, %i.ack
  %i.acn = fmul fast float %i.mo, %i.abi
  %i.aco = fadd fast float %i.acm, %i.acn
  %i.acp = fmul fast float %i.abk, %i.od
  %i.acq = fsub fast float %i.aco, %i.acp
  %i.acr = fmul fast float %i.ps, %i.aay
  %i.acs = fmul fast float %i.rh, %i.abd
  %i.act = fadd fast float %i.acs, %i.acr
  %i.acu = fmul fast float %i.sw, %i.abi
  %i.acv = fadd fast float %i.act, %i.acu
  %i.acw = fmul fast float %i.abk, %i.ul
  %i.acx = fsub fast float %i.acv, %i.acw
  %i.acy = fmul fast float %i.wa, %i.aay
  %i.acz = fmul fast float %i.xp, %i.abd
  %i.ada = fadd fast float %i.acz, %i.acy
  %i.adb = fmul fast float %i.ze, %i.abi
  %i.adc = fadd fast float %i.ada, %i.adb
  %i.add = fmul fast float %i.abk, %i.aat
  %i.ade = fsub fast float %i.adc, %i.add
  %i.adf = fmul fast float %i.acj, %i.abq
  %i.adg = fmul fast float %i.acq, %i.abv
  %i.adh = fadd fast float %i.adg, %i.adf
  %i.adi = fmul fast float %i.acx, %i.aca
  %i.adj = fadd fast float %i.adh, %i.adi
  %i.adk = fmul fast float %i.acc, %i.ade
  %i.adl = fsub fast float %i.adj, %i.adk
  store float %i.adl, ptr %.1101581, align 4, !tbaa !43
  %i.adm = getelementptr inbounds nuw i8, ptr %.1101581, i64 4 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.199582, i64 4 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.1583, i64 4 ; 2 uses
  %i.adp = add nuw nsw i32 %.095584, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.adp, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !162

._crit_edge593.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc109.lr.ph, %.noexc109.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge593.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not313 = icmp sgt i32 %i.k, %i.j
  br i1 %.not313, label %._crit_edge.split, label %.noexc122.lr.ph

.noexc122.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !178 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38, !noalias !178 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !41, !noalias !178
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !178
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !178 ; 2 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.o to i64
  %i.y = load ptr, ptr %4, align 8, !tbaa !41, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !179
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39, !noalias !179
  %factor.op.mul315 = mul i64 %i.aa, %i.ac
  %i.ad = load ptr, ptr %5, align 8, !tbaa !41, !noalias !180 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !181 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !181 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = shl i64 %i.ag, 1
  %i.al = mul i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = mul i64 %i.v, %i.w                      ; 9 uses
  %i.aq = mul i64 %i.ap, %i.x                     ; 8 uses
  br i1 %i.ao, label %.noexc122.lr.ph.split, label %._crit_edge.split

.noexc122.lr.ph.split:                            ; preds = %.noexc122.lr.ph
  %i.ar = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.noexc122.lr.ph.split.split, label %._crit_edge.split

.noexc122.lr.ph.split.split:                      ; preds = %.noexc122.lr.ph.split
  %i.at = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.noexc122.us.preheader, label %._crit_edge.split

.noexc122.us.preheader:                           ; preds = %.noexc122.lr.ph.split.split
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %.noexc122.us

.noexc122.us:                                     ; preds = %.noexc122.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us
  %indvars.iv = phi i64 [ %i.av, %.noexc122.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us ; 8 uses
  %.reass316.us = mul i64 %factor.op.mul315, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass316.us
  br label %.preheader284.us.us

.preheader284.us.us:                              ; preds = %._crit_edge298.split.us.us.us, %.noexc122.us
  %.099310.us.us = phi ptr [ %i.ay, %.noexc122.us ], [ %i.gq, %._crit_edge298.split.us.us.us ]
  %.0100309.us.us = phi ptr [ %i.ad, %.noexc122.us ], [ %i.gr, %._crit_edge298.split.us.us.us ]
  %.0103308.us.us = phi ptr [ %i.aj, %.noexc122.us ], [ %i.gs, %._crit_edge298.split.us.us.us ]
  %.0106307.us.us = phi ptr [ %i.am, %.noexc122.us ], [ %i.gt, %._crit_edge298.split.us.us.us ]
  %.0109306.us.us = phi i32 [ 0, %.noexc122.us ], [ %i.gw, %._crit_edge298.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader284.us.us
  %.1297.us.us.us = phi ptr [ %.099310.us.us, %.preheader284.us.us ], [ %i.gq, %._crit_edge.us.us.us ]
  %.1101296.us.us.us = phi ptr [ %.0100309.us.us, %.preheader284.us.us ], [ %i.gr, %._crit_edge.us.us.us ]
  %.1104295.us.us.us = phi ptr [ %.0103308.us.us, %.preheader284.us.us ], [ %i.gs, %._crit_edge.us.us.us ]
  %.1107294.us.us.us = phi ptr [ %.0106307.us.us, %.preheader284.us.us ], [ %i.gt, %._crit_edge.us.us.us ]
  %.0111293.us.us.us = phi i32 [ 0, %.preheader284.us.us ], [ %i.gv, %._crit_edge.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us, %.preheader.us.us.us
  %.2289.us.us.us = phi ptr [ %.1297.us.us.us, %.preheader.us.us.us ], [ %i.gq, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2102288.us.us.us = phi ptr [ %.1101296.us.us.us, %.preheader.us.us.us ], [ %i.gr, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2105287.us.us.us = phi ptr [ %.1104295.us.us.us, %.preheader.us.us.us ], [ %i.gs, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2108286.us.us.us = phi ptr [ %.1107294.us.us.us, %.preheader.us.us.us ], [ %i.gt, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.0110285.us.us.us = phi i32 [ 0, %.preheader.us.us.us ], [ %i.gu, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ]
  %i.az = load float, ptr %.2102288.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.ba = load float, ptr %.2105287.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bb = load float, ptr %.2108286.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.az)
  %i.bd = fptosi float %i.bc to i32               ; 9 uses
  %i.be = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.ba)
  %i.bf = fptosi float %i.be to i32               ; 9 uses
  %i.bg = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bb)
  %i.bh = fptosi float %i.bg to i32               ; 11 uses
  %i.bi = add nsw i32 %i.bd, 1                    ; 7 uses
  %i.bj = add nsw i32 %i.bf, 1                    ; 7 uses
  %i.bk = add nsw i32 %i.bh, 1                    ; 9 uses
  %i.bl = or i32 %i.bf, %i.bd                     ; 2 uses
  %i.bm = or i32 %i.bl, %i.bh
  %or.cond3.i.i.us.us.us = icmp sgt i32 %i.bm, -1
  %i.bn = icmp sgt i32 %i.m, %i.bd                ; 4 uses
end_hunk_0
