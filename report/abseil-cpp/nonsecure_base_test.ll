Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/nonsecure_base_test?download=true
inline.NumInlined: 1789
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4absl12lts_2026052620poisson_distributionIjEclINS0_15random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEEEjRT_RKNS2_10param_typeE:bb.a
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index71 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index71
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load74 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !73 ; 5 uses
  %i.cj = shufflevector <2 x i64> %vector.recur73, <2 x i64> %wide.load74, <2 x i32> <i32 1, i32 2>
  %i.ck = and <2 x i64> %i.cj, splat (i64 -2147483648)
  %i.cl = and <2 x i64> %wide.load74, splat (i64 2147483646)
  %i.cm = or disjoint <2 x i64> %i.cl, %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 3176
  %wide.load75 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !73
  %i.co = lshr exact <2 x i64> %i.cm, splat (i64 1)
  %i.cp = xor <2 x i64> %i.co, %wide.load75
  %i.cq = and <2 x i64> %wide.load74, splat (i64 1)
  %i.cr = icmp eq <2 x i64> %i.cq, zeroinitializer
  %i.cs = select <2 x i1> %i.cr, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ct = xor <2 x i64> %i.cp, %i.cs
  store <2 x i64> %i.ct, ptr %i.cg, align 8, !tbaa !73
  %index.next76 = add nuw i64 %index71, 2         ; 2 uses
  %i.cu = icmp eq i64 %index.next76, 226
  br i1 %i.cu, label %vector.ph, label %vector.body70, !llvm.loop !223

