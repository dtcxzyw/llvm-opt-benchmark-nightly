inline.NumInlined: 5418
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii:bb.a

bb.aa:                                            ; preds = %bb.y, %bb.x, %._crit_edge271
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i151 = icmp eq ptr %.sroa.0172.0, null
  br i1 %.not.i.i151, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit152, label %bb.ad

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %bb.ac
  %.0100272 = phi i64 [ %i.eh, %bb.ac ], [ 0, %.lr.ph273.preheader ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0100272
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !112 ; 2 uses
  %.not133 = icmp eq ptr %i.dw, %i.s
  br i1 %.not133, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph273
  %i.dx = sdiv i64 %.0100272, 64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.0172.0, i64 %i.dx
  %i.dz = and i64 %.0100272, -9223372036854775745
  %i.ea = icmp ugt i64 %i.dz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i147 = select i1 %i.ea, i64 -8, i64 0
  %storemerge.i.i.i.i.i148 = getelementptr inbounds i8, ptr %i.dy, i64 %storemerge.idx.i.i.i.i.i147
  %i.eb = and i64 %.0100272, 63
  %i.ec = load i64, ptr %storemerge.i.i.i.i.i148, align 8, !tbaa !16
  %i.ed = lshr i64 %i.ec, %i.eb
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = and i8 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 100
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !78
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph273
  %i.eh = add nuw i64 %.0100272, 1                ; 2 uses
  %exitcond321.not = icmp eq i64 %i.eh, %i.dm
  br i1 %exitcond321.not, label %._crit_edge274, label %.lr.ph273, !llvm.loop !160

bb.ad:                                            ; preds = %bb.aa
  %i.ei = ptrtoint ptr %.sroa.15177.0 to i64
  %i.ej = ptrtoint ptr %.sroa.0172.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.15177.0, i64 %i.em
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ek) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit152

bb.ae:                                            ; preds = %._crit_edge279
  %i.eo = load <2 x double>, ptr %i.bh, align 1, !tbaa !17 ; 2 uses
  %i.ep = fmul <2 x double> %i.eo, %i.eo          ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %i.eq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.er = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !107 ; 2 uses
  %i.et = fmul double %i.es, %i.es
  %i.eu = fadd double %i.et, %i.eq
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.eu)
  %i.ev = fcmp olt double %.scalar.i, 1.000000e-03
  br i1 %i.ev, label %.loopexit242, label %.preheader239.preheader

.preheader239.preheader:                          ; preds = %bb.ae
  %i.ew = icmp eq ptr %8, %i.bh
  br label %.preheader239

bb.af:                                            ; preds = %._crit_edge279
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit152

