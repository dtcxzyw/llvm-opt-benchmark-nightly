Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE:bb.a
  %i.y = load i64, ptr %i.x, align 8, !tbaa !185  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !184
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.r, i64 1
  br label %bb.d

._crit_edge51:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph50, %._crit_edge
  %.sroa.525.049 = phi i64 [ %i.y, %.lr.ph50 ], [ %i.az, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !212, !nonnull !76, !align !213
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !214
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.525.049
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !215
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ap)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !218 ; 2 uses
  %.not45 = icmp eq i32 %i.aq, 512
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph75.6, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.d
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.d ], [ %i.iz, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ], [ %i.iz, %.lr.ph.i.i.i.i.5 ], [ %i.iz, %.lr.ph.i.i.i.i.4 ], [ %i.iz, %.lr.ph.i.i.i.i.3 ], [ %i.iz, %.lr.ph.i.i.i.i.2 ], [ %i.iz, %.lr.ph.i.i.i.i.1 ], [ %i.iz, %.lr.ph.i.i.i.i ], [ %i.iz, %.lr.ph.i.i.i.i.preheader ], [ %i.iz, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.iz, %.lr.ph75.6 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.as = load ptr, ptr %0, align 8, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.525.049 ; 2 uses
  %i.aw = extractelement <2 x double> %i.ar, i64 0
  store double %i.aw, ptr %i.av, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.w
  %i.ay = extractelement <2 x double> %i.ar, i64 1
  store double %i.ay, ptr %i.ax, align 8, !tbaa !124
  %i.az = add nuw i64 %.sroa.525.049, 1           ; 2 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !184
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %._crit_edge51, !llvm.loop !621

.lr.ph:                                           ; preds = %bb.d, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
  %i.bc = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ %i.aq, %bb.d ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.iz, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !225
  %i.bi = fpext float %i.bh to double
  %i.bj = fmul double %i.s, %i.bi                 ; 2 uses
  %i.bk = call noundef double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp ogt double %i.bk, 1.500000e+00
  br i1 %i.bl, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bm = fmul double %i.bj, f0x4000C152382D7365
  %i.bn = call double @cos(double noundef %i.bm) #21
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = fmul double %i.bo, f0x3FD5555555555555  ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.e, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.br = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.bs = load i32, ptr %i.ac, align 8, !tbaa !218 ; 4 uses
  %i.bt = lshr i32 %i.bs, 6
  %i.bu = lshr i32 %i.bs, 3
  %i.bv = and i32 %i.bu, 7
  %i.bw = and i32 %i.bs, 7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !226
  %i.bz = add nsw i32 %i.by, %i.bt
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !226
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !226
  %i.cf = add nsw i32 %i.ce, %i.bw
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cc to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.cf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.cg = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.ch = zext i32 %i.bs to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !225
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !79
  store float %i.cj, ptr %i.ck, align 4, !tbaa !225
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.cl = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 16 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.co = load float, ptr %i.cn, align 4, !tbaa !225 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !225 ; 2 uses
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = load float, ptr %i.ah, align 4, !tbaa !248 ; 3 uses
  %i.ct = fmul float %i.cs, %i.cr                 ; 2 uses
  %i.cu = fpext float %i.cr to double
  %i.cv = load <4 x float>, ptr %i.cm, align 4, !tbaa !225 ; 3 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cy = fsub <2 x float> %i.cw, %i.cx           ; 3 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %i.da = fmul float %i.cz, %i.cs                 ; 2 uses
  %i.db = extractelement <2 x float> %i.cy, i64 1
  %i.dc = fmul float %i.db, %i.cs                 ; 2 uses
  %i.dd = fmul float %i.dc, %i.dc
  %i.de = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.dd)
  %i.df = call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.de)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fpext float %sqrt.i to double
  %i.dh = fpext <2 x float> %i.cy to <2 x double>
  %i.di = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.dj = insertelement <4 x double> %i.di, double %i.cu, i64 1
  %i.dk = shufflevector <2 x double> %i.dh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x double> %i.dj, <4 x double> %i.dk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dm = fmul <4 x double> %i.dl, <double 1.000000e+00, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01> ; 8 uses
  %i.dn = insertelement <4 x double> %i.dm, double %i.dg, i64 0
  %i.do = fmul <4 x double> %i.dm, %i.dn          ; 10 uses
  %i.dp = extractelement <4 x double> %i.do, i64 2
  %i.dq = extractelement <4 x double> %i.do, i64 3
  %i.dr = fadd double %i.dp, %i.dq
  %i.ds = extractelement <4 x double> %i.do, i64 1
  %i.dt = fadd double %i.dr, %i.ds                ; 2 uses
  %i.du = fcmp ugt double %i.dt, 1.000000e-15
  br i1 %i.du, label %bb.f, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

