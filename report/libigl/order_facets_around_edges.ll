Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edges?download=true
inline.NumInlined: 1521
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_iibEENSt9enable_ifIXntsr3std7is_sameINT_6ScalarEN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEE5valueEvE4typeERKNS3_10MatrixBaseIS8_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKSt6vectorIS18_IT3_SaIS19_EESaIS1B_EERS18_IS18_IT4_SaIS1G_EESaIS1I_EERS18_IS18_IT5_SaIS1M_EESaIS1O_EE:bb.a
  %i.cx = getelementptr inbounds i8, ptr %i.cl, i64 %.idx.i.i.i.i.i.i.i.i.i.i139
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !43
  %i.cz = fsub double %i.cw, %i.cy                ; 4 uses
  %i.da = fmul <2 x double> %.sroa.0298.8.vec.insert, %.sroa.0298.8.vec.insert ; 2 uses
  %shift = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.da, %shift
  %i.db = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dc = fmul double %i.cz, %i.cz
  %i.dd = fadd double %i.dc, %i.db                ; 2 uses
  %.scalar.i = call double @llvm.sqrt.f64(double %i.dd) ; 3 uses
  %i.de = fcmp olt double %.scalar.i, f0x3D719799812DEA11
  br i1 %i.de, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.df = icmp ult i64 %i.be, 3
  br i1 %i.df, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.be, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376 unwind label %bb.l

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376: ; preds = %bb.k
  %i.dg = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.dh = load ptr, ptr %2, align 8, !tbaa !36, !noalias !49
  %i.di = load ptr, ptr %7, align 8, !tbaa !52, !noalias !54
  %i.dj = load i64, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.dk = load i64, ptr %i.at, align 8, !tbaa !57 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.dk, 4 ; 3 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.dj, 4
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

