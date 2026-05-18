inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.fg = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %.not1434 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not1434, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351, %_ZNSt6vectorIS_IeSaIeEESaIS1_EE6resizeEm.exit338
  %i.fh = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #23
          to label %bb.av unwind label %bb.aw     ; 32 uses

bb.ac:                                            ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.j, %bb.g, %bb.e
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IeSaIeEESaIS1_EE6resizeEm.exit338, %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351
  %i.fj = phi ptr [ %i.hl, %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351 ], [ %i.fg, %_ZNSt6vectorIS_IeSaIeEESaIS1_EE6resizeEm.exit338 ]
  %i.fk = phi i64 [ %i.hj, %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351 ], [ 0, %_ZNSt6vectorIS_IeSaIeEESaIS1_EE6resizeEm.exit338 ] ; 5 uses
  %.02521396 = phi i32 [ %i.hi, %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351 ], [ 0, %_ZNSt6vectorIS_IeSaIeEESaIS1_EE6resizeEm.exit338 ]
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.fk
  invoke void @_ZN16LoopSuiteRunInfo12addLoopStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(640) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.fl)
          to label %bb.ad unwind label %bb.aq

bb.ad:                                            ; preds = %.lr.ph
  %i.fm = load ptr, ptr %i.cc, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fk ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !91 ; 3 uses
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !85 ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = ashr exact i64 %i.ft, 2                 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 3
  br i1 %i.fv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fw = sub nuw nsw i64 3, %i.fu
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr %i.fp, i64 noundef %i.fw, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.ar

bb.af:                                            ; preds = %bb.ad
  %.not1360 = icmp eq i64 %i.ft, 12
  br i1 %.not1360, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 12 ; 2 uses
  %.not.i.i340 = icmp eq ptr %i.fp, %i.fx
  br i1 %.not.i.i340, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ag
  store ptr %i.fx, ptr %i.fo, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.fy = load ptr, ptr %i.cx, align 16, !tbaa !88
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.fk ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store x86_fp80 0.000000e+00, ptr %i.d, align 16, !tbaa !92
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !93 ; 3 uses
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !89 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gg = ashr exact i64 %i.gf, 4                 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 3
  br i1 %i.gh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.gi = sub nuw nsw i64 3, %i.gg
  invoke void @_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr %i.gb, i64 noundef %i.gi, ptr noundef nonnull align 16 dereferenceable(16) %i.d)
          to label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit unwind label %bb.as

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %.not1361 = icmp eq i64 %i.gf, 48
  br i1 %.not1361, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 48 ; 2 uses
  %.not.i.i342 = icmp eq ptr %i.gb, %i.gj
  br i1 %.not.i.i342, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit, label %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aj
  store ptr %i.gj, ptr %i.ga, align 8, !tbaa !93
  br label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit

_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit:            ; preds = %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i, %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.gk = load ptr, ptr %i.dr, align 8, !tbaa !88
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.fk ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store x86_fp80 0.000000e+00, ptr %i.e, align 16, !tbaa !92
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !93 ; 3 uses
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !89 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 2 uses
  %i.gs = ashr exact i64 %i.gr, 4                 ; 2 uses
  %i.gt = icmp ult i64 %i.gs, 3
  br i1 %i.gt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit
  %i.gu = sub nuw nsw i64 3, %i.gs
  invoke void @_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr %i.gn, i64 noundef %i.gu, ptr noundef nonnull align 16 dereferenceable(16) %i.e)
          to label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347 unwind label %bb.at

bb.al:                                            ; preds = %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit
  %.not1362 = icmp eq i64 %i.gr, 48
  br i1 %.not1362, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 2 uses
  %.not.i.i344 = icmp eq ptr %i.gn, %i.gv
  br i1 %.not.i.i344, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347, label %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i345

_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i345:     ; preds = %bb.am
  store ptr %i.gv, ptr %i.gm, align 8, !tbaa !93
  br label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347

_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347:         ; preds = %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i345, %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.gw = load ptr, ptr %i.el, align 16, !tbaa !88
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %i.fk ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store x86_fp80 0.000000e+00, ptr %i.f, align 16, !tbaa !92
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !93 ; 3 uses
  %i.ha = load ptr, ptr %i.gx, align 8, !tbaa !89 ; 2 uses
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = ashr exact i64 %i.hd, 4                 ; 2 uses
  %i.hf = icmp ult i64 %i.he, 3
  br i1 %i.hf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347
  %i.hg = sub nuw nsw i64 3, %i.he
  invoke void @_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr %i.gz, i64 noundef %i.hg, ptr noundef nonnull align 16 dereferenceable(16) %i.f)
          to label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351 unwind label %bb.au

bb.ao:                                            ; preds = %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit347
  %.not1363 = icmp eq i64 %i.hd, 48
  br i1 %.not1363, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 48 ; 2 uses
  %.not.i.i348 = icmp eq ptr %i.gz, %i.hh
  br i1 %.not.i.i348, label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351, label %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i349

_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i349:     ; preds = %bb.ap
  store ptr %i.hh, ptr %i.gy, align 8, !tbaa !93
  br label %_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351

_ZNSt6vectorIeSaIeEE6resizeEmRKe.exit351:         ; preds = %_ZSt8_DestroyIPeeEvT_S1_RSaIT0_E.exit.i.i349, %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.hi = add i32 %.02521396, 1                   ; 2 uses
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.hl = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 5
  %i.hq = icmp ugt i64 %i.hp, %i.hj
  br i1 %i.hq, label %.lr.ph, label %._crit_edge, !llvm.loop !94

bb.aq:                                            ; preds = %.lr.ph
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ar:                                            ; preds = %bb.ae
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.ci

bb.as:                                            ; preds = %bb.ah
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.ci

bb.at:                                            ; preds = %bb.ak
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.ci

bb.au:                                            ; preds = %bb.an
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.ci

bb.av:                                            ; preds = %._crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 27 uses
  %43 = insertelement <3 x double> poison, double %3, i64 0
  %44 = shufflevector <3 x double> %43, <3 x double> poison, <3 x i32> zeroinitializer
  %45 = fmul <3 x double> %44, <double 4.421700e+04, double 5.001000e+03, double 1.710000e+02>
  %46 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 27 uses
  %47 = fptosi <3 x double> %45 to <3 x i32>
  store <3 x i32> %47, ptr %i.fh, align 4, !tbaa !4
  store double %3, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 16, !tbaa !95
  %.not1435 = icmp eq i32 %i.hy, 0
  br i1 %.not1435, label %._crit_edge1433, label %.lr.ph1432

.lr.ph1432:                                       ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 37 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 30 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 30 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 232 ; 31 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.kw = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.kx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.ky = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.kz = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.la = getelementptr inbounds nuw i8, ptr %i.k, i64 600 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 31
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 27
  %i.ld = getelementptr inbounds nuw i8, ptr %40, i64 25
  %i.le = getelementptr inbounds nuw i8, ptr %39, i64 25
  %i.lf = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.lg = getelementptr inbounds nuw i8, ptr %37, i64 29
  %i.lh = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %35, i64 22
  %i.lj = getelementptr inbounds nuw i8, ptr %34, i64 22
  %i.lk = getelementptr inbounds nuw i8, ptr %33, i64 26
  %i.ll = getelementptr inbounds nuw i8, ptr %32, i64 25
  %i.lm = getelementptr inbounds nuw i8, ptr %31, i64 28
  %i.ln = getelementptr inbounds nuw i8, ptr %30, i64 27
  %i.lo = getelementptr inbounds nuw i8, ptr %29, i64 19
  %i.lp = getelementptr inbounds nuw i8, ptr %28, i64 19
  %i.lq = getelementptr inbounds nuw i8, ptr %27, i64 28
  %i.lr = getelementptr inbounds nuw i8, ptr %26, i64 27
  %i.ls = getelementptr inbounds nuw i8, ptr %25, i64 26
  %i.lt = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.lu = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %21, i64 23
  %i.lx = getelementptr inbounds nuw i8, ptr %20, i64 25
  %i.ly = getelementptr inbounds nuw i8, ptr %19, i64 21
  %i.lz = getelementptr inbounds nuw i8, ptr %18, i64 19
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 22
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 30
  %i.mc = getelementptr inbounds nuw i8, ptr %15, i64 26
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 29
  %i.me = getelementptr inbounds nuw i8, ptr %41, i64 28
  %i.mf = getelementptr inbounds nuw i8, ptr %42, i64 30
  %i.mg = getelementptr inbounds nuw i8, ptr %10, i64 24
  br label %bb.ax

._crit_edge1433:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, %bb.av
  %.01353.lcssa = phi i32 [ 0, %bb.av ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076 ]
  invoke void @_Z26defineReferenceLoopRunInfov()
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.ch

