Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Jpeg2000ImageLoader?download=true
inline.NumInlined: 7231
inline.NumDeleted: 2820
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 52
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEiTkNS2_9invocableIT_EEZZZNKS_19Jpeg2000ImageLoader4loadENS2_4spanIKhLm18446744073709551615EEERKNS2_4__fs10filesystem4pathENS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES8_ENKUlRKNS_16MultiChannelViewIfEEbE_clESS_bEUliE_EENS_4TaskIvEES4_S4_mT0_iENKUliiE_clEii":.from.
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !501
  %i.ko = trunc nuw nsw i64 %indvars.iv33.i.i to i32
  %.scalar.i17.i.i.i = sub i32 %i.ko, %i.kn
  %i.kp = load i32, ptr %i.ki, align 8, !tbaa !499
  %.scalar109.i18.i.i.i = add i32 %i.kp, %.scalar.i17.i.i.i ; 2 uses
  %i.kq = insertelement <4 x i32> poison, i32 %.scalar109.i18.i.i.i, i64 0
  %i.kr = shufflevector <4 x i32> %i.kq, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.ks = add <4 x i32> %i.kr, <i32 poison, i32 1, i32 2, i32 3>
  %i.kt = load i32, ptr %i.kl, align 8, !tbaa !502
  %i.ku = insertelement <4 x i32> %i.ks, i32 %.scalar109.i18.i.i.i, i64 0
  %i.kv = insertelement <4 x i32> poison, i32 %i.kt, i64 0
  %i.kw = shufflevector <4 x i32> %i.kv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kx = sdiv <4 x i32> %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !503 ; 2 uses
  %i.la = call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %i.kx, i32 %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !504 ; 2 uses
  %i.ld = add nsw i32 %i.lc, -1
  %i.le = insertelement <4 x i32> poison, i32 %i.ld, i64 0
  %i.lf = shufflevector <4 x i32> %i.le, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.la, <4 x i32> zeroinitializer)
  %i.lh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.lf, <4 x i32> %i.lg)
  %i.li = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !505
  %i.lk = sub i32 %i.az, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !500
  %i.ln = add nsw i32 %i.lk, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !506
  %i.lq = sdiv i32 %i.ln, %i.lp
  %i.lr = ashr i32 %i.lq, %i.kz                   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !507
  %i.lu = add nsw i32 %i.lt, -1
  %i.lv = icmp slt i32 %i.lr, 0
  %..i.i26.i.i.i = call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.lr)
  %i.lw = select i1 %i.lv, i32 0, i32 %..i.i26.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !508 ; 4 uses
  %i.lz = mul i32 %i.lw, %i.lc
  %i.ma = insertelement <4 x i32> poison, i32 %i.lz, i64 0
  %i.mb = shufflevector <4 x i32> %i.ma, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.mc = add <4 x i32> %i.mb, %i.lh              ; 4 uses
  %.sroa.02.0.vec.extract.i27.i.i.i = extractelement <4 x i32> %i.mc, i64 0
  %i.md = sext i32 %.sroa.02.0.vec.extract.i27.i.i.i to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !76
  %i.mg = insertelement <4 x i32> poison, i32 %i.mf, i64 0
  %i.mh = shufflevector <4 x i32> %i.mg, <4 x i32> poison, <4 x i32> zeroinitializer
  %.inner104 = and <4 x i32> %i.mh, <i32 -1, i32 0, i32 0, i32 0>
  %.sroa.02.4.vec.extract.i28.i.i.i = extractelement <4 x i32> %i.mc, i64 1
  %i.mi = sext i32 %.sroa.02.4.vec.extract.i28.i.i.i to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !76
  %i.ml = insertelement <4 x i32> poison, i32 %i.mk, i64 0
  %i.mm = shufflevector <4 x i32> %i.ml, <4 x i32> poison, <4 x i32> zeroinitializer
  %.inner105 = and <4 x i32> %i.mm, <i32 0, i32 -1, i32 0, i32 0>
  %.inner106 = or disjoint <4 x i32> %.inner105, %.inner104
  %.sroa.02.8.vec.extract.i29.i.i.i = extractelement <4 x i32> %i.mc, i64 2
  %i.mn = sext i32 %.sroa.02.8.vec.extract.i29.i.i.i to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !76
  %i.mq = insertelement <4 x i32> poison, i32 %i.mp, i64 0
  %i.mr = shufflevector <4 x i32> %i.mq, <4 x i32> poison, <4 x i32> zeroinitializer
  %.inner107 = and <4 x i32> %i.mr, <i32 0, i32 0, i32 -1, i32 0>
  %.inner108 = or <4 x i32> %.inner106, %.inner107
  %.sroa.02.12.vec.extract.i30.i.i.i = extractelement <4 x i32> %i.mc, i64 3
  %i.ms = sext i32 %.sroa.02.12.vec.extract.i30.i.i.i to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !76
  %i.mv = insertelement <4 x i32> poison, i32 %i.mu, i64 0
  %i.mw = shufflevector <4 x i32> %i.mv, <4 x i32> poison, <4 x i32> zeroinitializer
  %.inner109 = and <4 x i32> %i.mw, <i32 0, i32 0, i32 0, i32 -1>
  %.inner110 = or <4 x i32> %.inner108, %.inner109
  %i.mx = sitofp <4 x i32> %.inner110 to <4 x float>
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !509
  %i.na = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !510
  %i.nc = sub i32 %i.mz, %i.nb
  %i.nd = zext nneg i32 %i.nc to i64
  %notmask.i31.i.i.i = shl nsw i64 -1, %i.nd
  %i.ne = xor i64 %notmask.i31.i.i.i, -1
  %i.nf = uitofp nneg i64 %i.ne to float
  %i.ng = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = fdiv <4 x float> %i.mx, %i.nh           ; 4 uses
  %i.nj = load ptr, ptr %i.af, align 8, !tbaa !262 ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.ni, i64 0
  %i.nk = load i64, ptr %i.ak, align 8
  %i.nl = getelementptr [24 x i8], ptr %i.nj, i64 %i.nk ; 3 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 -24
  %i.nn = getelementptr i8, ptr %i.nl, i64 -8
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !76
  %i.np = sext i32 %i.no to i64
  %i.nq = mul nsw i64 %indvars.iv, %i.np
  %i.nr = add nsw i64 %i.nq, %indvars.iv33.i.i
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !513
  %i.nt = getelementptr i8, ptr %i.nl, i64 -16
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !514
  %i.nv = mul i64 %i.nr, %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nv
  store float %.sroa.0.0.vec.extract.i.i.i.i, ptr %i.nw, align 4, !tbaa !74
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <4 x float> %i.ni, i64 1
  %i.nx = load i64, ptr %i.ak, align 8
  %i.ny = getelementptr [24 x i8], ptr %i.nj, i64 %i.nx ; 3 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 -24
  %i.oa = or disjoint i64 %indvars.iv33.i.i, 1
  %i.ob = getelementptr i8, ptr %i.ny, i64 -8
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !76
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul nsw i64 %indvars.iv, %i.od
  %i.of = add nsw i64 %i.oa, %i.oe
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !513
  %i.oh = getelementptr i8, ptr %i.ny, i64 -16
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !514
  %i.oj = mul i64 %i.of, %i.oi
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oj
  store float %.sroa.0.4.vec.extract.i.i.i.i, ptr %i.ok, align 4, !tbaa !74
  %.sroa.0.8.vec.extract.i.i.i.i = extractelement <4 x float> %i.ni, i64 2
  %i.ol = load i64, ptr %i.ak, align 8
  %i.om = getelementptr [24 x i8], ptr %i.nj, i64 %i.ol ; 3 uses
  %i.on = getelementptr i8, ptr %i.om, i64 -24
  %i.oo = or disjoint i64 %indvars.iv33.i.i, 2
  %i.op = getelementptr i8, ptr %i.om, i64 -8
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !76
  %i.or = sext i32 %i.oq to i64
  %i.os = mul nsw i64 %indvars.iv, %i.or
  %i.ot = add nsw i64 %i.oo, %i.os
  %i.ou = load ptr, ptr %i.on, align 8, !tbaa !513
  %i.ov = getelementptr i8, ptr %i.om, i64 -16
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !514
  %i.ox = mul i64 %i.ot, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.ox
  store float %.sroa.0.8.vec.extract.i.i.i.i, ptr %i.oy, align 4, !tbaa !74
  %.sroa.0.12.vec.extract.i.i.i.i = extractelement <4 x float> %i.ni, i64 3
  %i.oz = load i64, ptr %i.ak, align 8
  %i.pa = getelementptr [24 x i8], ptr %i.nj, i64 %i.oz ; 3 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -24
  %i.pc = or disjoint i64 %indvars.iv33.i.i, 3
  %i.pd = getelementptr i8, ptr %i.pa, i64 -8
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !76
  %i.pf = sext i32 %i.pe to i64
  %i.pg = mul nsw i64 %indvars.iv, %i.pf
  %i.ph = add nsw i64 %i.pc, %i.pg
  %i.pi = load ptr, ptr %i.pb, align 8, !tbaa !513
  %i.pj = getelementptr i8, ptr %i.pa, i64 -16
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !514
  %i.pl = mul i64 %i.ph, %i.pk
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pl
  store float %.sroa.0.12.vec.extract.i.i.i.i, ptr %i.pm, align 4, !tbaa !74
  br label %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNST_4sse2EEEEEDai.exit.i.i"