vector.ph:                                        ; preds = %vector.body70
  %vector.recur.extract = extractelement <2 x i64> %wide.load74, i64 1
  %i.cv = and i64 %vector.recur.extract, -2147483648
  %i.cw = load i64, ptr %i.m, align 8, !tbaa !73  ; 2 uses
  %i.cx = and i64 %i.cw, 2147483646
  %i.cy = or disjoint i64 %i.cx, %i.cv
  %i.cz = load i64, ptr %i.n, align 8, !tbaa !73
  %i.da = lshr exact i64 %i.cy, 1
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = and i64 %i.cw, 1
  %.not20.i.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.de = xor i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.l, align 8, !tbaa !73
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i46, align 8, !tbaa !73
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1816
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1824
  %wide.load = load <2 x i64>, ptr %i.di, align 8, !tbaa !73 ; 4 uses
  %i.dj = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.dk = and <2 x i64> %i.dj, splat (i64 -2147483648)
  %i.dl = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.dm = or disjoint <2 x i64> %i.dl, %i.dk
  %wide.load68 = load <2 x i64>, ptr %i.df, align 8, !tbaa !73
  %i.dn = lshr exact <2 x i64> %i.dm, splat (i64 1)
  %i.do = xor <2 x i64> %i.dn, %wide.load68
  %i.dp = and <2 x i64> %wide.load, splat (i64 1)
  %i.dq = icmp eq <2 x i64> %i.dp, zeroinitializer
  %i.dr = select <2 x i1> %i.dq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ds = xor <2 x i64> %i.do, %i.dr
  store <2 x i64> %i.ds, ptr %i.dg, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, 396
  br i1 %i.dt, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !224

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.du = load i64, ptr %i.g, align 8, !tbaa !73
  %i.dv = and i64 %i.du, -2147483648
  %i.dw = load i64, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.dx = and i64 %i.dw, 2147483646
  %i.dy = or disjoint i64 %i.dx, %i.dv
  %i.dz = load i64, ptr %i.h, align 8, !tbaa !73
  %i.ea = lshr exact i64 %i.dy, 1
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = and i64 %i.dw, 1
  %.not.i.i = icmp eq i64 %i.ec, 0
  %i.ed = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.ee = xor i64 %i.eb, %i.ed
  store i64 %i.ee, ptr %i.g, align 8, !tbaa !73
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit54, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.ef = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.bq, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit54 ] ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 3 uses
  store i64 %i.eg, ptr %i.d, align 8, !tbaa !74
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ef
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !73 ; 2 uses
  %i.ej = lshr i64 %i.ei, 11
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = xor i64 %i.ek, %i.ei                    ; 2 uses
  %i.em = shl i64 %i.el, 7
  %i.en = and i64 %i.em, 2636928640
  %i.eo = xor i64 %i.en, %i.el                    ; 2 uses
  %i.ep = shl i64 %i.eo, 15
  %i.eq = and i64 %i.ep, 4022730752
  %i.er = xor i64 %i.eq, %i.eo                    ; 2 uses
  %i.es = lshr i64 %i.er, 18
  %i.et = xor i64 %i.es, %i.er
  %i.eu = add i64 %i.et, %i.ce                    ; 3 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ew = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true) ; 2 uses
  %i.ex = shl i64 %i.eu, %i.ew
  %i.ey = lshr i64 %i.ex, 11
  %i.ez = shl nuw nsw i64 %i.ew, 52
  %i.fa = and i64 %i.ey, 4503599627370495
  %reass.sub = sub nsw i64 %i.fa, %i.ez
  %i.fb = add nsw i64 %reass.sub, 4602678819172646912
  %i.fc = bitcast i64 %i.fb to double
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit: ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.c
  %.0.i = phi double [ %i.fc, %bb.c ], [ 0.000000e+00, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.fd = fmul double %.033, %.0.i                ; 2 uses
  %i.fe = add i32 %.136, 1
  %i.ff = fcmp ogt double %i.fd, %i.f
  br i1 %i.ff, label %bb.b, label %bb.d, !llvm.loop !225

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit
  %i.fg = add nsw i32 %.03459, -1
  %i.fh = icmp sgt i32 %.03459, 1
  br i1 %i.fh, label %.preheader, label %.thread, !llvm.loop !226

bb.e:                                             ; preds = %bb.a
  %i.fi = load double, ptr %2, align 8, !tbaa !227
  %i.fj = fadd double %i.fi, 5.000000e-01
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %i.fn = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.fo = shl i64 %i.fn, 32
  %i.fp = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fq, i1 false) ; 2 uses
  %i.fs = and i64 %i.fr, 63
  %i.ft = shl i64 %i.fq, %i.fs
  %i.fu = lshr i64 %i.ft, 11
  %i.fv = shl nuw nsw i64 %i.fr, 52
  %i.fw = and i64 %i.fu, 4503599627370495
  %reass.sub60 = sub nsw i64 %i.fw, %i.fv
  %i.fx = add nsw i64 %reass.sub60, 4602678819172646912
  %i.fy = bitcast i64 %i.fx to double             ; 2 uses
  %i.fz = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.ga = shl i64 %i.fz, 32
  %i.gb = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.gc = add i64 %i.gb, %i.ga                    ; 3 uses
  %i.gd = and i64 %i.gc, -9223372036854775808
  %i.ge = and i64 %i.gc, 9223372036854775807
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ge, i1 false) ; 2 uses
  %i.gg = and i64 %i.gf, 63
  %i.gh = shl i64 %i.gc, %i.gg
  %i.gi = lshr i64 %i.gh, 11
  %i.gj = shl nuw nsw i64 %i.gf, 52
  %i.gk = or disjoint i64 %i.gj, %i.gd
  %i.gl = and i64 %i.gi, 4503599627370495
  %i.gm = or disjoint i64 %i.gl, %i.gk
  %i.gn = xor i64 %i.gm, 4607182418800017408
  %i.go = bitcast i64 %i.gn to double
  %i.gp = load double, ptr %i.fk, align 8, !tbaa !228
  %i.gq = fmul double %i.gp, %i.go
  %i.gr = fdiv double %i.gq, %i.fy
  %i.gs = fadd double %i.fj, %i.gr
  %i.gt = tail call double @llvm.floor.f64(double %i.gs) ; 10 uses
  %i.gu = fcmp olt double %i.gt, 0.000000e+00
  br i1 %i.gu, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gv = load double, ptr %i.fl, align 8, !tbaa !229
  %i.gw = fmul double %i.gt, %i.gv
  %i.gx = fcmp ugt double %i.gt, 1.000000e+00
  br i1 %i.gx, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.gy = fcmp oeq double %i.gt, 2.000000e+00
  br i1 %i.gy, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gz = tail call double @llvm.log.f64(double %i.gt) ; 2 uses
  %i.ha = fdiv double 1.000000e+00, %i.gt         ; 4 uses
  %i.hb = fneg double %i.gt
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gz, double %i.hb)
  %i.hd = fadd double %i.gz, f0x3FFD67F1C864BEB5
  %i.he = tail call double @llvm.fmuladd.f64(double %i.hd, double 5.000000e-01, double %i.hc)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.ha, double f0x3FB5555555555555, double %i.he)
  %i.hg = fmul double %i.ha, f0x3F66C16C16C16C17
  %i.hh = fneg double %i.ha
  %i.hi = fmul double %i.hg, %i.hh
  %i.hj = tail call noundef double @llvm.fmuladd.f64(double %i.hi, double %i.ha, double %i.hf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.hk = phi double [ 0.000000e+00, %bb.g ], [ %i.hj, %bb.i ], [ f0x3FE62E42FEFA39EC, %bb.h ]
  %i.hl = tail call double @llvm.log.f64(double %i.fy)
  %i.hm = load double, ptr %i.fm, align 8, !tbaa !230
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hl, double 2.000000e+00, double %i.hm)
  %i.ho = fadd double %i.hk, %i.hn
  %i.hp = fcmp olt double %i.ho, %i.gw
  br i1 %i.hp, label %3, label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.f
  br label %bb.f, !llvm.loop !231