bb.aw:                                            ; preds = %._crit_edge
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ax:                                            ; preds = %.lr.ph1432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076
  %indvars.iv1472 = phi i64 [ 0, %.lr.ph1432 ], [ %indvars.iv.next1473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076 ] ; 4 uses
  %.013531429 = phi i32 [ 0, %.lr.ph1432 ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.hz, ptr %8, align 8, !tbaa !79
  store i64 0, ptr %i.ia, align 8, !tbaa !80
  store i8 0, ptr %i.hz, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.mi = load i32, ptr %i.ib, align 16, !tbaa !96
  invoke void @_ZN8LoopStatC2Ej(ptr noundef nonnull align 8 dereferenceable(280) %9, i32 noundef %i.mi)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv1472
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !97, !range !98, !noundef !99
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.az, label %_ZNSolsEPFRSoS_E.exit

bb.az:                                            ; preds = %bb.ay
  %i.mm = trunc nuw i64 %indvars.iv1472 to i32
  switch i32 %i.mm, label %bb.bj [
    i32 0, label %._crit_edge.i.i352
    i32 32, label %._crit_edge.i.i1052
    i32 31, label %._crit_edge.i.i1036
    i32 2, label %.noexc.i385
    i32 1, label %._crit_edge.i.i368
    i32 5, label %._crit_edge.i.i432
    i32 6, label %._crit_edge.i.i506
    i32 7, label %._crit_edge.i.i570
    i32 8, label %._crit_edge.i.i668
    i32 9, label %._crit_edge.i.i684
    i32 10, label %._crit_edge.i.i700
    i32 11, label %._crit_edge.i.i716
    i32 12, label %._crit_edge.i.i732
    i32 13, label %._crit_edge.i.i748
    i32 14, label %._crit_edge.i.i764
    i32 15, label %._crit_edge.i.i780
    i32 16, label %._crit_edge.i.i796
    i32 17, label %._crit_edge.i.i812
    i32 18, label %._crit_edge.i.i828
    i32 19, label %._crit_edge.i.i844
    i32 20, label %._crit_edge.i.i860
    i32 21, label %._crit_edge.i.i876
    i32 22, label %._crit_edge.i.i892
    i32 23, label %._crit_edge.i.i908
    i32 24, label %._crit_edge.i.i924
    i32 25, label %._crit_edge.i.i940
    i32 26, label %._crit_edge.i.i956
    i32 27, label %._crit_edge.i.i972
    i32 28, label %._crit_edge.i.i988
    i32 29, label %._crit_edge.i.i1004
    i32 30, label %._crit_edge.i.i1020
    i32 3, label %._crit_edge.i.i400
    i32 4, label %._crit_edge.i.i416
  ]

bb.ba:                                            ; preds = %bb.ax
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

._crit_edge.i.i352:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.kr, ptr %10, align 8, !tbaa !79
  store i64 5786931235628926290, ptr %i.kr, align 8
  store i64 8, ptr %i.ks, align 8, !tbaa !80
  store i8 0, ptr %i.mg, align 8, !tbaa !81
  %i.mo = load ptr, ptr %8, align 8, !tbaa !76
  store i64 5786931235628926290, ptr %i.mo, align 1
  %i.mp = load i64, ptr %i.ks, align 8, !tbaa !80 ; 2 uses
  store i64 %i.mp, ptr %i.ia, align 8, !tbaa !80
  %i.mq = load ptr, ptr %8, align 8, !tbaa !76
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp
  store i8 0, ptr %i.mr, align 1, !tbaa !81
  %.pre.i361 = load ptr, ptr %10, align 8, !tbaa !76
  store i64 0, ptr %i.ks, align 8, !tbaa !80
  store i8 0, ptr %.pre.i361, align 1, !tbaa !81
  %i.ms = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.kr
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %._crit_edge.i.i352
  call void @_ZdlPv(ptr noundef %i.ms) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %._crit_edge.i.i352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i368:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.kj, ptr %11, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.kj, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  store i64 13, ptr %i.kk, align 8, !tbaa !80
  store i8 0, ptr %i.md, align 1, !tbaa !81
  %i.mu = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.mu, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  %i.mv = load i64, ptr %i.kk, align 8, !tbaa !80 ; 2 uses
  store i64 %i.mv, ptr %i.ia, align 8, !tbaa !80
  %i.mw = load ptr, ptr %8, align 8, !tbaa !76
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mv
  store i8 0, ptr %i.mx, align 1, !tbaa !81
  %.pre.i377 = load ptr, ptr %11, align 8, !tbaa !76
  store i64 0, ptr %i.kk, align 8, !tbaa !80
  store i8 0, ptr %.pre.i377, align 1, !tbaa !81
  %i.my = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.kj
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %._crit_edge.i.i368
  call void @_ZdlPv(ptr noundef %i.my) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %._crit_edge.i.i368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bh

.noexc.i385:                                      ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.kl, ptr %12, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 17, ptr %i.b, align 8, !tbaa !100
  %i.na = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc386 unwind label %bb.bg ; 2 uses

.noexc386:                                        ; preds = %.noexc.i385
  store ptr %i.na, ptr %12, align 8, !tbaa !76
  %i.nb = load i64, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  store i64 %i.nb, ptr %i.kl, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.na, ptr noundef nonnull align 1 dereferenceable(17) @.str.5, i64 17, i1 false)
  store i64 %i.nb, ptr %i.km, align 8, !tbaa !80
  %i.nc = load ptr, ptr %12, align 8, !tbaa !76
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nb
  store i8 0, ptr %i.nd, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ne = load ptr, ptr %8, align 8, !tbaa !76    ; 6 uses
  %i.nf = icmp eq ptr %i.ne, %i.hz
  %i.ng = load ptr, ptr %12, align 8, !tbaa !76   ; 5 uses
  %i.nh = icmp eq ptr %i.ng, %i.kl                ; 2 uses
  br i1 %i.nf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i394: ; preds = %.noexc386
  br i1 %i.nh, label %bb.bb, label %.thread.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i388: ; preds = %.noexc386
  br i1 %i.nh, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i394
  %i.ni = load i64, ptr %i.km, align 8, !tbaa !80 ; 3 uses
  %i.nj = icmp ult i64 %i.ni, 16
  call void @llvm.assume(i1 %i.nj)
  switch i64 %i.ni, label %bb.bd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !81
  store i8 %i.nk, ptr %i.ne, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr align 1 %i.ng, i64 %i.ni, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.nl = load i64, ptr %i.km, align 8, !tbaa !80 ; 2 uses
  store i64 %i.nl, ptr %i.ia, align 8, !tbaa !80
  %i.nm = load ptr, ptr %8, align 8, !tbaa !76
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nl
  store i8 0, ptr %i.nn, align 1, !tbaa !81
  %.pre.i393 = load ptr, ptr %12, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

.thread.i395:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i394
  store ptr %i.ng, ptr %8, align 8, !tbaa !76
  %i.no = load <2 x i64>, ptr %i.km, align 8, !tbaa !81
  store <2 x i64> %i.no, ptr %i.ia, align 8, !tbaa !81
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i388
  %i.np = load i64, ptr %i.hz, align 8, !tbaa !81
  store ptr %i.ng, ptr %8, align 8, !tbaa !76
  %i.nq = load <2 x i64>, ptr %i.km, align 8, !tbaa !81
  store <2 x i64> %i.nq, ptr %i.ia, align 8, !tbaa !81
  %.not.i390 = icmp eq ptr %i.ne, null
  br i1 %.not.i390, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389
  store ptr %i.ne, ptr %12, align 8, !tbaa !76
  store i64 %i.np, ptr %i.kl, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389, %.thread.i395
  store ptr %i.kl, ptr %12, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392, %bb.be, %bb.bf
  %i.nr = phi ptr [ %.pre.i393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392 ], [ %i.ne, %bb.be ], [ %i.kl, %bb.bf ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i8 0, ptr %i.nr, align 1, !tbaa !81
  %i.ns = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.kl
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396
  call void @_ZdlPv(ptr noundef %i.ns) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc.i385
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %i.nv = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !73
  store double %i.nx, ptr %i.ig, align 8, !tbaa !101
  %i.ny = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.nz = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.nz, ptr %i.ny, align 4, !tbaa !4
  %i.oa = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !4
  %i.oc = load i32, ptr %46, align 4, !tbaa !4
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !4
  %i.oe = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 15000, ptr %i.oe, align 4, !tbaa !4
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  store i32 200000, ptr %i.of, align 4, !tbaa !4
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i32 10000000, ptr %i.og, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i400:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.ie, ptr %13, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ie, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false)
  store i64 11, ptr %i.if, align 8, !tbaa !80
  store i8 0, ptr %i.lc, align 1, !tbaa !81
  %i.oh = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.oh, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false)
  %i.oi = load i64, ptr %i.if, align 8, !tbaa !80 ; 2 uses
  store i64 %i.oi, ptr %i.ia, align 8, !tbaa !80
  %i.oj = load ptr, ptr %8, align 8, !tbaa !76
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oi
  store i8 0, ptr %i.ok, align 1, !tbaa !81
  %.pre.i409 = load ptr, ptr %13, align 8, !tbaa !76
  store i64 0, ptr %i.if, align 8, !tbaa !80
  store i8 0, ptr %.pre.i409, align 1, !tbaa !81
  %i.ol = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ie
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %._crit_edge.i.i400
  call void @_ZdlPv(ptr noundef %i.ol) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %._crit_edge.i.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bi

._crit_edge.i.i416:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %i.ic, ptr %14, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ic, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  store i64 15, ptr %i.id, align 8, !tbaa !80
  store i8 0, ptr %i.lb, align 1, !tbaa !81
  %i.on = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.on, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  %i.oo = load i64, ptr %i.id, align 8, !tbaa !80 ; 2 uses
  store i64 %i.oo, ptr %i.ia, align 8, !tbaa !80
  %i.op = load ptr, ptr %8, align 8, !tbaa !76
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oo
  store i8 0, ptr %i.oq, align 1, !tbaa !81
  %.pre.i425 = load ptr, ptr %14, align 8, !tbaa !76
  store i64 0, ptr %i.id, align 8, !tbaa !80
  store i8 0, ptr %.pre.i425, align 1, !tbaa !81
  %i.or = load ptr, ptr %14, align 8, !tbaa !76   ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.ic
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %._crit_edge.i.i416
  call void @_ZdlPv(ptr noundef %i.or) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %._crit_edge.i.i416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.ot = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !73
  store double %i.ov, ptr %i.ig, align 8, !tbaa !101
  %i.ow = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.ox = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ox, ptr %i.ow, align 4, !tbaa !4
  %i.oy = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !4
  %i.pa = load i32, ptr %46, align 4, !tbaa !4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i32 %i.pa, ptr %i.pb, align 4, !tbaa !4
  %i.pc = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 3000, ptr %i.pc, align 4, !tbaa !4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 30000, ptr %i.pd, align 4, !tbaa !4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i32 1000000, ptr %i.pe, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i432:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.kh, ptr %15, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.kh, ptr noundef nonnull align 1 dereferenceable(10) @.str.8, i64 10, i1 false)
  store i64 10, ptr %i.ki, align 8, !tbaa !80
  store i8 0, ptr %i.mc, align 2, !tbaa !81
  %i.pf = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.pf, ptr noundef nonnull align 1 dereferenceable(10) @.str.8, i64 10, i1 false)
  %i.pg = load i64, ptr %i.ki, align 8, !tbaa !80 ; 2 uses
  store i64 %i.pg, ptr %i.ia, align 8, !tbaa !80
  %i.ph = load ptr, ptr %8, align 8, !tbaa !76
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pg
  store i8 0, ptr %i.pi, align 1, !tbaa !81
  %.pre.i441 = load ptr, ptr %15, align 8, !tbaa !76
  store i64 0, ptr %i.ki, align 8, !tbaa !80
  store i8 0, ptr %.pre.i441, align 1, !tbaa !81
  %i.pj = load ptr, ptr %15, align 8, !tbaa !76   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.kh
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %._crit_edge.i.i432
  call void @_ZdlPv(ptr noundef %i.pj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %._crit_edge.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.pl = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !73
  store double %i.pn, ptr %i.ig, align 8, !tbaa !101
  %i.po = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %i.pp = fmul double %i.po, 2.800000e+01
  %i.pq = fptosi double %i.pp to i32
  %i.pr = add nsw i32 %i.pq, 3                    ; 4 uses
  %i.ps = mul nsw i32 %i.pr, %i.pr                ; 2 uses
  %i.pt = mul nsw i32 %i.ps, %i.pr                ; 2 uses
  %i.pu = add nsw i32 %i.pt, -1
  %i.pv = add i32 %i.ps, %i.pr
  %factor = shl i32 %i.pv, 1
  %reass.sub1437.neg = sub i32 %i.pt, %factor
  %i.pw = add i32 %reass.sub1437.neg, -2
  %i.px = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 2 uses
  store i32 %i.pw, ptr %i.px, align 4, !tbaa !4
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.pz = insertelement <2 x double> poison, double %i.po, i64 0
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = fmul <2 x double> %i.qa, <double 1.600000e+01, double 4.000000e+00>
  %i.qc = fptosi <2 x double> %i.qb to <2 x i32>
  %i.qd = add nsw <2 x i32> %i.qc, splat (i32 3)  ; 4 uses
  %i.qe = mul nsw <2 x i32> %i.qd, %i.qd          ; 2 uses
  %i.qf = mul nsw <2 x i32> %i.qe, %i.qd
  %i.qg = add <2 x i32> %i.qe, %i.qd
  %i.qh = add <2 x i32> %i.qf, splat (i32 -2)
  %i.qi = shl <2 x i32> %i.qg, splat (i32 1)
  %i.qj = sub <2 x i32> %i.qh, %i.qi
  store <2 x i32> %i.qj, ptr %i.py, align 4, !tbaa !4
  %i.qk = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 6500, ptr %i.qk, align 4, !tbaa !4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  store i32 30000, ptr %i.ql, align 4, !tbaa !4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store i32 800000, ptr %i.qm, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i506:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %i.kf, ptr %16, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.kf, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false)
  store i64 14, ptr %i.kg, align 8, !tbaa !80
  store i8 0, ptr %i.mb, align 2, !tbaa !81
  %i.qn = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.qn, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false)
  %i.qo = load i64, ptr %i.kg, align 8, !tbaa !80 ; 2 uses
  store i64 %i.qo, ptr %i.ia, align 8, !tbaa !80
  %i.qp = load ptr, ptr %8, align 8, !tbaa !76
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qo
  store i8 0, ptr %i.qq, align 1, !tbaa !81
  %.pre.i515 = load ptr, ptr %16, align 8, !tbaa !76
  store i64 0, ptr %i.kg, align 8, !tbaa !80
  store i8 0, ptr %.pre.i515, align 1, !tbaa !81
  %i.qr = load ptr, ptr %16, align 8, !tbaa !76   ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.kf
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %._crit_edge.i.i506
  call void @_ZdlPv(ptr noundef %i.qr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %._crit_edge.i.i506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.qt = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !73
  store double %i.qu, ptr %i.ig, align 8, !tbaa !101
  %i.qv = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 3 uses
  %i.qw = fmul double %i.qv, 1.560000e+02
  %i.qx = fptosi double %i.qw to i32              ; 6 uses
  %i.qy = add nsw i32 %i.qx, 3                    ; 2 uses
  %i.qz = mul nsw i32 %i.qy, %i.qy
  %reass.sub = sub i32 %i.qz, %i.qx
  %i.ra = add i32 %reass.sub, -5
  %i.rb = icmp sgt i32 %i.qx, 1
  br i1 %i.rb, label %.lr.ph72.us.i.preheader, label %_ZN7ADomainC2Eii.exit527

.lr.ph72.us.i.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %i.rc = zext nneg i32 %i.qx to i64
  %i.rd = add nsw i64 %i.rc, -1                   ; 4 uses
  %i.re = add nsw i32 %i.qx, -1                   ; 2 uses
  %i.rf = add nsw i32 %i.qx, -2
  %xtraiter = and i32 %i.re, 3                    ; 3 uses
  %i.rg = icmp ult i32 %i.rf, 3
  br i1 %i.rg, label %.lr.ph72.us.i.epil.preheader, label %.lr.ph72.us.i.preheader.new

.lr.ph72.us.i.preheader.new:                      ; preds = %.lr.ph72.us.i.preheader
  %unroll_iter = and i32 %i.re, -4
  %i.rh = shl nsw i64 %i.rd, 1
  %invariant.op = add i64 %i.rh, %i.rd
  br label %.lr.ph72.us.i

.lr.ph72.us.i:                                    ; preds = %.lr.ph72.us.i, %.lr.ph72.us.i.preheader.new
  %.lcssa7677.us.i = phi i64 [ 0, %.lr.ph72.us.i.preheader.new ], [ %i.rj, %.lr.ph72.us.i ]
  %niter = phi i32 [ 0, %.lr.ph72.us.i.preheader.new ], [ %niter.next.3, %.lr.ph72.us.i ]
  %.reass = add i64 %.lcssa7677.us.i, %invariant.op
  %sext103.i.3 = shl i64 %.reass, 32
  %i.ri = ashr exact i64 %sext103.i.3, 32
  %i.rj = add nsw i64 %i.rd, %i.ri                ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i524.unr-lcssa, label %.lr.ph72.us.i, !llvm.loop !102

.loopexit.sink.split.i524.unr-lcssa:              ; preds = %.lr.ph72.us.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i524, label %.lr.ph72.us.i.epil.preheader

.lr.ph72.us.i.epil.preheader:                     ; preds = %.loopexit.sink.split.i524.unr-lcssa, %.lr.ph72.us.i.preheader
  %.lcssa7677.us.i.epil.init = phi i64 [ 0, %.lr.ph72.us.i.preheader ], [ %i.rj, %.loopexit.sink.split.i524.unr-lcssa ]
  %lcmp.mod1668 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1668)
  br label %.lr.ph72.us.i.epil

