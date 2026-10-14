Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/structure_only?download=true
inline.NumInlined: 5419
inline.NumDeleted: 3298
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN3g2o19StructureOnlySolverILi3EE4calcERSt6vectorIPNS_16OptimizableGraph6VertexESaIS5_EEii:bb.a
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [8 x i8], ptr %.sroa.16176.0, i64 %i.dr
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dp) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge278, %bb.z
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0180.0280) #28 ; 2 uses
  %.not241 = icmp eq ptr %i.dt, %i.v
  br i1 %.not241, label %._crit_edge283, label %.lr.ph282, !llvm.loop !187

bb.aa:                                            ; preds = %bb.y, %bb.x, %._crit_edge275
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i151 = icmp eq ptr %.sroa.0170.0, null
  br i1 %.not.i.i151, label %.body, label %bb.ad

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %bb.ac
  %.081276 = phi i64 [ %i.eh, %bb.ac ], [ 0, %.lr.ph277.preheader ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.081276
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !105 ; 2 uses
  %.not133 = icmp eq ptr %i.dw, %i.s
  br i1 %.not133, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph277
  %i.dx = sdiv i64 %.081276, 64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.0170.0, i64 %i.dx
  %i.dz = and i64 %.081276, -9223372036854775745
  %i.ea = icmp ugt i64 %i.dz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i147 = select i1 %i.ea, i64 -8, i64 0
  %storemerge.i.i.i.i.i148 = getelementptr inbounds i8, ptr %i.dy, i64 %storemerge.idx.i.i.i.i.i147
  %i.eb = and i64 %.081276, 63
  %i.ec = load i64, ptr %storemerge.i.i.i.i.i148, align 8, !tbaa !18
  %i.ed = lshr i64 %i.ec, %i.eb
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = and i8 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 100
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !71
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph277
  %i.eh = add nuw i64 %.081276, 1                 ; 2 uses
  %exitcond325.not = icmp eq i64 %i.eh, %i.dm
  br i1 %exitcond325.not, label %._crit_edge278, label %.lr.ph277, !llvm.loop !188

bb.ad:                                            ; preds = %bb.aa
  %i.ei = ptrtoint ptr %.sroa.16176.0 to i64
  %i.ej = ptrtoint ptr %.sroa.0170.0 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.16176.0, i64 %i.em
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.ek) #24
  br label %.body

bb.ae:                                            ; preds = %._crit_edge283
  %i.eo = load <2 x double>, ptr %i.bh, align 1, !tbaa !19 ; 2 uses
  %i.ep = fmul <2 x double> %i.eo, %i.eo          ; 2 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ep, %shift
  %i.eq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.er = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !101 ; 2 uses
  %i.et = fmul double %i.es, %i.es
  %i.eu = fadd double %i.et, %i.eq
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %i.eu)
  %i.ev = fcmp olt double %.scalar.i, 1.000000e-03
  br i1 %i.ev, label %.loopexit246, label %.preheader243.preheader

.preheader243.preheader:                          ; preds = %bb.ae
  %i.ew = icmp eq ptr %8, %i.bh
  br label %.preheader243

