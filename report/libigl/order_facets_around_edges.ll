Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edges?download=true
inline.NumInlined: 1521
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl8copyleft4cgal25order_facets_around_edgesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_S6_iibEENSt9enable_ifIXntsr3std7is_sameINT_6ScalarEN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSD_8backends16rational_adaptorINSF_15cpp_int_backendILm0ELm0ELNSD_16cpp_integer_typeE1ELNSD_18cpp_int_check_typeE0ESaIyEEEEELNSD_26expression_template_optionE1EEEEEEE5valueEvE4typeERKNS3_10MatrixBaseIS8_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKSt6vectorIS18_IT3_SaIS19_EESaIS1B_EERS18_IS18_IT4_SaIS1G_EESaIS1I_EERS18_IS18_IT5_SaIS1M_EESaIS1O_EE:bb.a

.critedge:                                        ; preds = %bb.m
  br i1 %.not421, label %.loopexit, label %bb.m, !llvm.loop !74

bb.m:                                             ; preds = %.lr.ph363, %.critedge
  %.092362 = phi i64 [ 0, %.lr.ph363 ], [ %i.fe, %.critedge ] ; 2 uses
  %i.fe = add nuw i64 %.092362, 1                 ; 3 uses
  %.not421 = icmp eq i64 %i.fe, %i.be             ; 2 uses
  %i.ff = select i1 %.not421, i64 0, i64 %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %.092362 ; 3 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !39 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.dk
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !39 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !39 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ff ; 3 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !39 ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.dk
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !39 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !39 ; 2 uses
  %i.fs = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fr, i64 1
  %i.fu = fneg <2 x double> %i.ft
  %i.fv = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fh, i64 1
  %i.fx = fmul <2 x double> %i.fw, %i.fu
  %i.fy = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fl, i64 1
  %i.ga = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fn, i64 1
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gb, <2 x double> %i.fx) ; 5 uses
  %i.gd = fneg double %i.fn
  %i.ge = fmul double %i.fj, %i.gd
  %i.gf = call double @llvm.fmuladd.f64(double %i.fh, double %i.fp, double %i.ge) ; 5 uses
  %i.gg = fmul <2 x double> %i.gc, %i.gc          ; 2 uses
  %shift453 = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop454 = fadd <2 x double> %i.gg, %shift453
  %i.gh = extractelement <2 x double> %foldExtExtBinop454, i64 0
  %i.gi = fmul double %i.gf, %i.gf
  %i.gj = fadd double %i.gi, %i.gh                ; 2 uses
  %.scalar.i142 = call double @llvm.sqrt.f64(double %i.gj) ; 3 uses
  %i.gk = fcmp ult double %.scalar.i142, f0x3D719799812DEA11
  br i1 %i.gk, label %.critedge, label %bb.n, !llvm.loop !74