.lr.ph72.us.i.epil:                               ; preds = %.lr.ph72.us.i.epil, %.lr.ph72.us.i.epil.preheader
  %.lcssa7677.us.i.epil = phi i64 [ %i.rl, %.lr.ph72.us.i.epil ], [ %.lcssa7677.us.i.epil.init, %.lr.ph72.us.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph72.us.i.epil ], [ 0, %.lr.ph72.us.i.epil.preheader ]
  %sext103.i.epil = shl i64 %.lcssa7677.us.i.epil, 32
  %i.rk = ashr exact i64 %sext103.i.epil, 32
  %i.rl = add nsw i64 %i.rd, %i.rk                ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i524, label %.lr.ph72.us.i.epil, !llvm.loop !103

.loopexit.sink.split.i524:                        ; preds = %.lr.ph72.us.i.epil, %.loopexit.sink.split.i524.unr-lcssa
  %.lcssa = phi i64 [ %i.rj, %.loopexit.sink.split.i524.unr-lcssa ], [ %i.rl, %.lr.ph72.us.i.epil ]
  %i.rm = trunc nsw i64 %.lcssa to i32
  br label %_ZN7ADomainC2Eii.exit527

_ZN7ADomainC2Eii.exit527:                         ; preds = %.loopexit.sink.split.i524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %.sroa.251235.0 = phi i32 [ %i.rm, %.loopexit.sink.split.i524 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ]
  %i.rn = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  store i32 %.sroa.251235.0, ptr %i.rn, align 4, !tbaa !4
  %i.ro = fmul double %i.qv, 6.400000e+01
  %i.rp = fptosi double %i.ro to i32              ; 4 uses
  %i.rq = icmp sgt i32 %i.rp, 1
  br i1 %i.rq, label %.lr.ph72.us.i530.preheader, label %_ZN7ADomainC2Eii.exit543

.lr.ph72.us.i530.preheader:                       ; preds = %_ZN7ADomainC2Eii.exit527
  %i.rr = zext nneg i32 %i.rp to i64
  %i.rs = add nsw i64 %i.rr, -1                   ; 4 uses
  %i.rt = add nsw i32 %i.rp, -1                   ; 2 uses
  %i.ru = add nsw i32 %i.rp, -2
  %xtraiter1669 = and i32 %i.rt, 3                ; 3 uses
  %i.rv = icmp ult i32 %i.ru, 3
  br i1 %i.rv, label %.lr.ph72.us.i530.epil.preheader, label %.lr.ph72.us.i530.preheader.new

.lr.ph72.us.i530.preheader.new:                   ; preds = %.lr.ph72.us.i530.preheader
  %unroll_iter1674 = and i32 %i.rt, -4
  %i.rw = shl nsw i64 %i.rs, 1
  %invariant.op1694 = add i64 %i.rw, %i.rs
  br label %.lr.ph72.us.i530

.lr.ph72.us.i530:                                 ; preds = %.lr.ph72.us.i530, %.lr.ph72.us.i530.preheader.new
  %.lcssa7677.us.i532 = phi i64 [ 0, %.lr.ph72.us.i530.preheader.new ], [ %i.ry, %.lr.ph72.us.i530 ]
  %niter1675 = phi i32 [ 0, %.lr.ph72.us.i530.preheader.new ], [ %niter1675.next.3, %.lr.ph72.us.i530 ]
  %.reass1695 = add i64 %.lcssa7677.us.i532, %invariant.op1694
  %sext103.i533.3 = shl i64 %.reass1695, 32
  %i.rx = ashr exact i64 %sext103.i533.3, 32
  %i.ry = add nsw i64 %i.rs, %i.rx                ; 3 uses
  %niter1675.next.3 = add i32 %niter1675, 4       ; 2 uses
  %niter1675.ncmp.3 = icmp eq i32 %niter1675.next.3, %unroll_iter1674
  br i1 %niter1675.ncmp.3, label %.loopexit.sink.split.i540.unr-lcssa, label %.lr.ph72.us.i530, !llvm.loop !102

.loopexit.sink.split.i540.unr-lcssa:              ; preds = %.lr.ph72.us.i530
  %lcmp.mod1671.not = icmp eq i32 %xtraiter1669, 0
  br i1 %lcmp.mod1671.not, label %.loopexit.sink.split.i540, label %.lr.ph72.us.i530.epil.preheader

.lr.ph72.us.i530.epil.preheader:                  ; preds = %.loopexit.sink.split.i540.unr-lcssa, %.lr.ph72.us.i530.preheader
  %.lcssa7677.us.i532.epil.init = phi i64 [ 0, %.lr.ph72.us.i530.preheader ], [ %i.ry, %.loopexit.sink.split.i540.unr-lcssa ]
  %lcmp.mod1673 = icmp ne i32 %xtraiter1669, 0
  call void @llvm.assume(i1 %lcmp.mod1673)
  br label %.lr.ph72.us.i530.epil

.lr.ph72.us.i530.epil:                            ; preds = %.lr.ph72.us.i530.epil, %.lr.ph72.us.i530.epil.preheader
  %.lcssa7677.us.i532.epil = phi i64 [ %i.sa, %.lr.ph72.us.i530.epil ], [ %.lcssa7677.us.i532.epil.init, %.lr.ph72.us.i530.epil.preheader ]
  %epil.iter1670 = phi i32 [ %epil.iter1670.next, %.lr.ph72.us.i530.epil ], [ 0, %.lr.ph72.us.i530.epil.preheader ]
  %sext103.i533.epil = shl i64 %.lcssa7677.us.i532.epil, 32
  %i.rz = ashr exact i64 %sext103.i533.epil, 32
  %i.sa = add nsw i64 %i.rs, %i.rz                ; 2 uses
  %epil.iter1670.next = add i32 %epil.iter1670, 1 ; 2 uses
  %epil.iter1670.cmp.not = icmp eq i32 %epil.iter1670.next, %xtraiter1669
  br i1 %epil.iter1670.cmp.not, label %.loopexit.sink.split.i540, label %.lr.ph72.us.i530.epil, !llvm.loop !105

.loopexit.sink.split.i540:                        ; preds = %.lr.ph72.us.i530.epil, %.loopexit.sink.split.i540.unr-lcssa
  %.lcssa1660 = phi i64 [ %i.ry, %.loopexit.sink.split.i540.unr-lcssa ], [ %i.sa, %.lr.ph72.us.i530.epil ]
  %i.sb = trunc nsw i64 %.lcssa1660 to i32
  br label %_ZN7ADomainC2Eii.exit543

_ZN7ADomainC2Eii.exit543:                         ; preds = %.loopexit.sink.split.i540, %_ZN7ADomainC2Eii.exit527
  %.sroa.241213.0 = phi i32 [ %i.sb, %.loopexit.sink.split.i540 ], [ 0, %_ZN7ADomainC2Eii.exit527 ]
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 %.sroa.241213.0, ptr %i.sc, align 4, !tbaa !4
  %i.sd = fmul double %i.qv, 8.000000e+00
  %i.se = fptosi double %i.sd to i32              ; 4 uses
  %i.sf = icmp sgt i32 %i.se, 1
  br i1 %i.sf, label %.lr.ph72.us.i546.preheader, label %_ZN7ADomainD2Ev.exit565

.lr.ph72.us.i546.preheader:                       ; preds = %_ZN7ADomainC2Eii.exit543
  %i.sg = zext nneg i32 %i.se to i64
  %i.sh = add nsw i64 %i.sg, -1                   ; 4 uses
  %i.si = add nsw i32 %i.se, -1                   ; 2 uses
  %i.sj = add nsw i32 %i.se, -2
  %xtraiter1676 = and i32 %i.si, 3                ; 3 uses
  %i.sk = icmp ult i32 %i.sj, 3
  br i1 %i.sk, label %.lr.ph72.us.i546.epil.preheader, label %.lr.ph72.us.i546.preheader.new

.lr.ph72.us.i546.preheader.new:                   ; preds = %.lr.ph72.us.i546.preheader
  %unroll_iter1681 = and i32 %i.si, -4
  %i.sl = shl nsw i64 %i.sh, 1
  %invariant.op1696 = add i64 %i.sl, %i.sh
  br label %.lr.ph72.us.i546

