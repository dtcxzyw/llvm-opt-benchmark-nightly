Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/sampler?download=true
inline.NumInlined: 51
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3g2o13sampleUniformEddPSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE:bb.a
  %i.w = fptrunc x86_fp80 %i.v to double          ; 2 uses
  %i.x = add i64 %.023.i.i.i.i12, -1              ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i15, label %bb.c, label %select.unfold.i.i.i.i11, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.016.i.i.i.i16.sink = phi double [ %i.g, %bb.b ], [ %i.p, %bb.c ], [ f0x3FEFFFFFFFFFFFFF, %bb.d ]
  %i.y = load double, ptr @_ZN3g2oL12_uniformRealE.1, align 8, !tbaa !13
  %i.z = tail call noundef double @llvm.fmuladd.f64(double %.016.i.i.i.i16.sink, double %i.y, double 0.000000e+00)
  %i.aa = fsub double %1, %0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %0)
  ret double %i.ab
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define noundef double @_ZN3g2o14sampleGaussianEPSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  %_ZN3g2oL9_gen_realE. = select i1 %.not, ptr @_ZN3g2oL9_gen_realE, ptr %0
  %i.a = tail call noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) @_ZN3g2oL18_univariateSamplerE, ptr noundef nonnull align 8 dereferenceable(5000) %_ZN3g2oL9_gen_realE., ptr noundef nonnull align 8 dereferenceable(16) @_ZN3g2oL18_univariateSamplerE)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !17
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load9, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !17 ; 4 uses
  %wide.load9 = load <2 x i64>, ptr %i.g, align 8, !tbaa !17 ; 5 uses
  %i.h = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.i = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load9, <2 x i32> <i32 1, i32 2>
  %i.j = and <2 x i64> %i.h, splat (i64 -2147483648)
  %i.k = and <2 x i64> %i.i, splat (i64 -2147483648)
  %i.l = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.m = and <2 x i64> %wide.load9, splat (i64 2147483646)
  %i.n = or disjoint <2 x i64> %i.l, %i.j
  %i.o = or disjoint <2 x i64> %i.m, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3192
  %wide.load10 = load <2 x i64>, ptr %i.p, align 8, !tbaa !17
  %wide.load11 = load <2 x i64>, ptr %i.q, align 8, !tbaa !17
  %i.r = lshr exact <2 x i64> %i.n, splat (i64 1)
  %i.s = lshr exact <2 x i64> %i.o, splat (i64 1)
  %i.t = xor <2 x i64> %i.r, %wide.load10
  %i.u = xor <2 x i64> %i.s, %wide.load11
  %i.v = and <2 x i64> %wide.load, splat (i64 1)
  %i.w = and <2 x i64> %wide.load9, splat (i64 1)
  %i.x = icmp eq <2 x i64> %i.v, zeroinitializer
  %i.y = icmp eq <2 x i64> %i.w, zeroinitializer
  %i.z = select <2 x i1> %i.x, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.aa = select <2 x i1> %i.y, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ab = xor <2 x i64> %i.t, %i.z
  %i.ac = xor <2 x i64> %i.u, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.ab, ptr %i.d, align 8, !tbaa !17
  store <2 x i64> %i.ac, ptr %i.ad, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, 224
  br i1 %i.ae, label %vector.ph13, label %vector.body, !llvm.loop !25

