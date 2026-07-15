inline.NumInlined: 231
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL9init_dataIiEvPT_j:bb.a
  %i.r = fdiv x86_fp80 %i.p, %i.q
  %i.s = fptoui x86_fp80 %i.r to i64              ; 2 uses
  %i.t = add i64 %i.s, 52
  %i.u = udiv i64 %i.t, %i.s
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1816
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4984 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 3168
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1808
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1816
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4984
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  %i.aa = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.cf, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ]
  %indvars.iv = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %indvars.iv.next, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ] ; 2 uses
  br label %select.unfold.i.i.i.i

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ab = fdiv double %i.cu, %i.cx                ; 2 uses
  %i.ac = fcmp ult double %i.ab, 1.000000e+00
  br i1 %i.ac, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %bb.g, !prof !43

select.unfold.i.i.i.i:                            ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.e
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %i.cf, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.cy, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %.01529.i.i.i.i = phi double [ 1.000000e+00, %bb.e ], [ %i.cx, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.01628.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.cu, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.ae = icmp ugt i64 %i.ad, 623
  br i1 %i.ae, label %vector.ph16, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph16:                                      ; preds = %select.unfold.i.i.i.i
  %.pre.i.i = load i64, ptr %2, align 8, !tbaa !40
  %vector.recur.init19 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph16
  %index18 = phi i64 [ 0, %vector.ph16 ], [ %index.next23, %vector.body17 ] ; 3 uses
  %vector.recur20 = phi <2 x i64> [ %vector.recur.init19, %vector.ph16 ], [ %wide.load21, %vector.body17 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index18 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.load21 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !40 ; 5 uses
  %i.ai = shufflevector <2 x i64> %vector.recur20, <2 x i64> %wide.load21, <2 x i32> <i32 1, i32 2>
  %i.aj = and <2 x i64> %i.ai, splat (i64 -2147483648)
  %i.ak = and <2 x i64> %wide.load21, splat (i64 2147483646)
  %i.al = or disjoint <2 x i64> %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 3176
  %wide.load22 = load <2 x i64>, ptr %i.am, align 8, !tbaa !40
  %i.an = lshr exact <2 x i64> %i.al, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load22
  %i.ap = and <2 x i64> %wide.load21, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.af, align 8, !tbaa !40
  %index.next23 = add nuw i64 %index18, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next23, 226
  br i1 %i.at, label %vector.ph, label %vector.body17, !llvm.loop !44

vector.ph:                                        ; preds = %vector.body17
  %vector.recur.extract = extractelement <2 x i64> %wide.load21, i64 1
  %i.au = and i64 %vector.recur.extract, -2147483648
  %i.av = load i64, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  %i.aw = and i64 %i.av, 2147483646
  %i.ax = or disjoint i64 %i.aw, %i.au
  %i.ay = load i64, ptr %i.z, align 8, !tbaa !40
  %i.az = lshr exact i64 %i.ax, 1
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = and i64 %i.av, 1
  %.not20.i.i = icmp eq i64 %i.bb, 0
  %i.bc = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.x, align 8, !tbaa !40
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !40
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.be = getelementptr [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1816
  %i.bg = getelementptr [8 x i8], ptr %2, i64 %index
  %i.bh = getelementptr i8, ptr %i.bg, i64 1824
  %wide.load = load <2 x i64>, ptr %i.bh, align 8, !tbaa !40 ; 4 uses
  %i.bi = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.bj = and <2 x i64> %i.bi, splat (i64 -2147483648)
  %i.bk = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.bl = or disjoint <2 x i64> %i.bk, %i.bj
  %wide.load15 = load <2 x i64>, ptr %i.be, align 8, !tbaa !40
  %i.bm = lshr exact <2 x i64> %i.bl, splat (i64 1)
  %i.bn = xor <2 x i64> %i.bm, %wide.load15
  %i.bo = and <2 x i64> %wide.load, splat (i64 1)
  %i.bp = icmp eq <2 x i64> %i.bo, zeroinitializer
  %i.bq = select <2 x i1> %i.bp, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.br = xor <2 x i64> %i.bn, %i.bq
  store <2 x i64> %i.br, ptr %i.bf, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 396
  br i1 %i.bs, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !48

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.bt = load i64, ptr %i.v, align 8, !tbaa !40
  %i.bu = and i64 %i.bt, -2147483648
  %i.bv = load i64, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bu
  %i.by = load i64, ptr %i.w, align 8, !tbaa !40
  %i.bz = lshr exact i64 %i.bx, 1
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = and i64 %i.bv, 1
  %.not.i.i = icmp eq i64 %i.cb, 0
  %i.cc = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.cd = xor i64 %i.ca, %i.cc
  store i64 %i.cd, ptr %i.v, align 8, !tbaa !40
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.ce = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.ad, %select.unfold.i.i.i.i ] ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 3 uses
  store i64 %i.cf, ptr %i.o, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.ci = lshr i64 %i.ch, 11
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = xor i64 %i.cj, %i.ch                    ; 2 uses
  %i.cl = shl i64 %i.ck, 7
  %i.cm = and i64 %i.cl, 2636928640
  %i.cn = xor i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = shl i64 %i.cn, 15
  %i.cp = and i64 %i.co, 4022730752
  %i.cq = xor i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 18
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = uitofp i64 %i.cs to double
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %.01529.i.i.i.i, double %.01628.i.i.i.i) ; 2 uses
  %i.cv = fpext double %.01529.i.i.i.i to x86_fp80
  %i.cw = fmul x86_fp80 %i.cv, f0x401F8000000000000000
  %i.cx = fptrunc x86_fp80 %i.cw to double        ; 2 uses
  %i.cy = add i64 %.030.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !49

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.017.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.ab, %bb.f ]
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %.017.i.i.i.i, double 2.000000e+02, double -1.000000e+02)
  %i.da = fptosi double %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.da, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !50
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_Z6do_xorILj4EiEvPT0_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = xor i32 %i.b, %i.a
  store i32 %i.c, ptr %0, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = xor i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = xor i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_Z6do_xorILj16EiEvPT0_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat {
  %3 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %4 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %5 = add i64 %4, 64
  %6 = add i64 %3, 64
  %rt.bound0 = icmp ugt i64 %5, %3
  %rt.bound1 = icmp ugt i64 %6, %4
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %bb.a, label %.rtvec

.rtvec:                                           ; preds = %2
  %7 = load <4 x i32>, ptr %1, align 4, !tbaa !4
  %8 = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %9 = xor <4 x i32> %8, %7
  store <4 x i32> %9, ptr %0, align 4, !tbaa !4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = load <4 x i32>, ptr %10, align 4, !tbaa !4
  %13 = load <4 x i32>, ptr %11, align 4, !tbaa !4
  %14 = xor <4 x i32> %13, %12
  store <4 x i32> %14, ptr %11, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %17 = load <4 x i32>, ptr %15, align 4, !tbaa !4
  %18 = load <4 x i32>, ptr %16, align 4, !tbaa !4
  %19 = xor <4 x i32> %18, %17
  store <4 x i32> %19, ptr %16, align 4, !tbaa !4
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %22 = load <4 x i32>, ptr %20, align 4, !tbaa !4
  %23 = load <4 x i32>, ptr %21, align 4, !tbaa !4
  %24 = xor <4 x i32> %23, %22
  store <4 x i32> %24, ptr %21, align 4, !tbaa !4
  br label %.rtcont

bb.a:                                             ; preds = %2
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = load i32, ptr %0, align 4, !tbaa !4
  %i.c = xor i32 %i.b, %i.a
  store i32 %i.c, ptr %0, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = xor i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = xor i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = xor i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = xor i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = xor i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = xor i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = xor i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = xor i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = xor i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = xor i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = xor i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = xor i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = xor i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = xor i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !4
  br label %.rtcont

.rtcont:                                          ; preds = %bb.a, %.rtvec
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_Z10do_add_xorILj4EiEvPT0_S1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = load i32, ptr %2, align 4, !tbaa !4
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = load i32, ptr %0, align 4, !tbaa !4
  %i.e = xor i32 %i.d, %i.c
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = xor i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = xor i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_Z10do_add_xorILj16EiEvPT0_S1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %5 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %7 = add i64 %6, 64
  %8 = add i64 %5, 64
  %9 = add i64 %4, 64                             ; 2 uses
  %rt.bound0 = icmp ugt i64 %7, %4
  %rt.bound1 = icmp ugt i64 %9, %6
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound09 = icmp ugt i64 %8, %4
  %rt.bound110 = icmp ugt i64 %9, %5
  %rt.conflict11 = and i1 %rt.bound09, %rt.bound110
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict11
  br i1 %rt.conflict.all, label %bb.a, label %.rtvec

.rtvec:                                           ; preds = %3
  %10 = load <4 x i32>, ptr %1, align 4, !tbaa !4
  %11 = load <4 x i32>, ptr %2, align 4, !tbaa !4
  %12 = add nsw <4 x i32> %11, %10
  %13 = load <4 x i32>, ptr %0, align 4, !tbaa !4
  %14 = xor <4 x i32> %13, %12
  store <4 x i32> %14, ptr %0, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %18 = load <4 x i32>, ptr %15, align 4, !tbaa !4
  %19 = load <4 x i32>, ptr %16, align 4, !tbaa !4
  %20 = add nsw <4 x i32> %19, %18
  %21 = load <4 x i32>, ptr %17, align 4, !tbaa !4
  %22 = xor <4 x i32> %21, %20
  store <4 x i32> %22, ptr %17, align 4, !tbaa !4
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %26 = load <4 x i32>, ptr %23, align 4, !tbaa !4
  %27 = load <4 x i32>, ptr %24, align 4, !tbaa !4
  %28 = add nsw <4 x i32> %27, %26
  %29 = load <4 x i32>, ptr %25, align 4, !tbaa !4
  %30 = xor <4 x i32> %29, %28
  store <4 x i32> %30, ptr %25, align 4, !tbaa !4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %34 = load <4 x i32>, ptr %31, align 4, !tbaa !4
  %35 = load <4 x i32>, ptr %32, align 4, !tbaa !4
  %36 = add nsw <4 x i32> %35, %34
  %37 = load <4 x i32>, ptr %33, align 4, !tbaa !4
  %38 = xor <4 x i32> %37, %36
  store <4 x i32> %38, ptr %33, align 4, !tbaa !4
  br label %.rtcont

bb.a:                                             ; preds = %3
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = load i32, ptr %2, align 4, !tbaa !4
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = load i32, ptr %0, align 4, !tbaa !4
  %i.e = xor i32 %i.d, %i.c
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = xor i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = xor i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = xor i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = xor i32 %i.aj, %i.ah
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = xor i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = xor i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = add nsw i32 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = xor i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = add nsw i32 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = xor i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = add nsw i32 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = xor i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = add nsw i32 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = xor i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = xor i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = xor i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = add nsw i32 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = xor i32 %i.dd, %i.db
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = xor i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = add nsw i32 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = xor i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !4
  br label %.rtcont

.rtcont:                                          ; preds = %bb.a, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZL9init_dataIdEvPT_j(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 2, 5) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.std::mersenne_twister_engine", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 12345, ptr %2, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 12345, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr %2, i64 %.011.i.i
  %i.b = lshr i64 %store_forwarded, 30
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul nuw nsw i64 %i.c, 1812433253
  %i.e = add nuw i64 %i.d, %.011.i.i              ; 2 uses
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !40
  %i.g = add nuw nsw i64 %.011.i.i, 1             ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.g, 624
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr %2, i64 %i.g
  %i.i = lshr i64 %i.f, 30
  %i.j = xor i64 %i.i, %i.e
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %i.g
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !40
  %i.n = add nuw nsw i64 %.011.i.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4992 ; 2 uses
  store i64 624, ptr %i.o, align 8, !tbaa !41
  %i.p = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !4
  %i.q = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !4
  %i.r = fdiv x86_fp80 %i.p, %i.q
  %i.s = fptoui x86_fp80 %i.r to i64              ; 2 uses
  %i.t = add i64 %i.s, 52
  %i.u = udiv i64 %i.t, %i.s
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1816
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4984 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 3168
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1808
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1816
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4984
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  %i.aa = phi i64 [ 624, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %i.cf, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ]
  %indvars.iv = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit ], [ %indvars.iv.next, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit ] ; 2 uses
  br label %select.unfold.i.i.i.i