.lr.ph72.us.i546:                                 ; preds = %.lr.ph72.us.i546, %.lr.ph72.us.i546.preheader.new
  %.lcssa7677.us.i548 = phi i64 [ 0, %.lr.ph72.us.i546.preheader.new ], [ %i.sn, %.lr.ph72.us.i546 ]
  %niter1682 = phi i32 [ 0, %.lr.ph72.us.i546.preheader.new ], [ %niter1682.next.3, %.lr.ph72.us.i546 ]
  %.reass1697 = add i64 %.lcssa7677.us.i548, %invariant.op1696
  %sext103.i549.3 = shl i64 %.reass1697, 32
  %i.sm = ashr exact i64 %sext103.i549.3, 32
  %i.sn = add nsw i64 %i.sh, %i.sm                ; 3 uses
  %niter1682.next.3 = add i32 %niter1682, 4       ; 2 uses
  %niter1682.ncmp.3 = icmp eq i32 %niter1682.next.3, %unroll_iter1681
  br i1 %niter1682.ncmp.3, label %.loopexit.sink.split.i556.unr-lcssa, label %.lr.ph72.us.i546, !llvm.loop !102

.loopexit.sink.split.i556.unr-lcssa:              ; preds = %.lr.ph72.us.i546
  %lcmp.mod1678.not = icmp eq i32 %xtraiter1676, 0
  br i1 %lcmp.mod1678.not, label %.loopexit.sink.split.i556, label %.lr.ph72.us.i546.epil.preheader

.lr.ph72.us.i546.epil.preheader:                  ; preds = %.loopexit.sink.split.i556.unr-lcssa, %.lr.ph72.us.i546.preheader
  %.lcssa7677.us.i548.epil.init = phi i64 [ 0, %.lr.ph72.us.i546.preheader ], [ %i.sn, %.loopexit.sink.split.i556.unr-lcssa ]
  %lcmp.mod1680 = icmp ne i32 %xtraiter1676, 0
  call void @llvm.assume(i1 %lcmp.mod1680)
  br label %.lr.ph72.us.i546.epil

.lr.ph72.us.i546.epil:                            ; preds = %.lr.ph72.us.i546.epil, %.lr.ph72.us.i546.epil.preheader
  %.lcssa7677.us.i548.epil = phi i64 [ %i.sp, %.lr.ph72.us.i546.epil ], [ %.lcssa7677.us.i548.epil.init, %.lr.ph72.us.i546.epil.preheader ]
  %epil.iter1677 = phi i32 [ %epil.iter1677.next, %.lr.ph72.us.i546.epil ], [ 0, %.lr.ph72.us.i546.epil.preheader ]
  %sext103.i549.epil = shl i64 %.lcssa7677.us.i548.epil, 32
  %i.so = ashr exact i64 %sext103.i549.epil, 32
  %i.sp = add nsw i64 %i.sh, %i.so                ; 2 uses
  %epil.iter1677.next = add i32 %epil.iter1677, 1 ; 2 uses
  %epil.iter1677.cmp.not = icmp eq i32 %epil.iter1677.next, %xtraiter1676
  br i1 %epil.iter1677.cmp.not, label %.loopexit.sink.split.i556, label %.lr.ph72.us.i546.epil, !llvm.loop !106

.loopexit.sink.split.i556:                        ; preds = %.lr.ph72.us.i546.epil, %.loopexit.sink.split.i556.unr-lcssa
  %.lcssa1661 = phi i64 [ %i.sn, %.loopexit.sink.split.i556.unr-lcssa ], [ %i.sp, %.lr.ph72.us.i546.epil ]
  %i.sq = trunc nsw i64 %.lcssa1661 to i32
  br label %_ZN7ADomainD2Ev.exit565