"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNST_4sse2EEEEEDai.exit.i.i": ; preds = %bb.l, %._crit_edge48.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.al
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 4
  br i1 %.not.i.i, label %".preheader.i.i.from._ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNST_4sse2EEEEEDai.exit.i.i", label %bb.h, !llvm.loop !1736

".preheader.i.i.from._ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNST_4sse2EEEEEDai.exit.i.i": ; preds = %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIN5xsimd5batchIfNST_4sse2EEEEEDai.exit.i.i"
  br label %.preheader.i.i, !llvm.loop !1736

bb.m:                                             ; preds = %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i", %.from..lr.ph30.i.i
  %indvars.iv38.i.i = phi i64 [ %i.bh, %.from..lr.ph30.i.i ], [ %indvars.iv.next39.i.i, %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !74
  store float 0.000000e+00, ptr %i.ap, align 8, !tbaa !74
  br i1 %.not.i11.i.i, label %.from..lr.ph.i17.i.i, label %._crit_edge.i12.i.i

.from..lr.ph.i17.i.i:                             ; preds = %bb.m
  %.val16.i18.i.i = load ptr, ptr %i.z, align 8, !tbaa !498
  %.val16.val.i.i.i = load ptr, ptr %.val16.i18.i.i, align 8, !tbaa !234 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.val16.val.i.i.i, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !240
  %i.pp = trunc i64 %indvars.iv38.i.i to i32
  %i.pq = load <2 x i32>, ptr %.val16.val.i.i.i, align 8, !tbaa !76
  %i.pr = insertelement <2 x i32> %i.bj, i32 %i.pp, i64 0
  %i.ps = add <2 x i32> %i.pq, %i.pr
  br label %.from.62

._crit_edge.i12.i.i:                              ; preds = %.from.62, %bb.m
  br i1 %switch.i14.i.i, label %bb.n, label %bb.o

.from.62:                                         ; preds = %.from.62, %.from..lr.ph.i17.i.i
  %.01328.i.i.i = phi i64 [ 0, %.from..lr.ph.i17.i.i ], [ %i.ra, %.from.62 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [64 x i8], ptr %i.po, i64 %.01328.i.i.i ; 7 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !503
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 2 uses
  %i.py = load <2 x i32>, ptr %i.pu, align 8, !tbaa !76
  %i.pz = sub <2 x i32> %i.ps, %i.py
  %i.qa = load <2 x i32>, ptr %i.pt, align 8, !tbaa !76
  %i.qb = sdiv <2 x i32> %i.pz, %i.qa
  %i.qc = insertelement <2 x i32> poison, i32 %i.pw, i64 0
  %i.qd = shufflevector <2 x i32> %i.qc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.qe = ashr <2 x i32> %i.qb, %i.qd             ; 2 uses
  %i.qf = icmp slt <2 x i32> %i.qe, zeroinitializer ; 2 uses
  %7 = extractelement <2 x i1> %i.qf, i64 0
  %i.qg = load <2 x i32>, ptr %i.px, align 8, !tbaa !76
  %i.qh = load i32, ptr %i.px, align 8, !tbaa !504
  %i.qi = add nsw <2 x i32> %i.qg, splat (i32 -1)
  %i.qj = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.qi, <2 x i32> %i.qe) ; 2 uses
  %8 = extractelement <2 x i32> %i.qj, i64 0
  %9 = select i1 %7, i32 0, i32 %8
  %10 = extractelement <2 x i1> %i.qf, i64 1
  %i.qk = extractelement <2 x i32> %i.qj, i64 1
  %11 = select i1 %10, i32 0, i32 %i.qk
  %12 = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa !508
  %14 = mul i32 %11, %i.qh
  %i.ql = add i32 %14, %9
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %13, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !76
  %i.qp = sitofp i32 %i.qo to float
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !509
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !510
  %i.qu = sub i32 %i.qr, %i.qt
  %i.qv = zext nneg i32 %i.qu to i64
  %notmask.i.i20.i.i = shl nsw i64 -1, %i.qv
  %i.qw = xor i64 %notmask.i.i20.i.i, -1
  %i.qx = uitofp nneg i64 %i.qw to float
  %i.qy = fdiv float %i.qp, %i.qx
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.01328.i.i.i
  store float %i.qy, ptr %i.qz, align 4, !tbaa !74
  %i.ra = add nuw nsw i64 %.01328.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ra, %i.bb
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i12.i.i, label %.from.62, !llvm.loop !1737

bb.n:                                             ; preds = %._crit_edge.i12.i.i
  %i.rb = load float, ptr %i.ao, align 4, !tbaa !74
  %i.rc = fadd float %i.rb, -5.000000e-01         ; 2 uses
  %i.rd = load float, ptr %i.ap, align 8, !tbaa !74
  %i.re = fadd float %i.rd, -5.000000e-01         ; 2 uses
  %i.rf = load float, ptr %4, align 8, !tbaa !74  ; 3 uses
  %i.rg = call float @llvm.fmuladd.f32(float %i.re, float 1.402000e+00, float %i.rf)
  %i.rh = call float @llvm.fmuladd.f32(float %i.rc, float -3.441360e-01, float %i.rf)
  %i.ri = call float @llvm.fmuladd.f32(float %i.re, float -7.141360e-01, float %i.rh)
  %i.rj = call float @llvm.fmuladd.f32(float %i.rc, float 1.772000e+00, float %i.rf)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.rg, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.ri, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, ptr %4, align 8
  store float %i.rj, ptr %i.ap, align 8, !tbaa !75
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i12.i.i
  br i1 %or.cond.i.i.i, label %.lr.ph32.i.i.i.preheader, label %.loopexit.i15.i.i

.lr.ph32.i.i.i.preheader:                         ; preds = %bb.o
  br i1 %min.iters.check, label %.lr.ph32.i.i.i.preheader111, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i.i.i.preheader ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.rk, align 8, !tbaa !74 ; 3 uses
  %i.rl = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load) ; 2 uses
  %i.rm = fmul <4 x float> %wide.load, splat (float f0x3D9E8391)
  %i.rn = fadd <4 x float> %i.rl, splat (float 5.500000e-02)
  %i.ro = fmul <4 x float> %i.rn, splat (float f0x3F72A76F) ; 3 uses
  %i.rp = fcmp olt <4 x float> %i.ro, splat (float f0x00800000)
  %i.rq = bitcast <4 x float> %i.ro to <4 x i32>
  %i.rr = select <4 x i1> %i.rp, <4 x i32> splat (i32 8388608), <4 x i32> %i.rq ; 2 uses
  %i.rs = lshr <4 x i32> %i.rr, splat (i32 23)
  %i.rt = and <4 x i32> %i.rs, splat (i32 255)
  %i.ru = add nsw <4 x i32> %i.rt, splat (i32 -127)
  %i.rv = sitofp <4 x i32> %i.ru to <4 x float>
  %i.rw = and <4 x i32> %i.rr, splat (i32 8388607)
  %i.rx = or disjoint <4 x i32> %i.rw, splat (i32 1065353216)
  %i.ry = bitcast <4 x i32> %i.rx to <4 x float>
  %i.rz = fadd <4 x float> %i.ry, splat (float -1.000000e+00) ; 5 uses
  %i.sa = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.rz, <4 x float> splat (float f0x3D3BF404), <4 x float> splat (float f0xBE471796))
  %i.sb = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sa, <4 x float> %i.rz, <4 x float> splat (float f0x3ED4B281))
  %i.sc = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sb, <4 x float> %i.rz, <4 x float> splat (float f0xBF356C3D))
  %i.sd = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sc, <4 x float> %i.rz, <4 x float> splat (float f0x3FB88DC0))
  %i.se = fmul <4 x float> %i.rz, %i.sd
  %i.sf = fadd <4 x float> %i.se, %i.rv
  %i.sg = fmul <4 x float> %i.sf, splat (float 2.400000e+00) ; 2 uses
  %i.sh = call <4 x float> @llvm.rint.v4f32(<4 x float> %i.sg) ; 2 uses
  %i.si = fsub <4 x float> %i.sg, %i.sh           ; 6 uses
  %i.sj = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.si, <4 x float> splat (float f0x39222A61), <4 x float> splat (float f0x3AAF931A))
  %i.sk = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sj, <4 x float> %i.si, <4 x float> splat (float 9.618040e-03))
  %i.sl = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sk, <4 x float> %i.si, <4 x float> splat (float f0x3D63578A))
  %i.sm = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sl, <4 x float> %i.si, <4 x float> splat (float f0x3E75FDF0))
  %i.sn = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sm, <4 x float> %i.si, <4 x float> splat (float f0x3F317218))
  %i.so = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.sn, <4 x float> %i.si, <4 x float> splat (float 1.000000e+00))
  %i.sp = fptosi <4 x float> %i.sh to <4 x i32>
  %i.sq = shl <4 x i32> %i.sp, splat (i32 23)
  %i.sr = add <4 x i32> %i.sq, splat (i32 1065353216)
  %i.ss = bitcast <4 x i32> %i.sr to <4 x float>
  %i.st = fmul <4 x float> %i.so, %i.ss
  %i.su = fcmp oeq <4 x float> %i.ro, zeroinitializer
  %i.sv = select <4 x i1> %i.su, <4 x float> zeroinitializer, <4 x float> %i.st
  %i.sw = call <4 x float> @llvm.copysign.v4f32(<4 x float> %i.sv, <4 x float> %wide.load)
  %i.sx = fcmp ole <4 x float> %i.rl, splat (float 4.045000e-02)
  %i.sy = select <4 x i1> %i.sx, <4 x float> %i.rm, <4 x float> %i.sw
  store <4 x float> %i.sy, ptr %i.rk, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sz = icmp eq i64 %index.next, %n.vec
  br i1 %i.sz, label %middle.block, label %vector.body, !llvm.loop !1738

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.from..lr.ph35.i.i.i, label %.lr.ph32.i.i.i.preheader111