bb.n:                                             ; preds = %bb.m
  %i.gl = fcmp ogt double %i.gj, 0.000000e+00
  br i1 %i.gl, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.gm = insertelement <2 x double> poison, double %.scalar.i142, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fdiv <2 x double> %i.gc, %i.gn
  %i.gp = fdiv double %i.gf, %.scalar.i142
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.n, %bb.o
  %.sroa.0298.2 = phi <2 x double> [ %i.gc, %bb.n ], [ %i.go, %bb.o ], [ %i.gc, %.critedge ] ; 5 uses
  %.sroa.20312.2 = phi double [ %i.gf, %bb.n ], [ %i.gp, %bb.o ], [ %i.gf, %.critedge ] ; 4 uses
  %i.gq = sext i32 %i.ca to i64
  %i.gr = load ptr, ptr %0, align 8, !tbaa !83, !noalias !90 ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gq ; 3 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.ck ; 3 uses
  %i.gu = load i64, ptr %i.as, align 8, !tbaa !85 ; 3 uses
  %i.gv = load double, ptr %i.gs, align 8, !tbaa !39
  %i.gw = load double, ptr %i.gt, align 8, !tbaa !39
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !39
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !39
  %.idx.i.i.i.i.i.i.i.i.i.i144 = shl nsw i64 %i.gu, 4 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !39 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.gt, i64 %.idx.i.i.i.i.i.i.i.i.i.i144
  %i.he = load double, ptr %i.hd, align 8, !tbaa !39 ; 2 uses
  %.sroa.0298.8.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 1
  %.sroa.0298.0.vec.extract = extractelement <2 x double> %.sroa.0298.2, i64 0
  %i.hf = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %i.gv, i64 1
  %i.hh = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.gw, i64 1
  %i.hj = fsub <2 x double> %i.hg, %i.hi          ; 2 uses
  %i.hk = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hc, i64 1
  %i.hm = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.he, i64 1
  %i.ho = fsub <2 x double> %i.hl, %i.hn          ; 2 uses
  %i.hp = fneg <2 x double> %i.ho
  %i.hq = shufflevector <2 x double> %.sroa.0298.2, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hr = insertelement <2 x double> %i.hq, double %.sroa.20312.2, i64 0
  %i.hs = fmul <2 x double> %i.hr, %i.hp
  %i.ht = insertelement <2 x double> %i.hq, double %.sroa.20312.2, i64 1
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hj, <2 x double> %i.hs)
  %i.hv = extractelement <2 x double> %i.hj, i64 1
  %i.hw = fneg double %i.hv
  %i.hx = fmul double %.sroa.0298.8.vec.extract, %i.hw
  %i.hy = extractelement <2 x double> %i.ho, i64 0
  %i.hz = call double @llvm.fmuladd.f64(double %.sroa.0298.0.vec.extract, double %i.hy, double %i.hx)
  %i.ia = fmul <2 x double> %.sroa.0326.8.vec.insert, %i.hu ; 2 uses
  %shift456 = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop457 = fadd <2 x double> %i.ia, %shift456
  %i.ib = extractelement <2 x double> %foldExtExtBinop457, i64 0
  %i.ic = fmul double %i.bp, %i.hz
  %i.id = fadd double %i.ic, %i.ib
  %i.ie = fcmp olt double %i.id, 0.000000e+00     ; 2 uses
  %i.if = fneg <2 x double> %.sroa.0298.2
  %i.ig = fneg double %.sroa.20312.2
  %.sroa.0298.3 = select i1 %i.ie, <2 x double> %i.if, <2 x double> %.sroa.0298.2
  %.sroa.20312.3 = select i1 %i.ie, double %i.ig, double %.sroa.20312.2
  call void @free(ptr noundef nonnull %i.eb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.p:                                             ; preds = %bb.i
  %i.ih = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.ih, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

bb.q:                                             ; preds = %bb.p
  %i.ii = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = fdiv <2 x double> %.sroa.0298.8.vec.insert, %i.ij
  %i.il = fdiv double %i.cz, %.scalar.i
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147: ; preds = %bb.q, %bb.p, %bb.j, %.loopexit
  %.sroa.0298.4 = phi <2 x double> [ zeroinitializer, %bb.j ], [ %.sroa.0298.3, %.loopexit ], [ %i.ik, %bb.q ], [ %.sroa.0298.8.vec.insert, %bb.p ]
  %.sroa.20312.4 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.20312.3, %.loopexit ], [ %i.il, %bb.q ], [ %i.cz, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.im = icmp eq ptr %i.az, %i.ba                ; 2 uses
  br i1 %i.im, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread, label %bb.r

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread:        ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  store i64 %i.be, ptr %i.au, align 8, !tbaa !85
  store i64 3, ptr %i.av, align 8, !tbaa !91
  br label %._crit_edge

bb.r:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit147
  %i.in = icmp sgt i64 %i.be, 0
  br i1 %i.in, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.io = icmp samesign ugt i64 %i.be, 768614336404564650
  br i1 %i.io, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.s
  %i.ip = mul nuw i64 %i.be, 24
  %i.iq = call noalias ptr @malloc(i64 noundef %i.ip) #22 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.invoke, label %bb.u

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.s
  %i.is = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.is, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %.invoke
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %8, align 8, !tbaa !83
  call void @free(ptr noundef %i.iu) #21
  br label %common.resume

bb.u:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.r
  %.sink.i = phi ptr [ %i.iq, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %8, align 8, !tbaa !83
  store i64 %i.be, ptr %i.au, align 8, !tbaa !85
  store i64 3, ptr %i.av, align 8, !tbaa !91
  %i.iv = add nsw i64 %i.be, 63                   ; 2 uses
  %i.iw = lshr i64 %i.iv, 3
  %i.ix = and i64 %i.iw, 2305843009213693944
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #24
          to label %.lr.ph366 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ; 4 uses

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i:         ; preds = %bb.u
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph366:                                        ; preds = %bb.u
  %i.ja = lshr i64 %i.iv, 6                       ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ja
  %.idx.i.i = shl nuw nsw i64 %i.ja, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.iy, i8 0, i64 %.idx.i.i, i1 false)
  %i.jc = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.jd = load ptr, ptr %1, align 8, !tbaa !40
  %i.je = load i64, ptr %i.a, align 8, !tbaa !16
  %i.jf = load ptr, ptr %2, align 8, !tbaa !83, !noalias !92
  %i.jg = load i64, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i149 = shl nsw i64 %i.jg, 4
  %i.jh = load ptr, ptr %8, align 8, !tbaa !83
  %i.ji = load i64, ptr %i.au, align 8, !tbaa !85 ; 2 uses
  %.idx = shl i64 %i.ji, 4
  %i.jj = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.bp, i64 1
  %i.jl = insertelement <2 x double> poison, double %i.bp, i64 0
  %10 = insertelement <2 x double> %i.jl, double %i.bl, i64 1
  %11 = insertelement <2 x double> poison, double %.sroa.20312.4, i64 0
  %i.jm = insertelement <2 x double> %11, double %i.bp, i64 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph366, %bb.aa
  %.091365 = phi i64 [ 0, %.lr.ph366 ], [ %i.lt, %bb.aa ] ; 6 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.091365
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !36
  %i.jp = sext i32 %i.jo to i64                   ; 2 uses
  %i.jq = urem i64 %i.jp, %i.b                    ; 3 uses
  %i.jr = udiv i64 %i.jp, %i.b
  %i.js = add i64 %i.jr, 1
  %i.jt = urem i64 %i.js, 3
  %i.ju = mul nsw i64 %i.je, %i.jt
  %i.jv = getelementptr [4 x i8], ptr %i.jd, i64 %i.jq
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %i.ju
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !36
  %i.jy = sdiv i64 %.091365, 64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.jy
  %i.ka = and i64 %.091365, -9223372036854775745
  %i.kb = icmp ugt i64 %i.ka, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.kb, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jz, i64 %storemerge.idx.i.i.i.i.i ; 3 uses
  %i.kc = and i64 %.091365, 63
  %i.kd = shl nuw i64 1, %i.kc                    ; 3 uses
  %i.ke = icmp eq i32 %i.cg, %i.jx
  br i1 %i.ke, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kf = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !46
  %i.kg = or i64 %i.kf, %i.kd
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.kh = xor i64 %i.kd, -1
  %i.ki = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !46
  %i.kj = and i64 %i.ki, %i.kh
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge353 = phi i64 [ %i.kj, %bb.x ], [ %i.kg, %bb.w ] ; 2 uses
  store i64 %storemerge353, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !46
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.jq ; 3 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !39 ; 3 uses
  %.sroa.0187.0.vec.insert = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.jg
  %i.kn = load double, ptr %i.km, align 8, !tbaa !39 ; 3 uses
  %.sroa.0187.8.vec.insert = insertelement <2 x double> %.sroa.0187.0.vec.insert, double %i.kn, i64 1
  %i.ko = getelementptr inbounds i8, ptr %i.kk, i64 %.idx.i.i.i.i.i.i.i.i.i.i149
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !39 ; 3 uses
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = fneg <2 x double> %i.kr
  %i.kt = fmul <2 x double> %10, %i.ks
  %i.ku = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %i.kl, i64 1
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.kv, <2 x double> %i.kt)
  %i.kx = fneg double %i.kl
  %i.ky = fmul double %i.bn, %i.kx
  %i.kz = fmul <2 x double> %.sroa.0298.4, %i.kw  ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %i.jh, i64 %.091365 ; 7 uses
  %i.lb = fmul <2 x double> %.sroa.0326.8.vec.insert, %.sroa.0187.8.vec.insert ; 2 uses
  %i.lc = shufflevector <2 x double> %i.kz, <2 x double> %i.lb, <2 x i32> <i32 0, i32 2>
  %i.ld = shufflevector <2 x double> %i.kz, <2 x double> %i.lb, <2 x i32> <i32 1, i32 3>
  %i.le = fadd <2 x double> %i.lc, %i.ld
  %12 = call double @llvm.fmuladd.f64(double %i.bl, double %i.kn, double %i.ky)
  %13 = insertelement <2 x double> poison, double %12, i64 0
  %14 = insertelement <2 x double> %13, double %i.kp, i64 1
  %15 = fmul <2 x double> %i.jm, %14
  %16 = fadd <2 x double> %15, %i.le              ; 2 uses
  %i.lf = extractelement <2 x double> %16, i64 0
  store double %i.lf, ptr %i.la, align 8, !tbaa !39
  %i.lg = getelementptr [8 x i8], ptr %i.la, i64 %i.ji ; 3 uses
  %17 = extractelement <2 x double> %16, i64 1
  store double %17, ptr %i.lg, align 8, !tbaa !39
  %i.lh = and i64 %storemerge353, %i.kd
  %.not = icmp eq i64 %i.lh, 0                    ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.li = load double, ptr %i.la, align 8, !tbaa !39
  %i.lj = fneg double %i.li
  store double %i.lj, ptr %i.la, align 8, !tbaa !39
  %i.lk = load double, ptr %i.lg, align 8, !tbaa !39
  %i.ll = fneg double %i.lk
  store double %i.ll, ptr %i.lg, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.lm = load double, ptr %i.la, align 8, !tbaa !39
  %i.ln = fneg double %i.lm
  store double %i.ln, ptr %i.la, align 8, !tbaa !39
  %i.lo = getelementptr i8, ptr %i.la, i64 %.idx
  %i.lp = add nuw i64 %i.jq, 1
  %i.lq = uitofp i64 %i.lp to double              ; 2 uses
  %i.lr = fneg double %i.lq
  %i.ls = select i1 %.not, double %i.lr, double %i.lq
  store double %i.ls, ptr %i.lo, align 8, !tbaa !39
  %i.lt = add nuw i64 %.091365, 1                 ; 2 uses
  %exitcond390.not = icmp eq i64 %i.lt, %i.be
  br i1 %exitcond390.not, label %._crit_edge, label %bb.v, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.aa, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread
  %.sroa.0197.0427 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread ], [ %i.iy, %bb.aa ] ; 5 uses
  %.sroa.18205.0425 = phi ptr [ null, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.thread ], [ %i.jb, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11sort_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %._crit_edge
  %i.lu = load ptr, ptr %5, align 8, !tbaa !20
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %.0112370 ; 4 uses
  %i.lw = load ptr, ptr %6, align 8, !tbaa !28
  %i.lx = getelementptr inbounds nuw [40 x i8], ptr %i.lw, i64 %.0112370 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !35 ; 2 uses
  %i.ma = load ptr, ptr %i.lv, align 8, !tbaa !22 ; 2 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = ashr exact i64 %i.md, 2                 ; 3 uses
  %i.mf = icmp ugt i64 %i.be, %i.me
  br i1 %i.mf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.mg = sub nuw nsw i64 %i.be, %i.me
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 noundef %i.mg)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.mh = icmp ult i64 %i.be, %i.me
  br i1 %i.mh, label %bb.ae, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ad
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.bd ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.lz, %i.mi
  br i1 %.not.i.i158, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ae
  store ptr %i.mi, ptr %i.ly, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.ae, %bb.ad, %bb.ac
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !31 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 24 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !47 ; 2 uses
  %i.mn = load ptr, ptr %i.lx, align 8, !tbaa !31 ; 2 uses
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = shl nsw i64 %i.mq, 3
  %i.ms = zext i32 %i.mm to i64
  %i.mt = add nsw i64 %i.mr, %i.ms                ; 2 uses
  %i.mu = icmp ult i64 %i.be, %i.mt
  br i1 %i.mu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.mv = sdiv i64 %i.be, 64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.mv
  %i.mx = and i64 %i.be, -9223372036854775745
  %i.my = icmp ugt i64 %i.mx, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.my, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.mw, i64 %storemerge.idx.i.i.i.i
  %i.mz = trunc i64 %i.be to i32
  %i.na = and i32 %i.mz, 63
  store ptr %storemerge.i.i.i.i, ptr %i.mj, align 8
  store i32 %i.na, ptr %i.ml, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.nb = sub nuw i64 %i.be, %i.mt
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.lx, ptr %i.mk, i32 %i.mm, i64 noundef %i.nb, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit unwind label %bb.aj

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.ag, %bb.af
  %.pre395 = load ptr, ptr %9, align 8, !tbaa !49 ; 3 uses
  br i1 %i.im, label %._crit_edge369, label %.lr.ph368