_ZN7ADomainD2Ev.exit565:                          ; preds = %.loopexit.sink.split.i556, %_ZN7ADomainC2Eii.exit543
  %.sroa.231191.0 = phi i32 [ %i.sq, %.loopexit.sink.split.i556 ], [ 0, %_ZN7ADomainC2Eii.exit543 ]
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %.sroa.231191.0, ptr %i.sr, align 4, !tbaa !4
  %i.ss = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.ss, align 4, !tbaa !4
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  store i32 25000, ptr %i.st, align 4, !tbaa !4
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i32 2000000, ptr %i.su, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i570:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.kd, ptr %17, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kd, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  store i64 6, ptr %i.ke, align 8, !tbaa !80
  store i8 0, ptr %i.ma, align 2, !tbaa !81
  %i.sv = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.sv, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.sw = load i64, ptr %i.ke, align 8, !tbaa !80 ; 2 uses
  store i64 %i.sw, ptr %i.ia, align 8, !tbaa !80
  %i.sx = load ptr, ptr %8, align 8, !tbaa !76
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sw
  store i8 0, ptr %i.sy, align 1, !tbaa !81
  %.pre.i579 = load ptr, ptr %17, align 8, !tbaa !76
  store i64 0, ptr %i.ke, align 8, !tbaa !80
  store i8 0, ptr %.pre.i579, align 1, !tbaa !81
  %i.sz = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.kd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583: ; preds = %._crit_edge.i.i570
  call void @_ZdlPv(ptr noundef %i.sz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585: ; preds = %._crit_edge.i.i570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.tb = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load double, ptr %i.tc, align 8, !tbaa !73
  store double %i.td, ptr %i.ig, align 8, !tbaa !101
  %i.te = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %i.tf = fmul double %i.te, 2.800000e+01
  %i.tg = fptosi double %i.tf to i32
  %i.th = add nsw i32 %i.tg, 3                    ; 4 uses
  %i.ti = mul nsw i32 %i.th, %i.th                ; 2 uses
  %i.tj = mul nsw i32 %i.ti, %i.th
  %i.tk = add i32 %i.ti, %i.th                    ; 2 uses
  %i.tl = sub i32 %i.tj, %i.tk
  %i.tm = add i32 %i.tl, -2                       ; 2 uses
  %i.tn = sub i32 %i.tm, %i.tk
  %i.to = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 2 uses
  store i32 %i.tn, ptr %i.to, align 4, !tbaa !4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tq = insertelement <2 x double> poison, double %i.te, i64 0
  %i.tr = shufflevector <2 x double> %i.tq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ts = fmul <2 x double> %i.tr, <double 1.600000e+01, double 4.000000e+00>
  %i.tt = fptosi <2 x double> %i.ts to <2 x i32>
  %i.tu = add nsw <2 x i32> %i.tt, splat (i32 3)  ; 4 uses
  %i.tv = mul nsw <2 x i32> %i.tu, %i.tu          ; 2 uses
  %i.tw = mul nsw <2 x i32> %i.tv, %i.tu
  %i.tx = add <2 x i32> %i.tv, %i.tu
  %i.ty = add <2 x i32> %i.tw, splat (i32 -2)
  %i.tz = shl <2 x i32> %i.tx, splat (i32 1)
  %i.ua = sub <2 x i32> %i.ty, %i.tz
  store <2 x i32> %i.ua, ptr %i.tp, align 4, !tbaa !4
  %i.ub = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 2000, ptr %i.ub, align 4, !tbaa !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store i32 10000, ptr %i.uc, align 4, !tbaa !4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i32 600000, ptr %i.ud, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i668:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %i.kb, ptr %18, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.kb, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  store i64 3, ptr %i.kc, align 8, !tbaa !80
  store i8 0, ptr %i.lz, align 1, !tbaa !81
  %i.ue = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ue, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.uf = load i64, ptr %i.kc, align 8, !tbaa !80 ; 2 uses
  store i64 %i.uf, ptr %i.ia, align 8, !tbaa !80
  %i.ug = load ptr, ptr %8, align 8, !tbaa !76
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uf
  store i8 0, ptr %i.uh, align 1, !tbaa !81
  %.pre.i677 = load ptr, ptr %18, align 8, !tbaa !76
  store i64 0, ptr %i.kc, align 8, !tbaa !80
  store i8 0, ptr %.pre.i677, align 1, !tbaa !81
  %i.ui = load ptr, ptr %18, align 8, !tbaa !76   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.kb
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %._crit_edge.i.i668
  call void @_ZdlPv(ptr noundef %i.ui) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %._crit_edge.i.i668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.uk = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load double, ptr %i.ul, align 8, !tbaa !73
  store double %i.um, ptr %i.ig, align 8, !tbaa !101
  %i.un = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.uo = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.uo, ptr %i.un, align 4, !tbaa !4
  %i.up = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !4
  %i.ur = load i32, ptr %46, align 4, !tbaa !4
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !4
  %i.ut = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 10000, ptr %i.ut, align 4, !tbaa !4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  store i32 80000, ptr %i.uu, align 4, !tbaa !4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store i32 3000000, ptr %i.uv, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i684:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.jz, ptr %19, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.jz, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false)
  store i64 5, ptr %i.ka, align 8, !tbaa !80
  store i8 0, ptr %i.ly, align 1, !tbaa !81
  %i.uw = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.uw, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false)
  %i.ux = load i64, ptr %i.ka, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ux, ptr %i.ia, align 8, !tbaa !80
  %i.uy = load ptr, ptr %8, align 8, !tbaa !76
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.ux
  store i8 0, ptr %i.uz, align 1, !tbaa !81
  %.pre.i693 = load ptr, ptr %19, align 8, !tbaa !76
  store i64 0, ptr %i.ka, align 8, !tbaa !80
  store i8 0, ptr %.pre.i693, align 1, !tbaa !81
  %i.va = load ptr, ptr %19, align 8, !tbaa !76   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.jz
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %._crit_edge.i.i684
  call void @_ZdlPv(ptr noundef %i.va) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699: ; preds = %._crit_edge.i.i684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.vc = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !73
  store double %i.vd, ptr %i.ig, align 8, !tbaa !101
  %i.ve = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.vf = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.vf, ptr %i.ve, align 4, !tbaa !4
  %i.vg = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  store i32 %i.vg, ptr %i.vh, align 4, !tbaa !4
  %i.vi = load i32, ptr %46, align 4, !tbaa !4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  store i32 %i.vi, ptr %i.vj, align 4, !tbaa !4
  %i.vk = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 10000, ptr %i.vk, align 4, !tbaa !4
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  store i32 110000, ptr %i.vl, align 4, !tbaa !4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store i32 12000000, ptr %i.vm, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i700:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %i.jx, ptr %20, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.jx, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  store i64 9, ptr %i.jy, align 8, !tbaa !80
  store i8 0, ptr %i.lx, align 1, !tbaa !81
  %i.vn = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.vn, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  %i.vo = load i64, ptr %i.jy, align 8, !tbaa !80 ; 2 uses
  store i64 %i.vo, ptr %i.ia, align 8, !tbaa !80
  %i.vp = load ptr, ptr %8, align 8, !tbaa !76
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vo
  store i8 0, ptr %i.vq, align 1, !tbaa !81
  %.pre.i709 = load ptr, ptr %20, align 8, !tbaa !76
  store i64 0, ptr %i.jy, align 8, !tbaa !80
  store i8 0, ptr %.pre.i709, align 1, !tbaa !81
  %i.vr = load ptr, ptr %20, align 8, !tbaa !76   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.jx
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713: ; preds = %._crit_edge.i.i700
  call void @_ZdlPv(ptr noundef %i.vr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715: ; preds = %._crit_edge.i.i700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i713
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.vt = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !73
  store double %i.vu, ptr %i.ig, align 8, !tbaa !101
  %i.vv = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.vw = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.vw, ptr %i.vv, align 4, !tbaa !4
  %i.vx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i32 %i.vx, ptr %i.vy, align 4, !tbaa !4
  %i.vz = load i32, ptr %46, align 4, !tbaa !4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !4
  %i.wb = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 12000, ptr %i.wb, align 4, !tbaa !4
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store i32 140000, ptr %i.wc, align 4, !tbaa !4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i32 15000000, ptr %i.wd, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i716:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %i.jv, ptr %21, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.jv, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  store i64 7, ptr %i.jw, align 8, !tbaa !80
  store i8 0, ptr %i.lw, align 1, !tbaa !81
  %i.we = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.we, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  %i.wf = load i64, ptr %i.jw, align 8, !tbaa !80 ; 2 uses
  store i64 %i.wf, ptr %i.ia, align 8, !tbaa !80
  %i.wg = load ptr, ptr %8, align 8, !tbaa !76
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wf
  store i8 0, ptr %i.wh, align 1, !tbaa !81
  %.pre.i725 = load ptr, ptr %21, align 8, !tbaa !76
  store i64 0, ptr %i.jw, align 8, !tbaa !80
  store i8 0, ptr %.pre.i725, align 1, !tbaa !81
  %i.wi = load ptr, ptr %21, align 8, !tbaa !76   ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.jv
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729: ; preds = %._crit_edge.i.i716
  call void @_ZdlPv(ptr noundef %i.wi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731: ; preds = %._crit_edge.i.i716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.wk = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !73
  store double %i.wm, ptr %i.ig, align 8, !tbaa !101
  %i.wn = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.wo = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.wo, ptr %i.wn, align 4, !tbaa !4
  %i.wp = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  store i32 %i.wp, ptr %i.wq, align 4, !tbaa !4
  %i.wr = load i32, ptr %46, align 4, !tbaa !4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store i32 %i.wr, ptr %i.ws, align 4, !tbaa !4
  %i.wt = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 3000, ptr %i.wt, align 4, !tbaa !4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  store i32 30000, ptr %i.wu, align 4, !tbaa !4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i32 1000000, ptr %i.wv, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i732:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %i.jt, ptr %22, align 8, !tbaa !79
  store i64 6074873621086556756, ptr %i.jt, align 8
  store i64 8, ptr %i.ju, align 8, !tbaa !80
  store i8 0, ptr %i.lv, align 8, !tbaa !81
  %i.ww = load ptr, ptr %8, align 8, !tbaa !76
  store i64 6074873621086556756, ptr %i.ww, align 1
  %i.wx = load i64, ptr %i.ju, align 8, !tbaa !80 ; 2 uses
  store i64 %i.wx, ptr %i.ia, align 8, !tbaa !80
  %i.wy = load ptr, ptr %8, align 8, !tbaa !76
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wx
  store i8 0, ptr %i.wz, align 1, !tbaa !81
  %.pre.i741 = load ptr, ptr %22, align 8, !tbaa !76
  store i64 0, ptr %i.ju, align 8, !tbaa !80
  store i8 0, ptr %.pre.i741, align 1, !tbaa !81
  %i.xa = load ptr, ptr %22, align 8, !tbaa !76   ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.jt
  br i1 %i.xb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745: ; preds = %._crit_edge.i.i732
  call void @_ZdlPv(ptr noundef %i.xa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747: ; preds = %._crit_edge.i.i732, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i745
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.xc = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !73
  store double %i.xe, ptr %i.ig, align 8, !tbaa !101
  %i.xf = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.xg = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.xg, ptr %i.xf, align 4, !tbaa !4
  %i.xh = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !4
  %i.xj = load i32, ptr %46, align 4, !tbaa !4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !4
  %i.xl = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.xl, align 4, !tbaa !4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i32 32000, ptr %i.xm, align 4, !tbaa !4
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 1000000, ptr %i.xn, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i748:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %i.jr, ptr %23, align 8, !tbaa !79
  store i64 4913813462725187912, ptr %i.jr, align 8
  store i64 8, ptr %i.js, align 8, !tbaa !80
  store i8 0, ptr %i.lu, align 8, !tbaa !81
  %i.xo = load ptr, ptr %8, align 8, !tbaa !76
  store i64 4913813462725187912, ptr %i.xo, align 1
  %i.xp = load i64, ptr %i.js, align 8, !tbaa !80 ; 2 uses
  store i64 %i.xp, ptr %i.ia, align 8, !tbaa !80
  %i.xq = load ptr, ptr %8, align 8, !tbaa !76
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xp
  store i8 0, ptr %i.xr, align 1, !tbaa !81
  %.pre.i757 = load ptr, ptr %23, align 8, !tbaa !76
  store i64 0, ptr %i.js, align 8, !tbaa !80
  store i8 0, ptr %.pre.i757, align 1, !tbaa !81
  %i.xs = load ptr, ptr %23, align 8, !tbaa !76   ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.jr
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761: ; preds = %._crit_edge.i.i748
  call void @_ZdlPv(ptr noundef %i.xs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763: ; preds = %._crit_edge.i.i748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.xu = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !73
  store double %i.xv, ptr %i.ig, align 8, !tbaa !101
  %i.xw = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.xx = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.xx, ptr %i.xw, align 4, !tbaa !4
  %i.xy = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !4
  %i.ya = load i32, ptr %46, align 4, !tbaa !4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !4
  %i.yc = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 30000, ptr %i.yc, align 4, !tbaa !4
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  store i32 320000, ptr %i.yd, align 4, !tbaa !4
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  store i32 15000000, ptr %i.ye, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i764:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr %i.jp, ptr %24, align 8, !tbaa !79
  store i32 1195590473, ptr %i.jp, align 8
  store i64 4, ptr %i.jq, align 8, !tbaa !80
  store i8 0, ptr %i.lt, align 4, !tbaa !81
  %i.yf = load ptr, ptr %8, align 8, !tbaa !76
  store i32 1195590473, ptr %i.yf, align 1
  %i.yg = load i64, ptr %i.jq, align 8, !tbaa !80 ; 2 uses
  store i64 %i.yg, ptr %i.ia, align 8, !tbaa !80
  %i.yh = load ptr, ptr %8, align 8, !tbaa !76
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.yg
  store i8 0, ptr %i.yi, align 1, !tbaa !81
  %.pre.i773 = load ptr, ptr %24, align 8, !tbaa !76
  store i64 0, ptr %i.jq, align 8, !tbaa !80
  store i8 0, ptr %.pre.i773, align 1, !tbaa !81
  %i.yj = load ptr, ptr %24, align 8, !tbaa !76   ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.jp
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777: ; preds = %._crit_edge.i.i764
  call void @_ZdlPv(ptr noundef %i.yj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779: ; preds = %._crit_edge.i.i764, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i777
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.yl = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 40
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !73
  store double %i.yn, ptr %i.ig, align 8, !tbaa !101
  %i.yo = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.yp = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.yp, ptr %i.yo, align 4, !tbaa !4
  %i.yq = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store i32 %i.yq, ptr %i.yr, align 4, !tbaa !4
  %i.ys = load i32, ptr %46, align 4, !tbaa !4
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !4
  %i.yu = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 20000, ptr %i.yu, align 4, !tbaa !4
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  store i32 200000, ptr %i.yv, align 4, !tbaa !4
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store i32 6000000, ptr %i.yw, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i780:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr %i.jn, ptr %25, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.jn, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  store i64 10, ptr %i.jo, align 8, !tbaa !80
  store i8 0, ptr %i.ls, align 2, !tbaa !81
  %i.yx = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.yx, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.yy = load i64, ptr %i.jo, align 8, !tbaa !80 ; 2 uses
  store i64 %i.yy, ptr %i.ia, align 8, !tbaa !80
  %i.yz = load ptr, ptr %8, align 8, !tbaa !76
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yy
  store i8 0, ptr %i.za, align 1, !tbaa !81
  %.pre.i789 = load ptr, ptr %25, align 8, !tbaa !76
  store i64 0, ptr %i.jo, align 8, !tbaa !80
  store i8 0, ptr %.pre.i789, align 1, !tbaa !81
  %i.zb = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.jn
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i793

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i793: ; preds = %._crit_edge.i.i780
  call void @_ZdlPv(ptr noundef %i.zb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795: ; preds = %._crit_edge.i.i780, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i793
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.zd = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !73
  store double %i.zf, ptr %i.ig, align 8, !tbaa !101
  %i.zg = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.zh = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.zh, ptr %i.zg, align 4, !tbaa !4
  %i.zi = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !4
  %i.zk = load i32, ptr %46, align 4, !tbaa !4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  store i32 %i.zk, ptr %i.zl, align 4, !tbaa !4
  %i.zm = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 50000, ptr %i.zm, align 4, !tbaa !4
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  store i32 600000, ptr %i.zn, align 4, !tbaa !4
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store i32 30000000, ptr %i.zo, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i796:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr %i.jl, ptr %26, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.jl, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  store i64 11, ptr %i.jm, align 8, !tbaa !80
  store i8 0, ptr %i.lr, align 1, !tbaa !81
  %i.zp = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.zp, ptr noundef nonnull align 1 dereferenceable(11) @.str.19, i64 11, i1 false)
  %i.zq = load i64, ptr %i.jm, align 8, !tbaa !80 ; 2 uses
  store i64 %i.zq, ptr %i.ia, align 8, !tbaa !80
  %i.zr = load ptr, ptr %8, align 8, !tbaa !76
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zq
  store i8 0, ptr %i.zs, align 1, !tbaa !81
  %.pre.i805 = load ptr, ptr %26, align 8, !tbaa !76
  store i64 0, ptr %i.jm, align 8, !tbaa !80
  store i8 0, ptr %.pre.i805, align 1, !tbaa !81
  %i.zt = load ptr, ptr %26, align 8, !tbaa !76   ; 2 uses
  %i.zu = icmp eq ptr %i.zt, %i.jl
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809: ; preds = %._crit_edge.i.i796
  call void @_ZdlPv(ptr noundef %i.zt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811: ; preds = %._crit_edge.i.i796, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i809
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.zv = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 40
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !73
  store double %i.zx, ptr %i.ig, align 8, !tbaa !101
  %i.zy = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.zz = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.zz, ptr %i.zy, align 4, !tbaa !4
  %i.aaa = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  store i32 %i.aaa, ptr %i.aab, align 4, !tbaa !4
  %i.aac = load i32, ptr %46, align 4, !tbaa !4
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  store i32 %i.aac, ptr %i.aad, align 4, !tbaa !4
  %i.aae = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 40000, ptr %i.aae, align 4, !tbaa !4
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  store i32 600000, ptr %i.aaf, align 4, !tbaa !4
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i32 20000000, ptr %i.aag, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i812:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store ptr %i.jj, ptr %27, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jj, ptr noundef nonnull align 1 dereferenceable(12) @.str.20, i64 12, i1 false)
  store i64 12, ptr %i.jk, align 8, !tbaa !80
  store i8 0, ptr %i.lq, align 4, !tbaa !81
  %i.aah = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aah, ptr noundef nonnull align 1 dereferenceable(12) @.str.20, i64 12, i1 false)
  %i.aai = load i64, ptr %i.jk, align 8, !tbaa !80 ; 2 uses
  store i64 %i.aai, ptr %i.ia, align 8, !tbaa !80
  %i.aaj = load ptr, ptr %8, align 8, !tbaa !76
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aai
  store i8 0, ptr %i.aak, align 1, !tbaa !81
  %.pre.i821 = load ptr, ptr %27, align 8, !tbaa !76
  store i64 0, ptr %i.jk, align 8, !tbaa !80
  store i8 0, ptr %.pre.i821, align 1, !tbaa !81
  %i.aal = load ptr, ptr %27, align 8, !tbaa !76  ; 2 uses
  %i.aam = icmp eq ptr %i.aal, %i.jj
  br i1 %i.aam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825: ; preds = %._crit_edge.i.i812
  call void @_ZdlPv(ptr noundef %i.aal) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827: ; preds = %._crit_edge.i.i812, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.aan = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !73
  store double %i.aap, ptr %i.ig, align 8, !tbaa !101
  %i.aaq = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aar = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aar, ptr %i.aaq, align 4, !tbaa !4
  %i.aas = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store i32 %i.aas, ptr %i.aat, align 4, !tbaa !4
  %i.aau = load i32, ptr %46, align 4, !tbaa !4
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i32 %i.aau, ptr %i.aav, align 4, !tbaa !4
  %i.aaw = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 10000, ptr %i.aaw, align 4, !tbaa !4
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  store i32 100000, ptr %i.aax, align 4, !tbaa !4
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i32 3000000, ptr %i.aay, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i828:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %i.jh, ptr %28, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jh, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  store i64 3, ptr %i.ji, align 8, !tbaa !80
  store i8 0, ptr %i.lp, align 1, !tbaa !81
  %i.aaz = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aaz, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.aba = load i64, ptr %i.ji, align 8, !tbaa !80 ; 2 uses
  store i64 %i.aba, ptr %i.ia, align 8, !tbaa !80
  %i.abb = load ptr, ptr %8, align 8, !tbaa !76
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aba
  store i8 0, ptr %i.abc, align 1, !tbaa !81
  %.pre.i837 = load ptr, ptr %28, align 8, !tbaa !76
  store i64 0, ptr %i.ji, align 8, !tbaa !80
  store i8 0, ptr %.pre.i837, align 1, !tbaa !81
  %i.abd = load ptr, ptr %28, align 8, !tbaa !76  ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.jh
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841: ; preds = %._crit_edge.i.i828
  call void @_ZdlPv(ptr noundef %i.abd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843: ; preds = %._crit_edge.i.i828, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.abf = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !73
  store double %i.abg, ptr %i.ig, align 8, !tbaa !101
  %i.abh = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.abi = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.abi, ptr %i.abh, align 4, !tbaa !4
  %i.abj = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  store i32 %i.abj, ptr %i.abk, align 4, !tbaa !4
  %i.abl = load i32, ptr %46, align 4, !tbaa !4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  store i32 %i.abl, ptr %i.abm, align 4, !tbaa !4
  %i.abn = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 18000, ptr %i.abn, align 4, !tbaa !4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  store i32 140000, ptr %i.abo, align 4, !tbaa !4
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  store i32 5000000, ptr %i.abp, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i844:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  store ptr %i.jf, ptr %29, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.jf, ptr noundef nonnull align 1 dereferenceable(3) @.str.22, i64 3, i1 false)
  store i64 3, ptr %i.jg, align 8, !tbaa !80
  store i8 0, ptr %i.lo, align 1, !tbaa !81
  %i.abq = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.abq, ptr noundef nonnull align 1 dereferenceable(3) @.str.22, i64 3, i1 false)
  %i.abr = load i64, ptr %i.jg, align 8, !tbaa !80 ; 2 uses
  store i64 %i.abr, ptr %i.ia, align 8, !tbaa !80
  %i.abs = load ptr, ptr %8, align 8, !tbaa !76
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abr
  store i8 0, ptr %i.abt, align 1, !tbaa !81
  %.pre.i853 = load ptr, ptr %29, align 8, !tbaa !76
  store i64 0, ptr %i.jg, align 8, !tbaa !80
  store i8 0, ptr %.pre.i853, align 1, !tbaa !81
  %i.abu = load ptr, ptr %29, align 8, !tbaa !76  ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.jf
  br i1 %i.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857: ; preds = %._crit_edge.i.i844
  call void @_ZdlPv(ptr noundef %i.abu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859: ; preds = %._crit_edge.i.i844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.abw = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 40
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !73
  store double %i.aby, ptr %i.ig, align 8, !tbaa !101
  %i.abz = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aca = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aca, ptr %i.abz, align 4, !tbaa !4
  %i.acb = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  store i32 %i.acb, ptr %i.acc, align 4, !tbaa !4
  %i.acd = load i32, ptr %46, align 4, !tbaa !4
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !4
  %i.acf = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 1000, ptr %i.acf, align 4, !tbaa !4
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  store i32 9000, ptr %i.acg, align 4, !tbaa !4
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  store i32 300000, ptr %i.ach, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i860:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  store ptr %i.jd, ptr %30, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.jd, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, i64 11, i1 false)
  store i64 11, ptr %i.je, align 8, !tbaa !80
  store i8 0, ptr %i.ln, align 1, !tbaa !81
  %i.aci = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.aci, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, i64 11, i1 false)
  %i.acj = load i64, ptr %i.je, align 8, !tbaa !80 ; 2 uses
  store i64 %i.acj, ptr %i.ia, align 8, !tbaa !80
  %i.ack = load ptr, ptr %8, align 8, !tbaa !76
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acj
  store i8 0, ptr %i.acl, align 1, !tbaa !81
  %.pre.i869 = load ptr, ptr %30, align 8, !tbaa !76
  store i64 0, ptr %i.je, align 8, !tbaa !80
  store i8 0, ptr %.pre.i869, align 1, !tbaa !81
  %i.acm = load ptr, ptr %30, align 8, !tbaa !76  ; 2 uses
  %i.acn = icmp eq ptr %i.acm, %i.jd
  br i1 %i.acn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873: ; preds = %._crit_edge.i.i860
  call void @_ZdlPv(ptr noundef %i.acm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875: ; preds = %._crit_edge.i.i860, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.aco = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acq = load double, ptr %i.acp, align 8, !tbaa !73
  store double %i.acq, ptr %i.ig, align 8, !tbaa !101
  %i.acr = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.acs = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.acs, ptr %i.acr, align 4, !tbaa !4
  %i.act = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  store i32 %i.act, ptr %i.acu, align 4, !tbaa !4
  %i.acv = load i32, ptr %46, align 4, !tbaa !4
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !4
  %i.acx = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 3000, ptr %i.acx, align 4, !tbaa !4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  store i32 30000, ptr %i.acy, align 4, !tbaa !4
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  store i32 2000000, ptr %i.acz, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i876:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  store ptr %i.jb, ptr %31, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jb, ptr noundef nonnull align 1 dereferenceable(12) @.str.24, i64 12, i1 false)
  store i64 12, ptr %i.jc, align 8, !tbaa !80
  store i8 0, ptr %i.lm, align 4, !tbaa !81
  %i.ada = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ada, ptr noundef nonnull align 1 dereferenceable(12) @.str.24, i64 12, i1 false)
  %i.adb = load i64, ptr %i.jc, align 8, !tbaa !80 ; 2 uses
  store i64 %i.adb, ptr %i.ia, align 8, !tbaa !80
  %i.adc = load ptr, ptr %8, align 8, !tbaa !76
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adb
  store i8 0, ptr %i.add, align 1, !tbaa !81
  %.pre.i885 = load ptr, ptr %31, align 8, !tbaa !76
  store i64 0, ptr %i.jc, align 8, !tbaa !80
  store i8 0, ptr %.pre.i885, align 1, !tbaa !81
  %i.ade = load ptr, ptr %31, align 8, !tbaa !76  ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.jb
  br i1 %i.adf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889: ; preds = %._crit_edge.i.i876
  call void @_ZdlPv(ptr noundef %i.ade) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891: ; preds = %._crit_edge.i.i876, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.adg = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !73
  store double %i.adi, ptr %i.ig, align 8, !tbaa !101
  %i.adj = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.adk = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.adk, ptr %i.adj, align 4, !tbaa !4
  %i.adl = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adj, i64 4
  store i32 %i.adl, ptr %i.adm, align 4, !tbaa !4
  %i.adn = load i32, ptr %46, align 4, !tbaa !4
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !4
  %i.adp = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 2000, ptr %i.adp, align 4, !tbaa !4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 4
  store i32 22000, ptr %i.adq, align 4, !tbaa !4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store i32 1800000, ptr %i.adr, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i892:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store ptr %i.iz, ptr %32, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.iz, ptr noundef nonnull align 1 dereferenceable(9) @.str.25, i64 9, i1 false)
  store i64 9, ptr %i.ja, align 8, !tbaa !80
  store i8 0, ptr %i.ll, align 1, !tbaa !81
  %i.ads = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ads, ptr noundef nonnull align 1 dereferenceable(9) @.str.25, i64 9, i1 false)
  %i.adt = load i64, ptr %i.ja, align 8, !tbaa !80 ; 2 uses
  store i64 %i.adt, ptr %i.ia, align 8, !tbaa !80
  %i.adu = load ptr, ptr %8, align 8, !tbaa !76
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adt
  store i8 0, ptr %i.adv, align 1, !tbaa !81
  %.pre.i901 = load ptr, ptr %32, align 8, !tbaa !76
  store i64 0, ptr %i.ja, align 8, !tbaa !80
  store i8 0, ptr %.pre.i901, align 1, !tbaa !81
  %i.adw = load ptr, ptr %32, align 8, !tbaa !76  ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.iz
  br i1 %i.adx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905: ; preds = %._crit_edge.i.i892
  call void @_ZdlPv(ptr noundef %i.adw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907: ; preds = %._crit_edge.i.i892, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.ady = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !73
  store double %i.aea, ptr %i.ig, align 8, !tbaa !101
  %i.aeb = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aec = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aec, ptr %i.aeb, align 4, !tbaa !4
  %i.aed = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  store i32 %i.aed, ptr %i.aee, align 4, !tbaa !4
  %i.aef = load i32, ptr %46, align 4, !tbaa !4
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  store i32 %i.aef, ptr %i.aeg, align 4, !tbaa !4
  %i.aeh = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 30000, ptr %i.aeh, align 4, !tbaa !4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  store i32 250000, ptr %i.aei, align 4, !tbaa !4
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  store i32 8000000, ptr %i.aej, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i908:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  store ptr %i.ix, ptr %33, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ix, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  store i64 10, ptr %i.iy, align 8, !tbaa !80
  store i8 0, ptr %i.lk, align 2, !tbaa !81
  %i.aek = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aek, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ael = load i64, ptr %i.iy, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ael, ptr %i.ia, align 8, !tbaa !80
  %i.aem = load ptr, ptr %8, align 8, !tbaa !76
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.ael
  store i8 0, ptr %i.aen, align 1, !tbaa !81
  %.pre.i917 = load ptr, ptr %33, align 8, !tbaa !76
  store i64 0, ptr %i.iy, align 8, !tbaa !80
  store i8 0, ptr %.pre.i917, align 1, !tbaa !81
  %i.aeo = load ptr, ptr %33, align 8, !tbaa !76  ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.ix
  br i1 %i.aep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921: ; preds = %._crit_edge.i.i908
  call void @_ZdlPv(ptr noundef %i.aeo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923: ; preds = %._crit_edge.i.i908, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i921
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.aeq = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !73
  store double %i.aer, ptr %i.ig, align 8, !tbaa !101
  %i.aes = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aet = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aet, ptr %i.aes, align 4, !tbaa !4
  %i.aeu = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 4
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !4
  %i.aew = load i32, ptr %46, align 4, !tbaa !4
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  store i32 %i.aew, ptr %i.aex, align 4, !tbaa !4
  %i.aey = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 30000, ptr %i.aey, align 4, !tbaa !4
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  store i32 500000, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  store i32 30000000, ptr %i.afa, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i924:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store ptr %i.iv, ptr %34, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.iv, ptr noundef nonnull align 1 dereferenceable(6) @.str.27, i64 6, i1 false)
  store i64 6, ptr %i.iw, align 8, !tbaa !80
  store i8 0, ptr %i.lj, align 2, !tbaa !81
  %i.afb = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.afb, ptr noundef nonnull align 1 dereferenceable(6) @.str.27, i64 6, i1 false)
  %i.afc = load i64, ptr %i.iw, align 8, !tbaa !80 ; 2 uses
  store i64 %i.afc, ptr %i.ia, align 8, !tbaa !80
  %i.afd = load ptr, ptr %8, align 8, !tbaa !76
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.afc
  store i8 0, ptr %i.afe, align 1, !tbaa !81
  %.pre.i933 = load ptr, ptr %34, align 8, !tbaa !76
  store i64 0, ptr %i.iw, align 8, !tbaa !80
  store i8 0, ptr %.pre.i933, align 1, !tbaa !81
  %i.aff = load ptr, ptr %34, align 8, !tbaa !76  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.iv
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937: ; preds = %._crit_edge.i.i924
  call void @_ZdlPv(ptr noundef %i.aff) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939: ; preds = %._crit_edge.i.i924, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.afh = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 40
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !73
  store double %i.afj, ptr %i.ig, align 8, !tbaa !101
  %i.afk = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.afl = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.afl, ptr %i.afk, align 4, !tbaa !4
  %i.afm = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  store i32 %i.afm, ptr %i.afn, align 4, !tbaa !4
  %i.afo = load i32, ptr %46, align 4, !tbaa !4
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  store i32 %i.afo, ptr %i.afp, align 4, !tbaa !4
  %i.afq = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 2000, ptr %i.afq, align 4, !tbaa !4
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  store i32 18000, ptr %i.afr, align 4, !tbaa !4
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  store i32 700000, ptr %i.afs, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i940:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store ptr %i.it, ptr %35, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.it, ptr noundef nonnull align 1 dereferenceable(6) @.str.28, i64 6, i1 false)
  store i64 6, ptr %i.iu, align 8, !tbaa !80
  store i8 0, ptr %i.li, align 2, !tbaa !81
  %i.aft = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aft, ptr noundef nonnull align 1 dereferenceable(6) @.str.28, i64 6, i1 false)
  %i.afu = load i64, ptr %i.iu, align 8, !tbaa !80 ; 2 uses
  store i64 %i.afu, ptr %i.ia, align 8, !tbaa !80
  %i.afv = load ptr, ptr %8, align 8, !tbaa !76
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afu
  store i8 0, ptr %i.afw, align 1, !tbaa !81
  %.pre.i949 = load ptr, ptr %35, align 8, !tbaa !76
  store i64 0, ptr %i.iu, align 8, !tbaa !80
  store i8 0, ptr %.pre.i949, align 1, !tbaa !81
  %i.afx = load ptr, ptr %35, align 8, !tbaa !76  ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.it
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953: ; preds = %._crit_edge.i.i940
  call void @_ZdlPv(ptr noundef %i.afx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955: ; preds = %._crit_edge.i.i940, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.afz = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !73
  store double %i.agb, ptr %i.ig, align 8, !tbaa !101
  %i.agc = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.agd = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.agd, ptr %i.agc, align 4, !tbaa !4
  %i.age = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store i32 %i.age, ptr %i.agf, align 4, !tbaa !4
  %i.agg = load i32, ptr %46, align 4, !tbaa !4
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  store i32 %i.agg, ptr %i.agh, align 4, !tbaa !4
  %i.agi = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 3000, ptr %i.agi, align 4, !tbaa !4
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  store i32 24000, ptr %i.agj, align 4, !tbaa !4
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  store i32 1000000, ptr %i.agk, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i956:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store ptr %i.ir, ptr %36, align 8, !tbaa !79
  store i64 4914094937701898568, ptr %i.ir, align 8
  store i64 8, ptr %i.is, align 8, !tbaa !80
  store i8 0, ptr %i.lh, align 8, !tbaa !81
  %i.agl = load ptr, ptr %8, align 8, !tbaa !76
  store i64 4914094937701898568, ptr %i.agl, align 1
  %i.agm = load i64, ptr %i.is, align 8, !tbaa !80 ; 2 uses
  store i64 %i.agm, ptr %i.ia, align 8, !tbaa !80
  %i.agn = load ptr, ptr %8, align 8, !tbaa !76
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.agm
  store i8 0, ptr %i.ago, align 1, !tbaa !81
  %.pre.i965 = load ptr, ptr %36, align 8, !tbaa !76
  store i64 0, ptr %i.is, align 8, !tbaa !80
  store i8 0, ptr %.pre.i965, align 1, !tbaa !81
  %i.agp = load ptr, ptr %36, align 8, !tbaa !76  ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.ir
  br i1 %i.agq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969: ; preds = %._crit_edge.i.i956
  call void @_ZdlPv(ptr noundef %i.agp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971: ; preds = %._crit_edge.i.i956, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.agr = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !73
  store double %i.agt, ptr %i.ig, align 8, !tbaa !101
  %i.agu = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.agv = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.agv, ptr %i.agu, align 4, !tbaa !4
  %i.agw = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  store i32 %i.agw, ptr %i.agx, align 4, !tbaa !4
  %i.agy = load i32, ptr %46, align 4, !tbaa !4
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !4
  %i.aha = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 300, ptr %i.aha, align 4, !tbaa !4
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 4
  store i32 2000, ptr %i.ahb, align 4, !tbaa !4
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store i32 50000, ptr %i.ahc, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i972:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  store ptr %i.ip, ptr %37, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ip, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i64 13, i1 false)
  store i64 13, ptr %i.iq, align 8, !tbaa !80
  store i8 0, ptr %i.lg, align 1, !tbaa !81
  %i.ahd = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ahd, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i64 13, i1 false)
  %i.ahe = load i64, ptr %i.iq, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ahe, ptr %i.ia, align 8, !tbaa !80
  %i.ahf = load ptr, ptr %8, align 8, !tbaa !76
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ahe
  store i8 0, ptr %i.ahg, align 1, !tbaa !81
  %.pre.i981 = load ptr, ptr %37, align 8, !tbaa !76
  store i64 0, ptr %i.iq, align 8, !tbaa !80
  store i8 0, ptr %.pre.i981, align 1, !tbaa !81
  %i.ahh = load ptr, ptr %37, align 8, !tbaa !76  ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, %i.ip
  br i1 %i.ahi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985: ; preds = %._crit_edge.i.i972
  call void @_ZdlPv(ptr noundef %i.ahh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987: ; preds = %._crit_edge.i.i972, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i985
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.ahj = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !73
  store double %i.ahl, ptr %i.ig, align 8, !tbaa !101
  %i.ahm = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.ahn = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.ahn, ptr %i.ahm, align 4, !tbaa !4
  %i.aho = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  store i32 %i.aho, ptr %i.ahp, align 4, !tbaa !4
  %i.ahq = load i32, ptr %46, align 4, !tbaa !4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store i32 %i.ahq, ptr %i.ahr, align 4, !tbaa !4
  %i.ahs = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.ahs, align 4, !tbaa !4
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  store i32 36000, ptr %i.aht, align 4, !tbaa !4
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store i32 1000000, ptr %i.ahu, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i988:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  store ptr %i.in, ptr %38, align 8, !tbaa !79
  store i64 4923084613239392580, ptr %i.in, align 8
  store i64 8, ptr %i.io, align 8, !tbaa !80
  store i8 0, ptr %i.lf, align 8, !tbaa !81
  %i.ahv = load ptr, ptr %8, align 8, !tbaa !76
  store i64 4923084613239392580, ptr %i.ahv, align 1
  %i.ahw = load i64, ptr %i.io, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ahw, ptr %i.ia, align 8, !tbaa !80
  %i.ahx = load ptr, ptr %8, align 8, !tbaa !76
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.ahw
  store i8 0, ptr %i.ahy, align 1, !tbaa !81
  %.pre.i997 = load ptr, ptr %38, align 8, !tbaa !76
  store i64 0, ptr %i.io, align 8, !tbaa !80
  store i8 0, ptr %.pre.i997, align 1, !tbaa !81
  %i.ahz = load ptr, ptr %38, align 8, !tbaa !76  ; 2 uses
  %i.aia = icmp eq ptr %i.ahz, %i.in
  br i1 %i.aia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001: ; preds = %._crit_edge.i.i988
  call void @_ZdlPv(ptr noundef %i.ahz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003: ; preds = %._crit_edge.i.i988, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1001
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.aib = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !73
  store double %i.aid, ptr %i.ig, align 8, !tbaa !101
  %i.aie = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aif = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aif, ptr %i.aie, align 4, !tbaa !4
  %i.aig = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store i32 %i.aig, ptr %i.aih, align 4, !tbaa !4
  %i.aii = load i32, ptr %46, align 4, !tbaa !4
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store i32 %i.aii, ptr %i.aij, align 4, !tbaa !4
  %i.aik = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 1000, ptr %i.aik, align 4, !tbaa !4
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 4
  store i32 8000, ptr %i.ail, align 4, !tbaa !4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  store i32 200000, ptr %i.aim, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1004:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  store ptr %i.il, ptr %39, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.il, ptr noundef nonnull align 1 dereferenceable(9) @.str.32, i64 9, i1 false)
  store i64 9, ptr %i.im, align 8, !tbaa !80
  store i8 0, ptr %i.le, align 1, !tbaa !81
  %i.ain = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ain, ptr noundef nonnull align 1 dereferenceable(9) @.str.32, i64 9, i1 false)
  %i.aio = load i64, ptr %i.im, align 8, !tbaa !80 ; 2 uses
  store i64 %i.aio, ptr %i.ia, align 8, !tbaa !80
  %i.aip = load ptr, ptr %8, align 8, !tbaa !76
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 %i.aio
  store i8 0, ptr %i.aiq, align 1, !tbaa !81
  %.pre.i1013 = load ptr, ptr %39, align 8, !tbaa !76
  store i64 0, ptr %i.im, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1013, align 1, !tbaa !81
  %i.air = load ptr, ptr %39, align 8, !tbaa !76  ; 2 uses
  %i.ais = icmp eq ptr %i.air, %i.il
  br i1 %i.ais, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017: ; preds = %._crit_edge.i.i1004
  call void @_ZdlPv(ptr noundef %i.air) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019: ; preds = %._crit_edge.i.i1004, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1017
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.ait = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !73
  store double %i.aiv, ptr %i.ig, align 8, !tbaa !101
  %i.aiw = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.aix = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aix, ptr %i.aiw, align 4, !tbaa !4
  %i.aiy = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !4
  %i.aja = load i32, ptr %46, align 4, !tbaa !4
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !4
  %i.ajc = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 8, ptr %i.ajc, align 4, !tbaa !4
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4
  store i32 70, ptr %i.ajd, align 4, !tbaa !4
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  store i32 8000, ptr %i.aje, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1020:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  store ptr %i.ij, ptr %40, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ij, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr %i.ik, align 8, !tbaa !80
  store i8 0, ptr %i.ld, align 1, !tbaa !81
  %i.ajf = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ajf, ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  %i.ajg = load i64, ptr %i.ik, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ajg, ptr %i.ia, align 8, !tbaa !80
  %i.ajh = load ptr, ptr %8, align 8, !tbaa !76
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.ajg
  store i8 0, ptr %i.aji, align 1, !tbaa !81
  %.pre.i1029 = load ptr, ptr %40, align 8, !tbaa !76
  store i64 0, ptr %i.ik, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1029, align 1, !tbaa !81
  %i.ajj = load ptr, ptr %40, align 8, !tbaa !76  ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.ij
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033: ; preds = %._crit_edge.i.i1020
  call void @_ZdlPv(ptr noundef %i.ajj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035: ; preds = %._crit_edge.i.i1020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  %i.ajl = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !73
  store double %i.ajn, ptr %i.ig, align 8, !tbaa !101
  %i.ajo = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.ajp = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.ajp, ptr %i.ajo, align 4, !tbaa !4
  %i.ajq = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 4
  store i32 %i.ajq, ptr %i.ajr, align 4, !tbaa !4
  %i.ajs = load i32, ptr %46, align 4, !tbaa !4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  store i32 %i.ajs, ptr %i.ajt, align 4, !tbaa !4
  %i.aju = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.aju, align 4, !tbaa !4
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 4
  store i32 30000, ptr %i.ajv, align 4, !tbaa !4
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aju, i64 8
  store i32 1000000, ptr %i.ajw, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1036:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  store ptr %i.kn, ptr %41, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kn, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr %i.ko, align 8, !tbaa !80
  store i8 0, ptr %i.me, align 4, !tbaa !81
  %i.ajx = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ajx, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  %i.ajy = load i64, ptr %i.ko, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ajy, ptr %i.ia, align 8, !tbaa !80
  %i.ajz = load ptr, ptr %8, align 8, !tbaa !76
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ajy
  store i8 0, ptr %i.aka, align 1, !tbaa !81
  %.pre.i1045 = load ptr, ptr %41, align 8, !tbaa !76
  store i64 0, ptr %i.ko, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1045, align 1, !tbaa !81
  %i.akb = load ptr, ptr %41, align 8, !tbaa !76  ; 2 uses
  %i.akc = icmp eq ptr %i.akb, %i.kn
  br i1 %i.akc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049: ; preds = %._crit_edge.i.i1036
  call void @_ZdlPv(ptr noundef %i.akb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051: ; preds = %._crit_edge.i.i1036, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.akd = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !73
  store double %i.akf, ptr %i.ig, align 8, !tbaa !101
  %i.akg = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.akh = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.akh, ptr %i.akg, align 4, !tbaa !4
  %i.aki = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  store i32 %i.aki, ptr %i.akj, align 4, !tbaa !4
  %i.akk = load i32, ptr %46, align 4, !tbaa !4
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  store i32 %i.akk, ptr %i.akl, align 4, !tbaa !4
  %i.akm = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 800, ptr %i.akm, align 4, !tbaa !4
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  store i32 6000, ptr %i.akn, align 4, !tbaa !4
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  store i32 150000, ptr %i.ako, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1052:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  store ptr %i.kp, ptr %42, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.kp, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  store i64 14, ptr %i.kq, align 8, !tbaa !80
  store i8 0, ptr %i.mf, align 2, !tbaa !81
  %i.akp = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.akp, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  %i.akq = load i64, ptr %i.kq, align 8, !tbaa !80 ; 2 uses
  store i64 %i.akq, ptr %i.ia, align 8, !tbaa !80
  %i.akr = load ptr, ptr %8, align 8, !tbaa !76
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akq
  store i8 0, ptr %i.aks, align 1, !tbaa !81
  %.pre.i1061 = load ptr, ptr %42, align 8, !tbaa !76
  store i64 0, ptr %i.kq, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1061, align 1, !tbaa !81
  %i.akt = load ptr, ptr %42, align 8, !tbaa !76  ; 2 uses
  %i.aku = icmp eq ptr %i.akt, %i.kp
  br i1 %i.aku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065: ; preds = %._crit_edge.i.i1052
  call void @_ZdlPv(ptr noundef %i.akt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067: ; preds = %._crit_edge.i.i1052, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.akv = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !73
  store double %i.akx, ptr %i.ig, align 8, !tbaa !101
  %i.aky = load ptr, ptr %i.ih, align 8, !tbaa !85 ; 3 uses
  %i.akz = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.akz, ptr %i.aky, align 4, !tbaa !4
  %i.ala = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  store i32 %i.ala, ptr %i.alb, align 4, !tbaa !4
  %i.alc = load i32, ptr %46, align 4, !tbaa !4
  %i.ald = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  store i32 %i.alc, ptr %i.ald, align 4, !tbaa !4
  %i.ale = load ptr, ptr %i.ii, align 8, !tbaa !85 ; 3 uses
  store i32 50000, ptr %i.ale, align 4, !tbaa !4
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  store i32 330000, ptr %i.alf, align 4, !tbaa !4
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store i32 8000000, ptr %i.alg, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

bb.bj:                                            ; preds = %bb.az
  %i.alh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit1369 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bj
  %i.ali = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv1472)
          to label %_ZNSolsEj.exit unwind label %.loopexit1369 ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !107
  %i.alk = getelementptr i8, ptr %i.alj, i64 -24
  %i.all = load i64, ptr %i.alk, align 8
  %i.alm = getelementptr inbounds i8, ptr %i.ali, i64 %i.all
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 240
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !109 ; 6 uses
  %.not.i.i.i1089 = icmp eq ptr %i.alo, null
  br i1 %.not.i.i.i1089, label %bb.bk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bk:                                            ; preds = %_ZNSolsEj.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc1090 unwind label %.loopexit.split-lp1370

.noexc1090:                                       ; preds = %bb.bk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEj.exit
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 56
  %i.alq = load i8, ptr %i.alp, align 8, !tbaa !124
  %.not.i1.i.i = icmp eq i8 %i.alq, 0
  br i1 %.not.i1.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 67
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !81
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alo)
          to label %.noexc1091 unwind label %.loopexit1369

.noexc1091:                                       ; preds = %bb.bm
  %i.alt = load ptr, ptr %i.alo, align 8, !tbaa !107
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 48
  %i.alv = load ptr, ptr %i.alu, align 8
  %i.alw = invoke noundef signext i8 %i.alv(ptr noundef nonnull align 8 dereferenceable(570) %i.alo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit1369, !inline_history !129

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc1091, %bb.bl
  %.0.i.i.i = phi i8 [ %i.als, %bb.bl ], [ %i.alw, %.noexc1091 ]
  %i.alx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ali, i8 noundef signext %.0.i.i.i)
          to label %.noexc1093 unwind label %.loopexit1369

.noexc1093:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.alx)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit1369 ; 0 uses