.lr.ph32.i.i.i.preheader111:                      ; preds = %.lr.ph32.i.i.i.preheader, %middle.block
  %.031.i.i.i.ph = phi i64 [ 0, %.lr.ph32.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph32.i.i.i

.lr.ph32.i.i.i:                                   ; preds = %.lr.ph32.i.i.i.preheader111, %.lr.ph32.i.i.i
  %.031.i.i.i = phi i64 [ %i.uo, %.lr.ph32.i.i.i ], [ %.031.i.i.i.ph, %.lr.ph32.i.i.i.preheader111 ] ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.031.i.i.i ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !74 ; 3 uses
  %i.tc = call noundef float @llvm.fabs.f32(float %i.tb) ; 2 uses
  %i.td = fmul float %i.tb, f0x3D9E8391
  %i.te = fadd float %i.tc, 5.500000e-02
  %i.tf = fmul float %i.te, f0x3F72A76F           ; 3 uses
  %i.tg = fcmp olt float %i.tf, f0x00800000
  %i.th = bitcast float %i.tf to i32
  %i.ti = select i1 %i.tg, i32 8388608, i32 %i.th ; 2 uses
  %i.tj = lshr i32 %i.ti, 23
  %i.tk = and i32 %i.tj, 255
  %i.tl = add nsw i32 %i.tk, -127
  %i.tm = sitofp i32 %i.tl to float
  %i.tn = and i32 %i.ti, 8388607
  %i.to = or disjoint i32 %i.tn, 1065353216
  %i.tp = bitcast i32 %i.to to float
  %i.tq = fadd float %i.tp, -1.000000e+00         ; 5 uses
  %i.tr = call noundef float @llvm.fma.f32(float %i.tq, float f0x3D3BF404, float f0xBE471796)
  %i.ts = call noundef float @llvm.fma.f32(float %i.tr, float %i.tq, float f0x3ED4B281)
  %i.tt = call noundef float @llvm.fma.f32(float %i.ts, float %i.tq, float f0xBF356C3D)
  %i.tu = call noundef float @llvm.fma.f32(float %i.tt, float %i.tq, float f0x3FB88DC0)
  %i.tv = fmul float %i.tq, %i.tu
  %i.tw = fadd float %i.tv, %i.tm
  %i.tx = fmul float %i.tw, 2.400000e+00          ; 2 uses
  %i.ty = call noundef float @llvm.rint.f32(float %i.tx) ; 2 uses
  %i.tz = fsub float %i.tx, %i.ty                 ; 6 uses
  %i.ua = call noundef float @llvm.fma.f32(float %i.tz, float f0x39222A61, float f0x3AAF931A)
  %i.ub = call noundef float @llvm.fma.f32(float %i.ua, float %i.tz, float 9.618040e-03)
  %i.uc = call noundef float @llvm.fma.f32(float %i.ub, float %i.tz, float f0x3D63578A)
  %i.ud = call noundef float @llvm.fma.f32(float %i.uc, float %i.tz, float f0x3E75FDF0)
  %i.ue = call noundef float @llvm.fma.f32(float %i.ud, float %i.tz, float f0x3F317218)
  %i.uf = call noundef float @llvm.fma.f32(float %i.ue, float %i.tz, float 1.000000e+00)
  %i.ug = fptosi float %i.ty to i32
  %i.uh = shl i32 %i.ug, 23
  %i.ui = add i32 %i.uh, 1065353216
  %i.uj = bitcast i32 %i.ui to float
  %i.uk = fmul float %i.uf, %i.uj
  %i.ul = fcmp oeq float %i.tf, 0.000000e+00
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ul, float 0.000000e+00, float %i.uk
  %i.um = call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i.i.i.i, float %i.tb)
  %i.un = fcmp ole float %i.tc, 4.045000e-02
  %.sroa.speculated.i.i.i.i = select i1 %i.un, float %i.td, float %i.um
  store float %.sroa.speculated.i.i.i.i, ptr %i.ta, align 4, !tbaa !74
  %i.uo = add nuw nsw i64 %.031.i.i.i, 1          ; 2 uses
  %exitcond38.not.i.i.i = icmp eq i64 %i.uo, %i.bb
  br i1 %exitcond38.not.i.i.i, label %.from..lr.ph35.i.i.i, label %.lr.ph32.i.i.i, !llvm.loop !1739

