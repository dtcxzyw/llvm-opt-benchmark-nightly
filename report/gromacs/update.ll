Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update?download=true
inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 53
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dy
  %i.ea = load ptr, ptr %12, align 8, !tbaa !71   ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 52 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cm, i64 296
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !360 ; 5 uses
  %i.ee = load i8, ptr %14, align 1, !tbaa !67, !range !331, !noundef !332
  %i.ef = trunc nuw i8 %i.ee to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %.not95.i = icmp eq i32 %i.cw, 0
  %.not.i.i = icmp eq i32 %i.cy, 0
  %or.cond63.i = or i1 %.not95.i, %.not.i.i
  br i1 %or.cond63.i, label %_Z11do_per_stepll.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = sext i32 %i.cy to i64                   ; 2 uses
  %i.eh = add i64 %i.cv, -1
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = srem i64 %i.ei, %i.eg
  %i.ek = icmp eq i64 %i.ej, 0
  br label %_Z11do_per_stepll.exit.i

_Z11do_per_stepll.exit.i:                         ; preds = %bb.e, %bb.d
  %i.el = phi i1 [ false, %bb.d ], [ %i.ek, %bb.e ] ; 4 uses
  %i.em = icmp eq i32 %i.cw, 2
  %i.en = and i1 %i.em, %i.el                     ; 6 uses
  %i.eo = zext i1 %i.en to i8
  %i.ep = icmp ne i32 %i.cx, 2
  %.not.i98.i = icmp eq i32 %i.cz, 0
  %or.cond64.i = or i1 %i.ep, %.not.i98.i
  br i1 %or.cond64.i, label %.critedge.i, label %_Z11do_per_stepll.exit100.i