.preheader239:                                    ; preds = %.preheader239.preheader, %.thread
  %.1 = phi double [ %i.jq, %.thread ], [ %.0286, %.preheader239.preheader ] ; 5 uses
  %.1114 = phi double [ %i.jr, %.thread ], [ %.0113288, %.preheader239.preheader ] ; 2 uses
  %.1102 = phi i8 [ 0, %.thread ], [ %.0101290, %.preheader239.preheader ] ; 3 uses
  %.095 = phi i32 [ %i.js, %.thread ], [ 0, %.preheader239.preheader ]
  %.sroa.0.0.copyload = load <2 x double>, ptr %6, align 16 ; 3 uses
  %.sroa.8.0.copyload = load <2 x double>, ptr %.sroa.8.0..sroa_idx, align 16 ; 2 uses
  %.sroa.9.0.copyload = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 16 ; 3 uses
  %.sroa.12.0.copyload = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !17
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0.copyload, i64 0
  %i.ey = fadd double %.1, %.sroa.0.0.vec.extract
  %.sroa.0.0.vec.insert = insertelement <2 x double> %.sroa.0.0.copyload, double %i.ey, i64 0 ; 2 uses
  %.sroa.9.32.vec.extract = extractelement <2 x double> %.sroa.9.0.copyload, i64 0
  %i.ez = fadd double %.1, %.sroa.9.32.vec.extract
  %.sroa.9.32.vec.insert = insertelement <2 x double> %.sroa.9.0.copyload, double %i.ez, i64 0 ; 2 uses
  %i.fa = fadd double %.1, %.sroa.13.0.copyload   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <2 x double> %.sroa.0.0.vec.insert, ptr %7, align 16, !tbaa !17
  store <2 x double> %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx196, align 16, !tbaa !17
  store <2 x double> %.sroa.9.32.vec.insert, ptr %.sroa.9.0..sroa_idx198, align 16, !tbaa !17
  store <2 x double> %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx202, align 16, !tbaa !17
  store double %i.fa, ptr %.sroa.13.0..sroa_idx204, align 16, !tbaa !107
  %i.fb = extractelement <2 x double> %.sroa.8.0.copyload, i64 0
  %i.fc = extractelement <2 x double> %.sroa.0.0.copyload, i64 1
  %i.fd = extractelement <2 x double> %.sroa.9.0.copyload, i64 1
  %i.fe = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.0.0.vec.insert) ; 2 uses
  %shift393 = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop394 = fadd <2 x double> %i.fe, %shift393
  %i.ff = extractelement <2 x double> %foldExtExtBinop394, i64 0
  %i.fg = call noundef double @llvm.fabs.f64(double %i.fb) ; 2 uses
  %i.fh = fadd double %i.fg, %i.ff                ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 0.000000e+00
  %i.fj = select i1 %i.fi, double %i.fh, double 0.000000e+00 ; 2 uses
  %i.fk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.9.32.vec.insert) ; 2 uses
  %shift396 = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop397 = fadd <2 x double> %i.fk, %shift396
  %i.fl = extractelement <2 x double> %foldExtExtBinop397, i64 0
  %i.fm = call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fn = fadd double %i.fm, %i.fl                ; 2 uses
  %i.fo = fcmp ogt double %i.fn, %i.fj
  %i.fp = select i1 %i.fo, double %i.fn, double %i.fj ; 2 uses
  %i.fq = call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fr = call noundef double @llvm.fabs.f64(double %i.fd)
  %i.fs = fadd double %i.fg, %i.fr
  %i.ft = fadd double %i.fs, %i.fq                ; 2 uses
  %i.fu = fcmp ogt double %i.ft, %i.fp
  %spec.select.i = select i1 %i.fu, double %i.ft, double %i.fp
  store double %spec.select.i, ptr %i.h, align 8, !tbaa !161
  store i8 0, ptr %i.g, align 4, !tbaa !176
  store i32 2, ptr %i.f, align 8, !tbaa !177
  %i.fv = invoke noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(132) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %.preheader239
  %not..i.i = xor i1 %i.fv, true
  %i.fw = zext i1 %not..i.i to i32
  store i32 %i.fw, ptr %i.k, align 16, !tbaa !178
  store i8 1, ptr %i.g, align 4, !tbaa !176
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !177
  %i.fy = and i32 %i.fx, -3
  %spec.select.i154 = icmp eq i32 %i.fy, 0
  br i1 %spec.select.i154, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.ew, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load <2 x double>, ptr %i.bh, align 8, !tbaa !17 ; 2 uses
  store <2 x double> %i.fz, ptr %8, align 16, !tbaa !17
  %i.ga = load double, ptr %i.er, align 8, !tbaa !107
  store double %i.ga, ptr %i.l, align 16, !tbaa !107
  %i.gb = extractelement <2 x double> %i.fz, i64 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = phi double [ %i.gb, %bb.ai ], [ undef, %bb.ah ]
  %i.gd = load i32, ptr %i.i, align 16, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gd, 0  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ge ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !107
  store double %i.gg, ptr %8, align 16, !tbaa !107
  store double %i.gc, ptr %i.gf, align 8, !tbaa !107
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = load i32, ptr %i.m, align 4, !tbaa !32  ; 3 uses
  %.not.1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gh, 1 ; 2 uses
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.n, align 8, !tbaa !107
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !107
  store double %i.gl, ptr %i.n, align 8, !tbaa !107
  store double %i.gk, ptr %i.gj, align 8, !tbaa !107
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gm = load i32, ptr %i.o, align 8, !tbaa !32  ; 3 uses
  %.not.2.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gm, 2 ; 2 uses
  %.pre324 = load double, ptr %i.l, align 16, !tbaa !107 ; 2 uses
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !107
  store double %i.gp, ptr %i.l, align 16, !tbaa !107
  store double %.pre324, ptr %i.go, align 8, !tbaa !107
  %.pre323 = load double, ptr %i.l, align 16, !tbaa !107
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.ao, %bb.an
  %i.gq = phi double [ %.pre323, %bb.ao ], [ %.pre324, %bb.an ]
  %i.gr = load double, ptr %i.p, align 8, !tbaa !107
  %i.gs = load double, ptr %8, align 16, !tbaa !107 ; 3 uses
  %i.gt = fmul double %i.gr, %i.gs
  %i.gu = load double, ptr %i.n, align 8, !tbaa !107
  %i.gv = fsub double %i.gu, %i.gt                ; 2 uses
  %i.gw = load double, ptr %.sroa.8.0..sroa_idx196, align 16, !tbaa !107
  %i.gx = fmul double %i.gs, %i.gw
  %i.gy = load double, ptr %i.q, align 8, !tbaa !107 ; 2 uses
  %i.gz = fmul double %i.gv, %i.gy
  %i.ha = fadd double %i.gx, %i.gz
  %i.hb = fsub double %i.gq, %i.ha
  %10 = load <2 x double>, ptr %7, align 16
  %11 = load double, ptr %.sroa.9.0..sroa_idx198, align 16, !tbaa !107
  %12 = insertelement <2 x double> %10, double %11, i64 1 ; 2 uses
  %13 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %12)
  %14 = fcmp ogt <2 x double> %13, splat (double f0x0010000000000000)
  %15 = insertelement <2 x double> poison, double %i.gs, i64 0
  %16 = insertelement <2 x double> %15, double %i.gv, i64 1
  %17 = fdiv <2 x double> %16, %12
  %18 = select <2 x i1> %14, <2 x double> %17, <2 x double> zeroinitializer ; 2 uses
  %i.hc = load double, ptr %.sroa.13.0..sroa_idx204, align 16, !tbaa !107 ; 2 uses
  %i.hd = call noundef double @llvm.fabs.f64(double %i.hc)
  %i.he = fcmp ogt double %i.hd, f0x0010000000000000
  %i.hf = fdiv double %i.hb, %i.hc
  %storemerge49.i = select i1 %i.he, double %i.hf, double 0.000000e+00 ; 2 uses
  store double %storemerge49.i, ptr %i.l, align 16, !tbaa !107
  %i.hg = fmul double %i.gy, %storemerge49.i
  %19 = extractelement <2 x double> %18, i64 1
  %i.hh = fsub double %19, %i.hg
  store double %i.hh, ptr %i.n, align 8, !tbaa !107
  %i.hi = load <2 x double>, ptr %i.p, align 8, !tbaa !17
  %i.hj = load <2 x double>, ptr %i.n, align 8    ; 2 uses
  %i.hk = fmul <2 x double> %i.hi, %i.hj          ; 2 uses
  %shift399 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop400 = fadd <2 x double> %i.hk, %shift399
  %foldExtExtBinop402 = fsub <2 x double> %18, %foldExtExtBinop400
  %20 = extractelement <2 x double> %foldExtExtBinop402, i64 0
  store double %20, ptr %8, align 16, !tbaa !107
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  %i.hl = extractelement <2 x double> %i.hj, i64 1
  %i.hm = sext i32 %i.gm to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hm ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !107
  store double %i.ho, ptr %i.l, align 16, !tbaa !107
  store double %i.hl, ptr %i.hn, align 8, !tbaa !107
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = sext i32 %i.gh to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hp ; 2 uses
  %i.hr = load double, ptr %i.n, align 8, !tbaa !107
  %i.hs = load double, ptr %i.hq, align 8, !tbaa !107
  store double %i.hs, ptr %i.n, align 8, !tbaa !107
  store double %i.hr, ptr %i.hq, align 8, !tbaa !107
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ht = sext i32 %i.gd to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ht ; 2 uses
  %i.hv = load double, ptr %8, align 16, !tbaa !107
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !107
  store double %i.hw, ptr %8, align 16, !tbaa !107
  store double %i.hv, ptr %i.hu, align 8, !tbaa !107
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.as, %bb.at
  %i.hx = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 168
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ia = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 224
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull %8)
          to label %.noexc156 unwind label %bb.aw, !inline_history !137