bb.f:                                             ; preds = %bb.e
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !225 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !225
  %i.dz = load float, ptr %i.cl, align 4, !tbaa !225 ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float -2.000000e+00, float %i.co)
  %i.eb = fadd float %i.cq, %i.ea
  %i.ec = fpext float %i.eb to double             ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !225
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !225
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !225
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.el = load float, ptr %i.ek, align 4, !tbaa !225
  %i.em = fsub float %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.eo = load float, ptr %i.en, align 4, !tbaa !225
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cl, i64 52
  %i.er = load float, ptr %i.eq, align 4, !tbaa !225
  %i.es = fsub float %i.ep, %i.er
  %i.et = fpext float %i.es to double
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !225
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cl, i64 60
  %i.ex = load <2 x float>, ptr %i.ef, align 4, !tbaa !225 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.ew, align 4, !tbaa !225 ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ev, i64 1
  %i.fb = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fc = fsub <2 x float> %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fe = fadd <2 x float> %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !225
  %i.fh = extractelement <4 x double> %i.dm, i64 1 ; 2 uses
  %i.fi = extractelement <4 x double> %i.dm, i64 2 ; 2 uses
  %i.fj = fmul double %i.fi, %i.fh
  %i.fk = extractelement <4 x double> %i.dm, i64 3 ; 2 uses
  %i.fl = fmul double %i.fi, %i.fk
  %i.fm = fneg double %i.ec
  %sqrt.i22 = call double @llvm.sqrt.f64(double %i.dt) ; 3 uses
  %i.fn = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x float> %i.dw, float %i.dy, i64 1
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> splat (float -2.000000e+00), <2 x float> %i.fp)
  %i.fr = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> %i.dw, <2 x i32> <i32 0, i32 3>
  %i.ft = fadd <2 x float> %i.fs, %i.fq
  %i.fu = fpext <2 x float> %i.ft to <2 x double> ; 6 uses
  %i.fv = fmul double %i.et, 2.500000e-01         ; 6 uses
  %i.fw = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fg, i64 1
  %i.fy = fsub <2 x float> %i.fe, %i.fx
  %i.fz = fpext <2 x float> %i.fy to <2 x double>
  %i.ga = fmul <2 x double> %i.fz, splat (double 2.500000e-01) ; 7 uses
  %i.gb = extractelement <2 x double> %i.fu, i64 1
  %i.gc = extractelement <2 x double> %i.fu, i64 0
  %i.gd = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = fadd <2 x double> %i.ge, %i.fu          ; 2 uses
  %i.gg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fu)
  %i.gh = fmul double %i.fk, %i.fh                ; 2 uses
  %i.gi = extractelement <2 x double> %i.ga, i64 1 ; 3 uses
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gl = shufflevector <4 x double> %i.do, <4 x double> %i.gk, <2 x i32> <i32 3, i32 5>
  %i.gm = fneg <2 x double> %i.ga
  %i.gn = shufflevector <2 x double> %i.gf, <2 x double> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.go = fmul <2 x double> %i.gl, %i.gn
  %i.gp = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gq = shufflevector <4 x double> %i.do, <4 x double> %i.gp, <2 x i32> <i32 2, i32 5>
  %i.gr = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %i.ec, i64 1
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gs, <2 x double> %i.go) ; 2 uses
  %i.gu = fneg double %i.fv
  %i.gv = fmul double %i.fv, %i.gu
  %i.gw = shufflevector <4 x double> %i.do, <4 x double> %i.gp, <2 x i32> <i32 1, i32 4>
  %i.gx = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.ec, i64 1
  %i.gz = insertelement <2 x double> %i.gt, double %i.gv, i64 1
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gy, <2 x double> %i.gz) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ga, i64 0
  %i.hc = shufflevector <4 x double> %i.do, <4 x double> %i.gk, <2 x i32> <i32 3, i32 4>
  %i.hd = fneg <2 x double> %i.ga
  %i.he = shufflevector <2 x double> %i.ha, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2>
  %i.hf = fmul <2 x double> %i.hc, %i.he
  %i.hg = shufflevector <4 x double> %i.do, <4 x double> %i.gp, <2 x i32> <i32 2, i32 4>
  %i.hh = shufflevector <2 x double> %i.gt, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hh, <2 x double> %i.hf) ; 2 uses
  %i.hj = fneg double %i.gc
  %i.hk = fmul double %i.gi, %i.hj
  %i.hl = shufflevector <4 x double> %i.do, <4 x double> %i.gk, <2 x i32> <i32 1, i32 4>
  %i.hm = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hn = insertelement <2 x double> %i.hm, double %i.fv, i64 1
  %i.ho = insertelement <2 x double> %i.hi, double %i.hk, i64 1
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hn, <2 x double> %i.ho) ; 2 uses
  %i.hq = fneg double %i.gb
  %i.hr = fmul double %i.fv, %i.hq
  %i.hs = call double @llvm.fmuladd.f64(double %i.hb, double %i.gi, double %i.hr)
  %i.ht = fmul double %i.fj, %i.hs
  %i.hu = extractelement <2 x double> %i.hp, i64 1
  %i.hv = call double @llvm.fmuladd.f64(double %i.gh, double %i.hu, double %i.ht)
  %3 = shufflevector <4 x double> %i.dm, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hw = insertelement <2 x double> %3, double %i.fm, i64 1
  %4 = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hx = insertelement <2 x double> %4, double %i.fv, i64 0
  %i.hy = fmul <2 x double> %i.hw, %i.hx
  %i.hz = shufflevector <4 x double> %i.dm, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ia = insertelement <2 x double> %i.hz, double %i.fv, i64 1
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ga, <2 x double> %i.hy)
  %i.ic = shufflevector <4 x double> %i.dm, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.id = insertelement <2 x double> %i.ic, double %i.fl, i64 1
  %i.ie = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.hv, i64 1
  %i.ig = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.ib, <2 x double> %i.if)
  %i.ih = shufflevector <2 x double> %i.ha, <2 x double> %i.hp, <2 x i32> <i32 0, i32 2>
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.ih)
  %i.ij = fmul double %sqrt.i22, %sqrt.i22
  %i.ik = load <2 x float>, ptr %i.ah, align 4, !tbaa !225
  %i.il = fpext <2 x float> %i.ik to <2 x double>
  %i.im = fmul <2 x double> %i.ii, %i.il
  %i.in = insertelement <2 x double> poison, double %sqrt.i22, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.ij, i64 1 ; 2 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = fmul <2 x double> %i.io, %i.ip
  %i.ir = fdiv <2 x double> %i.im, %i.iq
  %i.is = fptrunc <2 x double> %i.ir to <2 x float>
  %i.it = fpext <2 x float> %i.is to <2 x double>
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit: ; preds = %bb.e, %bb.f
  %i.iu = phi <2 x double> [ %i.it, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.iv = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %i.iv, %i.iu
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.ak, <2 x double> %i.bd)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.iy = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bc, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bc, %.lr.ph ]
  %i.iz = phi <2 x double> [ %i.ix, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERfSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ] ; 11 uses
  %i.ja = load ptr, ptr %i.ai, align 8, !tbaa !241 ; 8 uses
  %i.jb = add i32 %i.iy, 1                        ; 4 uses
  %i.jc = lshr i32 %i.jb, 6                       ; 3 uses
  %i.jd = icmp ugt i32 %i.jb, 511
  br i1 %i.jd, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.je = and i32 %i.jb, 63
  %i.jf = zext nneg i32 %i.jc to i64              ; 8 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !229 ; 2 uses
  %i.ji = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = and i64 %i.jh, %i.jj
  %.not.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.h:                                             ; preds = %bb.g
  %i.jl = shl nsw i64 -1, %i.ji
  %i.jm = and i64 %i.jh, %i.jl                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %exitcond.not.i.i.i.i73 = icmp eq i32 %i.jc, 7
  br i1 %exitcond.not.i.i.i.i73, label %._crit_edge, label %.lr.ph75

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph75
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph75.1