vector.ph13:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load9, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.ag = and i64 %vector.recur.extract, -2147483648
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %i.aj = and i64 %i.ai, 2147483646
  %i.ak = or disjoint i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4968
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = lshr exact i64 %i.ak, 1
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = and i64 %i.ai, 1
  %.not20.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ar = xor i64 %i.ao, %i.aq
  store i64 %i.ar, ptr %i.af, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.at = and i64 %i.ai, -2147483648
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17 ; 3 uses
  %i.aw = and i64 %i.av, 2147483646
  %i.ax = or disjoint i64 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = lshr exact i64 %i.ax, 1
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = and i64 %i.av, 1
  %.not20.i.1 = icmp eq i64 %i.bc, 0
  %i.bd = select i1 %.not20.i.1, i64 0, i64 2567483615
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.as, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.bg = and i64 %i.av, -2147483648
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !17 ; 2 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bn = lshr exact i64 %i.bk, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bi, 1
  %.not20.i.2 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i.2, i64 0, i64 2567483615
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  %vector.recur.init16 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph13
  %index15 = phi i64 [ 0, %vector.ph13 ], [ %index.next20, %vector.body14 ] ; 3 uses
  %vector.recur17 = phi <2 x i64> [ %vector.recur.init16, %vector.ph13 ], [ %wide.load18, %vector.body14 ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index15 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1816
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1824
  %wide.load18 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !17 ; 4 uses
  %i.bw = shufflevector <2 x i64> %vector.recur17, <2 x i64> %wide.load18, <2 x i32> <i32 1, i32 2>
  %i.bx = and <2 x i64> %i.bw, splat (i64 -2147483648)
  %i.by = and <2 x i64> %wide.load18, splat (i64 2147483646)
  %i.bz = or disjoint <2 x i64> %i.by, %i.bx
  %wide.load19 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !17
  %i.ca = lshr exact <2 x i64> %i.bz, splat (i64 1)
  %i.cb = xor <2 x i64> %i.ca, %wide.load19
  %i.cc = and <2 x i64> %wide.load18, splat (i64 1)
  %i.cd = icmp eq <2 x i64> %i.cc, zeroinitializer
  %i.ce = select <2 x i1> %i.cd, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.cf = xor <2 x i64> %i.cb, %i.ce
  store <2 x i64> %i.cf, ptr %i.bt, align 8, !tbaa !17
  %index.next20 = add nuw i64 %index15, 2         ; 2 uses
  %i.cg = icmp eq i64 %index.next20, 396
  br i1 %i.cg, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body14, !llvm.loop !26

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.cj = and i64 %i.ci, -2147483648
  %i.ck = load i64, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.cl = and i64 %i.ck, 2147483646
  %i.cm = or disjoint i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.cp = lshr exact i64 %i.cm, 1
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = and i64 %i.ck, 1
  %.not.i = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not.i, i64 0, i64 2567483615
  %i.ct = xor i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %i.ch, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.cu = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !17 ; 2 uses
  %i.cy = lshr i64 %i.cx, 11
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = xor i64 %i.cz, %i.cx                    ; 2 uses
  %i.db = shl i64 %i.da, 7
  %i.dc = and i64 %i.db, 2636928640
  %i.dd = xor i64 %i.dc, %i.da                    ; 2 uses
  %i.de = shl i64 %i.dd, 15
  %i.df = and i64 %i.de, 4022730752
  %i.dg = xor i64 %i.df, %i.dd                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 18
  %i.di = xor i64 %i.dh, %i.dg
  ret i64 %i.di
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4992 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4984 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3168 ; 2 uses
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4968
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4976
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4984
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4968
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4976
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4984
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.ag = fdiv double %i.eg, %i.ej                ; 2 uses
  %i.ah = fcmp ult double %i.ag, 1.000000e+00
  br i1 %i.ah, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit, label %bb.d, !prof !9

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %i.ai = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.aj = icmp ugt i64 %i.ai, 623
  br i1 %i.aj, label %vector.ph103, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph103:                                     ; preds = %select.unfold.i.i
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !17
  %vector.recur.init106 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph103
  %index105 = phi i64 [ 0, %vector.ph103 ], [ %index.next112, %vector.body104 ] ; 3 uses
  %vector.recur107 = phi <2 x i64> [ %vector.recur.init106, %vector.ph103 ], [ %wide.load109, %vector.body104 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index105 ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index105 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %wide.load108 = load <2 x i64>, ptr %i.am, align 8, !tbaa !17 ; 4 uses
  %wide.load109 = load <2 x i64>, ptr %i.an, align 8, !tbaa !17 ; 5 uses
  %i.ao = shufflevector <2 x i64> %vector.recur107, <2 x i64> %wide.load108, <2 x i32> <i32 1, i32 2>
  %i.ap = shufflevector <2 x i64> %wide.load108, <2 x i64> %wide.load109, <2 x i32> <i32 1, i32 2>
  %i.aq = and <2 x i64> %i.ao, splat (i64 -2147483648)
  %i.ar = and <2 x i64> %i.ap, splat (i64 -2147483648)
  %i.as = and <2 x i64> %wide.load108, splat (i64 2147483646)
  %i.at = and <2 x i64> %wide.load109, splat (i64 2147483646)
  %i.au = or disjoint <2 x i64> %i.as, %i.aq
  %i.av = or disjoint <2 x i64> %i.at, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 3176
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 3192
  %wide.load110 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !17
  %wide.load111 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !17
  %i.ay = lshr exact <2 x i64> %i.au, splat (i64 1)
  %i.az = lshr exact <2 x i64> %i.av, splat (i64 1)
  %i.ba = xor <2 x i64> %i.ay, %wide.load110
  %i.bb = xor <2 x i64> %i.az, %wide.load111
  %i.bc = and <2 x i64> %wide.load108, splat (i64 1)
  %i.bd = and <2 x i64> %wide.load109, splat (i64 1)
  %i.be = icmp eq <2 x i64> %i.bc, zeroinitializer
  %i.bf = icmp eq <2 x i64> %i.bd, zeroinitializer
  %i.bg = select <2 x i1> %i.be, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bh = select <2 x i1> %i.bf, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bi = xor <2 x i64> %i.ba, %i.bg
  %i.bj = xor <2 x i64> %i.bb, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %i.bi, ptr %i.ak, align 8, !tbaa !17
  store <2 x i64> %i.bj, ptr %i.bk, align 8, !tbaa !17
  %index.next112 = add nuw i64 %index105, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next112, 224
  br i1 %i.bl, label %vector.ph93, label %vector.body104, !llvm.loop !27

vector.ph93:                                      ; preds = %vector.body104
  %vector.recur.extract114 = extractelement <2 x i64> %wide.load109, i64 1
  %i.bm = and i64 %vector.recur.extract114, -2147483648
  %i.bn = load i64, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %i.bo = and i64 %i.bn, 2147483646
  %i.bp = or disjoint i64 %i.bo, %i.bm
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !17
  %i.br = lshr exact i64 %i.bp, 1
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = and i64 %i.bn, 1
  %.not20.i.i = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.bv = xor i64 %i.bs, %i.bu
  store i64 %i.bv, ptr %i.m, align 8, !tbaa !17
  %i.bw = and i64 %i.bn, -2147483648
  %i.bx = load i64, ptr %i.q, align 8, !tbaa !17  ; 3 uses
  %i.by = and i64 %i.bx, 2147483646
  %i.bz = or disjoint i64 %i.by, %i.bw
  %i.ca = load i64, ptr %i.r, align 8, !tbaa !17
  %i.cb = lshr exact i64 %i.bz, 1
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = and i64 %i.bx, 1
  %.not20.i.i.1 = icmp eq i64 %i.cd, 0
  %i.ce = select i1 %.not20.i.i.1, i64 0, i64 2567483615
  %i.cf = xor i64 %i.cc, %i.ce
  store i64 %i.cf, ptr %i.p, align 8, !tbaa !17
  %i.cg = and i64 %i.bx, -2147483648
  %i.ch = load i64, ptr %i.t, align 8, !tbaa !17  ; 2 uses
  %i.ci = and i64 %i.ch, 2147483646
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %i.ck = load i64, ptr %i.u, align 8, !tbaa !17
  %i.cl = lshr exact i64 %i.cj, 1
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = and i64 %i.ch, 1
  %.not20.i.i.2 = icmp eq i64 %i.cn, 0
  %i.co = select i1 %.not20.i.i.2, i64 0, i64 2567483615
  %i.cp = xor i64 %i.cm, %i.co
  store i64 %i.cp, ptr %i.s, align 8, !tbaa !17
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !17
  %vector.recur.init96 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph93
  %index95 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body94 ] ; 3 uses
  %vector.recur97 = phi <2 x i64> [ %vector.recur.init96, %vector.ph93 ], [ %wide.load98, %vector.body94 ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index95 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1816
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index95
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1824
  %wide.load98 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !17 ; 4 uses
  %i.cu = shufflevector <2 x i64> %vector.recur97, <2 x i64> %wide.load98, <2 x i32> <i32 1, i32 2>
  %i.cv = and <2 x i64> %i.cu, splat (i64 -2147483648)
  %i.cw = and <2 x i64> %wide.load98, splat (i64 2147483646)
  %i.cx = or disjoint <2 x i64> %i.cw, %i.cv
  %wide.load99 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !17
  %i.cy = lshr exact <2 x i64> %i.cx, splat (i64 1)
  %i.cz = xor <2 x i64> %i.cy, %wide.load99
  %i.da = and <2 x i64> %wide.load98, splat (i64 1)
  %i.db = icmp eq <2 x i64> %i.da, zeroinitializer
  %i.dc = select <2 x i1> %i.db, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dd = xor <2 x i64> %i.cz, %i.dc
  store <2 x i64> %i.dd, ptr %i.cr, align 8, !tbaa !17
  %index.next100 = add nuw i64 %index95, 2        ; 2 uses
  %i.de = icmp eq i64 %index.next100, 396
  br i1 %i.de, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body94, !llvm.loop !28

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body94
  %i.df = load i64, ptr %i.k, align 8, !tbaa !17
  %i.dg = and i64 %i.df, -2147483648
  %i.dh = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.di = and i64 %i.dh, 2147483646
  %i.dj = or disjoint i64 %i.di, %i.dg
  %i.dk = load i64, ptr %i.l, align 8, !tbaa !17
  %i.dl = lshr exact i64 %i.dj, 1
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = and i64 %i.dh, 1
  %.not.i.i27 = icmp eq i64 %i.dn, 0
  %i.do = select i1 %.not.i.i27, i64 0, i64 2567483615
  %i.dp = xor i64 %i.dm, %i.do
  store i64 %i.dp, ptr %i.k, align 8, !tbaa !17
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.dq = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.ai, %select.unfold.i.i ] ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 3 uses
  store i64 %i.dr, ptr %i.j, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  %i.du = lshr i64 %i.dt, 11
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = xor i64 %i.dv, %i.dt                    ; 2 uses
  %i.dx = shl i64 %i.dw, 7
  %i.dy = and i64 %i.dx, 2636928640
  %i.dz = xor i64 %i.dy, %i.dw                    ; 2 uses
  %i.ea = shl i64 %i.dz, 15
  %i.eb = and i64 %i.ea, 4022730752
  %i.ec = xor i64 %i.eb, %i.dz                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 18
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = uitofp i64 %i.ee to double
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.eh = fpext double %.01422.i.i to x86_fp80
  %i.ei = fmul x86_fp80 %i.eh, f0x401F8000000000000000
  %i.ej = fptrunc x86_fp80 %i.ei to double        ; 2 uses
  %i.ek = add i64 %.023.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26
  %.be = phi i64 [ %i.dr, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %i.hx, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.023.i.i.be = phi i64 [ %i.ek, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.01422.i.i.be = phi double [ %i.ej, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.01521.i.i.be = phi double [ %i.eg, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  br label %select.unfold.i.i

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.ag, %bb.c ]
  br label %select.unfold.i.i20

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41
  %i.el = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.em = fdiv double %i.im, %i.ip                ; 2 uses
  %i.en = fcmp ult double %i.em, 1.000000e+00
  br i1 %i.en, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26, label %bb.f, !prof !9

select.unfold.i.i20:                              ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit
  %i.eo = phi i64 [ %i.dr, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.hx, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.023.i.i21 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.iq, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %.01422.i.i22 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.ip, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.01521.i.i23 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.im, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %i.ep = icmp ugt i64 %i.eo, 623
  br i1 %i.ep, label %vector.ph81, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

vector.ph81:                                      ; preds = %select.unfold.i.i20
  %.pre.i.i28 = load i64, ptr %1, align 8, !tbaa !17
  %vector.recur.init84 = insertelement <2 x i64> poison, i64 %.pre.i.i28, i64 1
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next90, %vector.body82 ] ; 3 uses
  %vector.recur85 = phi <2 x i64> [ %vector.recur.init84, %vector.ph81 ], [ %wide.load87, %vector.body82 ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83 ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %wide.load86 = load <2 x i64>, ptr %i.es, align 8, !tbaa !17 ; 4 uses
  %wide.load87 = load <2 x i64>, ptr %i.et, align 8, !tbaa !17 ; 5 uses
  %i.eu = shufflevector <2 x i64> %vector.recur85, <2 x i64> %wide.load86, <2 x i32> <i32 1, i32 2>
  %i.ev = shufflevector <2 x i64> %wide.load86, <2 x i64> %wide.load87, <2 x i32> <i32 1, i32 2>
  %i.ew = and <2 x i64> %i.eu, splat (i64 -2147483648)
  %i.ex = and <2 x i64> %i.ev, splat (i64 -2147483648)
  %i.ey = and <2 x i64> %wide.load86, splat (i64 2147483646)
  %i.ez = and <2 x i64> %wide.load87, splat (i64 2147483646)
  %i.fa = or disjoint <2 x i64> %i.ey, %i.ew
  %i.fb = or disjoint <2 x i64> %i.ez, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 3176
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eq, i64 3192
  %wide.load88 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !17
  %wide.load89 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !17
  %i.fe = lshr exact <2 x i64> %i.fa, splat (i64 1)
  %i.ff = lshr exact <2 x i64> %i.fb, splat (i64 1)
  %i.fg = xor <2 x i64> %i.fe, %wide.load88
  %i.fh = xor <2 x i64> %i.ff, %wide.load89
  %i.fi = and <2 x i64> %wide.load86, splat (i64 1)
  %i.fj = and <2 x i64> %wide.load87, splat (i64 1)
  %i.fk = icmp eq <2 x i64> %i.fi, zeroinitializer
  %i.fl = icmp eq <2 x i64> %i.fj, zeroinitializer
  %i.fm = select <2 x i1> %i.fk, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fn = select <2 x i1> %i.fl, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fo = xor <2 x i64> %i.fg, %i.fm
  %i.fp = xor <2 x i64> %i.fh, %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x i64> %i.fo, ptr %i.eq, align 8, !tbaa !17
  store <2 x i64> %i.fp, ptr %i.fq, align 8, !tbaa !17
  %index.next90 = add nuw i64 %index83, 4         ; 2 uses
  %i.fr = icmp eq i64 %index.next90, 224
  br i1 %i.fr, label %vector.ph, label %vector.body82, !llvm.loop !29

vector.ph:                                        ; preds = %vector.body82
  %vector.recur.extract = extractelement <2 x i64> %wide.load87, i64 1
  %i.fs = and i64 %vector.recur.extract, -2147483648
  %i.ft = load i64, ptr %i.w, align 8, !tbaa !17  ; 3 uses
  %i.fu = and i64 %i.ft, 2147483646
  %i.fv = or disjoint i64 %i.fu, %i.fs
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !17
  %i.fx = lshr exact i64 %i.fv, 1
  %i.fy = xor i64 %i.fx, %i.fw
  %i.fz = and i64 %i.ft, 1
  %.not20.i.i30 = icmp eq i64 %i.fz, 0
  %i.ga = select i1 %.not20.i.i30, i64 0, i64 2567483615
  %i.gb = xor i64 %i.fy, %i.ga
  store i64 %i.gb, ptr %i.v, align 8, !tbaa !17
  %i.gc = and i64 %i.ft, -2147483648
  %i.gd = load i64, ptr %i.z, align 8, !tbaa !17  ; 3 uses
  %i.ge = and i64 %i.gd, 2147483646
  %i.gf = or disjoint i64 %i.ge, %i.gc
  %i.gg = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.gh = lshr exact i64 %i.gf, 1
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = and i64 %i.gd, 1
  %.not20.i.i30.1 = icmp eq i64 %i.gj, 0
  %i.gk = select i1 %.not20.i.i30.1, i64 0, i64 2567483615
  %i.gl = xor i64 %i.gi, %i.gk
  store i64 %i.gl, ptr %i.y, align 8, !tbaa !17
  %i.gm = and i64 %i.gd, -2147483648
  %i.gn = load i64, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.go = and i64 %i.gn, 2147483646
  %i.gp = or disjoint i64 %i.go, %i.gm
  %i.gq = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.gr = lshr exact i64 %i.gp, 1
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = and i64 %i.gn, 1
  %.not20.i.i30.2 = icmp eq i64 %i.gt, 0
  %i.gu = select i1 %.not20.i.i30.2, i64 0, i64 2567483615
  %i.gv = xor i64 %i.gs, %i.gu
  store i64 %i.gv, ptr %i.ab, align 8, !tbaa !17
  %.pre24.i.i34 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !17
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i34, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1816
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1824
  %wide.load = load <2 x i64>, ptr %i.gz, align 8, !tbaa !17 ; 4 uses
  %i.ha = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.hb = and <2 x i64> %i.ha, splat (i64 -2147483648)
  %i.hc = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.hd = or disjoint <2 x i64> %i.hc, %i.hb
  %wide.load80 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !17
  %i.he = lshr exact <2 x i64> %i.hd, splat (i64 1)
  %i.hf = xor <2 x i64> %i.he, %wide.load80
  %i.hg = and <2 x i64> %wide.load, splat (i64 1)
  %i.hh = icmp eq <2 x i64> %i.hg, zeroinitializer
  %i.hi = select <2 x i1> %i.hh, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.hj = xor <2 x i64> %i.hf, %i.hi
  store <2 x i64> %i.hj, ptr %i.gx, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hk = icmp eq i64 %index.next, 396
  br i1 %i.hk, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39, label %vector.body, !llvm.loop !30

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39: ; preds = %vector.body
  %i.hl = load i64, ptr %i.k, align 8, !tbaa !17
  %i.hm = and i64 %i.hl, -2147483648
  %i.hn = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ho = and i64 %i.hn, 2147483646
  %i.hp = or disjoint i64 %i.ho, %i.hm
  %i.hq = load i64, ptr %i.l, align 8, !tbaa !17
  %i.hr = lshr exact i64 %i.hp, 1
  %i.hs = xor i64 %i.hr, %i.hq
  %i.ht = and i64 %i.hn, 1
  %.not.i.i40 = icmp eq i64 %i.ht, 0
  %i.hu = select i1 %.not.i.i40, i64 0, i64 2567483615
  %i.hv = xor i64 %i.hs, %i.hu
  store i64 %i.hv, ptr %i.k, align 8, !tbaa !17
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41: ; preds = %select.unfold.i.i20, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39
  %i.hw = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39 ], [ %i.eo, %select.unfold.i.i20 ] ; 2 uses
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 3 uses
  store i64 %i.hx, ptr %i.j, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hw
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !17 ; 2 uses
  %i.ia = lshr i64 %i.hz, 11
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = xor i64 %i.ib, %i.hz                    ; 2 uses
  %i.id = shl i64 %i.ic, 7
  %i.ie = and i64 %i.id, 2636928640
  %i.if = xor i64 %i.ie, %i.ic                    ; 2 uses
  %i.ig = shl i64 %i.if, 15
  %i.ih = and i64 %i.ig, 4022730752
  %i.ii = xor i64 %i.ih, %i.if                    ; 2 uses
  %i.ij = lshr i64 %i.ii, 18
  %i.ik = xor i64 %i.ij, %i.ii
  %i.il = uitofp i64 %i.ik to double
  %i.im = tail call double @llvm.fmuladd.f64(double %i.il, double %.01422.i.i22, double %.01521.i.i23) ; 2 uses
  %i.in = fpext double %.01422.i.i22 to x86_fp80
  %i.io = fmul x86_fp80 %i.in, f0x401F8000000000000000
  %i.ip = fptrunc x86_fp80 %i.io to double        ; 2 uses
  %i.iq = add i64 %.023.i.i21, -1                 ; 2 uses
  %.not.i.i24 = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i24, label %bb.e, label %select.unfold.i.i20, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26: ; preds = %bb.e, %bb.f
  %.016.i.i25 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.f ], [ %i.em, %bb.e ]
  %i.ir = tail call double @llvm.fmuladd.f64(double %.016.i.i25, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.is = fmul double %i.ir, %i.ir
  %i.it = tail call double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.is) ; 4 uses
  %i.iu = fcmp ogt double %i.it, 1.000000e+00
  %i.iv = fcmp oeq double %i.it, 0.000000e+00
  %i.iw = or i1 %i.iu, %i.iv
  br i1 %i.iw, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26
  %i.ix = tail call ninf double @llvm.log.f64(double %i.it)
  %i.iy = fmul double %i.ix, -2.000000e+00
  %i.iz = fdiv double %i.iy, %i.it
  %i.ja = tail call double @sqrt(double noundef %i.iz) #5 ; 2 uses
  %i.jb = fmul double %i.el, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.jb, ptr %i.jc, align 8, !tbaa !24
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.jd = fmul double %i.ir, %i.ja
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.af, %bb.b ], [ %i.jd, %bb.g ]
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jf = load double, ptr %i.je, align 8, !tbaa !33
  %i.jg = load double, ptr %2, align 8, !tbaa !34
  %i.jh = tail call double @llvm.fmuladd.f64(double %.0, double %i.jf, double %i.jg)
  ret double %i.jh
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_sampler.cpp() #4 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr @_ZN3g2oL18_univariateSamplerE, align 16, !tbaa !35
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2oL18_univariateSamplerE, i64 16), align 16, !tbaa !24
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2oL18_univariateSamplerE, i64 24), align 8, !tbaa !23
  store double 1.000000e+00, ptr @_ZN3g2oL12_uniformRealE.1, align 8, !tbaa !13
  store i64 5489, ptr @_ZN3g2oL9_gen_realE, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 5489, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.q, %bb.c ] ; 4 uses
  %i.d = getelementptr [8 x i8], ptr @_ZN3g2oL9_gen_realE, i64 %.011.i.i.i.i
  %i.e = lshr i64 %store_forwarded, 30
  %i.f = xor i64 %i.e, %store_forwarded
  %i.g = mul nuw nsw i64 %i.f, 1812433253
  %i.h = add nuw i64 %i.g, %.011.i.i.i.i          ; 2 uses
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !17
  %i.j = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.j, 624
  br i1 %exitcond.not.i.i.i.i, label %__cxx_global_var_init.5.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr [8 x i8], ptr @_ZN3g2oL9_gen_realE, i64 %i.j
  %i.l = lshr i64 %i.i, 30
  %i.m = xor i64 %i.l, %i.h
  %i.n = mul i64 %i.m, 1812433253
  %i.o = add i64 %i.n, %i.j
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !17
  %i.q = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

__cxx_global_var_init.5.exit:                     ; preds = %bb.b
  store i64 624, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2oL9_gen_realE, i64 4992), align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"double", !5, i64 0}
!12 = !{!"_ZTSNSt25uniform_real_distributionIdE10param_typeE", !11, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 8}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !5, i64 0, !14, i64 4992}
!16 = !{!15, !14, i64 4992}
!17 = !{!14, !14, i64 0}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !11, i64 0, !11, i64 8}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSSt19normal_distributionIdE", !20, i64 0, !11, i64 16, !21, i64 24}
!23 = !{!22, !21, i64 24}
!24 = !{!22, !11, i64 16}
!25 = distinct !{!25, !10, !18, !19}
!26 = distinct !{!26, !10, !18, !19}
!27 = distinct !{!27, !10, !18, !19}
!28 = distinct !{!28, !10, !18, !19}
!29 = distinct !{!29, !10, !18, !19}
!30 = distinct !{!30, !10, !18, !19}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!20, !11, i64 8}
!34 = !{!20, !11, i64 0}
!35 = !{!11, !11, i64 0}
end_hunk_0