.loopexit.i15.i.i:                                ; preds = %bb.o
  br i1 %.not.i11.i.i, label %.from..lr.ph35.i.i.i, label %._crit_edge36.i.i.i

.from..lr.ph35.i.i.i:                             ; preds = %.lr.ph32.i.i.i, %middle.block, %.loopexit.i15.i.i
  %i.up = load ptr, ptr %i.af, align 8, !tbaa !262
  br label %.from.67

._crit_edge36.i.i.i:                              ; preds = %.from.67, %.loopexit.i15.i.i
  br i1 %i.bg, label %bb.p, label %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i"

.from.67:                                         ; preds = %.from.67, %.from..lr.ph35.i.i.i
  %storemerge33.i.i.i = phi i64 [ 0, %.from..lr.ph35.i.i.i ], [ %i.vi, %.from.67 ] ; 5 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge33.i.i.i
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !74
  %i.us = and i64 %storemerge33.i.i.i, 2147483648
  %.not.i.i.i.i = icmp eq i64 %i.us, 0
  %i.ut = load i64, ptr %i.ak, align 8
  %i.uu = add i64 %i.ut, %storemerge33.i.i.i
  %i.uv = and i64 %storemerge33.i.i.i, 4294967295
  %i.uw = select i1 %.not.i.i.i.i, i64 %i.uv, i64 %i.uu
  %i.ux = getelementptr inbounds [24 x i8], ptr %i.up, i64 %i.uw ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !76
  %i.va = sext i32 %i.uz to i64
  %i.vb = mul nsw i64 %indvars.iv, %i.va
  %i.vc = add nsw i64 %i.vb, %indvars.iv38.i.i
  %i.vd = load ptr, ptr %i.ux, align 8, !tbaa !513
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !514
  %i.vg = mul i64 %i.vc, %i.vf
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.vg
  store float %i.ur, ptr %i.vh, align 4, !tbaa !74
  %i.vi = add nuw nsw i64 %storemerge33.i.i.i, 1  ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i64 %i.vi, %i.bb
  br i1 %exitcond39.not.i.i.i, label %._crit_edge36.i.i.i, label %.from.67, !llvm.loop !1740