.lr.ph75.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.jf, 2 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.1
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.jo, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph75.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph75.2

.lr.ph75.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.jf, 3 ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.2
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.jq, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph75.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph75.3

.lr.ph75.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.jf, 4 ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.3
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.js, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph75.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph75.4

.lr.ph75.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.jf, 5 ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.4
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ju, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph75.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph75.5

.lr.ph75.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.jf, 6 ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.5
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.jw, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph75.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph75.6

.lr.ph75.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.jf, 7 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i.6
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.jy, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph75:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.jf, 1 ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i.i.i
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph75.6, %.lr.ph75.5, %.lr.ph75.4, %.lr.ph75.3, %.lr.ph75.2, %.lr.ph75.1, %.lr.ph75
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph75 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph75.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph75.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph75.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph75.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph75.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph75.6 ]
  %.lcssa = phi i64 [ %i.ka, %.lr.ph75 ], [ %i.jo, %.lr.ph75.1 ], [ %i.jq, %.lr.ph75.2 ], [ %i.js, %.lr.ph75.3 ], [ %i.ju, %.lr.ph75.4 ], [ %i.jw, %.lr.ph75.5 ], [ %i.jy, %.lr.ph75.6 ]
  %i.kb = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %.016.lcssa.i.i.i.i = phi i32 [ %i.jc, %bb.h ], [ %i.kb, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.jm, %bb.h ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.kc = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.kd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = or disjoint i32 %i.kc, %i.ke
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.kf, %.critedge.i.i.i.i ], [ %i.jb, %bb.g ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !218
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !622
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !247
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  tail call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb0EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(148) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6reduceEi(ptr noundef nonnull align 8 dereferenceable(86) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::less.339", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151  ; 5 uses
  %i.h = mul i64 %i.g, %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 6 uses
  %.idx = shl i64 %i.g, 3                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.not10 = icmp eq i64 %i.g, 0
  br i1 %.not10, label %_ZN3tbb6detail2d113parallel_sortIPdEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.g, 500
  br i1 %i.k, label %_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i, label %bb.c

_ZSt4sortIPdSt4lessIdEEvT_S3_T0_.exit.i.i:        ; preds = %bb.b
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = xor i64 %i.m, 126
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n)
  tail call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %i.i, ptr noundef nonnull %i.j)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesclERKNS4_11LeafManagerIKSD_E9LeafRangeE:bb.a
  br label %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit

_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i, %bb.b, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !334    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !252 ; 4 uses
  %i.r = fmul double %i.q, %i.q
  %i.s = fdiv double 1.000000e+00, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !274
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !275
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !312  ; 2 uses
  %i.z = load i64, ptr %1, align 8, !tbaa !311
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.r, i64 1
  br label %bb.d

._crit_edge53:                                    ; preds = %._crit_edge, %_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph52, %._crit_edge
  %.sroa.5.051 = phi i64 [ %i.y, %.lr.ph52 ], [ %i.az, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !316, !nonnull !76, !align !213
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !317
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.5.051
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !318
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ap)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !218 ; 2 uses
  %.not47 = icmp eq i32 %i.aq, 512
  br i1 %.not47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph77.6, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.d
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.d ], [ %i.hv, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread ], [ %i.hv, %.lr.ph.i.i.i.i.5 ], [ %i.hv, %.lr.ph.i.i.i.i.4 ], [ %i.hv, %.lr.ph.i.i.i.i.3 ], [ %i.hv, %.lr.ph.i.i.i.i.2 ], [ %i.hv, %.lr.ph.i.i.i.i.1 ], [ %i.hv, %.lr.ph.i.i.i.i ], [ %i.hv, %.lr.ph.i.i.i.i.preheader ], [ %i.hv, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.hv, %.lr.ph77.6 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.as = load ptr, ptr %0, align 8, !tbaa !334
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.5.051 ; 2 uses
  %i.aw = extractelement <2 x double> %i.ar, i64 0
  store double %i.aw, ptr %i.av, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.w
  %i.ay = extractelement <2 x double> %i.ar, i64 1
  store double %i.ay, ptr %i.ax, align 8, !tbaa !124
  %i.az = add nuw i64 %.sroa.5.051, 1             ; 2 uses
  %i.ba = load i64, ptr %1, align 8, !tbaa !311
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %._crit_edge53, !llvm.loop !672

.lr.ph:                                           ; preds = %bb.d, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit
  %i.bc = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ %i.aq, %bb.d ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.hv, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !322
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !124
  %i.bi = fmul double %i.s, %i.bh                 ; 2 uses
  %i.bj = call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, 1.500000e+00
  br i1 %i.bk, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit: ; preds = %.lr.ph
  %i.bl = fmul double %i.bi, f0x4000C152382D7365
  %i.bm = call double @cos(double noundef %i.bl) #21
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = fmul double %i.bn, f0x3FD5555555555555  ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.e, label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

bb.e:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.bq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %i.br = load i32, ptr %i.ac, align 8, !tbaa !218 ; 4 uses
  %i.bs = lshr i32 %i.br, 6
  %i.bt = lshr i32 %i.br, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = and i32 %i.br, 7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !226
  %i.by = add nsw i32 %i.bx, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 84
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !226
  %i.cb = add nsw i32 %i.ca, %i.bu
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !226
  %i.ce = add nsw i32 %i.cd, %i.bv
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cb to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.af, align 8
  store i32 %i.ce, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !322
  %i.cg = zext i32 %i.br to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !124
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !93
  store double %i.ci, ptr %i.cj, align 8, !tbaa !124
  call void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %i.af)
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !93, !noalias !676 ; 16 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cq = load double, ptr %i.ah, align 8, !tbaa !336, !noalias !676 ; 3 uses
  %i.cr = load <4 x double>, ptr %i.cm, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.cs = load double, ptr %i.cn, align 8, !tbaa !124, !noalias !676
  %i.ct = load double, ptr %i.cl, align 8, !tbaa !124, !noalias !676
  %i.cu = load double, ptr %i.co, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.cv = load double, ptr %i.cp, align 8, !tbaa !124, !noalias !676 ; 2 uses
  %i.cw = fsub double %i.cu, %i.cv                ; 2 uses
  %i.cx = fmul double %i.cq, %i.cw                ; 2 uses
  %i.cy = fmul double %i.cw, 5.000000e-01         ; 5 uses
  %i.cz = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cs, i64 1
  %i.db = shufflevector <4 x double> %i.cr, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dc = fsub <2 x double> %i.da, %i.db          ; 3 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fmul double %i.dd, %i.cq                ; 2 uses
  %i.df = extractelement <2 x double> %i.dc, i64 1
  %i.dg = fmul double %i.df, %i.cq                ; 2 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = call double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.dh)
  %i.dj = call double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.di)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.dj)
  %i.dk = fmul double %i.bo, %sqrt.i
  %i.dl = fmul <2 x double> %i.dc, splat (double 5.000000e-01) ; 6 uses
  %i.dm = fmul <2 x double> %i.dl, %i.dl          ; 2 uses
  %i.dn = fmul double %i.cy, %i.cy                ; 3 uses
  %i.do = extractelement <2 x double> %i.dm, i64 0 ; 3 uses
  %i.dp = extractelement <2 x double> %i.dm, i64 1 ; 3 uses
  %i.dq = fadd double %i.do, %i.dp
  %i.dr = fadd double %i.dq, %i.dn                ; 2 uses
  %i.ds = fcmp ugt double %i.dr, 1.000000e-15
  br i1 %i.ds, label %bb.f, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