.lr.ph368:                                        ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.nc = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.nd = load ptr, ptr %i.lv, align 8, !tbaa !22
  %i.ne = load ptr, ptr %i.lx, align 8, !tbaa !31
  br label %bb.ak

._crit_edge369:                                   ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  call void @free(ptr noundef %.pre395) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.not.i.i160 = icmp eq ptr %.sroa.0197.0427, null
  br i1 %.not.i.i160, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge369.thread, %._crit_edge369
  %i.nf = ptrtoint ptr %.sroa.18205.0425 to i64
  %i.ng = ptrtoint ptr %.sroa.0197.0427 to i64
  %i.nh = sub i64 %i.nf, %i.ng                    ; 2 uses
  %i.ni = ashr exact i64 %i.nh, 3
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %.sroa.18205.0425, i64 %i.nj
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nh) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %._crit_edge369, %bb.ah
  %i.nl = load ptr, ptr %8, align 8, !tbaa !83
  call void @free(ptr noundef %i.nl) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.nm = add nuw i64 %.0112370, 1                ; 2 uses
  %exitcond393.not = icmp eq i64 %i.nm, %i.d
  br i1 %exitcond393.not, label %._crit_edge372, label %bb.i, !llvm.loop !80

bb.ai:                                            ; preds = %._crit_edge
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %bb.ag, %bb.ac
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %.lr.ph368, %_ZNSt14_Bit_referenceaSERKS_.exit
  %.0367 = phi i64 [ 0, %.lr.ph368 ], [ %i.oq, %_ZNSt14_Bit_referenceaSERKS_.exit ] ; 6 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %.pre395, i64 %.0367 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !36
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !36
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %.0367
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !36
  %i.nv = load i32, ptr %i.np, align 4, !tbaa !36 ; 2 uses
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  %i.nx = sdiv i32 %i.nv, 64
  %.sext = sext i32 %i.nx to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %.sroa.0197.0427, i64 %.sext
  %i.nz = and i64 %i.nw, -9223372036854775745
  %i.oa = icmp ugt i64 %i.nz, -9223372036854775808
  %storemerge.idx.i.i.i.i.i161 = select i1 %i.oa, i64 -8, i64 0
  %storemerge.i.i.i.i.i162 = getelementptr inbounds i8, ptr %i.ny, i64 %storemerge.idx.i.i.i.i.i161
  %i.ob = and i64 %i.nw, 63
  %i.oc = shl nuw i64 1, %i.ob
  %i.od = sdiv i64 %.0367, 64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.od
  %i.of = and i64 %.0367, -9223372036854775745
  %i.og = icmp ugt i64 %i.of, -9223372036854775808
  %storemerge.idx.i.i.i.i.i165 = select i1 %i.og, i64 -8, i64 0
  %storemerge.i.i.i.i.i166 = getelementptr inbounds i8, ptr %i.oe, i64 %storemerge.idx.i.i.i.i.i165 ; 3 uses
  %i.oh = and i64 %.0367, 63
  %i.oi = shl nuw i64 1, %i.oh                    ; 2 uses
  %i.oj = load i64, ptr %storemerge.i.i.i.i.i162, align 8, !tbaa !46
  %i.ok = and i64 %i.oc, %i.oj
  %.not.i = icmp eq i64 %i.ok, 0
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ol = load i64, ptr %storemerge.i.i.i.i.i166, align 8, !tbaa !46
  %i.om = or i64 %i.ol, %i.oi
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

bb.am:                                            ; preds = %bb.ak
  %i.on = xor i64 %i.oi, -1
  %i.oo = load i64, ptr %storemerge.i.i.i.i.i166, align 8, !tbaa !46
  %i.op = and i64 %i.oo, %i.on
  br label %_ZNSt14_Bit_referenceaSERKS_.exit

_ZNSt14_Bit_referenceaSERKS_.exit:                ; preds = %bb.al, %bb.am
  %storemerge = phi i64 [ %i.om, %bb.al ], [ %i.op, %bb.am ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i166, align 8, !tbaa !46
  %i.oq = add nuw i64 %.0367, 1                   ; 2 uses
  %exitcond392.not = icmp eq i64 %i.oq, %i.be
  br i1 %exitcond392.not, label %._crit_edge369.thread, label %bb.ak, !llvm.loop !81

._crit_edge369.thread:                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit
  call void @free(ptr noundef nonnull %.pre395) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ah
end_hunk_0