.noexc156:                                        ; preds = %bb.au
  %i.id = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 216
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit unwind label %bb.aw, !inline_history !137

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit:  ; preds = %.noexc156
  %i.ig = load ptr, ptr %i.t, align 8, !tbaa !77  ; 2 uses
  %.not238280 = icmp eq ptr %i.ig, %i.v
  br i1 %.not238280, label %._crit_edge284, label %.lr.ph283

._crit_edge284:                                   ; preds = %bb.be, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit
  %.091.lcssa = phi double [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ], [ %.192, %bb.be ] ; 3 uses
  %i.ih = fcmp ogt double %.2108289, %.091.lcssa
  %i.ii = call double @llvm.fabs.f64(double %.091.lcssa)
  %i.ij = fcmp one double %i.ii, +inf
  %or.cond234 = and i1 %i.ih, %i.ij
  %i.ik = load ptr, ptr %i.s, align 8, !tbaa !29  ; 2 uses
  br i1 %or.cond234, label %bb.bf, label %bb.bg

bb.av:                                            ; preds = %.preheader239
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %.noexc156, %bb.au, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph283:                                        ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %bb.be
  %.091282 = phi double [ %.192, %bb.be ], [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ]
  %.sroa.0158.0281 = phi ptr [ %i.jj, %bb.be ], [ %i.ig, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0158.0281, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !79, !nonnull !74, !noundef !74
  %i.ip = call ptr @__dynamic_cast(ptr nonnull %i.io, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(176) %i.ip)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph283
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !81 ; 3 uses
  %.not125 = icmp eq ptr %i.iu, null
  br i1 %.not125, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.iv = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 112
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = invoke noundef double %i.ix(ptr noundef nonnull align 8 dereferenceable(176) %i.ip)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.iz = load ptr, ptr %i.iu, align 8, !tbaa !29
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, double noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jc = load double, ptr %9, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.be

bb.bb:                                            ; preds = %bb.bd, %.lr.ph283
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !29
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 112
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef double %i.jh(ptr noundef nonnull align 8 dereferenceable(176) %i.ip)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn132 = phi double [ %i.jc, %bb.ba ], [ %i.ji, %bb.bd ]
  %.192 = fadd double %.091282, %.pn132           ; 2 uses
  %i.jj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0158.0281) #28 ; 2 uses
  %.not238 = icmp eq ptr %i.jj, %i.v
  br i1 %.not238, label %._crit_edge284, label %.lr.ph283, !llvm.loop !179

