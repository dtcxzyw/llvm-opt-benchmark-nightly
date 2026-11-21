Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_kernels?download=true
inline.NumInlined: 335
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 33
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL21conv32fC8_3x3_stridedEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ih = add i32 %i.fl, 1                        ; 2 uses
  %i.ii = ashr i32 %i.ih, 3
  %i.ij = mul nsw i32 %i.ii, %i.da
  %i.ik = and i32 %i.ih, 7
  %i.il = or disjoint i32 %i.ij, %i.ik
  %i.im = sext i32 %i.il to i64
  %exitcond.not.i.i.i.i.1 = icmp eq i32 %.sroa.speculated215.i.i.i, 2
  %i.in = add i32 %i.fl, 2                        ; 2 uses
  %i.io = ashr i32 %i.in, 3
  %i.ip = mul nsw i32 %i.io, %i.da
  %i.iq = and i32 %i.in, 7
  %i.ir = or disjoint i32 %i.ip, %i.iq
  %i.is = sext i32 %i.ir to i64
  %exitcond.not.i.i.i.i.2 = icmp eq i32 %.sroa.speculated215.i.i.i, 3
  %i.it = add i32 %i.fl, 3                        ; 2 uses
  %i.iu = ashr i32 %i.it, 3
  %i.iv = mul nsw i32 %i.iu, %i.da
  %i.iw = and i32 %i.it, 7
  %i.ix = or disjoint i32 %i.iv, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %.sroa.speculated215.i.i.i, 4
  %i.iz = add i32 %i.fl, 4                        ; 2 uses
  %i.ja = ashr i32 %i.iz, 3
  %i.jb = mul nsw i32 %i.ja, %i.da
  %i.jc = and i32 %i.iz, 7
  %i.jd = or disjoint i32 %i.jb, %i.jc
  %i.je = sext i32 %i.jd to i64
  %exitcond.not.i.i.i.i.4 = icmp eq i32 %.sroa.speculated215.i.i.i, 5
  %i.jf = add i32 %i.fl, 5                        ; 2 uses
  %i.jg = ashr i32 %i.jf, 3
  %i.jh = mul nsw i32 %i.jg, %i.da
  %i.ji = and i32 %i.jf, 7
  %i.jj = or disjoint i32 %i.jh, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %exitcond.not.i.i.i.i.5 = icmp eq i32 %.sroa.speculated215.i.i.i, 6
  %i.jl = add i32 %i.fl, 6                        ; 2 uses
  %i.jm = ashr i32 %i.jl, 3
  %i.jn = mul nsw i32 %i.jm, %i.da
  %i.jo = and i32 %i.jl, 7
  %i.jp = or disjoint i32 %i.jn, %i.jo
  %i.jq = sext i32 %i.jp to i64
  %exitcond.not.i.i.i.i.6 = icmp eq i32 %.sroa.speculated215.i.i.i, 7
  %i.jr = add i32 %i.fl, 7                        ; 2 uses
  %i.js = ashr i32 %i.jr, 3
  %i.jt = mul nsw i32 %i.js, %i.da
  %i.ju = and i32 %i.jr, 7
  %i.jv = or disjoint i32 %i.jt, %i.ju
  %i.jw = sext i32 %i.jv to i64
  %i.jx = ashr i32 %i.fl, 3
  %i.jy = mul nsw i32 %i.jx, %i.da
  %i.jz = and i32 %i.fj, 7
  %i.ka = or disjoint i32 %i.jy, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %exitcond.not.i209.i.i.i = icmp eq i32 %.sroa.speculated215.i.i.i, 1
  %i.kc = add i32 %i.fl, 1                        ; 2 uses
  %i.kd = ashr i32 %i.kc, 3
  %i.ke = mul nsw i32 %i.kd, %i.da
  %i.kf = and i32 %i.kc, 7
  %i.kg = or disjoint i32 %i.ke, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %exitcond.not.i209.i.i.i.1 = icmp eq i32 %.sroa.speculated215.i.i.i, 2
  %i.ki = add i32 %i.fl, 2                        ; 2 uses
  %i.kj = ashr i32 %i.ki, 3
  %i.kk = mul nsw i32 %i.kj, %i.da
  %i.kl = and i32 %i.ki, 7
  %i.km = or disjoint i32 %i.kk, %i.kl
  %i.kn = sext i32 %i.km to i64
  %exitcond.not.i209.i.i.i.2 = icmp eq i32 %.sroa.speculated215.i.i.i, 3
  %i.ko = add i32 %i.fl, 3                        ; 2 uses
  %i.kp = ashr i32 %i.ko, 3
  %i.kq = mul nsw i32 %i.kp, %i.da
  %i.kr = and i32 %i.ko, 7
  %i.ks = or disjoint i32 %i.kq, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %exitcond.not.i209.i.i.i.3 = icmp eq i32 %.sroa.speculated215.i.i.i, 4
  %i.ku = add i32 %i.fl, 4                        ; 2 uses
  %i.kv = ashr i32 %i.ku, 3
  %i.kw = mul nsw i32 %i.kv, %i.da
  %i.kx = and i32 %i.ku, 7
  %i.ky = or disjoint i32 %i.kw, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %exitcond.not.i209.i.i.i.4 = icmp eq i32 %.sroa.speculated215.i.i.i, 5
  %i.la = add i32 %i.fl, 5                        ; 2 uses
  %i.lb = ashr i32 %i.la, 3
  %i.lc = mul nsw i32 %i.lb, %i.da
  %i.ld = and i32 %i.la, 7
  %i.le = or disjoint i32 %i.lc, %i.ld
  %i.lf = sext i32 %i.le to i64
  %exitcond.not.i209.i.i.i.5 = icmp eq i32 %.sroa.speculated215.i.i.i, 6
  %i.lg = add i32 %i.fl, 6                        ; 2 uses
  %i.lh = ashr i32 %i.lg, 3
  %i.li = mul nsw i32 %i.lh, %i.da
  %i.lj = and i32 %i.lg, 7
  %i.lk = or disjoint i32 %i.li, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %exitcond.not.i209.i.i.i.6 = icmp eq i32 %.sroa.speculated215.i.i.i, 7
  %i.lm = add i32 %i.fl, 7                        ; 2 uses
  %i.ln = ashr i32 %i.lm, 3
  %i.lo = mul nsw i32 %i.ln, %i.da
  %i.lp = and i32 %i.lm, 7
  %i.lq = or disjoint i32 %i.lo, %i.lp
  %i.lr = sext i32 %i.lq to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.0.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ]
  %.sroa.5.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.5.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 2 uses
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.7.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 3 uses
  %.sroa.9.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.9.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 4 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.11.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 5 uses
  %.sroa.13.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.13.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 6 uses
  %.sroa.15.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.15.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 7 uses
  %.sroa.17.0 = phi float [ 0.000000e+00, %.lr.ph.i.i.i ], [ %.sroa.17.1, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 8 uses
  %.0170233.i.i.i = phi i32 [ %i.fn, %.lr.ph.i.i.i ], [ %i.zm, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 3 uses
  %.0171232.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i ], [ %i.zp, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 10 uses
  %.0172231.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i ], [ %i.zn, %_ZN2cv3dnn12cpu_baselineL16scatterScalarOutEbiiiiiPfPKf.exit.i.i.i ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !tbaa !59
  %i.ls = sdiv i32 %.0170233.i.i.i, %i.bf         ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.bf                ; 0 uses
  %.recomposed140 = srem i32 %.0170233.i.i.i, %i.bf
  %i.lu = mul nsw i32 %i.ls, %i.ck
  %i.lv = sub nsw i32 %i.lu, %i.co
  %i.lw = mul nsw i32 %.recomposed140, %i.cm
  %i.lx = sub nsw i32 %i.lw, %i.cq
  %.not.i.i.i.i = icmp ne ptr %.0171232.i.i.i, null ; 2 uses
  %or.cond.i.i.i.i = and i1 %i.gz, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x
  %i.ly = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.ig
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !59 ; 8 uses
  br i1 %exitcond.not.i.i.i.i, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ma = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.im
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !59 ; 7 uses
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.mc = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.is
  %i.md = load float, ptr %i.mc, align 4, !tbaa !59 ; 6 uses
  br i1 %exitcond.not.i.i.i.i.2, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.me = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.iy
  %i.mf = load float, ptr %i.me, align 4, !tbaa !59 ; 5 uses
  br i1 %exitcond.not.i.i.i.i.3, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.mg = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.je
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !59 ; 4 uses
  br i1 %exitcond.not.i.i.i.i.4, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.5

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.mi = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.jk
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !59 ; 3 uses
  br i1 %exitcond.not.i.i.i.i.5, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.6

.lr.ph.i.i.i.i.6:                                 ; preds = %.lr.ph.i.i.i.i.5
  %i.mk = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.jq
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !59 ; 2 uses
  br i1 %exitcond.not.i.i.i.i.6, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, label %.lr.ph.i.i.i.i.7

.lr.ph.i.i.i.i.7:                                 ; preds = %.lr.ph.i.i.i.i.6
  %i.mm = getelementptr inbounds [4 x i8], ptr %.0171232.i.i.i, i64 %i.jw
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !59
  br label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i

_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %.lr.ph.i.i.i.i.7, %bb.x
  %.sroa.0.1 = phi float [ %.sroa.0.0, %bb.x ], [ %i.lz, %.lr.ph.i.i.i.i.7 ], [ %i.lz, %.lr.ph.i.i.i.i.6 ], [ %i.lz, %.lr.ph.i.i.i.i.5 ], [ %i.lz, %.lr.ph.i.i.i.i.4 ], [ %i.lz, %.lr.ph.i.i.i.i.3 ], [ %i.lz, %.lr.ph.i.i.i.i.2 ], [ %i.lz, %.lr.ph.i.i.i.i.1 ], [ %i.lz, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.5.1 = phi float [ %.sroa.5.0, %bb.x ], [ %.sroa.5.0, %.lr.ph.i.i.i.i ], [ %i.mb, %.lr.ph.i.i.i.i.1 ], [ %i.mb, %.lr.ph.i.i.i.i.2 ], [ %i.mb, %.lr.ph.i.i.i.i.3 ], [ %i.mb, %.lr.ph.i.i.i.i.4 ], [ %i.mb, %.lr.ph.i.i.i.i.5 ], [ %i.mb, %.lr.ph.i.i.i.i.6 ], [ %i.mb, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.7.1 = phi float [ %.sroa.7.0, %bb.x ], [ %.sroa.7.0, %.lr.ph.i.i.i.i ], [ %.sroa.7.0, %.lr.ph.i.i.i.i.1 ], [ %i.md, %.lr.ph.i.i.i.i.2 ], [ %i.md, %.lr.ph.i.i.i.i.3 ], [ %i.md, %.lr.ph.i.i.i.i.4 ], [ %i.md, %.lr.ph.i.i.i.i.5 ], [ %i.md, %.lr.ph.i.i.i.i.6 ], [ %i.md, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.9.1 = phi float [ %.sroa.9.0, %bb.x ], [ %.sroa.9.0, %.lr.ph.i.i.i.i ], [ %.sroa.9.0, %.lr.ph.i.i.i.i.1 ], [ %.sroa.9.0, %.lr.ph.i.i.i.i.2 ], [ %i.mf, %.lr.ph.i.i.i.i.3 ], [ %i.mf, %.lr.ph.i.i.i.i.4 ], [ %i.mf, %.lr.ph.i.i.i.i.5 ], [ %i.mf, %.lr.ph.i.i.i.i.6 ], [ %i.mf, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.11.1 = phi float [ %.sroa.11.0, %bb.x ], [ %.sroa.11.0, %.lr.ph.i.i.i.i ], [ %.sroa.11.0, %.lr.ph.i.i.i.i.1 ], [ %.sroa.11.0, %.lr.ph.i.i.i.i.2 ], [ %.sroa.11.0, %.lr.ph.i.i.i.i.3 ], [ %i.mh, %.lr.ph.i.i.i.i.4 ], [ %i.mh, %.lr.ph.i.i.i.i.5 ], [ %i.mh, %.lr.ph.i.i.i.i.6 ], [ %i.mh, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.13.1 = phi float [ %.sroa.13.0, %bb.x ], [ %.sroa.13.0, %.lr.ph.i.i.i.i ], [ %.sroa.13.0, %.lr.ph.i.i.i.i.1 ], [ %.sroa.13.0, %.lr.ph.i.i.i.i.2 ], [ %.sroa.13.0, %.lr.ph.i.i.i.i.3 ], [ %.sroa.13.0, %.lr.ph.i.i.i.i.4 ], [ %i.mj, %.lr.ph.i.i.i.i.5 ], [ %i.mj, %.lr.ph.i.i.i.i.6 ], [ %i.mj, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.15.1 = phi float [ %.sroa.15.0, %bb.x ], [ %.sroa.15.0, %.lr.ph.i.i.i.i ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.1 ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.2 ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.3 ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.4 ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.5 ], [ %i.ml, %.lr.ph.i.i.i.i.6 ], [ %i.ml, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  %.sroa.17.1 = phi float [ %.sroa.17.0, %bb.x ], [ %.sroa.17.0, %.lr.ph.i.i.i.i ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.1 ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.2 ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.3 ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.4 ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.5 ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.6 ], [ %i.mn, %.lr.ph.i.i.i.i.7 ] ; 2 uses
  br i1 %i.ha, label %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.split.us.i.i, label %.split.us.i.i

_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.split.us.i.i: ; preds = %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i, %.loopexit222.i.us.i.i
  %i.mo = phi float [ %i.wj, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mp = phi float [ %i.wk, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mq = phi float [ %i.wl, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mr = phi float [ %i.wm, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.ms = phi float [ %i.wn, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mt = phi float [ %i.wo, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mu = phi float [ %i.wp, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %i.mv = phi float [ %i.wq, %.loopexit222.i.us.i.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 2 uses
  %indvars.iv247.i.us.i.i = phi i64 [ %indvars.iv.next248.i.us.i.i, %.loopexit222.i.us.i.i ], [ 0, %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.i.i ] ; 3 uses
  %i.mw = trunc nuw nsw i64 %indvars.iv247.i.us.i.i to i32
  %i.mx = add nsw i32 %i.lv, %i.mw                ; 2 uses
  %.not191.i.us.i.i = icmp ult i32 %i.mx, %i.bw
  br i1 %.not191.i.us.i.i, label %.preheader.i.us.i.i, label %.loopexit222.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %_ZN2cv3dnn12cpu_baselineL18loadScalarResidualEPKfiiiiiPf.exit.i.split.us.i.i
  %i.my = mul nuw nsw i64 %indvars.iv247.i.us.i.i, 3
  %i.mz = mul nsw i32 %i.mx, %i.ci
  br label %.preheader.split.us.i.us.i.i

.preheader.split.us.i.us.i.i:                     ; preds = %..loopexit_crit_edge.us.i.us.i.i, %.preheader.i.us.i.i
  %i.na = phi float [ %i.mo, %.preheader.i.us.i.i ], [ %i.wb, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.nb = phi float [ %i.mp, %.preheader.i.us.i.i ], [ %i.wc, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.nc = phi float [ %i.mq, %.preheader.i.us.i.i ], [ %i.wd, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.nd = phi float [ %i.mr, %.preheader.i.us.i.i ], [ %i.we, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.ne = phi float [ %i.ms, %.preheader.i.us.i.i ], [ %i.wf, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.nf = phi float [ %i.mt, %.preheader.i.us.i.i ], [ %i.wg, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.ng = phi float [ %i.mu, %.preheader.i.us.i.i ], [ %i.wh, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %i.nh = phi float [ %i.mv, %.preheader.i.us.i.i ], [ %i.wi, %..loopexit_crit_edge.us.i.us.i.i ] ; 2 uses
  %indvars.iv243.i.us.i.i = phi i64 [ 0, %.preheader.i.us.i.i ], [ %indvars.iv.next244.i.us.i.i, %..loopexit_crit_edge.us.i.us.i.i ] ; 3 uses
  %i.ni = trunc nuw nsw i64 %indvars.iv243.i.us.i.i to i32
  %i.nj = add nsw i32 %i.lx, %i.ni                ; 2 uses
  %.not192.us.i.us.i.i = icmp ult i32 %i.nj, %i.ci
  br i1 %.not192.us.i.us.i.i, label %.lr.ph.us.i.us.i.i, label %..loopexit_crit_edge.us.i.us.i.i

.lr.ph.us.i.us.i.i:                               ; preds = %.preheader.split.us.i.us.i.i
  %i.nk = add nuw nsw i64 %indvars.iv243.i.us.i.i, %i.my
  %i.nl = trunc nuw nsw i64 %i.nk to i32
  %i.nm = mul i32 %i.ds, %i.nl
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.nn
  %i.np = add nsw i32 %i.nj, %i.mz
  %i.nq = shl nsw i32 %i.np, 3
  %i.nr = sext i32 %i.nq to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.us.i.us.i.i
  %i.ns = phi float [ %i.na, %.lr.ph.us.i.us.i.i ], [ %i.vz, %bb.y ]
  %i.nt = phi float [ %i.nb, %.lr.ph.us.i.us.i.i ], [ %i.vw, %bb.y ]
  %i.nu = phi float [ %i.nc, %.lr.ph.us.i.us.i.i ], [ %i.vt, %bb.y ]
  %i.nv = phi float [ %i.nd, %.lr.ph.us.i.us.i.i ], [ %i.vq, %bb.y ]
  %i.nw = phi float [ %i.ne, %.lr.ph.us.i.us.i.i ], [ %i.vn, %bb.y ]
  %i.nx = phi float [ %i.nf, %.lr.ph.us.i.us.i.i ], [ %i.vk, %bb.y ]
  %i.ny = phi float [ %i.ng, %.lr.ph.us.i.us.i.i ], [ %i.vh, %bb.y ]
  %i.nz = phi float [ %i.nh, %.lr.ph.us.i.us.i.i ], [ %i.ve, %bb.y ]
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.us.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.y ] ; 2 uses
  %.0166226.us.i.us.i.i = phi ptr [ %i.gc, %.lr.ph.us.i.us.i.i ], [ %i.wa, %bb.y ] ; 2 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %.0166226.us.i.us.i.i, i64 %i.nr ; 8 uses
  %.idx.i.us.i.i = shl nuw nsw i64 %indvars.iv.i.us.i.i, 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 %.idx.i.us.i.i ; 64 uses
  %i.oc = load float, ptr %i.oa, align 4, !tbaa !59 ; 8 uses
  %i.od = load float, ptr %i.ob, align 4, !tbaa !59
  %i.oe = call float @llvm.fmuladd.f32(float %i.oc, float %i.od, float %i.nz) ; 2 uses
  store float %i.oe, ptr %i.i, align 16, !tbaa !59
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.og = load float, ptr %i.of, align 4, !tbaa !59
  %i.oh = call float @llvm.fmuladd.f32(float %i.oc, float %i.og, float %i.ny) ; 2 uses
  store float %i.oh, ptr %i.dx, align 4, !tbaa !59
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !59
  %i.ok = call float @llvm.fmuladd.f32(float %i.oc, float %i.oj, float %i.nx) ; 2 uses
  store float %i.ok, ptr %i.dy, align 8, !tbaa !59
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.om = load float, ptr %i.ol, align 4, !tbaa !59
  %i.on = call float @llvm.fmuladd.f32(float %i.oc, float %i.om, float %i.nw) ; 2 uses
  store float %i.on, ptr %i.dz, align 4, !tbaa !59
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.op = load float, ptr %i.oo, align 4, !tbaa !59
  %i.oq = call float @llvm.fmuladd.f32(float %i.oc, float %i.op, float %i.nv) ; 2 uses
  store float %i.oq, ptr %i.ea, align 16, !tbaa !59
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  %i.os = load float, ptr %i.or, align 4, !tbaa !59
  %i.ot = call float @llvm.fmuladd.f32(float %i.oc, float %i.os, float %i.nu) ; 2 uses
  store float %i.ot, ptr %i.eb, align 4, !tbaa !59
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !59
  %i.ow = call float @llvm.fmuladd.f32(float %i.oc, float %i.ov, float %i.nt) ; 2 uses
  store float %i.ow, ptr %i.ec, align 8, !tbaa !59
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !59
  %i.oz = call float @llvm.fmuladd.f32(float %i.oc, float %i.oy, float %i.ns) ; 2 uses
  store float %i.oz, ptr %i.ed, align 4, !tbaa !59
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !59 ; 8 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !59
  %i.pe = call float @llvm.fmuladd.f32(float %i.pb, float %i.pd, float %i.oe) ; 2 uses
  store float %i.pe, ptr %i.i, align 16, !tbaa !59
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ob, i64 36
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !59
  %i.ph = call float @llvm.fmuladd.f32(float %i.pb, float %i.pg, float %i.oh) ; 2 uses
  store float %i.ph, ptr %i.dx, align 4, !tbaa !59
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !59
  %i.pk = call float @llvm.fmuladd.f32(float %i.pb, float %i.pj, float %i.ok) ; 2 uses
  store float %i.pk, ptr %i.dy, align 8, !tbaa !59
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ob, i64 44
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !59
  %i.pn = call float @llvm.fmuladd.f32(float %i.pb, float %i.pm, float %i.on) ; 2 uses
  store float %i.pn, ptr %i.dz, align 4, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %i.ob, i64 48
  %i.pp = load float, ptr %i.po, align 4, !tbaa !59
  %i.pq = call float @llvm.fmuladd.f32(float %i.pb, float %i.pp, float %i.oq) ; 2 uses
  store float %i.pq, ptr %i.ea, align 16, !tbaa !59
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ob, i64 52
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !59
  %i.pt = call float @llvm.fmuladd.f32(float %i.pb, float %i.ps, float %i.ot) ; 2 uses
  store float %i.pt, ptr %i.eb, align 4, !tbaa !59
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ob, i64 56
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !59
  %i.pw = call float @llvm.fmuladd.f32(float %i.pb, float %i.pv, float %i.ow) ; 2 uses
  store float %i.pw, ptr %i.ec, align 8, !tbaa !59
  %i.px = getelementptr inbounds nuw i8, ptr %i.ob, i64 60
  %i.py = load float, ptr %i.px, align 4, !tbaa !59
  %i.pz = call float @llvm.fmuladd.f32(float %i.pb, float %i.py, float %i.oz) ; 2 uses
  store float %i.pz, ptr %i.ed, align 4, !tbaa !59
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !59 ; 8 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !59
  %i.qe = call float @llvm.fmuladd.f32(float %i.qb, float %i.qd, float %i.pe) ; 2 uses
  store float %i.qe, ptr %i.i, align 16, !tbaa !59
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ob, i64 68
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !59
  %i.qh = call float @llvm.fmuladd.f32(float %i.qb, float %i.qg, float %i.ph) ; 2 uses
  store float %i.qh, ptr %i.dx, align 4, !tbaa !59
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ob, i64 72
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !59
  %i.qk = call float @llvm.fmuladd.f32(float %i.qb, float %i.qj, float %i.pk) ; 2 uses
  store float %i.qk, ptr %i.dy, align 8, !tbaa !59
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ob, i64 76
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !59
  %i.qn = call float @llvm.fmuladd.f32(float %i.qb, float %i.qm, float %i.pn) ; 2 uses
  store float %i.qn, ptr %i.dz, align 4, !tbaa !59
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ob, i64 80
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !59
  %i.qq = call float @llvm.fmuladd.f32(float %i.qb, float %i.qp, float %i.pq) ; 2 uses
  store float %i.qq, ptr %i.ea, align 16, !tbaa !59
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ob, i64 84
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !59
  %i.qt = call float @llvm.fmuladd.f32(float %i.qb, float %i.qs, float %i.pt) ; 2 uses
  store float %i.qt, ptr %i.eb, align 4, !tbaa !59
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ob, i64 88
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !59
  %i.qw = call float @llvm.fmuladd.f32(float %i.qb, float %i.qv, float %i.pw) ; 2 uses
  store float %i.qw, ptr %i.ec, align 8, !tbaa !59
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ob, i64 92
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !59
  %i.qz = call float @llvm.fmuladd.f32(float %i.qb, float %i.qy, float %i.pz) ; 2 uses
  store float %i.qz, ptr %i.ed, align 4, !tbaa !59
  %i.ra = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !59 ; 8 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ob, i64 96
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !59
  %i.re = call float @llvm.fmuladd.f32(float %i.rb, float %i.rd, float %i.qe) ; 2 uses
  store float %i.re, ptr %i.i, align 16, !tbaa !59
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ob, i64 100
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !59
  %i.rh = call float @llvm.fmuladd.f32(float %i.rb, float %i.rg, float %i.qh) ; 2 uses
  store float %i.rh, ptr %i.dx, align 4, !tbaa !59
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !59
  %i.rk = call float @llvm.fmuladd.f32(float %i.rb, float %i.rj, float %i.qk) ; 2 uses
  store float %i.rk, ptr %i.dy, align 8, !tbaa !59
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ob, i64 108
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !59
  %i.rn = call float @llvm.fmuladd.f32(float %i.rb, float %i.rm, float %i.qn) ; 2 uses
  store float %i.rn, ptr %i.dz, align 4, !tbaa !59
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ob, i64 112
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !59
  %i.rq = call float @llvm.fmuladd.f32(float %i.rb, float %i.rp, float %i.qq) ; 2 uses
  store float %i.rq, ptr %i.ea, align 16, !tbaa !59
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ob, i64 116
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !59
  %i.rt = call float @llvm.fmuladd.f32(float %i.rb, float %i.rs, float %i.qt) ; 2 uses
  store float %i.rt, ptr %i.eb, align 4, !tbaa !59
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ob, i64 120
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !59
  %i.rw = call float @llvm.fmuladd.f32(float %i.rb, float %i.rv, float %i.qw) ; 2 uses
  store float %i.rw, ptr %i.ec, align 8, !tbaa !59
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ob, i64 124
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !59
  %i.rz = call float @llvm.fmuladd.f32(float %i.rb, float %i.ry, float %i.qz) ; 2 uses
  store float %i.rz, ptr %i.ed, align 4, !tbaa !59
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !59 ; 8 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ob, i64 128
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !59
  %i.se = call float @llvm.fmuladd.f32(float %i.sb, float %i.sd, float %i.re) ; 2 uses
  store float %i.se, ptr %i.i, align 16, !tbaa !59
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ob, i64 132
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !59
  %i.sh = call float @llvm.fmuladd.f32(float %i.sb, float %i.sg, float %i.rh) ; 2 uses
  store float %i.sh, ptr %i.dx, align 4, !tbaa !59
  %i.si = getelementptr inbounds nuw i8, ptr %i.ob, i64 136
  %i.sj = load float, ptr %i.si, align 4, !tbaa !59
  %i.sk = call float @llvm.fmuladd.f32(float %i.sb, float %i.sj, float %i.rk) ; 2 uses
  store float %i.sk, ptr %i.dy, align 8, !tbaa !59
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ob, i64 140
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !59
  %i.sn = call float @llvm.fmuladd.f32(float %i.sb, float %i.sm, float %i.rn) ; 2 uses
  store float %i.sn, ptr %i.dz, align 4, !tbaa !59
  %i.so = getelementptr inbounds nuw i8, ptr %i.ob, i64 144
  %i.sp = load float, ptr %i.so, align 4, !tbaa !59
  %i.sq = call float @llvm.fmuladd.f32(float %i.sb, float %i.sp, float %i.rq) ; 2 uses
  store float %i.sq, ptr %i.ea, align 16, !tbaa !59
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ob, i64 148
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !59
  %i.st = call float @llvm.fmuladd.f32(float %i.sb, float %i.ss, float %i.rt) ; 2 uses
  store float %i.st, ptr %i.eb, align 4, !tbaa !59
  %i.su = getelementptr inbounds nuw i8, ptr %i.ob, i64 152
  %i.sv = load float, ptr %i.su, align 4, !tbaa !59
  %i.sw = call float @llvm.fmuladd.f32(float %i.sb, float %i.sv, float %i.rw) ; 2 uses
  store float %i.sw, ptr %i.ec, align 8, !tbaa !59
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ob, i64 156
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !59
  %i.sz = call float @llvm.fmuladd.f32(float %i.sb, float %i.sy, float %i.rz) ; 2 uses
  store float %i.sz, ptr %i.ed, align 4, !tbaa !59
  %i.ta = getelementptr inbounds nuw i8, ptr %i.oa, i64 20
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !59 ; 8 uses
end_hunk_0