bb.f:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ab = fdiv double %i.cu, %i.cx                ; 2 uses
  %i.ac = fcmp ult double %i.ab, 1.000000e+00
  br i1 %i.ac, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %bb.g, !prof !43

select.unfold.i.i.i.i:                            ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.e
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %i.cf, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.cy, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %.01529.i.i.i.i = phi double [ 1.000000e+00, %bb.e ], [ %i.cx, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.01628.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.cu, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.ae = icmp ugt i64 %i.ad, 623
  br i1 %i.ae, label %vector.ph16, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph16:                                      ; preds = %select.unfold.i.i.i.i
  %.pre.i.i = load i64, ptr %2, align 8, !tbaa !40
  %vector.recur.init19 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph16
  %index18 = phi i64 [ 0, %vector.ph16 ], [ %index.next23, %vector.body17 ] ; 3 uses
  %vector.recur20 = phi <2 x i64> [ %vector.recur.init19, %vector.ph16 ], [ %wide.load21, %vector.body17 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index18 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.load21 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !40 ; 5 uses
  %i.ai = shufflevector <2 x i64> %vector.recur20, <2 x i64> %wide.load21, <2 x i32> <i32 1, i32 2>
  %i.aj = and <2 x i64> %i.ai, splat (i64 -2147483648)
  %i.ak = and <2 x i64> %wide.load21, splat (i64 2147483646)
  %i.al = or disjoint <2 x i64> %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 3176
  %wide.load22 = load <2 x i64>, ptr %i.am, align 8, !tbaa !40
  %i.an = lshr exact <2 x i64> %i.al, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load22
  %i.ap = and <2 x i64> %wide.load21, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.af, align 8, !tbaa !40
  %index.next23 = add nuw i64 %index18, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next23, 226
  br i1 %i.at, label %vector.ph, label %vector.body17, !llvm.loop !51

vector.ph:                                        ; preds = %vector.body17
  %vector.recur.extract = extractelement <2 x i64> %wide.load21, i64 1
  %i.au = and i64 %vector.recur.extract, -2147483648
  %i.av = load i64, ptr %i.y, align 8, !tbaa !40  ; 2 uses
  %i.aw = and i64 %i.av, 2147483646
  %i.ax = or disjoint i64 %i.aw, %i.au
  %i.ay = load i64, ptr %i.z, align 8, !tbaa !40
  %i.az = lshr exact i64 %i.ax, 1
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = and i64 %i.av, 1
  %.not20.i.i = icmp eq i64 %i.bb, 0
  %i.bc = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.x, align 8, !tbaa !40
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !40
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.be = getelementptr [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1816
  %i.bg = getelementptr [8 x i8], ptr %2, i64 %index
  %i.bh = getelementptr i8, ptr %i.bg, i64 1824
  %wide.load = load <2 x i64>, ptr %i.bh, align 8, !tbaa !40 ; 4 uses
  %i.bi = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.bj = and <2 x i64> %i.bi, splat (i64 -2147483648)
  %i.bk = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.bl = or disjoint <2 x i64> %i.bk, %i.bj
  %wide.load15 = load <2 x i64>, ptr %i.be, align 8, !tbaa !40
  %i.bm = lshr exact <2 x i64> %i.bl, splat (i64 1)
  %i.bn = xor <2 x i64> %i.bm, %wide.load15
  %i.bo = and <2 x i64> %wide.load, splat (i64 1)
  %i.bp = icmp eq <2 x i64> %i.bo, zeroinitializer
  %i.bq = select <2 x i1> %i.bp, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.br = xor <2 x i64> %i.bn, %i.bq
  store <2 x i64> %i.br, ptr %i.bf, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 396
  br i1 %i.bs, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body, !llvm.loop !52

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body
  %i.bt = load i64, ptr %i.v, align 8, !tbaa !40
  %i.bu = and i64 %i.bt, -2147483648
  %i.bv = load i64, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bu
  %i.by = load i64, ptr %i.w, align 8, !tbaa !40
  %i.bz = lshr exact i64 %i.bx, 1
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = and i64 %i.bv, 1
  %.not.i.i = icmp eq i64 %i.cb, 0
  %i.cc = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.cd = xor i64 %i.ca, %i.cc
  store i64 %i.cd, ptr %i.v, align 8, !tbaa !40
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.ce = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.ad, %select.unfold.i.i.i.i ] ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 3 uses
  store i64 %i.cf, ptr %i.o, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.ci = lshr i64 %i.ch, 11
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = xor i64 %i.cj, %i.ch                    ; 2 uses
  %i.cl = shl i64 %i.ck, 7
  %i.cm = and i64 %i.cl, 2636928640
  %i.cn = xor i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = shl i64 %i.cn, 15
  %i.cp = and i64 %i.co, 4022730752
  %i.cq = xor i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 18
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = uitofp i64 %i.cs to double
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %.01529.i.i.i.i, double %.01628.i.i.i.i) ; 2 uses
  %i.cv = fpext double %.01529.i.i.i.i to x86_fp80
  %i.cw = fmul x86_fp80 %i.cv, f0x401F8000000000000000
  %i.cx = fptrunc x86_fp80 %i.cw to double        ; 2 uses
  %i.cy = add i64 %.030.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !49

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.017.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.ab, %bb.f ]
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %.017.i.i.i.i, double 2.000000e+02, double -1.000000e+02)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.cz, ptr %i.da, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