bb.bf:                                            ; preds = %._crit_edge284
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ik, i64 184
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.thread215 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge284
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  %i.jn = load ptr, ptr %i.jm, align 8
  invoke void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.bi unwind label %.loopexit

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.bc, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.bb ], [ %i.im, %bb.aw ], [ %i.je, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread

.thread215:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.jo = fmul double %.1, f0x3FD5555555555555
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jp = trunc nuw i8 %.1102 to i1
  br label %.loopexit240

.thread:                                          ; preds = %bb.ag, %bb.bi
  %i.jq = fmul double %.1, %.1114                 ; 2 uses
  %i.jr = fmul double %.1114, 2.000000e+00        ; 2 uses
  %i.js = add nuw nsw i32 %.095, 1                ; 2 uses
  %.not = icmp sge i32 %i.js, %3                  ; 2 uses
  %.1102. = select i1 %.not, i8 1, i8 %.1102      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jt = trunc nuw i8 %.1102. to i1              ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %i.jt
  br i1 %or.cond, label %.loopexit240, label %.preheader239, !llvm.loop !180

bb.bj:                                            ; preds = %bb.bh, %bb.av
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bh ], [ %i.il, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit152

.loopexit240:                                     ; preds = %.thread, %.thread215
  %i.ju = phi i1 [ %i.jp, %.thread215 ], [ %i.jt, %.thread ]
end_hunk_0