common.resume:                                    ; preds = %.body, %bb.t, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.dl, %bb.l ], [ %i.hs, %bb.t ], [ %.pn129.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %7, align 8, !tbaa !52
  call void @free(ptr noundef %i.dm) #21
  br label %common.resume

.lr.ph363:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.dn = load ptr, ptr %7, align 8, !tbaa !52, !noalias !58 ; 3 uses
  br label %bb.m

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %.0110361 = phi i64 [ %i.eb, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ], [ 0, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader376 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.0110361
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !35
  %i.dq = sext i32 %i.dp to i64
  %i.dr = urem i64 %i.dq, %i.b
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.0110361 ; 3 uses
  %i.du = load double, ptr %i.ds, align 8, !tbaa !43
  store double %i.du, ptr %i.dt, align 8, !tbaa !43
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dk
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dj
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !43
  store double %i.dx, ptr %i.dv, align 8, !tbaa !43
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.ds, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !43
  store double %i.ea, ptr %i.dy, align 8, !tbaa !43
  %i.eb = add nuw i64 %.0110361, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %i.be
  br i1 %exitcond.not, label %.lr.ph363, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !61

.critedge:                                        ; preds = %bb.m
  %exitcond388.not = icmp eq i64 %i.ec, %i.be
  br i1 %exitcond388.not, label %.loopexit, label %bb.m, !llvm.loop !62

bb.m:                                             ; preds = %.lr.ph363, %.critedge
  %.092362 = phi i64 [ 0, %.lr.ph363 ], [ %i.ec, %.critedge ] ; 2 uses
  %i.ec = add nuw i64 %.092362, 1                 ; 4 uses
  %i.ed = icmp eq i64 %i.ec, %i.be
  %i.ee = select i1 %i.ed, i64 0, i64 %i.ec
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.092362 ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.dk
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !43 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !43 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ee ; 3 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !43 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.dk
  %i.eo = load double, ptr %i.en, align 8, !tbaa !43 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !43 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1
  %i.et = fneg <2 x double> %i.es
  %i.eu = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.eg, i64 1
  %i.ew = fmul <2 x double> %i.ev, %i.et
  %i.ex = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ek, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.em, i64 1
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ew) ; 5 uses
  %i.fc = fneg double %i.em
  %i.fd = fmul double %i.ei, %i.fc
  %i.fe = call double @llvm.fmuladd.f64(double %i.eg, double %i.eo, double %i.fd) ; 5 uses
  %i.ff = fmul <2 x double> %i.fb, %i.fb          ; 2 uses
  %shift452 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop453 = fadd <2 x double> %i.ff, %shift452
  %i.fg = extractelement <2 x double> %foldExtExtBinop453, i64 0
  %i.fh = fmul double %i.fe, %i.fe
  %i.fi = fadd double %i.fh, %i.fg                ; 2 uses
  %.scalar.i142 = call double @llvm.sqrt.f64(double %i.fi) ; 3 uses
  %i.fj = fcmp ult double %.scalar.i142, f0x3D719799812DEA11
  br i1 %i.fj, label %.critedge, label %bb.n, !llvm.loop !62

bb.n:                                             ; preds = %bb.m
  %i.fk = fcmp ogt double %i.fi, 0.000000e+00
  br i1 %i.fk, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.fl = insertelement <2 x double> poison, double %.scalar.i142, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fdiv <2 x double> %i.fb, %i.fm
  %i.fo = fdiv double %i.fe, %.scalar.i142
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.n, %bb.o
  %.sroa.0298.2 = phi <2 x double> [ %i.fb, %bb.n ], [ %i.fn, %bb.o ], [ %i.fb, %.critedge ] ; 5 uses
  %.sroa.20312.2 = phi double [ %i.fe, %bb.n ], [ %i.fo, %bb.o ], [ %i.fe, %.critedge ] ; 4 uses
  %i.fp = sext i32 %i.ca to i64
  %i.fq = load ptr, ptr %0, align 8, !tbaa !36, !noalias !63 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fp ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ck ; 3 uses
  %i.ft = load i64, ptr %i.as, align 8, !tbaa !42 ; 3 uses
  %i.fu = load double, ptr %i.fr, align 8, !tbaa !43
  %i.fv = load double, ptr %i.fs, align 8, !tbaa !43
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !43
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !43
  %.idx.i.i.i.i.i.i.i.i.i.i144 = shl nsw i64 %i.ft, 4 ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !43 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fs, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !43 ; 2 uses
  %.sroa.0298.8.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 1
  %.sroa.0298.0.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 0
  %i.ge = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fu, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fv, i64 1
  %i.gi = fsub <2 x double> %i.gf, %i.gh          ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gb, i64 1
  %i.gl = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gd, i64 1
  %i.gn = fsub <2 x double> %i.gk, %i.gm          ; 2 uses
  %i.go = fneg <2 x double> %i.gn
  %i.gp = shufflevector <2 x double> %.sroa.0298.2, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gq = insertelement <2 x double> %i.gp, double %.sroa.20312.2, i64 0
  %i.gr = fmul <2 x double> %i.gq, %i.go
  %i.gs = insertelement <2 x double> %i.gp, double %.sroa.20312.2, i64 1
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gi, <2 x double> %i.gr)
  %i.gu = extractelement <2 x double> %i.gi, i64 1
  %i.gv = fneg double %i.gu
  %i.gw = fmul double %.sroa.0298.8.vec.extract, %i.gv
  %i.gx = extractelement <2 x double> %i.gn, i64 0
  %i.gy = call double @llvm.fmuladd.f64(double %.sroa.0298.0.vec.extract, double %i.gx, double %i.gw)
  %i.gz = fmul <2 x double> %.sroa.0326.8.vec.insert, %i.gt ; 2 uses
  %shift455 = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop456 = fadd <2 x double> %i.gz, %shift455
  %i.ha = extractelement <2 x double> %foldExtExtBinop456, i64 0
  %i.hb = fmul double %i.bp, %i.gy
  %i.hc = fadd double %i.hb, %i.ha
  %i.hd = fcmp olt double %i.hc, 0.000000e+00     ; 2 uses
  %i.he = fneg <2 x double> %.sroa.0298.2
  %i.hf = fneg double %.sroa.20312.2
  %.sroa.0298.3 = select i1 %i.hd, <2 x double> %i.he, <2 x double> %.sroa.0298.2
  %.sroa.20312.3 = select i1 %i.hd, double %i.hf, double %.sroa.20312.2
  call void @free(ptr noundef nonnull %i.dn) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.p:                                             ; preds = %bb.i
  %i.hg = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.hg, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.q:                                             ; preds = %bb.p
  %i.hh = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fdiv <2 x double> %.sroa.0298.8.vec.insert, %i.hi
  %i.hk = fdiv double %i.cz, %.scalar.i
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147: ; preds = %bb.q, %bb.p, %bb.j, %.loopexit
  %.sroa.0298.4 = phi <2 x double> [ zeroinitializer, %bb.j ], [ %.sroa.0298.3, %.loopexit ], [ %i.hj, %bb.q ], [ %.sroa.0298.8.vec.insert, %bb.p ]
  %.sroa.20312.4 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.20312.3, %.loopexit ], [ %i.hk, %bb.q ], [ %i.cz, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.hl = icmp eq ptr %i.az, %i.ba                ; 2 uses
  %10 = mul nsw i64 %i.be, 3
  br i1 %i.hl, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread, label %bb.r

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread:        ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  store i64 %i.be, ptr %i.au, align 8, !tbaa !42
  store i64 3, ptr %i.av, align 8, !tbaa !66
  br label %._crit_edge

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  %i.hm = icmp sgt i64 %i.be, 0
  br i1 %i.hm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.hn = icmp samesign ugt i64 %10, 2305843009213693951
  br i1 %i.hn, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.s
  %i.ho = mul i64 %i.be, 24
  %i.hp = call noalias ptr @malloc(i64 noundef %i.ho) #22 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.invoke, label %bb.u

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.s
  %i.hr = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hr, align 8, !tbaa !67
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %.invoke
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %i.ht = load ptr, ptr %8, align 8, !tbaa !36
  call void @free(ptr noundef %i.ht) #21
  br label %common.resume

bb.u:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.r
  %.sink.i = phi ptr [ %i.hp, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %8, align 8, !tbaa !36
  store i64 %i.be, ptr %i.au, align 8, !tbaa !42
  store i64 3, ptr %i.av, align 8, !tbaa !66
  %i.hu = add nsw i64 %i.be, 63                   ; 2 uses
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = and i64 %i.hv, 2305843009213693944
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #24
          to label %.lr.ph366 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ; 4 uses

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.u
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph366:                                        ; preds = %bb.u
  %i.hz = lshr i64 %i.hu, 6                       ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  %.idx.i.i = shl nuw nsw i64 %i.hz, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hx, i8 0, i64 %.idx.i.i, i1 false)
  %i.ib = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.ic = load ptr, ptr %1, align 8, !tbaa !45
  %i.id = load i64, ptr %i.a, align 8, !tbaa !9
  %i.ie = load ptr, ptr %2, align 8, !tbaa !36, !noalias !69
  %i.if = load i64, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i149 = shl nsw i64 %i.if, 4
  %i.ig = load ptr, ptr %8, align 8, !tbaa !36
  %i.ih = load i64, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.idx = shl i64 %i.ih, 4
  %i.ii = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.bp, i64 1
  %i.ik = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.bl, i64 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph366, %bb.aa
  %.091365 = phi i64 [ 0, %.lr.ph366 ], [ %i.ky, %bb.aa ] ; 6 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.091365
  %i.in = load i32, ptr %i.im, align 4, !tbaa !35
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = urem i64 %i.io, %i.b                    ; 3 uses
  %i.iq = udiv i64 %i.io, %i.b
  %i.ir = add i64 %i.iq, 1
  %i.is = urem i64 %i.ir, 3
  %i.it = mul nsw i64 %i.id, %i.is
  %i.iu = getelementptr [4 x i8], ptr %i.ic, i64 %i.ip
  %i.iv = getelementptr [4 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !35
  %i.ix = sdiv i64 %.091365, 64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.ix
  %i.iz = and i64 %.091365, -9223372036854775745
  %i.ja = icmp ugt i64 %i.iz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ja, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.iy, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.jb = and i64 %.091365, 63
  %i.jc = shl nuw i64 1, %i.jb                    ; 3 uses
  %i.jd = icmp eq i32 %i.cg, %i.iw
  br i1 %i.jd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.je = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !72
  %i.jf = or i64 %i.je, %i.jc
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.jg = xor i64 %i.jc, -1
  %i.jh = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !72
  %i.ji = and i64 %i.jh, %i.jg
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge353 = phi i64 [ %i.ji, %bb.x ], [ %i.jf, %bb.w ] ; 2 uses
  store i64 %storemerge353, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !72
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.ip ; 3 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !43 ; 3 uses
  %.sroa.0187.0.vec.insert = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.if
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !43 ; 3 uses
  %.sroa.0187.8.vec.insert = insertelement <2 x double> %.sroa.0187.0.vec.insert, double %i.jm, i64 1
  %i.jn = getelementptr inbounds i8, ptr %i.jj, i64 %.idx.i.i.i.i.i.i.i.i.i.i149
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !43 ; 3 uses
  %i.jp = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.jo, i64 1
  %i.jr = fneg <2 x double> %i.jq
  %i.js = fmul <2 x double> %i.il, %i.jr
  %i.jt = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.jk, i64 1
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ju, <2 x double> %i.js)
  %i.jw = fneg double %i.jk
  %i.jx = fmul double %i.bn, %i.jw
  %i.jy = call double @llvm.fmuladd.f64(double %i.bl, double %i.jm, double %i.jx)
  %i.jz = fmul <2 x double> %.sroa.0298.4, %i.jv  ; 2 uses
  %i.ka = fmul double %.sroa.20312.4, %i.jy
  %i.kb = getelementptr [8 x i8], ptr %i.ig, i64 %.091365 ; 7 uses
  %i.kc = fmul <2 x double> %.sroa.0326.8.vec.insert, %.sroa.0187.8.vec.insert ; 2 uses
  %i.kd = shufflevector <2 x double> %i.jz, <2 x double> %i.kc, <2 x i32> <i32 0, i32 2>
  %i.ke = shufflevector <2 x double> %i.jz, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3>
  %i.kf = fadd <2 x double> %i.kd, %i.ke          ; 2 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  %i.kh = fadd double %i.ka, %i.kg
  store double %i.kh, ptr %i.kb, align 8, !tbaa !43
  %i.ki = fmul double %i.bp, %i.jo
  %i.kj = extractelement <2 x double> %i.kf, i64 1
  %i.kk = fadd double %i.ki, %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.kb, i64 %i.ih ; 3 uses
  store double %i.kk, ptr %i.kl, align 8, !tbaa !43
  %i.km = and i64 %storemerge353, %i.jc
  %.not = icmp eq i64 %i.km, 0                    ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kn = load double, ptr %i.kb, align 8, !tbaa !43
  %i.ko = fneg double %i.kn
  store double %i.ko, ptr %i.kb, align 8, !tbaa !43
  %i.kp = load double, ptr %i.kl, align 8, !tbaa !43
  %i.kq = fneg double %i.kp
  store double %i.kq, ptr %i.kl, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.kr = load double, ptr %i.kb, align 8, !tbaa !43
  %i.ks = fneg double %i.kr
  store double %i.ks, ptr %i.kb, align 8, !tbaa !43
  %i.kt = getelementptr i8, ptr %i.kb, i64 %.idx
  %i.ku = add nuw i64 %i.ip, 1
  %i.kv = uitofp i64 %i.ku to double              ; 2 uses
  %i.kw = fneg double %i.kv
  %i.kx = select i1 %.not, double %i.kw, double %i.kv
  store double %i.kx, ptr %i.kt, align 8, !tbaa !43
  %i.ky = add nuw i64 %.091365, 1                 ; 2 uses
  %exitcond390.not = icmp eq i64 %i.ky, %i.be
  br i1 %exitcond390.not, label %._crit_edge, label %bb.v, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.aa, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread
  %.sroa.0197.0426 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread ], [ %i.hx, %bb.aa ] ; 5 uses
  %.sroa.18205.0424 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread ], [ %i.ia, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11sort_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %._crit_edge
  %i.kz = load ptr, ptr %5, align 8, !tbaa !17
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.0112370 ; 4 uses
  %i.lb = load ptr, ptr %6, align 8, !tbaa !26
  %i.lc = getelementptr inbounds nuw [40 x i8], ptr %i.lb, i64 %.0112370 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !34 ; 2 uses
  %i.lf = load ptr, ptr %i.la, align 8, !tbaa !18 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = ashr exact i64 %i.li, 2                 ; 3 uses
  %i.lk = icmp ugt i64 %i.be, %i.lj
  br i1 %i.lk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ll = sub nuw nsw i64 %i.be, %i.lj
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.la, i64 noundef %i.ll)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.lm = icmp ult i64 %i.be, %i.lj
  br i1 %i.lm, label %bb.ae, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.bd ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.le, %i.ln
  br i1 %.not.i.i158, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ae
  store ptr %i.ln, ptr %i.ld, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.ae, %bb.ad, %bb.ac
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !27 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 24 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !74 ; 2 uses
end_hunk_0