3:                                                ; preds = %bb.j
  %4 = fcmp ogt double %i.gt, f0x41EFFFFFFFE00000
  br i1 %4, label %.thread, label %bb.k

bb.k:                                             ; preds = %3
  %i.hq = fptoui double %i.gt to i32
  br label %.thread

.thread:                                          ; preds = %bb.d, %.preheader57, %3, %bb.k
  %.3 = phi i32 [ %i.hq, %bb.k ], [ -1, %3 ], [ 0, %.preheader57 ], [ %.136, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log1pf(float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIjEclIN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned int>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !86
  %i.e = zext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 4 uses
  %i.g = icmp ult i64 %i.f, 4294967295
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.i = add nuw i32 %i.h, 1                      ; 2 uses
  %i.j = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = mul i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %.not21 = icmp ult i32 %i.h, %i.m
  br i1 %.not21, label %_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = xor i32 %i.h, -1
  %i.o = urem i32 %i.n, %i.i                      ; 2 uses
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.r = mul i64 %i.q, %i.k                       ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit, !llvm.loop !232

_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.1.i = phi i64 [ %i.l, %bb.b ], [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.u = lshr i64 %.1.i, 32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 4294967295
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !86
  store i32 -1, ptr %i.v, align 4, !tbaa !88
  %i.w = call noundef i32 @_ZNSt24uniform_int_distributionIjEclIN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw i64 %i.x, 32                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.z = call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  %i.aa = add i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.f
  %i.ac = icmp ult i64 %i.aa, %i.y
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !233

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit
  %.0 = phi i64 [ %i.u, %_ZNSt24uniform_int_distributionIjE5_S_ndImN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS4_17RandenPoolSeedSeqEEEjEET1_RT0_SA_.exit ], [ %i.ae, %bb.f ], [ %i.aa, %bb.e ]
  %i.af = load i32, ptr %2, align 4, !tbaa !86
  %i.ag = trunc i64 %.0 to i32
  %i.ah = add i32 %i.af, %i.ag
  ret i32 %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !73
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !73 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !73
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !234

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !73
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !73 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !73
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !73
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !235

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !73
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !73
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !73
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !73 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
end_hunk_0