.loopexit1369:                                    ; preds = %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.noexc.i.i, %bb.bq, %bb.bm, %.noexc1091, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1093
  %lpad.loopexit1371 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1370:                           ; preds = %bb.bk
  %lpad.loopexit.split-lp1372 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1093, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, %bb.bh, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZN7ADomainD2Ev.exit565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, %bb.ay
  %.01354 = phi i32 [ 0, %bb.ay ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367 ], [ %i.akz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067 ], [ %i.akh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051 ], [ %i.nz, %bb.bh ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %i.ra, %_ZN7ADomainD2Ev.exit565 ], [ %i.tm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585 ], [ %i.uo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ], [ %i.vf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699 ], [ %i.vw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %i.wo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731 ], [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ], [ %i.xx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763 ], [ %i.yp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779 ], [ %i.zh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795 ], [ %i.zz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %i.aar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827 ], [ %i.abi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843 ], [ %i.aca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859 ], [ %i.acs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875 ], [ %i.adk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891 ], [ %i.aec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907 ], [ %i.aet, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923 ], [ %i.afl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939 ], [ %i.agd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955 ], [ %i.agv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971 ], [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ], [ %i.aif, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %i.aix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019 ], [ %i.ajp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035 ], [ %i.ox, %bb.bi ], [ 0, %.noexc1093 ]
  %i.alz = load ptr, ptr %i.kt, align 16, !tbaa !74 ; 8 uses
  %i.ama = load ptr, ptr %i.ku, align 8, !tbaa !130
  %.not.i1071 = icmp eq ptr %i.alz, %i.ama
  br i1 %.not.i1071, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alz, i64 16 ; 3 uses
  store ptr %i.amb, ptr %i.alz, align 8, !tbaa !79
  %i.amc = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.amd = load i64, ptr %i.ia, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.amd, ptr %i.a, align 8, !tbaa !100
  %i.ame = icmp ugt i64 %i.amd, 15
  br i1 %i.ame, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bn
  %i.amf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.alz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1072 unwind label %.loopexit1369 ; 2 uses