bb.f:                                             ; preds = %bb.e
  %i.dt = load double, ptr %i.ck, align 8, !tbaa !124 ; 2 uses
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double -2.000000e+00, double %i.cu)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !124
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !124
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !124
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !124
  %i.ee = fsub double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !124
  %i.eh = fadd double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !124
  %i.ek = fsub double %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ck, i64 144
  %i.em = load double, ptr %i.el, align 8, !tbaa !124
  %i.en = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.eo = load <2 x double>, ptr %i.dx, align 8, !tbaa !124 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.en, align 8, !tbaa !124 ; 2 uses
  %i.eq = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.em, i64 1
  %i.es = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.et = fsub <2 x double> %i.er, %i.es
  %i.eu = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.ev = fadd <2 x double> %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !124
  %i.ey = extractelement <2 x double> %i.dl, i64 0 ; 2 uses
  %i.ez = fmul double %i.ey, %i.cy
  %i.fa = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %i.fb = fmul double %i.ey, %i.fa
  %sqrt.i23 = call double @llvm.sqrt.f64(double %i.dr) ; 3 uses
  %i.fc = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <4 x double> %i.cr, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fe)
  %i.fg = fadd <2 x double> %i.db, %i.ff          ; 5 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  %i.fi = fadd double %i.cv, %i.du                ; 5 uses
  %i.fj = fmul double %i.ek, 2.500000e-01         ; 6 uses
  %i.fk = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.ex, i64 1
  %i.fm = fsub <2 x double> %i.ev, %i.fl
  %i.fn = fmul <2 x double> %i.fm, splat (double 2.500000e-01) ; 7 uses
  %i.fo = extractelement <2 x double> %i.fg, i64 1 ; 4 uses
  %i.fp = fadd double %i.fo, %i.fi
  %i.fq = fadd double %i.fh, %i.fi
  %i.fr = fmul double %i.dp, %i.fq
  %i.fs = call double @llvm.fmuladd.f64(double %i.do, double %i.fp, double %i.fr)
  %i.ft = fadd double %i.fh, %i.fo
  %i.fu = call double @llvm.fmuladd.f64(double %i.dn, double %i.ft, double %i.fs)
  %i.fv = fmul double %i.fa, %i.cy                ; 2 uses
  %i.fw = extractelement <2 x double> %i.fn, i64 1 ; 4 uses
  %i.fx = fmul double %i.fv, %i.fw
  %i.fy = fneg double %i.fw
  %i.fz = fmul double %i.fw, %i.fy
  %i.ga = call double @llvm.fmuladd.f64(double %i.fo, double %i.fi, double %i.fz)
  %i.gb = fneg double %i.fj
  %i.gc = fmul double %i.fj, %i.gb
  %i.gd = call double @llvm.fmuladd.f64(double %i.fh, double %i.fi, double %i.gc)
  %i.ge = fmul double %i.dp, %i.gd
  %i.gf = call double @llvm.fmuladd.f64(double %i.do, double %i.ga, double %i.ge)
  %i.gg = extractelement <2 x double> %i.fn, i64 0
  %i.gh = shufflevector <2 x double> %i.fn, <2 x double> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.gi = fneg <2 x double> %i.gh
  %i.gj = fmul <2 x double> %i.fn, %i.gi
  %i.gk = shufflevector <2 x double> %i.fg, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.gl = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = insertelement <2 x double> %i.gl, double %i.fj, i64 1
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gj) ; 2 uses
  %i.go = extractelement <2 x double> %i.gn, i64 0
  %i.gp = call double @llvm.fmuladd.f64(double %i.dn, double %i.go, double %i.gf)
  %i.gq = fneg double %i.fo
  %i.gr = fmul double %i.fj, %i.gq
  %i.gs = call double @llvm.fmuladd.f64(double %i.gg, double %i.fw, double %i.gr)
  %i.gt = fmul double %i.ez, %i.gs
  %i.gu = extractelement <2 x double> %i.gn, i64 1
  %i.gv = call double @llvm.fmuladd.f64(double %i.fv, double %i.gu, double %i.gt)
  %i.gw = fneg double %i.fi
  %3 = insertelement <2 x double> poison, double %i.cy, i64 0
  %4 = insertelement <2 x double> %3, double %i.gw, i64 1
  %5 = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gx = insertelement <2 x double> %5, double %i.fj, i64 0
  %6 = fmul <2 x double> %4, %i.gx
  %7 = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x double> %7, double %i.fj, i64 1
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.fn, <2 x double> %6)
  %i.ha = insertelement <2 x double> %i.dl, double %i.fb, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gv, i64 1
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.gp, i64 1
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.hf)
  %i.hh = fmul double %sqrt.i23, %sqrt.i23
  %i.hi = load <2 x double>, ptr %i.ah, align 8, !tbaa !124
  %i.hj = fmul <2 x double> %i.hi, %i.hg
  %i.hk = insertelement <2 x double> poison, double %sqrt.i23, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hh, i64 1 ; 2 uses
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = fmul <2 x double> %i.hl, %i.hm
  %i.ho = fdiv <2 x double> %i.hj, %i.hn
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit: ; preds = %bb.e, %bb.f
  %i.hp = phi <2 x double> [ %i.ho, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.hq = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hr, %i.hp
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.ak, <2 x double> %i.bd)
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !218
  br label %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread

_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread: ; preds = %.lr.ph, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit
  %i.hu = phi i32 [ %.pre, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.bc, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bc, %.lr.ph ]
  %i.hv = phi <2 x double> [ %i.ht, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb0EE10curvaturesERdSG_.exit ], [ %i.bd, %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit ], [ %i.bd, %.lr.ph ] ; 11 uses
  %i.hw = load ptr, ptr %i.ai, align 8, !tbaa !241 ; 8 uses
  %i.hx = add i32 %i.hu, 1                        ; 4 uses
  %i.hy = lshr i32 %i.hx, 6                       ; 3 uses
  %i.hz = icmp ugt i32 %i.hx, 511
  br i1 %i.hz, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK7openvdb5v13_05tools10DiracDeltaIdEclEd.exit.thread
  %i.ia = and i32 %i.hx, 63
  %i.ib = zext nneg i32 %i.hy to i64              ; 8 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ib
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !229 ; 2 uses
  %i.ie = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = and i64 %i.id, %i.if
  %.not.i.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ih = shl nsw i64 -1, %i.ie
  %i.ii = and i64 %i.id, %i.ih                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %exitcond.not.i.i.i.i75 = icmp eq i32 %i.hy, 7
  br i1 %exitcond.not.i.i.i.i75, label %._crit_edge, label %.lr.ph77

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph77
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.ib, 2 ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.1
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ik, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph77.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph77.2