bb.af:                                            ; preds = %._crit_edge283
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader243:                                    ; preds = %.preheader243.preheader, %.thread
  %.1194 = phi double [ %i.ka, %.thread ], [ %.0193290, %.preheader243.preheader ] ; 5 uses
  %.191 = phi i8 [ 0, %.thread ], [ %.090291, %.preheader243.preheader ] ; 3 uses
  %.185 = phi double [ %i.kb, %.thread ], [ %.084293, %.preheader243.preheader ] ; 2 uses
  %.079 = phi i32 [ %i.kc, %.thread ], [ 0, %.preheader243.preheader ]
  %.sroa.0.0.copyload = load <2 x double>, ptr %6, align 16 ; 3 uses
  %.sroa.8.0.copyload = load <2 x double>, ptr %.sroa.8.0..sroa_idx, align 16 ; 2 uses
  %.sroa.9.0.copyload = load <2 x double>, ptr %.sroa.9.0..sroa_idx, align 16 ; 3 uses
  %.sroa.12.0.copyload = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 16, !tbaa !19
  %.sroa.0.0.vec.extract = extractelement <2 x double> %.sroa.0.0.copyload, i64 0
  %i.ey = fadd double %.1194, %.sroa.0.0.vec.extract
  %.sroa.0.0.vec.insert = insertelement <2 x double> %.sroa.0.0.copyload, double %i.ey, i64 0 ; 2 uses
  %.sroa.9.32.vec.extract = extractelement <2 x double> %.sroa.9.0.copyload, i64 0
  %i.ez = fadd double %.1194, %.sroa.9.32.vec.extract
  %.sroa.9.32.vec.insert = insertelement <2 x double> %.sroa.9.0.copyload, double %i.ez, i64 0 ; 2 uses
  %i.fa = fadd double %.1194, %.sroa.13.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <2 x double> %.sroa.0.0.vec.insert, ptr %7, align 16, !tbaa !19
  store <2 x double> %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx200, align 16, !tbaa !19
  store <2 x double> %.sroa.9.32.vec.insert, ptr %.sroa.9.0..sroa_idx202, align 16, !tbaa !19
  store <2 x double> %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx206, align 16, !tbaa !19
  store double %i.fa, ptr %.sroa.13.0..sroa_idx208, align 16, !tbaa !101
  %i.fb = extractelement <2 x double> %.sroa.8.0.copyload, i64 0
  %i.fc = extractelement <2 x double> %.sroa.0.0.copyload, i64 1
  %i.fd = extractelement <2 x double> %.sroa.9.0.copyload, i64 1
  %i.fe = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.0.0.vec.insert) ; 2 uses
  %shift397 = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x double> %i.fe, %shift397
  %i.ff = extractelement <2 x double> %foldExtExtBinop398, i64 0
  %i.fg = call noundef double @llvm.fabs.f64(double %i.fb) ; 2 uses
  %i.fh = fadd double %i.fg, %i.ff                ; 2 uses
  %i.fi = fcmp ogt double %i.fh, 0.000000e+00
  %i.fj = select i1 %i.fi, double %i.fh, double 0.000000e+00 ; 2 uses
  %i.fk = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %.sroa.9.32.vec.insert) ; 2 uses
  %shift400 = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop401 = fadd <2 x double> %i.fk, %shift400
  %i.fl = extractelement <2 x double> %foldExtExtBinop401, i64 0
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
  store double %spec.select.i, ptr %i.h, align 8, !tbaa !207
  store i8 0, ptr %i.g, align 4, !tbaa !208
  store i32 2, ptr %i.f, align 8, !tbaa !209
  %i.fv = invoke noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_14TranspositionsILi3ELi3EiEENS4_IdLi3ELi1ELi0ELi3ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(132) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ag unwind label %bb.av