_Z11do_per_stepll.exit100.i:                      ; preds = %_Z11do_per_stepll.exit.i
  %i.eq = sext i32 %i.cz to i64                   ; 2 uses
  %i.er = add i64 %i.cv, -1
  %i.es = add i64 %i.er, %i.eq
  %i.et = srem i64 %i.es, %i.eq
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_Z11do_per_stepll.exit100.i
  %i.ev = load ptr, ptr %.sroa.gep45.i, align 8, !tbaa !260, !noalias !579 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !177
  %i.ey = fcmp une float %i.ex, 0.000000e+00
  br i1 %i.ey, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr i8, ptr %i.ev, i64 24
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !177
  %i.fb = fcmp une float %i.fa, 0.000000e+00
  br i1 %i.fb, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fc = getelementptr i8, ptr %i.ev, i64 28
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !177
  %i.fe = fcmp une float %i.fd, 0.000000e+00
  %i.ff = select i1 %i.fe, i32 2, i32 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g, %bb.f, %_Z11do_per_stepll.exit100.i, %_Z11do_per_stepll.exit.i
  %i.fg = phi i32 [ %i.ff, %bb.h ], [ 0, %_Z11do_per_stepll.exit100.i ], [ 2, %bb.g ], [ 2, %bb.f ], [ 0, %_Z11do_per_stepll.exit.i ] ; 2 uses
  %.not96.i = icmp eq i32 %i.fg, 0                ; 3 uses
  %i.fh = sitofp i32 %i.cz to float
  %i.fi = fmul float %i.cu, %i.fh                 ; 7 uses
  %i.fj = select i1 %.not96.i, float 0.000000e+00, float %i.fi ; 9 uses
  %i.fk = icmp ne i32 %i.dg, 3
  %or.cond.i = or i1 %i.fk, %i.el
  %i.fl = select i1 %or.cond.i, i32 %i.dg, i32 0  ; 4 uses
  %i.fm = icmp eq i32 %i.fg, 2
  %or.cond3.i = select i1 %i.en, i1 true, i1 %i.fm
  %i.fn = icmp ne i32 %i.fl, 0
  %or.cond5.i = or i1 %i.fn, %or.cond3.i
  br i1 %or.cond5.i, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20, !noalias !579
  store ptr %28, ptr %i.aq, align 8, !tbaa !260, !noalias !579
  %i.fo = select i1 %.not96.i, ptr %28, ptr %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %28, i8 0, i64 36, i1 false), !noalias !579
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20, !noalias !579
  store i32 %i.cf, ptr %29, align 8, !tbaa !580, !noalias !579
  store i32 %spec.select.i, ptr %i.ar, align 4, !tbaa !586, !noalias !579
  store i8 %i.eo, ptr %i.as, align 8, !tbaa !587, !noalias !579
  store float %i.cu, ptr %i.at, align 4, !tbaa !588, !noalias !579
  store float %i.fj, ptr %i.au, align 8, !tbaa !589, !noalias !579
  store ptr %i.da, ptr %i.av, align 8, !tbaa !225, !noalias !579
  store ptr %i.df, ptr %i.aw, align 8, !tbaa !225, !noalias !579
  store ptr %i.dh, ptr %i.ax, align 8, !tbaa !225, !noalias !579
  store ptr %i.dm, ptr %i.ay, align 8, !tbaa !225, !noalias !579
  store ptr %i.dn, ptr %i.az, align 8, !tbaa !62, !noalias !579
  store ptr %i.ds, ptr %i.ba, align 8, !tbaa !62, !noalias !579
  store ptr %i.ao, ptr %i.bb, align 8, !tbaa !590, !noalias !579
  store ptr %i.du, ptr %i.bc, align 8, !tbaa !62, !noalias !579
  store ptr %i.dz, ptr %i.bd, align 8, !tbaa !62, !noalias !579
  store ptr %i.ea, ptr %i.be, align 8, !tbaa !591, !noalias !579
  store ptr %i.eb, ptr %i.bf, align 8, !tbaa !592, !noalias !579
  store ptr %i.co, ptr %i.bg, align 8, !tbaa !593, !noalias !579
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !594, !noalias !579
  store ptr %i.cr, ptr %i.bi, align 8, !tbaa !595, !noalias !579
  store ptr %i.cs, ptr %i.bj, align 8, !tbaa !596, !noalias !579
  store ptr %i.ed, ptr %i.bk, align 8, !tbaa !597, !noalias !579
  store i32 %i.cy, ptr %i.bl, align 8, !tbaa !598, !noalias !579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 8 dereferenceable(56) %i.fo, i64 36, i1 false), !tbaa.struct !599, !noalias !579
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !260, !noalias !579
  switch i32 %i.fl, label %bb.ad [
    i32 3, label %bb.j
    i32 2, label %bb.p
    i32 1, label %bb.v
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !457, !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !611
  invoke void @_ZN3gmx27setBoxDeformationFlowMatrixEPA3_KfS2_PA3_f(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %.loopexit265

.noexc:                                           ; preds = %bb.j
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !612, !noalias !611 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !613, !noalias !616 ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fs, align 8, !tbaa !268, !noalias !616
  %i.fw = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fdiv <2 x double> %i.fv, %i.fx
  %i.fz = fptrunc <2 x double> %i.fy to <2 x float>
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !268, !noalias !616
  %i.gc = fdiv double %i.gb, %i.fu
  %i.gd = fptrunc double %i.gc to float
  %i.ge = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZZZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSX_ENKUlSR_E_clISt17integral_constantImLm3EEEEDaSR_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc
  %i.gf = icmp eq ptr %i.da, %i.db
  %i.gg = sitofp i32 %i.cy to double
  %i.gh = fmul nnan double %i.gg, 5.000000e-01
  %i.gi = fpext float %i.cu to double
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = load ptr, ptr %i.bn, align 8, !tbaa !260, !noalias !611 ; 5 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %i.gm = getelementptr i8, ptr %i.gk, i64 24
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !177, !noalias !616
  %i.go = getelementptr i8, ptr %i.gk, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !177, !noalias !616
  %i.gq = getelementptr i8, ptr %i.gk, i64 32
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !177, !noalias !616
  %i.gs = sext i32 %i.cf to i64
  %wide.trip.count.i.i.i.i.i.i.i.i = sext i32 %spec.select.i to i64
  %i.gt = load <4 x float>, ptr %i.gk, align 4, !tbaa !177, !noalias !616 ; 3 uses
  %i.gu = load <2 x float>, ptr %i.gl, align 4, !tbaa !177, !noalias !616
  %i.gv = load <4 x float>, ptr %i.a, align 16, !tbaa !177, !noalias !611 ; 3 uses
  %i.gw = load <4 x float>, ptr %i.bv, align 16   ; 2 uses
  %i.gx = load float, ptr %i.bw, align 8, !tbaa !177, !noalias !611
  %i.gy = load float, ptr %i.bx, align 4, !tbaa !177, !noalias !611
  %i.gz = load float, ptr %i.by, align 16, !tbaa !177, !noalias !611
  %i.ha = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <2 x i32> <i32 2, i32 5>
  %i.hb = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hc = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <2 x i32> <i32 1, i32 4>
  %i.hd = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hf = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hi = shufflevector <4 x float> %i.gt, <4 x float> %i.hh, <2 x i32> <i32 2, i32 5>
  %i.hj = shufflevector <4 x float> %i.gt, <4 x float> %i.hh, <2 x i32> <i32 1, i32 4>
  %i.hk = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %bb.o ] ; 7 uses
  %.0667.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i, %bb.o ]
  br i1 %i.gf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i.i.i.i
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !255, !noalias !611
  %i.hn = zext i16 %i.hm to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i.i.i.i.i.i.i.i = phi i32 [ %.0667.i.i.i.i.i.i.i.i, %bb.k ], [ %i.hn, %bb.l ] ; 2 uses
  %i.ho = zext nneg i32 %.1.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.hp = getelementptr inbounds nuw [144 x i8], ptr %i.fq, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 116
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !617, !noalias !616 ; 2 uses
  %i.hs = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %.sroa.11.0.copyload.i.i.i.i.i.i.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !tbaa !175, !alias.scope !618, !noalias !619
  %i.ht = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 2 uses
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !177, !alias.scope !620, !noalias !621 ; 5 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load float, ptr %31, align 4, !tbaa !177, !alias.scope !620, !noalias !621 ; 3 uses
  %32 = load <2 x float>, ptr %i.hs, align 4, !alias.scope !618, !noalias !619
  %i.hw = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = fmul <2 x float> %i.hc, %i.hw
  %i.hy = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.hb, <2 x float> %i.hx)
  %33 = insertelement <2 x float> poison, float %i.hv, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.ha, <2 x float> %i.hz)
  %i.ib = fsub <2 x float> %i.ia, %i.fz           ; 2 uses
  %i.ic = fsub <2 x float> %32, %i.ib             ; 6 uses
  %i.id = extractelement <2 x float> %i.hu, i64 1
  %i.ie = fmul float %i.gy, %i.id
  %35 = extractelement <2 x float> %i.hu, i64 0
  %36 = call float @llvm.fmuladd.f32(float %35, float %i.gx, float %i.ie)
  %i.if = call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.gz, float %36)
  %i.ig = fsub float %i.if, %i.gd                 ; 2 uses
  %i.ih = fsub float %.sroa.11.0.copyload.i.i.i.i.i.i.i.i, %i.ig ; 4 uses
  br i1 %i.en, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ho
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !268, !alias.scope !622, !noalias !623
  %i.ik = fmul double %i.gj, %i.ij
  %i.il = fptrunc double %i.ik to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.067.i.i.i.i.i.i.i.i = phi float [ %i.il, %bb.n ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %i.im = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.im, <2 x float> zeroinitializer)
  %i.io = extractelement <2 x float> %i.ic, i64 0
  %i.ip = call float @llvm.fmuladd.f32(float %i.gn, float %i.io, float 0.000000e+00)
  %i.iq = extractelement <2 x float> %i.ic, i64 1
  %i.ir = call float @llvm.fmuladd.f32(float %i.gp, float %i.iq, float %i.ip)
  %i.is = call float @llvm.fmuladd.f32(float %i.gr, float %i.ih, float %i.ir)
  %i.it = fmul float %i.fj, %i.is
  %i.iu = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 2 uses
  %i.iv = getelementptr inbounds [12 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 2 uses
  %i.iw = fadd float %.067.i.i.i.i.i.i.i.i, 1.000000e+00 ; 2 uses
  %i.ix = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i.i.i.i.i.i ; 2 uses
  %i.iy = fneg <2 x float> %i.ic
  %i.iz = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ja = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.iz, <2 x float> %i.in)
  %i.jb = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.jc, <2 x float> %i.ja)
  %i.je = fmul <2 x float> %i.hg, %i.jd
  %i.jf = load <2 x float>, ptr %i.iu, align 4, !tbaa !177, !alias.scope !624, !noalias !625
  %i.jg = load <2 x float>, ptr %i.iv, align 4, !tbaa !177, !noalias !611
  %i.jh = fmul <2 x float> %i.jf, %i.jg
  %i.ji = insertelement <2 x float> poison, float %.067.i.i.i.i.i.i.i.i, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %i.jj, %i.iy
  %i.jl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.he, <2 x float> %i.jk)
  %i.jm = fsub <2 x float> %i.jl, %i.je
  %i.jn = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.ic, <2 x float> %i.jm)
  %i.jq = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fdiv <2 x float> %i.jp, %i.jr
  %i.jt = fadd <2 x float> %i.ib, %i.js           ; 2 uses
  store <2 x float> %i.jt, ptr %i.hs, align 4, !tbaa !177, !alias.scope !618, !noalias !619
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.he, <2 x float> %i.hu)
  store <2 x float> %i.ju, ptr %i.ix, align 4, !tbaa !177, !alias.scope !626, !noalias !627
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !177, !alias.scope !624, !noalias !625
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !177, !noalias !611
  %i.jz = fmul float %i.jw, %i.jy
  %i.ka = fneg float %i.ih
  %i.kb = fmul float %.067.i.i.i.i.i.i.i.i, %i.ka
  %i.kc = call float @llvm.fmuladd.f32(float %i.jz, float %i.cu, float %i.kb)
  %i.kd = fsub float %i.kc, %i.it
  %i.ke = call float @llvm.fmuladd.f32(float %i.hr, float %i.ih, float %i.kd)
  %i.kf = fdiv float %i.ke, %i.iw
  %i.kg = fadd float %i.ig, %i.kf                 ; 2 uses
  store float %i.kg, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !tbaa !177, !alias.scope !618, !noalias !619
  %i.kh = call float @llvm.fmuladd.f32(float %i.kg, float %i.cu, float %i.hv)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store float %i.kh, ptr %i.ki, align 4, !tbaa !177, !alias.scope !626, !noalias !627
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %"_ZZZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSX_ENKUlSR_E_clISt17integral_constantImLm3EEEEDaSR_.exit.i.i.i.i.i", label %bb.k, !llvm.loop !628