.noexc1072:                                       ; preds = %.noexc.i.i
  store ptr %i.amf, ptr %i.alz, align 8, !tbaa !76
  %i.amg = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.amg, ptr %i.amb, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc1072, %bb.bn
  %i.amh = phi ptr [ %i.amf, %.noexc1072 ], [ %i.amb, %bb.bn ] ; 2 uses
  switch i64 %i.amd, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  %i.ami = load i8, ptr %i.amc, align 1, !tbaa !81
  store i8 %i.ami, ptr %i.amh, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bp:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amh, ptr align 1 %i.amc, i64 %i.amd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i.i
  %i.amj = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alz, i64 8
  store i64 %i.amj, ptr %i.amk, align 8, !tbaa !80
  %i.aml = load ptr, ptr %i.alz, align 8, !tbaa !76
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amj
  store i8 0, ptr %i.amm, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.amn = load ptr, ptr %i.kt, align 16, !tbaa !74
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 32
  store ptr %i.amo, ptr %i.kt, align 16, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.kv, ptr %i.alz, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1369

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013531429, i32 %.01354) ; 2 uses
  %i.amp = load i32, ptr %i.ib, align 16, !tbaa !96
  %.not1438 = icmp eq i32 %i.amp, 0
  br i1 %.not1438, label %.preheader, label %.lr.ph1425