bb.p:                                             ; preds = %._crit_edge36.i.i.i
  %.val.i16.i.i = load ptr, ptr %i.z, align 8, !tbaa !498
  %.val.val.i.i.i = load ptr, ptr %.val.i16.i.i, align 8, !tbaa !234 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i, i64 24
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !240
  %i.vl = getelementptr inbounds nuw [64 x i8], ptr %i.vk, i64 %i.bb ; 7 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vn = trunc i64 %indvars.iv38.i.i to i32
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !503
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  %i.vr = load <2 x i32>, ptr %i.vm, align 8, !tbaa !76
  %i.vs = insertelement <2 x i32> %i.bj, i32 %i.vn, i64 0
  %i.vt = sub <2 x i32> %i.vs, %i.vr
  %i.vu = load <2 x i32>, ptr %.val.val.i.i.i, align 8, !tbaa !76
  %i.vv = add nsw <2 x i32> %i.vt, %i.vu
  %i.vw = load <2 x i32>, ptr %i.vl, align 8, !tbaa !76
  %i.vx = sdiv <2 x i32> %i.vv, %i.vw
  %i.vy = insertelement <2 x i32> poison, i32 %i.vp, i64 0
  %i.vz = shufflevector <2 x i32> %i.vy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wa = ashr <2 x i32> %i.vx, %i.vz             ; 2 uses
  %i.wb = icmp slt <2 x i32> %i.wa, zeroinitializer ; 2 uses
  %15 = extractelement <2 x i1> %i.wb, i64 0
  %i.wc = load <2 x i32>, ptr %i.vq, align 8, !tbaa !76
  %i.wd = load i32, ptr %i.vq, align 8, !tbaa !504
  %i.we = add nsw <2 x i32> %i.wc, splat (i32 -1)
  %i.wf = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.we, <2 x i32> %i.wa) ; 2 uses
  %16 = extractelement <2 x i32> %i.wf, i64 0
  %17 = select i1 %15, i32 0, i32 %16
  %18 = extractelement <2 x i1> %i.wb, i64 1
  %i.wg = extractelement <2 x i32> %i.wf, i64 1
  %19 = select i1 %18, i32 0, i32 %i.wg
  %20 = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %21 = load ptr, ptr %20, align 8, !tbaa !508
  %22 = mul i32 %19, %i.wd
  %i.wh = add i32 %22, %17
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr inbounds [4 x i8], ptr %21, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !76
  %i.wl = sitofp i32 %i.wk to float
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !509
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !510
  %i.wq = sub i32 %i.wn, %i.wp
  %i.wr = zext nneg i32 %i.wq to i64
  %notmask.i19.i.i.i = shl nsw i64 -1, %i.wr
  %i.ws = xor i64 %notmask.i19.i.i.i, -1
  %i.wt = uitofp nneg i64 %i.ws to float
  %i.wu = fdiv float %i.wl, %i.wt
  %i.wv = load i64, ptr %i.ak, align 8
  %i.ww = load ptr, ptr %i.af, align 8, !tbaa !262
  %i.wx = getelementptr [24 x i8], ptr %i.ww, i64 %i.wv ; 3 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 -24
  %i.wz = getelementptr i8, ptr %i.wx, i64 -8
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !76
  %i.xb = sext i32 %i.xa to i64
  %i.xc = mul nsw i64 %indvars.iv, %i.xb
  %i.xd = add nsw i64 %i.xc, %indvars.iv38.i.i
  %i.xe = load ptr, ptr %i.wy, align 8, !tbaa !513
  %i.xf = getelementptr i8, ptr %i.wx, i64 -16
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !514
  %i.xh = mul i64 %i.xd, %i.xg
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xh
  store float %i.wu, ptr %i.xi, align 4, !tbaa !74
  br label %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i"