bb.ag:                                            ; preds = %.preheader243
  %not..i.i = xor i1 %i.fv, true
  %i.fw = zext i1 %not..i.i to i32
  store i32 %i.fw, ptr %i.k, align 16, !tbaa !210
  store i8 1, ptr %i.g, align 4, !tbaa !208
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !209
  %i.fy = and i32 %i.fx, -3
  %spec.select.i153 = icmp eq i32 %i.fy, 0
  br i1 %spec.select.i153, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  br i1 %i.ew, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load <2 x double>, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  store <2 x double> %i.fz, ptr %8, align 16, !tbaa !19
  %i.ga = load double, ptr %i.er, align 8, !tbaa !101
  store double %i.ga, ptr %i.l, align 16, !tbaa !101
  %i.gb = extractelement <2 x double> %i.fz, i64 0
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = phi double [ %i.gb, %bb.ai ], [ undef, %bb.ah ]
  %i.gd = load i32, ptr %i.i, align 16, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gd, 0  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ge ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !101
  store double %i.gg, ptr %8, align 16, !tbaa !101
  store double %i.gc, ptr %i.gf, align 8, !tbaa !101
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = load i32, ptr %i.m, align 4, !tbaa !29  ; 3 uses
  %.not.1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gh, 1 ; 2 uses
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.n, align 8, !tbaa !101
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !101
  store double %i.gl, ptr %i.n, align 8, !tbaa !101
  store double %i.gk, ptr %i.gj, align 8, !tbaa !101
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gm = load i32, ptr %i.o, align 8, !tbaa !29  ; 3 uses
  %.not.2.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gm, 2 ; 2 uses
  %.pre328 = load double, ptr %i.l, align 16, !tbaa !101 ; 2 uses
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %8, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !101
  store double %i.gp, ptr %i.l, align 16, !tbaa !101
  store double %.pre328, ptr %i.go, align 8, !tbaa !101
  %.pre327 = load double, ptr %i.l, align 16, !tbaa !101
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.ao, %bb.an
  %i.gq = phi double [ %.pre327, %bb.ao ], [ %.pre328, %bb.an ]
  %10 = load <1 x double>, ptr %8, align 16       ; 2 uses
  %11 = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.gr = load double, ptr %i.n, align 8, !tbaa !101
  %i.gs = load <2 x double>, ptr %i.p, align 8, !tbaa !101
  %i.gt = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.gt, %i.gs          ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = fsub double %i.gr, %i.gv                ; 2 uses
  %i.gx = load double, ptr %i.q, align 8, !tbaa !101 ; 2 uses
  %i.gy = fmul double %i.gw, %i.gx
  %i.gz = extractelement <2 x double> %i.gu, i64 1
  %i.ha = fadd double %i.gz, %i.gy
  %i.hb = fsub double %i.gq, %i.ha
  %i.hc = load <2 x double>, ptr %7, align 16
  %i.hd = load double, ptr %.sroa.9.0..sroa_idx202, align 16, !tbaa !101
  %i.he = insertelement <2 x double> %i.hc, double %i.hd, i64 1 ; 2 uses
  %i.hf = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.he)
  %i.hg = fcmp ogt <2 x double> %i.hf, splat (double f0x0010000000000000)
  %i.hh = insertelement <2 x double> %11, double %i.gw, i64 1
  %i.hi = fdiv <2 x double> %i.hh, %i.he
  %i.hj = select <2 x i1> %i.hg, <2 x double> %i.hi, <2 x double> zeroinitializer ; 2 uses
  %i.hk = load double, ptr %.sroa.13.0..sroa_idx208, align 16, !tbaa !101 ; 2 uses
  %i.hl = call noundef double @llvm.fabs.f64(double %i.hk)
  %i.hm = fcmp ogt double %i.hl, f0x0010000000000000
  %i.hn = fdiv double %i.hb, %i.hk
  %storemerge49.i = select i1 %i.hm, double %i.hn, double 0.000000e+00 ; 2 uses
  store double %storemerge49.i, ptr %i.l, align 16, !tbaa !101
  %i.ho = fmul double %i.gx, %storemerge49.i
  %i.hp = extractelement <2 x double> %i.hj, i64 1
  %i.hq = fsub double %i.hp, %i.ho
  store double %i.hq, ptr %i.n, align 8, !tbaa !101
  %i.hr = load <2 x double>, ptr %i.p, align 8, !tbaa !19
  %i.hs = load <2 x double>, ptr %i.n, align 8    ; 2 uses
  %i.ht = fmul <2 x double> %i.hr, %i.hs          ; 2 uses
  %shift403 = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop404 = fadd <2 x double> %i.ht, %shift403
  %foldExtExtBinop406 = fsub <2 x double> %i.hj, %foldExtExtBinop404
  %i.hu = extractelement <2 x double> %foldExtExtBinop406, i64 0
  store double %i.hu, ptr %8, align 16, !tbaa !101
  br i1 %.not.2.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  %i.hv = extractelement <2 x double> %i.hs, i64 1
  %i.hw = sext i32 %i.gm to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !101
  store double %i.hy, ptr %i.l, align 16, !tbaa !101
  store double %i.hv, ptr %i.hx, align 8, !tbaa !101
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit.i
  br i1 %.not.1.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hz = sext i32 %i.gh to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %8, i64 %i.hz ; 2 uses
  %i.ib = load double, ptr %i.n, align 8, !tbaa !101
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !101
  store double %i.ic, ptr %i.n, align 8, !tbaa !101
  store double %i.ib, ptr %i.ia, align 8, !tbaa !101
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = sext i32 %i.gd to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %8, i64 %i.id ; 2 uses
  %i.if = load double, ptr %8, align 16, !tbaa !101
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !101
  store double %i.ig, ptr %8, align 16, !tbaa !101
  store double %i.if, ptr %i.ie, align 8, !tbaa !101
  br label %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.as, %bb.at
  %i.ih = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 168
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ik = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull %8)
          to label %.noexc unwind label %bb.aw, !inline_history !1

