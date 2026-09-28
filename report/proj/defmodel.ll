Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEE7forwardERS4_ddddbRdS7_S7_:bb.a
  br i1 %i.nm, label %bb.cg, label %.thread558

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #37
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #37
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #37
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #37
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !61
  %i.nn = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  br i1 %i.nn, label %bb.cc, label %.thread552

bb.cc:                                            ; preds = %bb.cb
  %i.no = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ki, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.no, label %bb.cd, label %.thread552

bb.cd:                                            ; preds = %bb.cc
  %i.np = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %.sroa.speculated432, i32 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  br i1 %i.np, label %bb.ce, label %.thread552

bb.ce:                                            ; preds = %bb.cd
  %i.nq = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid25getEastingNorthingZOffsetEiiRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(72) %.val15.i, i32 noundef %i.ki, i32 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  br i1 %i.nq, label %bb.cf, label %.thread552

.thread552:                                       ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #37
  br label %.thread558

bb.cf:                                            ; preds = %bb.ce
  %i.nr = load double, ptr %i.y, align 8, !tbaa !61
  %i.ns = load double, ptr %i.z, align 8, !tbaa !61
  %i.nt = fmul double %i.ks, %i.ns
  %i.nu = call double @llvm.fmuladd.f64(double %i.nr, double %i.kq, double %i.nt)
  %i.nv = load double, ptr %i.aa, align 8, !tbaa !61
  %i.nw = call double @llvm.fmuladd.f64(double %i.nv, double %i.kr, double %i.nu)
  %i.nx = load double, ptr %i.ab, align 8, !tbaa !61
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double %i.kt, double %i.nw)
  %i.nz = call double @llvm.fmuladd.f64(double %.0.i, double %i.ny, double %.0283685)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #37
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ca
  %.6289 = phi double [ %.0283685, %bb.ca ], [ %i.nz, %bb.cf ]
  %.val352 = load ptr, ptr %.sroa.0492.0679, align 8, !tbaa !168 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.val352, i64 8
  %i.ob = load i8, ptr %i.oa, align 8, !tbaa !184, !range !92, !noundef !93
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.od = load double, ptr %i.q, align 8, !tbaa !61
  %i.oe = load double, ptr %i.s, align 8, !tbaa !61
  %i.of = load double, ptr %i.u, align 8, !tbaa !61
  %i.og = load double, ptr %i.w, align 8, !tbaa !61
  %i.oh = load double, ptr %i.r, align 8, !tbaa !61
  %i.oi = load double, ptr %i.t, align 8, !tbaa !61
  %i.oj = load double, ptr %i.v, align 8, !tbaa !61
  %i.ok = load double, ptr %i.x, align 8, !tbaa !61
  %i.ol = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.om = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> zeroinitializer
  %i.on = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.oe, i64 1
  %i.op = fmul <2 x double> %i.om, %i.oo
  %i.oq = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.or = insertelement <2 x double> %i.oq, double %i.od, i64 1
  %i.os = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.ot, <2 x double> %i.op)
  %i.ov = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.of, i64 1
  %i.ox = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.oy, <2 x double> %i.ou)
  %i.pa = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.og, i64 1
  %i.pc = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.pd = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.pd, <2 x double> %i.oz)
  %i.pf = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.pg = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.pe, <2 x double> %i.ck)
  br label %bb.cp

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #37
  %i.pi = getelementptr inbounds nuw i8, ptr %.val352, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %.val352, i64 40
  %.val.i.i = load ptr, ptr %i.pj, align 8, !tbaa !83 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.val352, i64 32 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val.i.i, %bb.ci ] ; 3 uses
  %.083.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.pk, %bb.ci ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 32
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !201
  %i.pn = icmp ult ptr %i.pm, %.val15.i           ; 2 uses
  %.19.i.i.i = select i1 %i.pn, ptr %.083.i.i.i, ptr %.04.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.pn, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.po = icmp eq ptr %.19.i.i.i, %i.pk
  br i1 %i.po, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !201
  %i.pr = icmp ult ptr %.val15.i, %i.pq
  br i1 %i.pr, label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.cj