.lr.ph1425:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.amq = load ptr, ptr %i.ii, align 8, !tbaa !85
  %i.amr = load double, ptr %i.l, align 16, !tbaa !11
  %i.ams = load ptr, ptr %i.kw, align 8, !tbaa !131
  %i.amt = load ptr, ptr %i.ky, align 8
  br label %bb.br

.preheader:                                       ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.amu = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.amv = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %.not1439 = icmp eq ptr %i.amu, %i.amv
  br i1 %.not1439, label %._crit_edge1428, label %.lr.ph1427

bb.br:                                            ; preds = %.lr.ph1425, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph1425 ], [ %indvars.iv.next, %bb.bt ] ; 5 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.amq, i64 %indvars.iv ; 2 uses
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !4
  %i.amy = sitofp i32 %i.amx to double
  %i.amz = fmul double %i.amr, %i.amy
  %i.ana = fdiv double %i.amz, %3
  %i.anb = fptosi double %i.ana to i32            ; 2 uses
  store i32 %i.anb, ptr %i.amw, align 4, !tbaa !4
  %i.anc = lshr i64 %indvars.iv, 6
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.ams, i64 %i.anc
  %i.ane = and i64 %indvars.iv, 63
  %i.anf = shl nuw i64 1, %i.ane
  %i.ang = load i64, ptr %i.and, align 8, !tbaa !100
  %i.anh = and i64 %i.ang, %i.anf
  %.not1359 = icmp eq i64 %i.anh, 0
  br i1 %.not1359, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ani = load i32, ptr %i.kx, align 8, !tbaa !132
  %i.anj = mul i32 %i.ani, %i.anb
  %i.ank = zext i32 %i.anj to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi i64 [ %i.ank, %bb.bs ], [ 0, %bb.br ]
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %indvars.iv
  store i64 %.sink, ptr %i.anl, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.anm = load i32, ptr %i.ib, align 16, !tbaa !96
  %i.ann = zext i32 %i.anm to i64
  %i.ano = icmp samesign ult i64 %indvars.iv.next, %i.ann
  br i1 %i.ano, label %bb.br, label %.preheader, !llvm.loop !133

._crit_edge1428:                                  ; preds = %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit, %.preheader
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.anp = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.hz
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074: ; preds = %._crit_edge1428
  call void @_ZdlPv(ptr noundef %i.anp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

end_hunk_0