"_ZZZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSX_ENKUlSR_E_clISt17integral_constantImLm3EEEEDaSR_.exit.i.i.i.i.i": ; preds = %bb.o, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !611
  br label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i"

bb.p:                                             ; preds = %bb.i
  %i.kj = getelementptr i8, ptr %i.cm, i64 84
  %.val1.i.i.i.i.i.i.i.i = load float, ptr %i.kj, align 4, !tbaa !177, !noalias !579
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !457, !noalias !640
  %i.km = fdiv float f0x40C90FDB, %.val1.i.i.i.i.i.i.i.i
  %i.kn = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.kn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.p
  %i.ko = icmp eq ptr %i.da, %i.db
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !641, !noalias !640
  %i.ks = sitofp i32 %i.cy to double
  %i.kt = fmul nnan double %i.ks, 5.000000e-01
  %i.ku = fpext float %i.cu to double
  %i.kv = fmul double %i.kt, %i.ku
  %i.kw = load float, ptr %i.bm, align 8, !tbaa !177, !noalias !640
  %i.kx = load float, ptr %i.bo, align 4, !tbaa !177, !noalias !640
  %i.ky = load float, ptr %i.bp, align 8, !tbaa !177, !noalias !640
  %i.kz = load <4 x float>, ptr %i.bq, align 4, !tbaa !177, !noalias !640 ; 3 uses
  %i.la = load <4 x float>, ptr %i.bt, align 4    ; 2 uses
  %i.lb = sext i32 %i.cf to i64
  %wide.trip.count.i.i.i.i.i.i.i.i.i = sext i32 %spec.select.i to i64
  %i.lc = load float, ptr %i.kp, align 8, !tbaa !642, !noalias !640
  %i.ld = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = shufflevector <4 x float> %i.kz, <4 x float> %i.la, <2 x i32> <i32 2, i32 5>
  %i.li = shufflevector <4 x float> %i.kz, <4 x float> %i.la, <2 x i32> <i32 1, i32 4>
  %i.lj = shufflevector <4 x float> %i.kz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.u ] ; 7 uses
  %.0587.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.u ]
  br i1 %i.ko, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i.i.i.i.i
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !255, !noalias !640
  %i.lm = zext i16 %i.ll to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i.i.i.i.i.i.i.i.i = phi i32 [ %.0587.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.lm, %bb.r ] ; 2 uses
  %i.ln = zext nneg i32 %.1.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.lo = getelementptr inbounds nuw [144 x i8], ptr %i.kl, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 116
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !617, !noalias !643 ; 2 uses
  %i.lr = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.010.0.copyload.i.i.i.i.i.i.i.i.i = load float, ptr %i.lr, align 4, !alias.scope !644, !noalias !645
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 4 ; 2 uses
  %i.ls = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !644, !noalias !645 ; 6 uses
  %i.lt = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !177, !alias.scope !646, !noalias !647 ; 2 uses
  %i.lw = fmul float %i.km, %i.lv
  %i.lx = call noundef float @cosf(float noundef %i.lw) #20, !noalias !643 ; 2 uses
  %i.ly = fmul float %i.kr, %i.lx                 ; 2 uses
  %i.lz = fsub float %.sroa.010.0.copyload.i.i.i.i.i.i.i.i.i, %i.ly ; 4 uses
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ln
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !268, !alias.scope !648, !noalias !649
  %i.mc = fmul double %i.kv, %i.mb
  %i.md = fptrunc double %i.mc to float
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.060.i.i.i.i.i.i.i.i.i = phi float [ %i.md, %bb.t ], [ 0.000000e+00, %bb.s ] ; 3 uses
  %i.me = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.mf, <2 x float> zeroinitializer)
  %i.mh = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mi = getelementptr inbounds [12 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mj = fadd float %.060.i.i.i.i.i.i.i.i.i, 1.000000e+00 ; 2 uses
  %i.mk = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !177, !alias.scope !650, !noalias !651
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !177, !noalias !640
  %i.mn = fmul float %i.ml, %i.mm
  %i.mo = fneg float %i.lz
  %i.mp = fmul float %.060.i.i.i.i.i.i.i.i.i, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mn, float %i.cu, float %i.mp)
  %i.mr = call float @llvm.fmuladd.f32(float %i.kw, float %i.lz, float 0.000000e+00)
  %i.ms = extractelement <2 x float> %i.ls, i64 0
  %i.mt = call float @llvm.fmuladd.f32(float %i.kx, float %i.ms, float %i.mr)
  %i.mu = extractelement <2 x float> %i.ls, i64 1
  %i.mv = call float @llvm.fmuladd.f32(float %i.ky, float %i.mu, float %i.mt)
  %i.mw = fmul float %i.fj, %i.mv
  %i.mx = fsub float %i.mq, %i.mw
  %i.my = call float @llvm.fmuladd.f32(float %i.lq, float %i.lz, float %i.mx)
  %i.mz = fdiv float %i.my, %i.mj
  %i.na = fmul float %i.lc, %i.lx
  %i.nb = call float @llvm.fmuladd.f32(float %i.na, float %i.cu, float %i.ly)
  %i.nc = fadd float %i.nb, %i.mz                 ; 2 uses
  store float %i.nc, ptr %i.lr, align 4, !tbaa !177, !alias.scope !644, !noalias !645
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.nf = fneg <2 x float> %i.ls
  %i.ng = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.ng, <2 x float> %i.mg)
  %i.ni = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.ni, <2 x float> %i.nh)
  %i.nk = fmul <2 x float> %i.lg, %i.nj
  %i.nl = load <2 x float>, ptr %i.nd, align 4, !tbaa !177, !alias.scope !650, !noalias !651
  %i.nm = load <2 x float>, ptr %i.ne, align 4, !tbaa !177, !noalias !640
  %i.nn = fmul <2 x float> %i.nl, %i.nm
  %i.no = insertelement <2 x float> poison, float %.060.i.i.i.i.i.i.i.i.i, i64 0
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = fmul <2 x float> %i.np, %i.nf
  %i.nr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.le, <2 x float> %i.nq)
  %i.ns = fsub <2 x float> %i.nr, %i.nk
  %i.nt = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.ls, <2 x float> %i.ns)
  %i.nw = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fdiv <2 x float> %i.nv, %i.nx           ; 3 uses
  %i.nz = load <2 x float>, ptr %i.lt, align 4, !tbaa !177, !alias.scope !646, !noalias !647
  %i.oa = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ob = insertelement <2 x float> %i.oa, float %i.nc, i64 0
  %i.oc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.le, <2 x float> %i.nz)
  store <2 x float> %i.oc, ptr %i.mk, align 4, !tbaa !177, !alias.scope !652, !noalias !653
  store <2 x float> %i.ny, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !tbaa !177, !alias.scope !644, !noalias !645
  %i.od = extractelement <2 x float> %i.ny, i64 1
  %i.oe = call float @llvm.fmuladd.f32(float %i.od, float %i.cu, float %i.lv)
  %i.of = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store float %i.oe, ptr %i.of, align 4, !tbaa !177, !alias.scope !652, !noalias !653
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i", label %bb.q, !llvm.loop !654