"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i": ; preds = %bb.p, %._crit_edge36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1 ; 2 uses
  %i.xj = trunc nuw i64 %indvars.iv.next39.i.i to i32
  %i.xk = icmp sgt i32 %i.v, %i.xj
  br i1 %i.xk, label %bb.m, label %"_ZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEi.exit", !llvm.loop !1741

"_ZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEi.exit": ; preds = %"_ZZZZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_ENKUlRKNS_16MultiChannelViewIfEEbE_clESO_bENKUliE_clEiENKUlTyiE_clIfEEDai.exit.i.i", %.preheader.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1742

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.xl = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xn = atomicrmw add ptr %i.xm, i32 -1 acq_rel, align 4 ; 2 uses
  %i.xo = icmp slt i32 %i.xn, 1
  br i1 %i.xo, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.xp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.q
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !116 ; 7 uses
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !127
  %i.xs = and i32 %i.xr, 8
  %.not.i.i.i.i21 = icmp eq i32 %i.xs, 0
  br i1 %.not.i.i.i.i21, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !128 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !129 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.xu, %i.xw
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.r
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xq, i64 33
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.xu, %.from..lr.ph.i.i.i.i.i ], [ %i.ym, %.noexc2.i.i ] ; 2 uses
  %i.yb = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.yc = load i8, ptr %i.xx, align 8             ; 2 uses
  %i.yd = trunc i8 %i.yc to i1                    ; 2 uses
  %i.ye = load ptr, ptr %i.xy, align 8
  %i.yf = select i1 %i.yd, ptr %i.ye, ptr %i.xz
  %i.yg = load i64, ptr %i.ya, align 8
  %i.yh = lshr i8 %i.yc, 1
  %i.yi = zext nneg i8 %i.yh to i64
  %i.yj = select i1 %i.yd, i64 %i.yg, i64 %i.yi
  %i.yk = load ptr, ptr %i.yb, align 8, !tbaa !80
  %i.yl = load ptr, ptr %i.yk, align 8
  invoke void %i.yl(ptr noundef nonnull align 8 dereferenceable(8) %i.yb, ptr %i.yf, i64 %i.yj, i32 noundef 8, ptr nonnull @.str.140, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ym, %i.xw
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i:                     ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.yn = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.yn) #42
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.yo = icmp slt i32 %i.xn, 2
  br i1 %i.yo, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i
  %i.yp = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !109 ; 2 uses
  %i.yr = inttoptr i64 %i.yq to ptr               ; 3 uses
  store ptr %i.yr, ptr %.reload.addr, align 8
  %.not.i = icmp eq i64 %i.yq, 0
  br i1 %.not.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr79 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %index.addr79, align 8
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr nonnull %i.yr)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.yt = load ptr, ptr %i.h, align 8, !tbaa !91  ; 5 uses
  %.not.i.i22 = icmp eq ptr %i.yt, null
  br i1 %.not.i.i22, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = atomicrmw add ptr %i.yu, i64 -1 acq_rel, align 8
  %i.yw = icmp eq i64 %i.yv, 0
  br i1 %i.yw, label %bb.u, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.yx = load ptr, ptr %i.yt, align 8, !tbaa !80
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr noundef nonnull align 8 dereferenceable(24) %i.yt) #37, !inline_history !58
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yt) #37
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.t, %bb.u
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #37
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #37
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.72, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.72 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #37
  resume { ptr, i32 } %.merged18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32>, i32) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #3

declare void @_ZN3tev18toLinearSrgbPremulIfEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEib(ptr dead_on_unwind writable sret(%"class.tev::Task.364") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(144), i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev16MultiChannelViewIKfEC2ENSt3__14spanIKNS_11ChannelViewIfEELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx22 = mul nsw i64 %2, 24                    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx22
  %i.b = icmp ugt i64 %2, 5
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 768614336404564650
  br i1 %i.c, label %bb.c, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIKfEEEELj5EE18unchecked_allocateEm.exit.i.i.i

bb.c:                                             ; preds = %bb.b
end_hunk_0