.noexc:                                           ; preds = %bb.au
  %i.in = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 216
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit unwind label %bb.aw, !inline_history !1

_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit:  ; preds = %.noexc
  %i.iq = load ptr, ptr %i.t, align 8, !tbaa !70  ; 2 uses
  %.not242284 = icmp eq ptr %i.iq, %i.v
  br i1 %.not242284, label %._crit_edge288, label %.lr.ph287

._crit_edge288:                                   ; preds = %bb.be, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit
  %.0.lcssa = phi double [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ], [ %.1, %bb.be ] ; 3 uses
  %i.ir = fcmp ogt double %.288292, %.0.lcssa
  %i.is = call double @llvm.fabs.f64(double %.0.lcssa)
  %i.it = fcmp one double %i.is, +inf
  %or.cond238 = and i1 %i.ir, %i.it
  %i.iu = load ptr, ptr %i.s, align 8, !tbaa !28  ; 2 uses
  br i1 %or.cond238, label %bb.bf, label %bb.bg

bb.av:                                            ; preds = %.preheader243
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aw:                                            ; preds = %.noexc, %bb.au, %_ZN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEC2INS_5SolveINS_4LDLTINS0_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS_3MapIS1_Li0ENS_6StrideILi0ELi0EEEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph287:                                        ; preds = %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit, %bb.be
  %.0286 = phi double [ %.1, %bb.be ], [ 0.000000e+00, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ]
  %.sroa.0156.0285 = phi ptr [ %i.jt, %bb.be ], [ %i.iq, %_ZN3g2o16OptimizableGraph6Vertex5oplusEPKd.exit ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0156.0285, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !73, !nonnull !68, !noundef !68
  %i.iz = call ptr @__dynamic_cast(ptr nonnull %i.iy, ptr nonnull @_ZTIN3g2o10HyperGraph4EdgeE, ptr nonnull @_ZTIN3g2o16OptimizableGraph4EdgeE, i64 0) #23 ; 7 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !28
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(176) %i.iz)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %.lr.ph287
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !99 ; 3 uses
  %.not125 = icmp eq ptr %i.je, null
  br i1 %.not125, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !28
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 112
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef double %i.jh(ptr noundef nonnull align 8 dereferenceable(176) %i.iz)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !28
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.je, double noundef %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jm = load double, ptr %9, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.be

bb.bb:                                            ; preds = %bb.bd, %.lr.ph287
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.jp = load ptr, ptr %i.iz, align 8, !tbaa !28
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef double %i.jr(ptr noundef nonnull align 8 dereferenceable(176) %i.iz)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn132 = phi double [ %i.jm, %bb.ba ], [ %i.js, %bb.bd ]
  %.1 = fadd double %.0286, %.pn132               ; 2 uses
  %i.jt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0156.0285) #28 ; 2 uses
  %.not242 = icmp eq ptr %i.jt, %i.v
  br i1 %.not242, label %._crit_edge288, label %.lr.ph287, !llvm.loop !189

bb.bf:                                            ; preds = %._crit_edge288
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 184
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %.thread219 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge288
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iu, i64 176
  %i.jx = load ptr, ptr %i.jw, align 8
  invoke void %i.jx(ptr noundef nonnull align 8 dereferenceable(128) %i.s)
          to label %bb.bi unwind label %.loopexit

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb, %bb.bc, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.bb ], [ %i.iw, %bb.aw ], [ %i.jo, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread

.thread219:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.jy = fmul double %.1194, f0x3FD5555555555555
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.jz = trunc nuw i8 %.191 to i1
  br label %.loopexit244
end_hunk_0