bb.v:                                             ; preds = %bb.i
  %i.og = getelementptr i8, ptr %i.ea, i64 32
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !457, !noalias !579
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.oh = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.v
  %i.oi = icmp eq ptr %i.da, %i.db
  %i.oj = icmp eq ptr %i.dh, %i.di
  %i.ok = sitofp i32 %i.cy to double
  %i.ol = fmul nnan double %i.ok, 5.000000e-01
  %i.om = fpext float %i.cu to double
  %i.on = fmul double %i.ol, %i.om
  %i.oo = load <4 x float>, ptr %i.bm, align 8, !tbaa !177, !noalias !668 ; 3 uses
  %i.op = load <4 x float>, ptr %i.br, align 8    ; 2 uses
  %i.oq = load float, ptr %i.bs, align 8, !tbaa !177, !noalias !668
  %i.or = load float, ptr %i.bt, align 4, !tbaa !177, !noalias !668
  %i.os = load float, ptr %i.bu, align 8, !tbaa !177, !noalias !668
  %i.ot = sext i32 %i.cf to i64
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i = sext i32 %spec.select.i to i64
  %i.ou = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ow = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oy = shufflevector <4 x float> %i.oo, <4 x float> %i.op, <2 x i32> <i32 2, i32 5>
  %i.oz = shufflevector <4 x float> %i.oo, <4 x float> %i.op, <2 x i32> <i32 1, i32 4>
  %i.pa = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ot, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %bb.ac ] ; 8 uses
  %.08.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  %.0527.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.153.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  br i1 %i.oi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !255, !noalias !668
  %i.pd = zext i16 %i.pc to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.153.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0527.i.i.i.i.i.i.i.i.i.i, %bb.w ], [ %i.pd, %bb.x ] ; 2 uses
end_hunk_0