_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.ci, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %i.ps = load double, ptr %i.jj, align 8, !tbaa !528 ; 2 uses
  %i.pt = fcmp olt double %i.ps, f0x3F91DF46A2529D39
  %i.pu = zext i1 %i.pt to i8
  %i.pv = fmul double %i.ps, 5.000000e-01         ; 2 uses
  %i.pw = call double @sin(double noundef %i.pv) #37
  %i.px = call double @cos(double noundef %i.pv) #37
  %i.py = load double, ptr %i.jk, align 8, !tbaa !213 ; 2 uses
  %i.pz = call double @sin(double noundef %i.py) #37
  %i.qa = call double @cos(double noundef %i.py) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11.0..sroa_idx, i8 0, i64 128, i1 false)
  store ptr %.val15.i, ptr %15, align 8, !tbaa !530
  store ptr %.val15.i, ptr %i.cg, align 8, !tbaa !201
  store i8 %i.pu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !215
  store double %i.pw, ptr %.sroa.5424.0..sroa_idx, align 8, !tbaa !61
  store double %i.px, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !61
  store double %i.pz, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !61
  store double %i.qa, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !61
  store i32 -1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !34
  store i32 -1, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !34
  %i.qb = call fastcc ptr @_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE6insertIS9_IS3_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.pi, ptr noundef nonnull align 8 dereferenceable(192) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %.sroa.0426.0 = phi ptr [ %i.qb, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread ], [ %.19.i.i.i, %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0426.0, i64 40
  %i.qd = load double, ptr %i.q, align 8, !tbaa !61
  %i.qe = load double, ptr %i.r, align 8, !tbaa !61
  %i.qf = load double, ptr %i.s, align 8, !tbaa !61
  %i.qg = load double, ptr %i.t, align 8, !tbaa !61
  %i.qh = load double, ptr %i.u, align 8, !tbaa !61
  %i.qi = load double, ptr %i.v, align 8, !tbaa !61
  %i.qj = load double, ptr %i.w, align 8, !tbaa !61
  %i.qk = load double, ptr %i.x, align 8, !tbaa !61
  call fastcc void @_ZN16DeformationModel6GridExIN12_GLOBAL__N_14GridEE21getBilinearGeocentricEiiddddddddddddRdS4_S4_(ptr noundef nonnull align 8 dereferenceable(184) %i.qc, i32 noundef %.sroa.speculated432, i32 noundef %.sroa.speculated, double noundef %i.qd, double noundef %i.qe, double noundef %i.qf, double noundef %i.qg, double noundef %i.qh, double noundef %i.qi, double noundef %i.qj, double noundef %i.qk, double noundef %i.kq, double noundef %i.ks, double noundef %i.kr, double noundef %i.kt, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ql = trunc nuw i8 %.0299684 to i1
  br i1 %i.ql, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qm = call double @sin(double noundef %.0512531) #37
  %i.qn = call double @cos(double noundef %.0512531) #37
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.1325 = phi double [ %.0324682, %bb.cj ], [ %i.qn, %bb.ck ] ; 2 uses
  %.1312 = phi double [ %.0311683, %bb.cj ], [ %i.qm, %bb.ck ] ; 2 uses
  %i.qo = fadd double %i.kl, -5.000000e-01
  %i.qp = load double, ptr %i.jj, align 8, !tbaa !528
  %i.qq = fmul double %i.qo, %i.qp                ; 5 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0426.0, i64 48
  %i.qs = load i8, ptr %i.qr, align 8, !tbaa !531, !range !92, !noundef !93
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qu = fmul double %i.qq, %i.qq
  %i.qv = insertelement <2 x double> poison, double %i.qu, i64 0
  %i.qw = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> <double f0xBFC5555555555555, double -5.000000e-01>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.qy = extractelement <2 x double> %i.qx, i64 0
  %i.qz = fmul double %i.qq, %i.qy
  %i.ra = extractelement <2 x double> %i.qx, i64 1
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.rb = call double @sin(double noundef %i.qq) #37
  %i.rc = call double @cos(double noundef %i.qq) #37
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.rd = phi double [ %i.qz, %bb.cm ], [ %i.rb, %bb.cn ] ; 2 uses
  %i.re = phi double [ %i.ra, %bb.cm ], [ %i.rc, %bb.cn ] ; 2 uses
  %i.rf = load double, ptr %i.ac, align 8, !tbaa !61
  %16 = fneg double %i.rf                         ; 2 uses
  %i.rg = load double, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %i.rh = fneg double %i.rd
  %i.ri = fmul double %i.rg, %i.rh
  %i.rj = load double, ptr %i.ae, align 8, !tbaa !61
  %i.rk = fmul double %i.re, %i.rg
  %i.rl = call double @llvm.fmuladd.f64(double %16, double %i.re, double %i.ri)
  %i.rm = fmul double %.1325, %i.rj
  %i.rn = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %16, i64 1
  %i.rp = insertelement <2 x double> poison, double %.1312, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.rd, i64 1
  %i.rr = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rs = insertelement <2 x double> %i.rr, double %i.rk, i64 1
  %i.rt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ro, <2 x double> %i.rq, <2 x double> %i.rs)
  %i.ru = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.rt, <2 x double> %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #37
  br label %bb.cp

.thread558:                                       ; preds = %bb.bx, %bb.ca, %bb.bz, %bb.by, %.thread552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit.thread

bb.cp:                                            ; preds = %bb.ch, %bb.co
  %.3327 = phi double [ %.1325, %bb.co ], [ %.0324682, %bb.ch ]
  %.3314 = phi double [ %.1312, %bb.co ], [ %.0311683, %bb.ch ]
  %.3302 = phi i8 [ 1, %bb.co ], [ %.0299684, %bb.ch ]
  %i.rx = phi <2 x double> [ %i.rw, %bb.co ], [ %i.ph, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  br label %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread

_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread: ; preds = %bb.p, %bb.aa, %bb.o, %bb.l, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit, %bb.bb, %bb.bd, %bb.bc, %bb.cp, %bb.bv, %bb.bj
  %.10334.ph = phi double [ %.3327, %bb.cp ], [ %.0324682, %bb.bv ], [ %.0324682, %bb.bj ], [ %.0324682, %bb.bc ], [ %.0324682, %bb.bd ], [ %.0324682, %bb.o ], [ %.0324682, %bb.bb ], [ %.0324682, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0324682, %bb.l ], [ %.0324682, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0324682, %bb.aa ], [ %.0324682, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0324682, %bb.p ] ; 2 uses
  %.10321.ph = phi double [ %.3314, %bb.cp ], [ %.0311683, %bb.bv ], [ %.0311683, %bb.bj ], [ %.0311683, %bb.bc ], [ %.0311683, %bb.bd ], [ %.0311683, %bb.o ], [ %.0311683, %bb.bb ], [ %.0311683, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0311683, %bb.l ], [ %.0311683, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0311683, %bb.aa ], [ %.0311683, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0311683, %bb.p ] ; 2 uses
  %.10309.ph = phi i8 [ %.3302, %bb.cp ], [ %.0299684, %bb.bv ], [ %.0299684, %bb.bj ], [ %.0299684, %bb.bc ], [ %.0299684, %bb.bd ], [ %.0299684, %bb.o ], [ %.0299684, %bb.bb ], [ %.0299684, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0299684, %bb.l ], [ %.0299684, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0299684, %bb.aa ], [ %.0299684, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0299684, %bb.p ] ; 2 uses
  %.14297.ph = phi double [ %.6289, %bb.cp ], [ %.3286, %bb.bv ], [ %i.lj, %bb.bj ], [ %.0283685, %bb.bc ], [ %.0283685, %bb.bd ], [ %.0283685, %bb.o ], [ %.0283685, %bb.bb ], [ %.0283685, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %.0283685, %bb.l ], [ %.0283685, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %.0283685, %bb.aa ], [ %.0283685, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %.0283685, %bb.p ] ; 2 uses
  %i.ry = phi <2 x double> [ %i.cj, %bb.cp ], [ %i.ni, %bb.bv ], [ %i.cj, %bb.bj ], [ %i.cj, %bb.bc ], [ %i.cj, %bb.bd ], [ %i.cj, %bb.o ], [ %i.cj, %bb.bb ], [ %i.cj, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %i.cj, %bb.l ], [ %i.cj, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %i.cj, %bb.aa ], [ %i.cj, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %i.cj, %bb.p ] ; 2 uses
  %i.rz = phi <2 x double> [ %i.rx, %bb.cp ], [ %i.ck, %bb.bv ], [ %i.ck, %bb.bj ], [ %i.ck, %bb.bc ], [ %i.ck, %bb.bd ], [ %i.ck, %bb.o ], [ %i.ck, %bb.bb ], [ %i.ck, %_ZN12_GLOBAL__N_17GridSet6gridAtEdd.exit ], [ %i.ck, %bb.l ], [ %i.ck, %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404 ], [ %i.ck, %bb.aa ], [ %i.ck, %_ZNK16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEE10evaluateAtEd.exit ], [ %i.ck, %bb.p ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0492.0679, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.sa, %.val
  br i1 %.not, label %._crit_edge.loopexit, label %bb.l

._crit_edge.loopexit:                             ; preds = %_ZN16DeformationModelL9bboxCheckERdS0_bdddddd.exit404.thread
  %i.sb = trunc nuw i8 %.10309.ph to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.0324.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.10334.ph, %._crit_edge.loopexit ] ; 2 uses
  %.0311.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.10321.ph, %._crit_edge.loopexit ]
  %.0299.lcssa = phi i1 [ false, %.critedge ], [ %i.sb, %._crit_edge.loopexit ] ; 2 uses
  %.0283.lcssa = phi double [ 0.000000e+00, %.critedge ], [ %.14297.ph, %._crit_edge.loopexit ]
  %i.sc = phi <2 x double> [ zeroinitializer, %.critedge ], [ %i.ry, %._crit_edge.loopexit ] ; 2 uses
  %i.sd = phi <2 x double> [ zeroinitializer, %.critedge ], [ %i.rz, %._crit_edge.loopexit ] ; 7 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !161, !range !92, !noundef !93
  %i.sg = trunc nuw i8 %i.sf to i1
  br i1 %i.sg, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %._crit_edge
  %i.sh = load double, ptr %7, align 8, !tbaa !61
  %i.si = extractelement <2 x double> %i.sc, i64 1
  %i.sj = fadd double %i.si, %i.sh
  store double %i.sj, ptr %7, align 8, !tbaa !61
  %i.sk = load double, ptr %8, align 8, !tbaa !61
  %i.sl = extractelement <2 x double> %i.sc, i64 0
  %i.sm = fadd double %i.sl, %i.sk
  store double %i.sm, ptr %8, align 8, !tbaa !61
  br label %bb.da

bb.cr:                                            ; preds = %._crit_edge
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !162, !range !92, !noundef !93
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.sq = load i8, ptr %i.af, align 2, !tbaa !163, !range !92, !noundef !93
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ss = load double, ptr %7, align 8, !tbaa !61
  %i.st = extractelement <2 x double> %i.sd, i64 1
  %i.su = fadd double %i.st, %i.ss
  store double %i.su, ptr %7, align 8, !tbaa !61
  %i.sv = load double, ptr %8, align 8, !tbaa !61
  %i.sw = extractelement <2 x double> %i.sd, i64 0
  %i.sx = fadd double %i.sw, %i.sv
  store double %i.sx, ptr %8, align 8, !tbaa !61
  br label %bb.da

bb.cu:                                            ; preds = %bb.cs
  br i1 %.0299.lcssa, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sy = call double @cos(double noundef %.0512531) #37
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.12336 = phi double [ %.0324.lcssa, %bb.cu ], [ %i.sy, %bb.cv ] ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !160
  %i.tc = fneg double %.12336
  %i.td = call double @llvm.fmuladd.f64(double %i.tc, double %.12336, double 1.000000e+00)
  %i.te = fmul double %i.td, %i.tb
  %i.tf = fsub double 1.000000e+00, %i.te         ; 2 uses
  %i.tg = call double @sqrt(double noundef %i.tf) #37 ; 2 uses
  %i.th = load <2 x double>, ptr %i.sz, align 8, !tbaa !61 ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.sd, %i.th
  %i.ti = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.tj = fmul double %i.ti, %i.tg
  %i.tk = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.tl = insertelement <2 x double> %i.tk, double %i.tf, i64 1
  %i.tm = insertelement <2 x double> poison, double %i.tg, i64 0
  %i.tn = insertelement <2 x double> %i.tm, double %i.tj, i64 1
  %i.to = fmul <2 x double> %i.tl, %i.tn
  %i.tp = insertelement <2 x double> %i.th, double %.12336, i64 0
  %i.tq = fmul <2 x double> %i.tp, %i.th
  %i.tr = fdiv <2 x double> %i.to, %i.tq          ; 2 uses
  %i.ts = load double, ptr %7, align 8, !tbaa !61
  %i.tt = extractelement <2 x double> %i.tr, i64 0
  %i.tu = fadd double %i.ts, %i.tt
  store double %i.tu, ptr %7, align 8, !tbaa !61
  %i.tv = load double, ptr %8, align 8, !tbaa !61
  %i.tw = extractelement <2 x double> %i.tr, i64 1
  %i.tx = fadd double %i.tv, %i.tw
  store double %i.tx, ptr %8, align 8, !tbaa !61
  br label %bb.da

bb.cx:                                            ; preds = %bb.cr
  br i1 %.0299.lcssa, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ty = call double @sin(double noundef %.0512531) #37
  %i.tz = call double @cos(double noundef %.0512531) #37
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.13337 = phi double [ %.0324.lcssa, %bb.cx ], [ %i.tz, %bb.cy ]
  %.12323 = phi double [ %.0311.lcssa, %bb.cx ], [ %i.ty, %bb.cy ]
  %i.ua = call double @sin(double noundef %.4532) #37
  %i.ub = call double @cos(double noundef %.4532) #37
  %i.uc = extractelement <2 x double> %i.sd, i64 0 ; 2 uses
  %i.ud = fmul double %i.uc, %.12323
  %i.ue = fmul double %i.uc, %.13337
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val373 = load ptr, ptr %i.uf, align 8, !tbaa !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ug = getelementptr inbounds nuw i8, ptr %.val373, i64 120
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !532
  store double %.4532, ptr %13, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %.0512531, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !61
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store double 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !61
  call void %i.uh(ptr dead_on_unwind nonnull writable sret(%struct.PJ_XYZ) align 8 %12, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %13, ptr noundef %.val373), !inline_history !498
  %i.ui = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.uj = load double, ptr %i.ui, align 16, !tbaa !534
  %i.uk = fadd double %i.ue, %i.uj
  %i.ul = insertelement <2 x double> poison, double %i.ub, i64 0
  %i.um = insertelement <2 x double> %i.ul, double %i.ua, i64 1 ; 2 uses
  %i.un = fneg <2 x double> %i.um
  %i.uo = insertelement <2 x double> poison, double %i.ud, i64 0
  %i.up = shufflevector <2 x double> %i.uo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = fmul <2 x double> %i.up, %i.un
  %i.ur = fneg <2 x double> %i.sd
  %i.us = shufflevector <2 x double> %i.sd, <2 x double> %i.ur, <2 x i32> <i32 3, i32 1>
  %i.ut = shufflevector <2 x double> %i.um, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.uu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.ut, <2 x double> %i.uq)
  %i.uv = load <2 x double>, ptr %12, align 16, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.uw = fadd <2 x double> %i.uu, %i.uv
  %.val374 = load ptr, ptr %i.uf, align 8, !tbaa !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.ux = getelementptr inbounds nuw i8, ptr %.val374, i64 128
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !535
  store <2 x double> %i.uw, ptr %11, align 16, !tbaa !61
  %.sroa.5.0..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %i.uk, ptr %.sroa.5.0..sroa_idx.i420, align 16, !tbaa !61
  call void %i.uy(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %10, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %11, ptr noundef %.val374), !inline_history !499
  %i.uz = load double, ptr %10, align 8, !tbaa !537
  store double %i.uz, ptr %7, align 8, !tbaa !61
  %i.va = getelementptr inbounds nuw i8, ptr %10, i64 8
end_hunk_0