.lr.ph77.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.ib, 3 ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.2
  %i.im = load i64, ptr %i.il, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.im, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph77.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph77.3

.lr.ph77.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.ib, 4 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.3
  %i.io = load i64, ptr %i.in, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.io, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph77.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph77.4

.lr.ph77.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.ib, 5 ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.4
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.iq, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph77.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph77.5

.lr.ph77.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.ib, 6 ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.5
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.is, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph77.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph77.6

.lr.ph77.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.ib, 7 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i.6
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.iu, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.lr.ph77:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.ib, 1 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i.i.i.i
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !229 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !6

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph77.6, %.lr.ph77.5, %.lr.ph77.4, %.lr.ph77.3, %.lr.ph77.2, %.lr.ph77.1, %.lr.ph77
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph77 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph77.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph77.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph77.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph77.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph77.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph77.6 ]
  %.lcssa = phi i64 [ %i.iw, %.lr.ph77 ], [ %i.ik, %.lr.ph77.1 ], [ %i.im, %.lr.ph77.2 ], [ %i.io, %.lr.ph77.3 ], [ %i.iq, %.lr.ph77.4 ], [ %i.is, %.lr.ph77.5 ], [ %i.iu, %.lr.ph77.6 ]
  %i.ix = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.h
  %.016.lcssa.i.i.i.i = phi i32 [ %i.hy, %bb.h ], [ %i.ix, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ii, %bb.h ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.iy = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.iz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = or disjoint i32 %i.iy, %i.ja
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.g, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.jb, %.critedge.i.i.i.i ], [ %i.hx, %bb.g ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ac, align 8, !tbaa !218
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !675
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC2ERKSI_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #4 comdat($_ZN7openvdb5v13_05tools15LevelSetMeasureINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE17MeasureCurvaturesC5ERKSI_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !334    ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !334
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251  ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !335
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !255  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !304
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEE, i64 16), ptr %i.e, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 9223372034707292159, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2147483647, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %.06.i.i.i.i.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.1.i.i.i.i.i, align 4
  %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.1.i.sroa_idx.i.i.i.i, align 4, !tbaa !121
  %.06.i.i.i.i.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 9223372034707292159, ptr %.06.i.i.i.i.ptr.2.i.i.i.i.i, align 8
  %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2147483647, ptr %.sroa.6.0..06.i.i.i.i.ptr.2.i.sroa_idx.i.i.i.i, align 8, !tbaa !121
  store ptr null, ptr %i.i, align 8, !tbaa !305
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.m, ptr %i.k, align 8, !tbaa !306
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, i8 0, i64 152, i1 false)
  store ptr %i.p, ptr %i.r, align 8, !tbaa !307
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 9223372034707292159, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 2147483647, ptr %.sroa.2.0..sroa_idx.i.i, align 8
end_hunk_1
