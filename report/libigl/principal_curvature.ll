inline.NumInlined: 17940
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN19CurvatureCalculator16computeCurvatureEv:bb.a
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.x) #32
  br label %.lr.ph.preheader.i.i.i.i.i34

.lr.ph.preheader.i.i.i.i.i34:                     ; preds = %_ZSt8_DestroyIPSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i35 = getelementptr i8, ptr %i.y, i64 %i.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !149   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !271 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !272
  store ptr %i.y, ptr %0, align 8, !tbaa !149
  store ptr %scevgep.i.i.i.i.i35, ptr %i.ab, align 8, !tbaa !271
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !272
  %.not4.i.i.i.i.i40 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i40, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i41

.lr.ph.i.i.i.i.i41:                               ; preds = %.lr.ph.preheader.i.i.i.i.i34, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i42 = phi ptr [ %i.al, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i34 ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i.i.i42, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i43, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i41
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #32
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i41
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i42, i64 24 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.al, %i.ac
  br i1 %.not.i.i.i.i.i44, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i41, !llvm.loop !273

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i34
  %.not.i.i1.i.i.i45 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i45, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.am = ptrtoint ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.aa to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ao) #32
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70 ; 5 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.preheader.lr.ph.i, label %_ZN19CurvatureCalculator14getAverageEdgeEv.exit

.preheader.lr.ph.i:                               ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69, !noalias !274
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !277 ; 3 uses
  %i.av = load i64, ptr %i.b, align 8, !tbaa !56  ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.av, 4 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.aq, 3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.053.i = phi double [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.cw, %.preheader.i ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !60
  %.sroa.045.0.vec.insert.i = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.av
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !60
  %.sroa.045.8.vec.insert.i = insertelement <2 x double> %.sroa.045.0.vec.insert.i, double %i.bc, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.aq
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bh ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !60
  %.sroa.0.0.vec.insert.i = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.av
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !60
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i, double %i.bl, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %i.bo = fsub <2 x double> %.sroa.045.8.vec.insert.i, %.sroa.0.8.vec.insert.i ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bs ; 3 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !60
  %.sroa.0.0.vec.insert.1.i = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.av
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !60
  %.sroa.0.8.vec.insert.1.i = insertelement <2 x double> %.sroa.0.0.vec.insert.1.i, double %i.bw, i64 1 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.by = load double, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %i.bz = fsub <2 x double> %.sroa.0.8.vec.insert.i, %.sroa.0.8.vec.insert.1.i ; 2 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bz          ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bp, <2 x double> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <2 x double> %i.bp, <2 x double> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cd = fadd <2 x double> %i.cb, %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.be, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bn, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.by, i64 1
  %i.ci = fsub <2 x double> %i.cf, %i.ch          ; 2 uses
  %i.cj = fmul <2 x double> %i.ci, %i.ci
  %i.ck = fadd <2 x double> %i.cj, %i.cd
  %i.cl = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ck) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = fadd double %.053.i, %i.cm
  %i.co = extractelement <2 x double> %i.cl, i64 1
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = fsub <2 x double> %.sroa.0.8.vec.insert.1.i, %.sroa.045.8.vec.insert.i ; 2 uses
  %i.cr = fmul <2 x double> %i.cq, %i.cq          ; 2 uses
  %shift = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cr, %shift
  %i.cs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ct = fsub double %i.by, %i.be                ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = fadd double %i.cu, %i.cs
  %.scalar.i.2.i = tail call noundef double @llvm.sqrt.f64(double %i.cv)
  %i.cw = fadd double %.scalar.i.2.i, %i.cp       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aq
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.preheader.i, !llvm.loop !259

._crit_edge.loopexit.i:                           ; preds = %.preheader.i
  %i.cx = trunc i64 %i.aq to i32
  %i.cy = mul i32 %i.cx, 3
  %i.cz = sitofp i32 %i.cy to double
  %i.da = fdiv double %i.cw, %i.cz
  br label %_ZN19CurvatureCalculator14getAverageEdgeEv.exit

_ZN19CurvatureCalculator14getAverageEdgeEv.exit:  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %._crit_edge.loopexit.i
  %i.db = phi double [ +qnan, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ], [ %i.da, %._crit_edge.loopexit.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !47
  %i.de = fmul double %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 237
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 238
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN19CurvatureCalculator14getAverageEdgeEv.exit, %bb.ao
  %i.dz = phi ptr [ null, %_ZN19CurvatureCalculator14getAverageEdgeEv.exit ], [ %i.mc, %bb.ao ] ; 2 uses
  %.0124 = phi i64 [ 0, %_ZN19CurvatureCalculator14getAverageEdgeEv.exit ], [ %i.md, %bb.ao ] ; 9 uses
  %i.ea = load ptr, ptr %i.dg, align 8, !tbaa !77
  %.not.i.i = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.dz, ptr %i.dg, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.eb = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.ec = load ptr, ptr %i.dh, align 8, !tbaa !77
  %.not.i.i53 = icmp eq ptr %i.ec, %i.eb
  br i1 %.not.i.i53, label %bb.h, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i54

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i54:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.eb, ptr %i.dh, align 8, !tbaa !77
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !281
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.0124 ; 3 uses
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !60
  store double %i.eg, ptr %4, align 8, !tbaa !60
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !60
  store double %i.ei, ptr %i.di, align 8, !tbaa !60
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ef, 4
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !60
  store double %i.ek, ptr %i.dj, align 8, !tbaa !60
  %i.el = load i32, ptr %i.dk, align 4, !tbaa !48
  switch i32 %i.el, label %.thread115.sink.split [
    i32 0, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.em = trunc i64 %.0124 to i32
  %i.en = load double, ptr %i.df, align 8, !tbaa !280
  invoke void @_ZN19CurvatureCalculator9getSphereEidRSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %i.em, double noundef %i.en, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 6)
          to label %bb.k unwind label %.loopexit118

.loopexit118:                                     ; preds = %bb.i, %bb.j, %bb.y, %bb.aa, %bb.ab, %_ZNSt6vectorIiSaIiEE7reserveEm.exit69, %bb.aj, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i63
  %lpad.loopexit120 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp119:                            ; preds = %.invoke
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.j:                                             ; preds = %bb.h
  %i.eo = trunc i64 %.0124 to i32
  %i.ep = load i32, ptr %i.dl, align 8, !tbaa !52
  %i.eq = sitofp i32 %i.ep to double
  invoke void @_ZN19CurvatureCalculator8getKRingEidRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %i.eo, double noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.k unwind label %.loopexit118

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.er = load ptr, ptr %i.dg, align 8, !tbaa !77 ; 3 uses
  %i.es = load ptr, ptr %1, align 8, !tbaa !79    ; 4 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 4 uses
  %i.ew = ashr exact i64 %i.ev, 2                 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 6
  br i1 %i.ex, label %bb.ao, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ey = load i8, ptr %i.dm, align 1, !tbaa !46, !range !232, !noundef !233
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.fa = icmp ugt i64 %i.ew, 2305843009213693951
  br i1 %i.fa, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.af, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #30
          to label %.cont unwind label %.loopexit.split-lp119

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.fb = load ptr, ptr %i.dn, align 8, !tbaa !155 ; 2 uses
  %i.fc = load ptr, ptr %2, align 8, !tbaa !79    ; 5 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.ev
  br i1 %i.fg, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %bb.q

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.fh = load ptr, ptr %i.dh, align 8, !tbaa !77
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.fe                    ; 3 uses
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #31
          to label %.noexc57 unwind label %.loopexit118 ; 5 uses

.noexc57:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.fl = icmp sgt i64 %i.fj, 0
  br i1 %i.fl, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.o:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %i.fc, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.o, %.noexc57
  %.not.i8.i = icmp eq ptr %i.fc, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #32
  %.pre127.pre = load ptr, ptr %1, align 8, !tbaa !260
  %.pre128.pre = load ptr, ptr %i.dg, align 8, !tbaa !260
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.pre128 = phi ptr [ %.pre128.pre, %bb.p ], [ %i.er, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre127 = phi ptr [ %.pre127.pre, %bb.p ], [ %i.es, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  store ptr %i.fk, ptr %2, align 8, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store ptr %i.fm, ptr %i.dh, align 8, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ev ; 2 uses
  store ptr %i.fn, ptr %i.dn, align 8, !tbaa !155
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.n
  %i.fo = phi ptr [ %i.fk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.fc, %bb.n ] ; 2 uses
  %i.fp = phi ptr [ %i.fn, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.fb, %bb.n ]
  %i.fq = phi ptr [ %.pre128, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.er, %bb.n ] ; 4 uses
  %i.fr = phi ptr [ %.pre127, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.es, %bb.n ] ; 2 uses
  %i.fs = load ptr, ptr %i.do, align 8, !tbaa !55, !noalias !284
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %.0124 ; 3 uses
  %i.fu = load i64, ptr %i.dp, align 8, !tbaa !56 ; 2 uses
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !60
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !60
  %.idx.i.i.i.i.i.i.i.i.i.i58 = shl nsw i64 %i.fu, 4
  %i.fy = getelementptr inbounds i8, ptr %i.ft, i64 %.idx.i.i.i.i.i.i.i.i.i.i58
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !60
  %.not16.i = icmp eq ptr %i.fr, %i.fq
  br i1 %.not16.i, label %_ZN19CurvatureCalculator16applyProjOnPlaneERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIiSaIiEERS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.pre129134 = phi ptr [ %.pre129135, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fq, %bb.q ] ; 3 uses
  %i.ga = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fq, %bb.q ] ; 2 uses
  %i.gb = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fo, %bb.q ] ; 6 uses
  %i.gc = phi ptr [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fp, %bb.q ] ; 4 uses
  %.sroa.012.017.i = phi ptr [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ], [ %i.fr, %bb.q ] ; 2 uses
  %i.gd = load i32, ptr %.sroa.012.017.i, align 4, !tbaa !72 ; 3 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = load ptr, ptr %i.do, align 8, !tbaa !55, !noalias !287
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.ge ; 3 uses
  %i.gh = load i64, ptr %i.dp, align 8, !tbaa !56 ; 2 uses
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !60
  %i.gj = fmul double %i.fv, %i.gi
  %i.gk = getelementptr [8 x i8], ptr %i.gg, i64 %i.gh
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !60
  %i.gm = fmul double %i.fx, %i.gl
  %i.gn = fadd double %i.gj, %i.gm
  %.idx.i.i.i.i.i.i.i.i = shl i64 %i.gh, 4
  %i.go = getelementptr i8, ptr %i.gg, i64 %.idx.i.i.i.i.i.i.i.i
  %i.gp = load double, ptr %i.go, align 8, !tbaa !60
  %i.gq = fmul double %i.fz, %i.gp
  %i.gr = fadd double %i.gn, %i.gq
  %i.gs = fcmp ogt double %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.r, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.gt = load ptr, ptr %i.dh, align 8, !tbaa !77 ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.gt, %i.gc
  br i1 %.not.i.i59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.gd, ptr %i.gt, align 4, !tbaa !72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store ptr %i.gu, ptr %i.dh, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.t:                                             ; preds = %bb.r
  %i.gv = ptrtoint ptr %i.gc to i64
  %i.gw = ptrtoint ptr %i.gb to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 6 uses
  %i.gy = icmp eq i64 %i.gx, 9223372036854775804
  br i1 %i.gy, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #30
          to label %.noexc61 unwind label %.loopexit.split-lp

.noexc61:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.gz = ashr exact i64 %i.gx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gz, i64 1)
  %i.ha = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gz ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gz
  %i.hc = call i64 @llvm.umin.i64(i64 %i.ha, i64 2305843009213693951)
  %i.hd = select i1 %i.hb, i64 2305843009213693951, i64 %i.hc ; 3 uses
  %.not.i.i.i.i60 = icmp ne i64 %i.hd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i60)
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #31
          to label %.noexc62 unwind label %.loopexit ; 5 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.gx ; 2 uses
  store i32 %i.gd, ptr %i.hg, align 4, !tbaa !72
  %i.hh = icmp sgt i64 %i.gx, 0
  br i1 %i.hh, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.v:                                             ; preds = %.noexc62
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hf, ptr align 4 %i.gb, i64 %i.gx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.v, %.noexc62
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gx) #32
  %.pre129.pre = load ptr, ptr %i.dg, align 8, !tbaa !260
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %.pre129 = phi ptr [ %.pre129.pre, %bb.w ], [ %.pre129134, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  store ptr %i.hf, ptr %2, align 8, !tbaa !79
  store ptr %i.hi, ptr %i.dh, align 8, !tbaa !77
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hd ; 2 uses
  store ptr %i.hj, ptr %i.dn, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.s, %.lr.ph.i
  %.pre129135 = phi ptr [ %.pre129, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.pre129134, %bb.s ], [ %.pre129134, %.lr.ph.i ]
  %i.hk = phi ptr [ %.pre129, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ga, %bb.s ], [ %i.ga, %.lr.ph.i ] ; 3 uses
  %i.hl = phi ptr [ %i.hf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gb, %bb.s ], [ %i.gb, %.lr.ph.i ] ; 2 uses
  %i.hm = phi ptr [ %i.hj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.gc, %bb.s ], [ %i.gc, %.lr.ph.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.hn, %i.hk
  br i1 %.not.i, label %_ZN19CurvatureCalculator16applyProjOnPlaneERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIiSaIiEERS7_.exit, label %.lr.ph.i, !llvm.loop !264

_ZN19CurvatureCalculator16applyProjOnPlaneERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIiSaIiEERS7_.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i, %bb.q
  %i.ho = phi ptr [ %i.fq, %bb.q ], [ %i.hk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hp = phi ptr [ %i.fo, %bb.q ], [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i ]
  %i.hq = load ptr, ptr %i.dh, align 8, !tbaa !77
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = icmp ugt i64 %i.ht, 20
  br i1 %i.hu, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN19CurvatureCalculator16applyProjOnPlaneERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIiSaIiEERS7_.exit
  %i.hv = load ptr, ptr %1, align 8, !tbaa !79
  %i.hw = ptrtoint ptr %i.ho to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = icmp ult i64 %i.ht, %i.hy
  br i1 %i.hz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ia = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.z unwind label %.loopexit118 ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %_ZN19CurvatureCalculator16applyProjOnPlaneERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKSt6vectorIiSaIiEERS7_.exit, %bb.x, %bb.y, %bb.l
  %i.ib = load i32, ptr %i.dq, align 8, !tbaa !49
  switch i32 %i.ib, label %.thread115.sink.split [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ic = trunc i64 %.0124 to i32
  invoke void @_ZN19CurvatureCalculator16getAverageNormalEiRKSt6vectorIiSaIiEERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ac unwind label %.loopexit118

bb.ab:                                            ; preds = %bb.z
  %i.id = trunc i64 %.0124 to i32
  invoke void @_ZN19CurvatureCalculator12getProjPlaneEiRKSt6vectorIiSaIiEERN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ac unwind label %.loopexit118

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ie = load ptr, ptr %i.dg, align 8, !tbaa !77
  %i.if = load ptr, ptr %1, align 8, !tbaa !79    ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 5 uses
  %i.ij = ashr exact i64 %i.ii, 2                 ; 2 uses
  %i.ik = icmp ult i64 %i.ij, 6
  br i1 %i.ik, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.il = load i8, ptr %i.dr, align 2, !tbaa !50, !range !232, !noundef !233
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.in = load i32, ptr %i.ds, align 8, !tbaa !51
  %i.io = icmp ult i32 %i.in, 6
  br i1 %i.io, label %bb.as, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = icmp ugt i64 %i.ij, 2305843009213693951
  br i1 %i.ip, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iq = load ptr, ptr %i.dn, align 8, !tbaa !155
  %i.ir = load ptr, ptr %2, align 8, !tbaa !79    ; 4 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.ii
  br i1 %i.iv, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i63, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit69

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i63: ; preds = %bb.ag
  %i.iw = load ptr, ptr %i.dh, align 8, !tbaa !77
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = sub i64 %i.ix, %i.it                    ; 3 uses
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #31
          to label %.noexc68 unwind label %.loopexit118 ; 4 uses

.noexc68:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i63
end_hunk_0
begin_hunk_1_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_:bb.a
  %i.ag = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.u
  %i.ai = getelementptr [8 x i8], ptr %i.q, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !60
  %i.ak = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.u
  %i.am = getelementptr [8 x i8], ptr %i.q, i64 %i.ak
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !60
  %i.ao = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.u
  %i.aq = getelementptr [8 x i8], ptr %i.q, i64 %i.ao
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !60
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !647

_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.at = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.epil, %i.u
  %i.au = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.epil
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  store double 1.000000e+00, ptr %i.av, align 8, !tbaa !60
  %i.aw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !648

_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %bb.f
  %i.ax = icmp sgt i64 %i.aa, 0
  br i1 %i.ax, label %.lr.ph18.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

.lr.ph18.i.i.i.i.i.i.preheader.i:                 ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit
  %i.ay = shl i64 %i.u, 3                         ; 3 uses
  %xtraiter159 = and i64 %i.aa, 1
  %i.az = icmp eq i64 %i.aa, 1
  br i1 %i.az, label %.lr.ph18.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph18.i.i.i.i.i.i.preheader.i.new

.lr.ph18.i.i.i.i.i.i.preheader.i.new:             ; preds = %.lr.ph18.i.i.i.i.i.i.preheader.i
  %unroll_iter163 = and i64 %i.aa, 9223372036854775806
  %i.ba = icmp sgt i64 %i.u, 0
  br label %.lr.ph18.i.i.i.i.i.i.i

.lr.ph18.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i.1, %.lr.ph18.i.i.i.i.i.i.preheader.i.new
  %storemerge16.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i.new ], [ %i.bh, %._crit_edge.i.i.i.i.i.i.i.1 ] ; 4 uses
  %niter164 = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i.new ], [ %niter164.next.1, %._crit_edge.i.i.i.i.i.i.i.1 ]
  %smin.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %storemerge16.i.i.i.i.i.i.i) ; 2 uses
  %i.bb = icmp sgt i64 %smin.i, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph18.i.i.i.i.i.i.i
  %i.bc = shl nuw i64 %smin.i, 3
  %i.bd = mul i64 %i.ay, %storemerge16.i.i.i.i.i.i.i
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.bc, i1 false), !tbaa !60
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph18.i.i.i.i.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.be = or disjoint i64 %storemerge16.i.i.i.i.i.i.i, 1 ; 2 uses
  %smin.i.1 = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.be)
  %i.bf = shl nuw i64 %smin.i.1, 3
  %i.bg = mul i64 %i.ay, %i.be
  %scevgep.i.1 = getelementptr i8, ptr %i.q, i64 %i.bg
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.1, i8 0, i64 %i.bf, i1 false), !tbaa !60
  br label %._crit_edge.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.1:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.1, %._crit_edge.i.i.i.i.i.i.i
  %i.bh = add nuw nsw i64 %storemerge16.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter164.next.1 = add nuw nsw i64 %niter164, 2 ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, label %.lr.ph18.i.i.i.i.i.i.i, !llvm.loop !649

_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i.i.1
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit, label %.lr.ph18.i.i.i.i.i.i.i.epil.preheader

.lr.ph18.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.i.i.i.i.preheader.i
  %storemerge16.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i ], [ %i.bh, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %smin.i.epil = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %storemerge16.i.i.i.i.i.i.i.epil.init) ; 2 uses
  %i.bi = icmp sgt i64 %smin.i.epil, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.epil, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph18.i.i.i.i.i.i.i.epil.preheader
  %i.bj = shl nuw i64 %smin.i.epil, 3
  %i.bk = mul i64 %i.ay, %storemerge16.i.i.i.i.i.i.i.epil.init
  %scevgep.i.epil = getelementptr i8, ptr %i.q, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.epil, i8 0, i64 %i.bj, i1 false), !tbaa !60
  br label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit: ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph18.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit
  %i.bl = icmp sgt i64 %i.p, 0
  br i1 %i.bl, label %.lr.ph118, label %.preheader

.lr.ph118:                                        ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.g

.preheader.loopexit:                              ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.pre122 = load ptr, ptr %0, align 8, !tbaa !645
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre122, i64 8
  %.pre123 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit
  %i.cl = phi i64 [ %.pre123, %.preheader.loopexit ], [ %i.u, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit ] ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, %i.p
  br i1 %i.cm, label %.lr.ph120, label %.loopexit

bb.g:                                             ; preds = %.lr.ph118, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in116 = phi i64 [ %i.p, %.lr.ph118 ], [ %.0117, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 4 uses
  %.0117 = add nsw i64 %.0.in116, -1              ; 8 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !56
  %i.cq = load i64, ptr %i.bm, align 8, !tbaa !613
  %i.cr = add i64 %i.cp, 1
  %i.cs = add i64 %.0.in116, %i.cq                ; 7 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 8 uses
  %i.cu = load i8, ptr %i.bn, align 8, !tbaa !610, !range !232, !noundef !233
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.cw = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !650 ; 3 uses
  %i.cx = sub nsw i64 %i.cw, %i.ct                ; 2 uses
  %i.cy = load i64, ptr %i.z, align 8, !tbaa !57, !noalias !650
  %i.cz = sub nsw i64 %i.cy, %i.ct                ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !55, !noalias !650
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cx
  %i.dc = mul nsw i64 %i.cz, %i.cw
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  store ptr %i.dd, ptr %3, align 8, !tbaa !653, !alias.scope !650
  store i64 %i.ct, ptr %i.ca, align 8, !tbaa !224, !alias.scope !650
  store i64 %i.ct, ptr %i.cb, align 8, !tbaa !224, !alias.scope !650
  store ptr %1, ptr %i.cc, align 8, !tbaa !225, !alias.scope !650
  store i64 %i.cx, ptr %i.cd, align 8, !tbaa !224, !alias.scope !650
  store i64 %i.cz, ptr %i.ce, align 8, !tbaa !224, !alias.scope !650
  store i64 %i.cw, ptr %i.cf, align 8, !tbaa !655, !alias.scope !650
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.de = load i64, ptr %i.co, align 8, !tbaa !56, !noalias !664 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.cs
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !55, !noalias !664
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.cs
  %i.di = mul nsw i64 %i.de, %.0117
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di
  store ptr %i.dj, ptr %4, align 8, !tbaa !665, !alias.scope !664
  store i64 %i.df, ptr %i.cg, align 8, !tbaa !224, !alias.scope !664
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !225, !alias.scope !664
  store i64 %i.cs, ptr %i.ci, align 8, !tbaa !224, !alias.scope !664
  store i64 %.0117, ptr %i.cj, align 8, !tbaa !224, !alias.scope !664
  store i64 %i.de, ptr %i.ck, align 8, !tbaa !667, !alias.scope !664
  %i.dk = load ptr, ptr %i.bz, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !331
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.0117
  %i.dn = load ptr, ptr %2, align 8, !tbaa !230
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.do = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !670 ; 3 uses
  %i.dp = sub nsw i64 %i.do, %i.ct                ; 2 uses
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !57, !noalias !670
  %i.dr = sub nsw i64 %i.dq, %i.ct                ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !55, !noalias !670
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dp
  %i.du = mul nsw i64 %i.dr, %i.do
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du
  store ptr %i.dv, ptr %5, align 8, !tbaa !653, !alias.scope !670
  store i64 %i.ct, ptr %i.bo, align 8, !tbaa !224, !alias.scope !670
  store i64 %i.ct, ptr %i.bp, align 8, !tbaa !224, !alias.scope !670
  store ptr %1, ptr %i.bq, align 8, !tbaa !225, !alias.scope !670
  store i64 %i.dp, ptr %i.br, align 8, !tbaa !224, !alias.scope !670
  store i64 %i.dr, ptr %i.bs, align 8, !tbaa !224, !alias.scope !670
  store i64 %i.do, ptr %i.bt, align 8, !tbaa !655, !alias.scope !670
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.dw = load i64, ptr %i.co, align 8, !tbaa !56, !noalias !679 ; 3 uses
  %i.dx = sub nsw i64 %i.dw, %i.cs
  %i.dy = load ptr, ptr %i.cn, align 8, !tbaa !55, !noalias !679
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.cs
  %i.ea = mul nsw i64 %i.dw, %.0117
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  store ptr %i.eb, ptr %6, align 8, !tbaa !665, !alias.scope !679
  store i64 %i.dx, ptr %i.bu, align 8, !tbaa !224, !alias.scope !679
  store ptr %i.cn, ptr %i.bv, align 8, !tbaa !225, !alias.scope !679
  store i64 %i.cs, ptr %i.bw, align 8, !tbaa !224, !alias.scope !679
  store i64 %.0117, ptr %i.bx, align 8, !tbaa !224, !alias.scope !679
  store i64 %i.dw, ptr %i.by, align 8, !tbaa !667, !alias.scope !679
  %i.ec = load ptr, ptr %i.bz, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !331
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.0117
  %i.ef = load ptr, ptr %2, align 8, !tbaa !230
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = load ptr, ptr %1, align 8, !tbaa !55, !noalias !680
  %i.eh = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !680 ; 2 uses
  %i.ei = mul nsw i64 %i.eh, %.0117
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !56
  %i.en = sub i64 %i.em, %.0.in116                ; 5 uses
  %i.eo = sub nsw i64 %i.eh, %i.en
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.eo ; 4 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.es = lshr exact i64 %i.eq, 3
  %i.et = and i64 %i.es, 1
  %i.eu = call i64 @llvm.smin.i64(i64 %i.et, i64 %i.en)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eu, %bb.k ], [ %i.en, %bb.j ] ; 8 uses
  %i.ev = sub i64 %i.en, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ew = sdiv i64 %i.ev, 2                       ; 2 uses
  %i.ex = shl nsw i64 %i.ew, 1                    ; 2 uses
  %i.ey = add i64 %i.ex, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ez = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fa = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ep, i8 0, i64 %i.fa, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fb = icmp sgt i64 %i.ev, 1
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fc = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i53 = getelementptr i8, ptr %i.ep, i64 %i.fc
  %i.fd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.ey, i64 %i.fd)
  %i.fe = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ff = add i64 %smax.i, %i.fe
  %i.fg = shl i64 %i.ff, 3
  %i.fh = and i64 %i.fg, -16
  %i.fi = add i64 %i.fh, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i53, i8 0, i64 %i.fi, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = icmp slt i64 %i.ey, %i.en
  br i1 %i.fj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = shl i64 %i.ew, 4
  %i.fl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fm = getelementptr i8, ptr %i.ep, i64 %i.fk
  %scevgep1.i = getelementptr i8, ptr %i.fm, i64 %i.fl
  %i.fn = sub i64 %i.ev, %i.ex
  %i.fo = shl nuw i64 %i.fn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.fo, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.fp = icmp samesign ugt i64 %.0.in116, 1
  br i1 %i.fp, label %bb.g, label %.preheader.loopexit, !llvm.loop !683

.lr.ph120:                                        ; preds = %.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65
  %i.fq = phi i64 [ %i.hb, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65 ], [ %i.cl, %.preheader ]
  %.052119 = phi i64 [ %i.gy, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65 ], [ 0, %.preheader ] ; 3 uses
  %i.fr = load ptr, ptr %1, align 8, !tbaa !55, !noalias !684
  %i.fs = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !684 ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %.052119
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  %i.fv = xor i64 %.052119, -1
  %i.fw = add i64 %i.fq, %i.fv                    ; 5 uses
  %i.fx = sub nsw i64 %i.fs, %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fx ; 4 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i54, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55

bb.l:                                             ; preds = %.lr.ph120
  %i.gb = lshr exact i64 %i.fz, 3
  %i.gc = and i64 %i.gb, 1
  %i.gd = call i64 @llvm.smin.i64(i64 %i.gc, i64 %i.fw)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55: ; preds = %bb.l, %.lr.ph120
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 = phi i64 [ %i.gd, %bb.l ], [ %i.fw, %.lr.ph120 ] ; 8 uses
  %i.ge = sub i64 %i.fw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 ; 3 uses
  %i.gf = sdiv i64 %i.ge, 2                       ; 2 uses
  %i.gg = shl nsw i64 %i.gf, 1                    ; 2 uses
  %i.gh = add i64 %i.gg, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.gi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 0
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.gj = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fy, i8 0, i64 %i.gj, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.gk = icmp sgt i64 %i.ge, 1
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57
  %i.gl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  %scevgep.i62 = getelementptr i8, ptr %i.fy, i64 %i.gl
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 2
  %smax.i63 = call i64 @llvm.smax.i64(i64 %i.gh, i64 %i.gm)
  %i.gn = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, -1
  %i.go = add i64 %smax.i63, %i.gn
  %i.gp = shl i64 %i.go, 3
  %i.gq = and i64 %i.gp, -16
  %i.gr = add i64 %i.gq, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i62, i8 0, i64 %i.gr, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57
  %i.gs = icmp slt i64 %i.gh, %i.fw
  br i1 %i.gs, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.gt = shl i64 %i.gf, 4
  %i.gu = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  %i.gv = getelementptr i8, ptr %i.fy, i64 %i.gt
  %scevgep1.i60 = getelementptr i8, ptr %i.gv, i64 %i.gu
  %i.gw = sub i64 %i.ge, %i.gg
  %i.gx = shl nuw i64 %i.gw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i60, i8 0, i64 %i.gx, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59
  %i.gy = add nuw nsw i64 %.052119, 1             ; 2 uses
  %i.gz = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !56 ; 2 uses
  %i.hc = sub nsw i64 %i.hb, %i.p
  %i.hd = icmp slt i64 %i.gy, %i.hc
  br i1 %i.hd, label %.lr.ph120, label %.loopexit, !llvm.loop !687

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.he = icmp sgt i64 %i.p, 48
  %i.hf = icmp eq i64 %i.w, 0                     ; 2 uses
  br i1 %i.he, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.hf, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = sdiv i64 9223372036854775807, %i.w
  %i.hh = icmp sgt i64 %i.w, %i.hg
  br i1 %i.hh, label %bb.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.p:                                             ; preds = %bb.o
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hi, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.o, %bb.n
  %i.hj = mul nsw i64 %i.w, %i.w
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hj, i64 noundef %i.w, i64 noundef %i.w)
  %i.hk = load i64, ptr %i.t, align 8, !tbaa !56  ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !57 ; 2 uses
  %i.hn = load ptr, ptr %1, align 8, !tbaa !55
  %i.ho = icmp sgt i64 %i.hm, 0
  %i.hp = icmp sgt i64 %i.hk, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %min.iters.check143 = icmp ult i64 %i.hk, 4
  %n.vec145 = and i64 %i.hk, 9223372036854775804  ; 3 uses
  %cmp.n155 = icmp eq i64 %i.hk, %n.vec145
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.hq = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, %i.hk
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.hn, i64 %i.hq ; 2 uses
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body148
end_hunk_1
begin_hunk_2_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_:bb.a
  %i.ht = icmp eq <2 x i64> %step.add151, %broadcast.splat147
  %i.hu = select <2 x i1> %i.hs, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hv = select <2 x i1> %i.ht, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hw = getelementptr i8, ptr %i.hr, i64 16
  store <2 x double> %i.hu, ptr %i.hr, align 8, !tbaa !60
  store <2 x double> %i.hv, ptr %i.hw, align 8, !tbaa !60
  %index.next152 = add nuw i64 %index149, 4       ; 2 uses
  %vec.ind.next153 = add nuw <2 x i64> %vec.ind150, splat (i64 4)
  %i.hx = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.hx, label %middle.block154, label %vector.body148, !llvm.loop !688

middle.block154:                                  ; preds = %vector.body148
  br i1 %cmp.n155, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %middle.block154
  %.09.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %n.vec145, %middle.block154 ]
  br label %scalar.ph142

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph142, %middle.block154
  %i.hy = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hy, %i.hm
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !493

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ib, %scalar.ph142 ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph142.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = select i1 %i.hz, double 1.000000e+00, double 0.000000e+00
  store double %i.ia, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  %i.ib = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ib, %i.hk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph142, !llvm.loop !689

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  br i1 %i.hf, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ic = sdiv i64 9223372036854775807, %i.w
  %i.id = icmp sgt i64 %i.w, %i.ic
  br i1 %i.id, label %bb.s, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67

bb.s:                                             ; preds = %bb.r
  %i.ie = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ie, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.ie, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67: ; preds = %bb.r, %bb.q
  %i.if = mul nsw i64 %i.w, %i.w
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.if, i64 noundef %i.w, i64 noundef %i.w)
  %i.ig = load i64, ptr %i.t, align 8, !tbaa !56  ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !57 ; 2 uses
  %i.ij = load ptr, ptr %1, align 8, !tbaa !55
  %i.ik = icmp sgt i64 %i.ii, 0
  %i.il = icmp sgt i64 %i.ig, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i68 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i68, label %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77

.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader:     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67
  %min.iters.check = icmp ult i64 %i.ig, 4
  %n.vec = and i64 %i.ig, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ig, %n.vec
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i69

.preheader.i.i.i.i.i.i.i.i.i.i.i69:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75
  %.0810.i.i.i.i.i.i.i.i.i.i.i70 = phi i64 [ %i.iu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader ] ; 4 uses
  %i.im = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, %i.ig
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71 = getelementptr [8 x i8], ptr %i.ij, i64 %i.im ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.in = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71, i64 %index ; 2 uses
  %i.io = icmp eq <2 x i64> %vec.ind, %broadcast.splat
  %i.ip = icmp eq <2 x i64> %step.add, %broadcast.splat
  %i.iq = select <2 x i1> %i.io, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ir = select <2 x i1> %i.ip, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.is = getelementptr i8, ptr %i.in, i64 16
  store <2 x double> %i.iq, ptr %i.in, align 8, !tbaa !60
  store <2 x double> %i.ir, ptr %i.is, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i72.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i69 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i.i75:              ; preds = %scalar.ph, %middle.block
  %i.iu = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i76 = icmp eq i64 %i.iu, %i.ii
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i76, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77, label %.preheader.i.i.i.i.i.i.i.i.i.i.i69, !llvm.loop !493

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.i72 = phi i64 [ %i.ix, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.i72.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i73 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71, i64 %.09.i.i.i.i.i.i.i.i.i.i.i72
  %i.iv = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i72, %.0810.i.i.i.i.i.i.i.i.i.i.i70
  %i.iw = select i1 %i.iv, double 1.000000e+00, double 0.000000e+00
  store double %i.iw, ptr %gep.i.i.i.i.i.i.i.i.i.i.i73, align 8, !tbaa !60
  %i.ix = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i74 = icmp eq i64 %i.ix, %i.ig
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i74, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, label %scalar.ph, !llvm.loop !691

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67
  %i.iy = icmp sgt i64 %i.p, 0
  br i1 %i.iy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.051.in113 = phi i64 [ %i.p, %.lr.ph ], [ %.051114, %bb.w ] ; 3 uses
  %.051114 = add nsw i64 %.051.in113, -1          ; 7 uses
  %i.jy = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !56
  %i.kb = load i64, ptr %i.iz, align 8, !tbaa !613
  %i.kc = add i64 %i.ka, 1
  %i.kd = add i64 %.051.in113, %i.kb              ; 7 uses
  %i.ke = sub i64 %i.kc, %i.kd                    ; 8 uses
  %i.kf = load i8, ptr %i.ja, align 8, !tbaa !610, !range !232, !noundef !233
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.kh = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !692 ; 3 uses
  %i.ki = sub nsw i64 %i.kh, %i.ke                ; 2 uses
  %i.kj = load i64, ptr %i.ih, align 8, !tbaa !57, !noalias !692
  %i.kk = sub nsw i64 %i.kj, %i.ke                ; 2 uses
  %i.kl = load ptr, ptr %1, align 8, !tbaa !55, !noalias !692
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.ki
  %i.kn = mul nsw i64 %i.kk, %i.kh
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kn
  store ptr %i.ko, ptr %7, align 8, !tbaa !653, !alias.scope !692
  store i64 %i.ke, ptr %i.jn, align 8, !tbaa !224, !alias.scope !692
  store i64 %i.ke, ptr %i.jo, align 8, !tbaa !224, !alias.scope !692
  store ptr %1, ptr %i.jp, align 8, !tbaa !225, !alias.scope !692
  store i64 %i.ki, ptr %i.jq, align 8, !tbaa !224, !alias.scope !692
  store i64 %i.kk, ptr %i.jr, align 8, !tbaa !224, !alias.scope !692
  store i64 %i.kh, ptr %i.js, align 8, !tbaa !655, !alias.scope !692
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.kp = load i64, ptr %i.jz, align 8, !tbaa !56, !noalias !701 ; 3 uses
  %i.kq = sub nsw i64 %i.kp, %i.kd
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !55, !noalias !701
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.kd
  %i.kt = mul nsw i64 %i.kp, %.051114
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.kt
  store ptr %i.ku, ptr %8, align 8, !tbaa !665, !alias.scope !701
  store i64 %i.kq, ptr %i.jt, align 8, !tbaa !224, !alias.scope !701
  store ptr %i.jy, ptr %i.ju, align 8, !tbaa !225, !alias.scope !701
  store i64 %i.kd, ptr %i.jv, align 8, !tbaa !224, !alias.scope !701
  store i64 %.051114, ptr %i.jw, align 8, !tbaa !224, !alias.scope !701
  store i64 %i.kp, ptr %i.jx, align 8, !tbaa !667, !alias.scope !701
  %i.kv = load ptr, ptr %i.jm, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !331
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.051114
  %i.ky = load ptr, ptr %2, align 8, !tbaa !230
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef %i.ky)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.kz = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !702 ; 3 uses
  %i.la = sub nsw i64 %i.kz, %i.ke                ; 2 uses
  %i.lb = load i64, ptr %i.ih, align 8, !tbaa !57, !noalias !702
  %i.lc = sub nsw i64 %i.lb, %i.ke                ; 2 uses
  %i.ld = load ptr, ptr %1, align 8, !tbaa !55, !noalias !702
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.la
  %i.lf = mul nsw i64 %i.lc, %i.kz
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %9, align 8, !tbaa !653, !alias.scope !702
  store i64 %i.ke, ptr %i.jb, align 8, !tbaa !224, !alias.scope !702
  store i64 %i.ke, ptr %i.jc, align 8, !tbaa !224, !alias.scope !702
  store ptr %1, ptr %i.jd, align 8, !tbaa !225, !alias.scope !702
  store i64 %i.la, ptr %i.je, align 8, !tbaa !224, !alias.scope !702
  store i64 %i.lc, ptr %i.jf, align 8, !tbaa !224, !alias.scope !702
  store i64 %i.kz, ptr %i.jg, align 8, !tbaa !655, !alias.scope !702
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.lh = load i64, ptr %i.jz, align 8, !tbaa !56, !noalias !711 ; 3 uses
  %i.li = sub nsw i64 %i.lh, %i.kd
  %i.lj = load ptr, ptr %i.jy, align 8, !tbaa !55, !noalias !711
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.kd
  %i.ll = mul nsw i64 %i.lh, %.051114
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.ll
  store ptr %i.lm, ptr %10, align 8, !tbaa !665, !alias.scope !711
  store i64 %i.li, ptr %i.jh, align 8, !tbaa !224, !alias.scope !711
  store ptr %i.jy, ptr %i.ji, align 8, !tbaa !225, !alias.scope !711
  store i64 %i.kd, ptr %i.jj, align 8, !tbaa !224, !alias.scope !711
  store i64 %.051114, ptr %i.jk, align 8, !tbaa !224, !alias.scope !711
  store i64 %i.lh, ptr %i.jl, align 8, !tbaa !667, !alias.scope !711
  %i.ln = load ptr, ptr %i.jm, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !331
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.051114
  %i.lq = load ptr, ptr %2, align 8, !tbaa !230
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lr = icmp samesign ugt i64 %.051.in113, 1
  br i1 %i.lr, label %bb.t, label %.loopexit, !llvm.loop !712

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1094", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.857", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !232
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.0.shrunk = xor i1 %3, %or.cond                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !612  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !610, !range !232, !noundef !233
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !613
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.aq = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !56 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !653
  store i64 %i.at, ptr %i.n, align 8, !tbaa !224
  store i64 %i.an, ptr %i.o, align 8, !tbaa !224
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !225
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !224
  store i64 %i.am, ptr %i.r, align 8, !tbaa !224
  store i64 %i.as, ptr %i.s, align 8, !tbaa !655
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !56  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bb = select i1 %.0.shrunk, i64 %i.ba, i64 0  ; 2 uses
  br i1 %.0.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !55
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !653
  store i64 %i.at, ptr %i.u, align 8, !tbaa !224
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !224
  store ptr %1, ptr %i.w, align 8, !tbaa !225
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !224
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !224
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !669, !nonnull !233, !align !646 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !331, !noalias !713
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !360, !noalias !713
  store ptr %i.bk, ptr %6, align 8, !tbaa !716, !alias.scope !713
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !224, !alias.scope !713
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !608, !alias.scope !713
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !224, !alias.scope !713
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !718, !alias.scope !713
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !612 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !721

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !240
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !230
  tail call void @free(ptr noundef %i.bu) #29
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #33 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !230
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !612
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !240
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_2
begin_hunk_3_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_S3_EEvRT_RT0_:bb.a
  %i.ag = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.u
  %i.ai = getelementptr [8 x i8], ptr %i.q, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.ah
  store double 1.000000e+00, ptr %i.aj, align 8, !tbaa !60
  %i.ak = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.u
  %i.am = getelementptr [8 x i8], ptr %i.q, i64 %i.ak
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !60
  %i.ao = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.u
  %i.aq = getelementptr [8 x i8], ptr %i.q, i64 %i.ao
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !60
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !647

_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.at = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.epil, %i.u
  %i.au = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.epil
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.at
  store double 1.000000e+00, ptr %i.av, align 8, !tbaa !60
  %i.aw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1334

_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %bb.f
  %i.ax = icmp sgt i64 %i.aa, 0
  br i1 %i.ax, label %.lr.ph18.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

.lr.ph18.i.i.i.i.i.i.preheader.i:                 ; preds = %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit
  %i.ay = shl i64 %i.u, 3                         ; 3 uses
  %xtraiter159 = and i64 %i.aa, 1
  %i.az = icmp eq i64 %i.aa, 1
  br i1 %i.az, label %.lr.ph18.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph18.i.i.i.i.i.i.preheader.i.new

.lr.ph18.i.i.i.i.i.i.preheader.i.new:             ; preds = %.lr.ph18.i.i.i.i.i.i.preheader.i
  %unroll_iter163 = and i64 %i.aa, 9223372036854775806
  %i.ba = icmp sgt i64 %i.u, 0
  br label %.lr.ph18.i.i.i.i.i.i.i

.lr.ph18.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i.1, %.lr.ph18.i.i.i.i.i.i.preheader.i.new
  %storemerge16.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i.new ], [ %i.bh, %._crit_edge.i.i.i.i.i.i.i.1 ] ; 4 uses
  %niter164 = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i.new ], [ %niter164.next.1, %._crit_edge.i.i.i.i.i.i.i.1 ]
  %smin.i = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %storemerge16.i.i.i.i.i.i.i) ; 2 uses
  %i.bb = icmp sgt i64 %smin.i, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph18.i.i.i.i.i.i.i
  %i.bc = shl nuw i64 %smin.i, 3
  %i.bd = mul i64 %i.ay, %storemerge16.i.i.i.i.i.i.i
  %scevgep.i = getelementptr i8, ptr %i.q, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.bc, i1 false), !tbaa !60
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph18.i.i.i.i.i.i.i
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.be = or disjoint i64 %storemerge16.i.i.i.i.i.i.i, 1 ; 2 uses
  %smin.i.1 = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.be)
  %i.bf = shl nuw i64 %smin.i.1, 3
  %i.bg = mul i64 %i.ay, %i.be
  %scevgep.i.1 = getelementptr i8, ptr %i.q, i64 %i.bg
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.1, i8 0, i64 %i.bf, i1 false), !tbaa !60
  br label %._crit_edge.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.1:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.1, %._crit_edge.i.i.i.i.i.i.i
  %i.bh = add nuw nsw i64 %storemerge16.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter164.next.1 = add nuw nsw i64 %niter164, 2 ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, label %.lr.ph18.i.i.i.i.i.i.i, !llvm.loop !649

_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i.i.1
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit, label %.lr.ph18.i.i.i.i.i.i.i.epil.preheader

.lr.ph18.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.i.i.i.i.preheader.i
  %storemerge16.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.i.i.i.i.preheader.i ], [ %i.bh, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %smin.i.epil = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %storemerge16.i.i.i.i.i.i.i.epil.init) ; 2 uses
  %i.bi = icmp sgt i64 %smin.i.epil, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.epil, label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph18.i.i.i.i.i.i.i.epil.preheader
  %i.bj = shl nuw i64 %smin.i.epil, 3
  %i.bk = mul i64 %i.ay, %storemerge16.i.i.i.i.i.i.i.epil.init
  %scevgep.i.epil = getelementptr i8, ptr %i.q, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.epil, i8 0, i64 %i.bj, i1 false), !tbaa !60
  br label %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit

_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit: ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph18.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen9DenseBaseINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEE7setOnesEv.exit
  %i.bl = icmp sgt i64 %i.p, 0
  br i1 %i.bl, label %.lr.ph118, label %.preheader

.lr.ph118:                                        ; preds = %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.g

.preheader.loopexit:                              ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.pre122 = load ptr, ptr %0, align 8, !tbaa !645
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre122, i64 8
  %.pre123 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit
  %i.cl = phi i64 [ %.pre123, %.preheader.loopexit ], [ %i.u, %_ZN5Eigen18TriangularViewImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj10ENS_5DenseEE7setZeroEv.exit ] ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, %i.p
  br i1 %i.cm, label %.lr.ph120, label %.loopexit

bb.g:                                             ; preds = %.lr.ph118, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in116 = phi i64 [ %i.p, %.lr.ph118 ], [ %.0117, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 4 uses
  %.0117 = add nsw i64 %.0.in116, -1              ; 8 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !56
  %i.cq = load i64, ptr %i.bm, align 8, !tbaa !613
  %i.cr = add i64 %i.cp, 1
  %i.cs = add i64 %.0.in116, %i.cq                ; 7 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 8 uses
  %i.cu = load i8, ptr %i.bn, align 8, !tbaa !610, !range !232, !noundef !233
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.cw = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1335 ; 3 uses
  %i.cx = sub nsw i64 %i.cw, %i.ct                ; 2 uses
  %i.cy = load i64, ptr %i.z, align 8, !tbaa !57, !noalias !1335
  %i.cz = sub nsw i64 %i.cy, %i.ct                ; 2 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1335
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cx
  %i.dc = mul nsw i64 %i.cz, %i.cw
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  store ptr %i.dd, ptr %3, align 8, !tbaa !653, !alias.scope !1335
  store i64 %i.ct, ptr %i.ca, align 8, !tbaa !224, !alias.scope !1335
  store i64 %i.ct, ptr %i.cb, align 8, !tbaa !224, !alias.scope !1335
  store ptr %1, ptr %i.cc, align 8, !tbaa !225, !alias.scope !1335
  store i64 %i.cx, ptr %i.cd, align 8, !tbaa !224, !alias.scope !1335
  store i64 %i.cz, ptr %i.ce, align 8, !tbaa !224, !alias.scope !1335
  store i64 %i.cw, ptr %i.cf, align 8, !tbaa !655, !alias.scope !1335
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.de = load i64, ptr %i.co, align 8, !tbaa !56, !noalias !1344 ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.cs
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !55, !noalias !1344
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.cs
  %i.di = mul nsw i64 %i.de, %.0117
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di
  store ptr %i.dj, ptr %4, align 8, !tbaa !665, !alias.scope !1344
  store i64 %i.df, ptr %i.cg, align 8, !tbaa !224, !alias.scope !1344
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !225, !alias.scope !1344
  store i64 %i.cs, ptr %i.ci, align 8, !tbaa !224, !alias.scope !1344
  store i64 %.0117, ptr %i.cj, align 8, !tbaa !224, !alias.scope !1344
  store i64 %i.de, ptr %i.ck, align 8, !tbaa !667, !alias.scope !1344
  %i.dk = load ptr, ptr %i.bz, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !331
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.0117
  %i.dn = load ptr, ptr %2, align 8, !tbaa !331
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.do = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1345 ; 3 uses
  %i.dp = sub nsw i64 %i.do, %i.ct                ; 2 uses
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !57, !noalias !1345
  %i.dr = sub nsw i64 %i.dq, %i.ct                ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1345
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dp
  %i.du = mul nsw i64 %i.dr, %i.do
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du
  store ptr %i.dv, ptr %5, align 8, !tbaa !653, !alias.scope !1345
  store i64 %i.ct, ptr %i.bo, align 8, !tbaa !224, !alias.scope !1345
  store i64 %i.ct, ptr %i.bp, align 8, !tbaa !224, !alias.scope !1345
  store ptr %1, ptr %i.bq, align 8, !tbaa !225, !alias.scope !1345
  store i64 %i.dp, ptr %i.br, align 8, !tbaa !224, !alias.scope !1345
  store i64 %i.dr, ptr %i.bs, align 8, !tbaa !224, !alias.scope !1345
  store i64 %i.do, ptr %i.bt, align 8, !tbaa !655, !alias.scope !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.dw = load i64, ptr %i.co, align 8, !tbaa !56, !noalias !1354 ; 3 uses
  %i.dx = sub nsw i64 %i.dw, %i.cs
  %i.dy = load ptr, ptr %i.cn, align 8, !tbaa !55, !noalias !1354
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.cs
  %i.ea = mul nsw i64 %i.dw, %.0117
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  store ptr %i.eb, ptr %6, align 8, !tbaa !665, !alias.scope !1354
  store i64 %i.dx, ptr %i.bu, align 8, !tbaa !224, !alias.scope !1354
  store ptr %i.cn, ptr %i.bv, align 8, !tbaa !225, !alias.scope !1354
  store i64 %i.cs, ptr %i.bw, align 8, !tbaa !224, !alias.scope !1354
  store i64 %.0117, ptr %i.bx, align 8, !tbaa !224, !alias.scope !1354
  store i64 %i.dw, ptr %i.by, align 8, !tbaa !667, !alias.scope !1354
  %i.ec = load ptr, ptr %i.bz, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !331
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.0117
  %i.ef = load ptr, ptr %2, align 8, !tbaa !331
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1355
  %i.eh = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1355 ; 2 uses
  %i.ei = mul nsw i64 %i.eh, %.0117
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !56
  %i.en = sub i64 %i.em, %.0.in116                ; 5 uses
  %i.eo = sub nsw i64 %i.eh, %i.en
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.eo ; 4 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.es = lshr exact i64 %i.eq, 3
  %i.et = and i64 %i.es, 1
  %i.eu = call i64 @llvm.smin.i64(i64 %i.et, i64 %i.en)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eu, %bb.k ], [ %i.en, %bb.j ] ; 8 uses
  %i.ev = sub i64 %i.en, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ew = sdiv i64 %i.ev, 2                       ; 2 uses
  %i.ex = shl nsw i64 %i.ew, 1                    ; 2 uses
  %i.ey = add i64 %i.ex, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ez = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fa = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ep, i8 0, i64 %i.fa, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fb = icmp sgt i64 %i.ev, 1
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fc = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i53 = getelementptr i8, ptr %i.ep, i64 %i.fc
  %i.fd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.ey, i64 %i.fd)
  %i.fe = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ff = add i64 %smax.i, %i.fe
  %i.fg = shl i64 %i.ff, 3
  %i.fh = and i64 %i.fg, -16
  %i.fi = add i64 %i.fh, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i53, i8 0, i64 %i.fi, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = icmp slt i64 %i.ey, %i.en
  br i1 %i.fj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fk = shl i64 %i.ew, 4
  %i.fl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fm = getelementptr i8, ptr %i.ep, i64 %i.fk
  %scevgep1.i = getelementptr i8, ptr %i.fm, i64 %i.fl
  %i.fn = sub i64 %i.ev, %i.ex
  %i.fo = shl nuw i64 %i.fn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.fo, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.fp = icmp samesign ugt i64 %.0.in116, 1
  br i1 %i.fp, label %bb.g, label %.preheader.loopexit, !llvm.loop !1358

.lr.ph120:                                        ; preds = %.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65
  %i.fq = phi i64 [ %i.hb, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65 ], [ %i.cl, %.preheader ]
  %.052119 = phi i64 [ %i.gy, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65 ], [ 0, %.preheader ] ; 3 uses
  %i.fr = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1359
  %i.fs = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1359 ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %.052119
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  %i.fv = xor i64 %.052119, -1
  %i.fw = add i64 %i.fq, %i.fv                    ; 5 uses
  %i.fx = sub nsw i64 %i.fs, %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fx ; 4 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i54 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i54, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55

bb.l:                                             ; preds = %.lr.ph120
  %i.gb = lshr exact i64 %i.fz, 3
  %i.gc = and i64 %i.gb, 1
  %i.gd = call i64 @llvm.smin.i64(i64 %i.gc, i64 %i.fw)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55: ; preds = %bb.l, %.lr.ph120
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 = phi i64 [ %i.gd, %bb.l ], [ %i.fw, %.lr.ph120 ] ; 8 uses
  %i.ge = sub i64 %i.fw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 ; 3 uses
  %i.gf = sdiv i64 %i.ge, 2                       ; 2 uses
  %i.gg = shl nsw i64 %i.gf, 1                    ; 2 uses
  %i.gh = add i64 %i.gg, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56 ; 2 uses
  %i.gi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 0
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.gj = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fy, i8 0, i64 %i.gj, i1 false), !tbaa !60
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i55
  %i.gk = icmp sgt i64 %i.ge, 1
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57
  %i.gl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  %scevgep.i62 = getelementptr i8, ptr %i.fy, i64 %i.gl
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 2
  %smax.i63 = call i64 @llvm.smax.i64(i64 %i.gh, i64 %i.gm)
  %i.gn = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, -1
  %i.go = add i64 %smax.i63, %i.gn
  %i.gp = shl i64 %i.go, 3
  %i.gq = and i64 %i.gp, -16
  %i.gr = add i64 %i.gq, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i62, i8 0, i64 %i.gr, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i61, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i57
  %i.gs = icmp slt i64 %i.gh, %i.fw
  br i1 %i.gs, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.gt = shl i64 %i.gf, 4
  %i.gu = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i56, 3
  %i.gv = getelementptr i8, ptr %i.fy, i64 %i.gt
  %scevgep1.i60 = getelementptr i8, ptr %i.gv, i64 %i.gu
  %i.gw = sub i64 %i.ge, %i.gg
  %i.gx = shl nuw i64 %i.gw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i60, i8 0, i64 %i.gx, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i58, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i59
  %i.gy = add nuw nsw i64 %.052119, 1             ; 2 uses
  %i.gz = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !56 ; 2 uses
  %i.hc = sub nsw i64 %i.hb, %i.p
  %i.hd = icmp slt i64 %i.gy, %i.hc
  br i1 %i.hd, label %.lr.ph120, label %.loopexit, !llvm.loop !1362

bb.m:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.he = icmp sgt i64 %i.p, 48
  %i.hf = icmp eq i64 %i.w, 0                     ; 2 uses
  br i1 %i.he, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.hf, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = sdiv i64 9223372036854775807, %i.w
  %i.hh = icmp sgt i64 %i.w, %i.hg
  br i1 %i.hh, label %bb.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.p:                                             ; preds = %bb.o
  %i.hi = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hi, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.o, %bb.n
  %i.hj = mul nsw i64 %i.w, %i.w
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hj, i64 noundef %i.w, i64 noundef %i.w)
  %i.hk = load i64, ptr %i.t, align 8, !tbaa !56  ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !57 ; 2 uses
  %i.hn = load ptr, ptr %1, align 8, !tbaa !55
  %i.ho = icmp sgt i64 %i.hm, 0
  %i.hp = icmp sgt i64 %i.hk, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %min.iters.check143 = icmp ult i64 %i.hk, 4
  %n.vec145 = and i64 %i.hk, 9223372036854775804  ; 3 uses
  %cmp.n155 = icmp eq i64 %i.hk, %n.vec145
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hy, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.hq = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, %i.hk
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.hn, i64 %i.hq ; 2 uses
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body148
end_hunk_3
begin_hunk_4_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE6evalToIS2_S3_EEvRT_RT0_:bb.a
  %i.ht = icmp eq <2 x i64> %step.add151, %broadcast.splat147
  %i.hu = select <2 x i1> %i.hs, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hv = select <2 x i1> %i.ht, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hw = getelementptr i8, ptr %i.hr, i64 16
  store <2 x double> %i.hu, ptr %i.hr, align 8, !tbaa !60
  store <2 x double> %i.hv, ptr %i.hw, align 8, !tbaa !60
  %index.next152 = add nuw i64 %index149, 4       ; 2 uses
  %vec.ind.next153 = add nuw <2 x i64> %vec.ind150, splat (i64 4)
  %i.hx = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.hx, label %middle.block154, label %vector.body148, !llvm.loop !1363

middle.block154:                                  ; preds = %vector.body148
  br i1 %cmp.n155, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %middle.block154
  %.09.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %n.vec145, %middle.block154 ]
  br label %scalar.ph142

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph142, %middle.block154
  %i.hy = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hy, %i.hm
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !493

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ib, %scalar.ph142 ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph142.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = select i1 %i.hz, double 1.000000e+00, double 0.000000e+00
  store double %i.ia, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !60
  %i.ib = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ib, %i.hk
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph142, !llvm.loop !1364

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_S3_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  br i1 %i.hf, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ic = sdiv i64 9223372036854775807, %i.w
  %i.id = icmp sgt i64 %i.w, %i.ic
  br i1 %i.id, label %bb.s, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67

bb.s:                                             ; preds = %bb.r
  %i.ie = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ie, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.ie, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67: ; preds = %bb.r, %bb.q
  %i.if = mul nsw i64 %i.w, %i.w
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.if, i64 noundef %i.w, i64 noundef %i.w)
  %i.ig = load i64, ptr %i.t, align 8, !tbaa !56  ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !57 ; 2 uses
  %i.ij = load ptr, ptr %1, align 8, !tbaa !55
  %i.ik = icmp sgt i64 %i.ii, 0
  %i.il = icmp sgt i64 %i.ig, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i68 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i68, label %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77

.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader:     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67
  %min.iters.check = icmp ult i64 %i.ig, 4
  %n.vec = and i64 %i.ig, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ig, %n.vec
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i69

.preheader.i.i.i.i.i.i.i.i.i.i.i69:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75
  %.0810.i.i.i.i.i.i.i.i.i.i.i70 = phi i64 [ %i.iu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i69.preheader ] ; 4 uses
  %i.im = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, %i.ig
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71 = getelementptr [8 x i8], ptr %i.ij, i64 %i.im ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.in = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71, i64 %index ; 2 uses
  %i.io = icmp eq <2 x i64> %vec.ind, %broadcast.splat
  %i.ip = icmp eq <2 x i64> %step.add, %broadcast.splat
  %i.iq = select <2 x i1> %i.io, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ir = select <2 x i1> %i.ip, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.is = getelementptr i8, ptr %i.in, i64 16
  store <2 x double> %i.iq, ptr %i.in, align 8, !tbaa !60
  store <2 x double> %i.ir, ptr %i.is, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i69, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i72.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i69 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i.i75:              ; preds = %scalar.ph, %middle.block
  %i.iu = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i70, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i76 = icmp eq i64 %i.iu, %i.ii
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i76, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77, label %.preheader.i.i.i.i.i.i.i.i.i.i.i69, !llvm.loop !493

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.i72 = phi i64 [ %i.ix, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.i72.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i73 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i71, i64 %.09.i.i.i.i.i.i.i.i.i.i.i72
  %i.iv = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i72, %.0810.i.i.i.i.i.i.i.i.i.i.i70
  %i.iw = select i1 %i.iv, double 1.000000e+00, double 0.000000e+00
  store double %i.iw, ptr %gep.i.i.i.i.i.i.i.i.i.i.i73, align 8, !tbaa !60
  %i.ix = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i72, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i74 = icmp eq i64 %i.ix, %i.ig
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i74, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, label %scalar.ph, !llvm.loop !1366

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i75, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i67
  %i.iy = icmp sgt i64 %i.p, 0
  br i1 %i.iy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.w
  %.051.in113 = phi i64 [ %i.p, %.lr.ph ], [ %.051114, %bb.w ] ; 3 uses
  %.051114 = add nsw i64 %.051.in113, -1          ; 7 uses
  %i.jy = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !56
  %i.kb = load i64, ptr %i.iz, align 8, !tbaa !613
  %i.kc = add i64 %i.ka, 1
  %i.kd = add i64 %.051.in113, %i.kb              ; 7 uses
  %i.ke = sub i64 %i.kc, %i.kd                    ; 8 uses
  %i.kf = load i8, ptr %i.ja, align 8, !tbaa !610, !range !232, !noundef !233
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.kh = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1367 ; 3 uses
  %i.ki = sub nsw i64 %i.kh, %i.ke                ; 2 uses
  %i.kj = load i64, ptr %i.ih, align 8, !tbaa !57, !noalias !1367
  %i.kk = sub nsw i64 %i.kj, %i.ke                ; 2 uses
  %i.kl = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1367
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.ki
  %i.kn = mul nsw i64 %i.kk, %i.kh
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kn
  store ptr %i.ko, ptr %7, align 8, !tbaa !653, !alias.scope !1367
  store i64 %i.ke, ptr %i.jn, align 8, !tbaa !224, !alias.scope !1367
  store i64 %i.ke, ptr %i.jo, align 8, !tbaa !224, !alias.scope !1367
  store ptr %1, ptr %i.jp, align 8, !tbaa !225, !alias.scope !1367
  store i64 %i.ki, ptr %i.jq, align 8, !tbaa !224, !alias.scope !1367
  store i64 %i.kk, ptr %i.jr, align 8, !tbaa !224, !alias.scope !1367
  store i64 %i.kh, ptr %i.js, align 8, !tbaa !655, !alias.scope !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1370)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.kp = load i64, ptr %i.jz, align 8, !tbaa !56, !noalias !1376 ; 3 uses
  %i.kq = sub nsw i64 %i.kp, %i.kd
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !55, !noalias !1376
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.kd
  %i.kt = mul nsw i64 %i.kp, %.051114
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.kt
  store ptr %i.ku, ptr %8, align 8, !tbaa !665, !alias.scope !1376
  store i64 %i.kq, ptr %i.jt, align 8, !tbaa !224, !alias.scope !1376
  store ptr %i.jy, ptr %i.ju, align 8, !tbaa !225, !alias.scope !1376
  store i64 %i.kd, ptr %i.jv, align 8, !tbaa !224, !alias.scope !1376
  store i64 %.051114, ptr %i.jw, align 8, !tbaa !224, !alias.scope !1376
  store i64 %i.kp, ptr %i.jx, align 8, !tbaa !667, !alias.scope !1376
  %i.kv = load ptr, ptr %i.jm, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !331
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %.051114
  %i.ky = load ptr, ptr %2, align 8, !tbaa !331
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef %i.ky)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.kz = load i64, ptr %i.t, align 8, !tbaa !56, !noalias !1377 ; 3 uses
  %i.la = sub nsw i64 %i.kz, %i.ke                ; 2 uses
  %i.lb = load i64, ptr %i.ih, align 8, !tbaa !57, !noalias !1377
  %i.lc = sub nsw i64 %i.lb, %i.ke                ; 2 uses
  %i.ld = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1377
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.la
  %i.lf = mul nsw i64 %i.lc, %i.kz
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %9, align 8, !tbaa !653, !alias.scope !1377
  store i64 %i.ke, ptr %i.jb, align 8, !tbaa !224, !alias.scope !1377
  store i64 %i.ke, ptr %i.jc, align 8, !tbaa !224, !alias.scope !1377
  store ptr %1, ptr %i.jd, align 8, !tbaa !225, !alias.scope !1377
  store i64 %i.la, ptr %i.je, align 8, !tbaa !224, !alias.scope !1377
  store i64 %i.lc, ptr %i.jf, align 8, !tbaa !224, !alias.scope !1377
  store i64 %i.kz, ptr %i.jg, align 8, !tbaa !655, !alias.scope !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.lh = load i64, ptr %i.jz, align 8, !tbaa !56, !noalias !1386 ; 3 uses
  %i.li = sub nsw i64 %i.lh, %i.kd
  %i.lj = load ptr, ptr %i.jy, align 8, !tbaa !55, !noalias !1386
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.kd
  %i.ll = mul nsw i64 %i.lh, %.051114
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.ll
  store ptr %i.lm, ptr %10, align 8, !tbaa !665, !alias.scope !1386
  store i64 %i.li, ptr %i.jh, align 8, !tbaa !224, !alias.scope !1386
  store ptr %i.jy, ptr %i.ji, align 8, !tbaa !225, !alias.scope !1386
  store i64 %i.kd, ptr %i.jj, align 8, !tbaa !224, !alias.scope !1386
  store i64 %.051114, ptr %i.jk, align 8, !tbaa !224, !alias.scope !1386
  store i64 %i.lh, ptr %i.jl, align 8, !tbaa !667, !alias.scope !1386
  %i.ln = load ptr, ptr %i.jm, align 8, !tbaa !669, !nonnull !233, !align !646
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !331
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.051114
  %i.lq = load ptr, ptr %2, align 8, !tbaa !331
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lr = icmp samesign ugt i64 %.051.in113, 1
  br i1 %i.lr, label %bb.t, label %.loopexit, !llvm.loop !1387

.loopexit:                                        ; preds = %bb.w, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit65, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit77, %.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE18applyThisOnTheLeftIS2_S3_EEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1094", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.428", align 8  ; 10 uses
  %8 = alloca %"class.Eigen::Block.857", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !232
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %3, i1 %i.c, i1 false
  %.0.shrunk = xor i1 %3, %or.cond                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !612  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57   ; 6 uses
  %i.i = icmp sgt i64 %i.h, 1
  %or.cond79 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond79, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.k = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.k, 127
  %i.l = select i1 %i.j, i64 %.zext, i64 48       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.f
  %i.af = phi i64 [ %i.e, %.lr.ph66 ], [ %i.bp, %bb.f ] ; 2 uses
  %.04765 = phi i64 [ 0, %.lr.ph66 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !610, !range !232, !noundef !233
  %i.ah = trunc nuw i8 %i.ag to i1                ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ai = add nuw nsw i64 %.04765, %i.l
  %.sroa.speculated57 = call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.af)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i64 %i.af, %.04765              ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.l
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.al = phi i64 [ %i.aj, %bb.c ], [ %.sroa.speculated57, %.thread ]
  %i.am = phi i64 [ %.sroa.speculated, %bb.c ], [ %.04765, %.thread ] ; 6 uses
  %i.an = sub nsw i64 %i.al, %i.am                ; 2 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !613
  %i.ap = add i64 %i.ao, %i.am                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.aq = load ptr, ptr %0, align 8, !tbaa !645, !nonnull !233, !align !646 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !56 ; 4 uses
  %i.at = sub i64 %i.as, %i.ap                    ; 3 uses
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = mul nsw i64 %i.as, %i.am
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ax, ptr %4, align 8, !tbaa !653
  store i64 %i.at, ptr %i.n, align 8, !tbaa !224
  store i64 %i.an, ptr %i.o, align 8, !tbaa !224
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !225
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !224
  store i64 %i.am, ptr %i.r, align 8, !tbaa !224
  store i64 %i.as, ptr %i.s, align 8, !tbaa !655
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !56  ; 3 uses
  %i.az = sub i64 %i.ap, %i.as
  %i.ba = add i64 %i.az, %i.ay                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bb = select i1 %.0.shrunk, i64 %i.ba, i64 0  ; 2 uses
  br i1 %.0.shrunk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.be = load ptr, ptr %1, align 8, !tbaa !55
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ba
  %i.bg = mul nsw i64 %i.bb, %i.ay
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %5, align 8, !tbaa !653
  store i64 %i.at, ptr %i.u, align 8, !tbaa !224
  store i64 %i.bd, ptr %i.v, align 8, !tbaa !224
  store ptr %1, ptr %i.w, align 8, !tbaa !225
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !224
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !224
  store i64 %i.ay, ptr %i.z, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !669, !nonnull !233, !align !646 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !331, !noalias !1388
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !360, !noalias !1388
  store ptr %i.bk, ptr %6, align 8, !tbaa !716, !alias.scope !1388
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !224, !alias.scope !1388
  store ptr %i.bi, ptr %i.ac, align 8, !tbaa !608, !alias.scope !1388
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !224, !alias.scope !1388
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !718, !alias.scope !1388
  %i.bn = xor i1 %i.ah, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bo = add nuw nsw i64 %.04765, %i.l           ; 2 uses
  %i.bp = load i64, ptr %i.d, align 8, !tbaa !612 ; 2 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %.loopexit, !llvm.loop !1391

._crit_edge:                                      ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !360
  %.not.i.i = icmp eq i64 %i.h, %i.bt
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load ptr, ptr %2, align 8, !tbaa !331
  tail call void @free(ptr noundef %i.bu) #29
  %i.bv = icmp sgt i64 %i.h, 0
  br i1 %i.bv, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp samesign ugt i64 %i.h, 2305843009213693951
  br i1 %i.bw, label %bb.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bx, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.h
  %i.by = shl nuw i64 %i.h, 3
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.by) #33 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.g
  %.sink.i.i = phi ptr [ %i.bz, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.g ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !331
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !612
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %._crit_edge, %.sink.split.i.i
  %i.cc = phi i64 [ %i.e, %._crit_edge ], [ %.pre68, %.sink.split.i.i ] ; 2 uses
  store i64 %i.h, ptr %i.bs, align 8, !tbaa !360
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd:bb.a
  %i.df = fadd <2 x double> %i.de, %i.dd
  %i.dg = fmul <2 x double> %i.cv, %i.cz
  %i.dh = fadd <2 x double> %.0196206, %i.dg      ; 2 uses
  %i.di = fmul <2 x double> %i.cx, %i.cz
  %i.dj = fadd <2 x double> %.0199205, %i.di      ; 2 uses
  store <2 x double> %i.df, ptr %.0141210, align 16, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.0141210, i64 16
  %i.dl = add nsw i64 %.0140211, 2                ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.au
  br i1 %i.dm, label %.lr.ph213, label %.preheader200, !llvm.loop !1648

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.dn = phi <2 x double> [ %i.br, %.preheader200 ], [ %i.ep, %.lr.ph219 ]
  %i.do = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 0, i32 2>
  %i.dp = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 1, i32 3>
  %i.dq = fadd <2 x double> %i.do, %i.dp
  %i.dr = fadd <2 x double> %i.dq, %i.dn
  %i.ds = load <2 x double>, ptr %i.ay, align 8, !tbaa !60
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.dr, <2 x double> %i.ds)
  store <2 x double> %i.dt, ptr %i.ay, align 8, !tbaa !60
  %i.du = icmp samesign ult i64 %i.aj, %i.b
  br i1 %i.du, label %.lr.ph225, label %.preheader, !llvm.loop !1649

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0139218 = phi i64 [ %i.eq, %.lr.ph219 ], [ %i.au, %.preheader200 ] ; 5 uses
  %i.dv = phi <2 x double> [ %i.ep, %.lr.ph219 ], [ %i.br, %.preheader200 ]
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %.0139218 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !60
  %i.dy = fmul double %i.ab, %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.0139218 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !60
  %i.eb = fmul double %i.ag, %i.ea
  %i.ec = fadd double %i.dy, %i.eb
  %i.ed = getelementptr inbounds [8 x i8], ptr %4, i64 %.0139218 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !60
  %i.ef = fadd double %i.ee, %i.ec
  store double %i.ef, ptr %i.ed, align 8, !tbaa !60
  %i.eg = getelementptr inbounds [8 x i8], ptr %3, i64 %.0139218
  %i.eh = load double, ptr %i.dw, align 8, !tbaa !60
  %i.ei = load double, ptr %i.eg, align 8, !tbaa !60
  %i.ej = load double, ptr %i.dz, align 8, !tbaa !60
  %i.ek = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ej, i64 1
  %i.eo = fmul <2 x double> %i.el, %i.en
  %i.ep = fadd <2 x double> %i.dv, %i.eo          ; 2 uses
  %i.eq = add nsw i64 %.0139218, 1                ; 2 uses
  %i.er = icmp slt i64 %i.eq, %0
  br i1 %i.er, label %.lr.ph219, label %._crit_edge220, !llvm.loop !1650

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.es = phi i64 [ %i.fk, %._crit_edge230 ], [ %i.s, %.lr.ph233.preheader ] ; 6 uses
  %i.et = phi ptr [ %i.fh, %._crit_edge230 ], [ %i.p, %.lr.ph233.preheader ] ; 2 uses
  %i.eu = phi double [ %i.fd, %._crit_edge230 ], [ %i.l, %.lr.ph233.preheader ]
  %i.ev = phi i64 [ %i.ez, %._crit_edge230 ], [ %i.h, %.lr.ph233.preheader ]
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ev
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa256 = phi ptr [ %i.p, %.lr.ph233.preheader ], [ %i.fh, %._crit_edge230 ]
  %.lcssa255 = phi double [ %i.r, %.lr.ph233.preheader ], [ %i.fj, %._crit_edge230 ]
  %i.ex = tail call double @llvm.fmuladd.f64(double %5, double 0.000000e+00, double %.lcssa255)
  store double %i.ex, ptr %.lcssa256, align 8, !tbaa !60
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load double, ptr %i.et, align 8, !tbaa !60
  %i.ey = tail call double @llvm.fmuladd.f64(double %5, double %i.fw, double %.pre)
  store double %i.ey, ptr %i.et, align 8, !tbaa !60
  %i.ez = mul nsw i64 %i.es, %2                   ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.es
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !60
  %i.fd = fmul double %5, %i.fc                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.es
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !60
  %i.fg = fmul double %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.es ; 4 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !60
  %i.fj = fadd double %i.fi, %i.fg                ; 2 uses
  store double %i.fj, ptr %i.fh, align 8, !tbaa !60
  %i.fk = add nuw nsw i64 %i.es, 1                ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %0
  br i1 %i.fl, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.fx, %.lr.ph229 ], [ %i.es, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi double [ %i.fw, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0227 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !60
  %i.fo = fmul double %i.eu, %i.fn
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !60
  %i.fr = fadd double %i.fq, %i.fo
  store double %i.fr, ptr %i.fp, align 8, !tbaa !60
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0227
  %i.ft = load double, ptr %i.fm, align 8, !tbaa !60
  %i.fu = load double, ptr %i.fs, align 8, !tbaa !60
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = fadd double %.0136226, %i.fv            ; 2 uses
  %i.fx = add nuw nsw i64 %.0227, 1               ; 2 uses
  %i.fy = icmp slt i64 %i.fx, %0
  br i1 %i.fy, label %.lr.ph229, label %._crit_edge230, !llvm.loop !1651
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE6evalToIS2_NS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.2210", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.2472", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1652, !nonnull !233, !align !1653
  %i.d = icmp eq ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store double 1.000000e+00, ptr %1, align 16, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 16, !tbaa !60
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %.lr.ph108, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader

.lr.ph108:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.c

.preheader:                                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.af = icmp eq i64 %i.b, 1
  br i1 %i.af, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, label %.loopexit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader: ; preds = %bb.b, %.preheader
  %i.ag = sub i64 2, %i.b
  %smax = call i64 @llvm.smax.i64(i64 %i.ag, i64 1)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58

bb.c:                                             ; preds = %.lr.ph108, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %.0.in106 = phi i64 [ %i.b, %.lr.ph108 ], [ %.0107, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit ] ; 5 uses
  %.0107 = add nsw i64 %.0.in106, -1              ; 7 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !147 ; 2 uses
  %i.ai = add i64 %i.ah, %.0107                   ; 7 uses
  %i.aj = sub i64 2, %i.ai                        ; 4 uses
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !144, !range !232, !noundef !233
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %.idx.i.i.i.i = shl nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %.idx.i.i.i.i ; 2 uses
  %i.ao = add nsw i64 %i.ah, %.0.in106            ; 5 uses
  %i.ap = sub nsw i64 2, %i.ao                    ; 2 uses
  %.idx.i.i.i.i.i = shl nsw i64 %.0107, 4         ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.an, ptr %3, align 8, !tbaa !1645, !alias.scope !1654
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !224, !alias.scope !1654
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !224, !alias.scope !1654
  store ptr %1, ptr %i.w, align 8, !tbaa !140, !alias.scope !1654
  store i64 %i.ai, ptr %i.x, align 8, !tbaa !224, !alias.scope !1654
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !224, !alias.scope !1654
  store i64 2, ptr %i.z, align 8, !tbaa !1657, !alias.scope !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1666, !nonnull !233, !align !1653 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ao
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.idx.i.i.i.i.i
  store ptr %i.as, ptr %4, align 8, !tbaa !1667, !alias.scope !1666
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !224, !alias.scope !1666
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !140, !alias.scope !1666
  store i64 %i.ao, ptr %i.ac, align 8, !tbaa !224, !alias.scope !1666
  store i64 %.0107, ptr %i.ad, align 8, !tbaa !224, !alias.scope !1666
  store i64 2, ptr %i.ae, align 8, !tbaa !1669, !alias.scope !1666
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.an, ptr %5, align 8, !tbaa !1645, !alias.scope !1672
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !224, !alias.scope !1672
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !224, !alias.scope !1672
  store ptr %1, ptr %i.k, align 8, !tbaa !140, !alias.scope !1672
  store i64 %i.ai, ptr %i.l, align 8, !tbaa !224, !alias.scope !1672
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !224, !alias.scope !1672
  store i64 2, ptr %i.n, align 8, !tbaa !1657, !alias.scope !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.av = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1681, !nonnull !233, !align !1653 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i.i.i.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !1667, !alias.scope !1681
  store i64 %i.ap, ptr %i.o, align 8, !tbaa !224, !alias.scope !1681
  store ptr %i.av, ptr %i.p, align 8, !tbaa !140, !alias.scope !1681
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !224, !alias.scope !1681
  store i64 %.0107, ptr %i.r, align 8, !tbaa !224, !alias.scope !1681
  store i64 2, ptr %i.s, align 8, !tbaa !1669, !alias.scope !1681
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %.0107
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i.i.i
  %i.bb = sub nsw i64 2, %.0.in106                ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0.in106 ; 4 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = lshr exact i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1
  %i.bg = call i64 @llvm.smin.i64(i64 %i.bf, i64 %i.bb) ; 7 uses
  %i.bh = sub nsw i64 %i.bb, %i.bg                ; 3 uses
  %i.bi = and i64 %i.bh, -2
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = icmp sgt i64 %i.bg, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.bc, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = icmp sgt i64 %i.bh, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = shl nuw i64 %i.bg, 3
  %scevgep.i = getelementptr i8, ptr %i.bc, i64 %i.bm
  %i.bn = add nsw i64 %i.bg, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 %i.bn)
  %i.bo = xor i64 %i.bg, -1
  %i.bp = add i64 %smax.i, %i.bo
  %i.bq = shl i64 %i.bp, 3
  %i.br = and i64 %i.bq, -16
  %i.bs = add i64 %i.br, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bs, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = icmp slt i64 %i.bj, %i.bb
  br i1 %i.bt, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = shl i64 %i.bh, 3                        ; 2 uses
  %i.bv = and i64 %i.bu, -16
  %i.bw = shl nuw i64 %i.bg, 3
  %i.bx = getelementptr i8, ptr %i.bc, i64 %i.bv
  %scevgep1.i = getelementptr i8, ptr %i.bx, i64 %i.bw
  %i.by = and i64 %i.bu, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.by, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  %i.bz = icmp samesign ugt i64 %.0.in106, 1
  br i1 %i.bz, label %bb.c, label %.preheader, !llvm.loop !1682

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68
  %.052109 = phi i64 [ %i.db, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68 ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58.preheader ] ; 4 uses
  %.idx.i.i.i.i56 = shl nuw nsw i64 %.052109, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.i56
  %i.cb = sub nsw i64 1, %.052109                 ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %.052109
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 4 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1
  %i.ch = call i64 @llvm.smin.i64(i64 %i.cg, i64 %i.cb) ; 7 uses
  %i.ci = sub i64 %i.cb, %i.ch                    ; 3 uses
  %i.cj = sdiv i64 %i.ci, 2                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = icmp sgt i64 %i.ch, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67:     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  store i64 0, ptr %i.cd, align 8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i67, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58
  %i.cn = icmp sgt i64 %i.ci, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64:       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.co = shl nuw i64 %i.ch, 3
  %scevgep.i65 = getelementptr i8, ptr %i.cd, i64 %i.co
  %i.cp = add nsw i64 %i.ch, 2
  %smax.i66 = call i64 @llvm.smax.i64(i64 %i.cl, i64 %i.cp)
  %i.cq = xor i64 %i.ch, -1
  %i.cr = add i64 %smax.i66, %i.cq
  %i.cs = shl i64 %i.cr, 3
  %i.ct = and i64 %i.cs, -16
  %i.cu = add i64 %i.ct, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i65, i8 0, i64 %i.cu, i1 false), !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i64, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi2ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i60
  %i.cv = icmp slt i64 %i.cl, %i.cb
  br i1 %i.cv, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61
  %i.cw = shl i64 %i.cj, 4
  %i.cx = shl nuw i64 %i.ch, 3
  %i.cy = getelementptr i8, ptr %i.cd, i64 %i.cw
  %scevgep1.i63 = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.cz = sub i64 %i.ci, %i.ck
  %i.da = shl nuw i64 %i.cz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i63, i8 0, i64 %i.da, i1 false), !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i61, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i62
  %i.db = add nuw nsw i64 %.052109, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %smax
  br i1 %exitcond.not, label %.loopexit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i58, !llvm.loop !1683

bb.f:                                             ; preds = %bb.a
  %i.dc = icmp sgt i64 %i.b, 48
  store double 1.000000e+00, ptr %1, align 16, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !60
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS1_IdLi1ELi1ELi0ELi1ELi1EEELi1EE18applyThisOnTheLeftIS2_NS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.df = icmp sgt i64 %i.b, 0
  br i1 %i.df, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.051.in103 = phi i64 [ %i.b, %.lr.ph ], [ %.051104, %bb.l ] ; 3 uses
  %.051104 = add nsw i64 %.051.in103, -1          ; 7 uses
  %i.ef = load i64, ptr %i.dg, align 8, !tbaa !147 ; 2 uses
  %i.eg = add i64 %i.ef, %.051104                 ; 7 uses
  %i.eh = sub i64 2, %i.eg                        ; 4 uses
  %i.ei = load i8, ptr %i.dh, align 8, !tbaa !144, !range !232, !noundef !233
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eg
  %.idx.i.i.i.i69 = shl nsw i64 %i.eg, 4
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.em = add nsw i64 %i.ef, %.051.in103          ; 5 uses
  %i.en = sub nsw i64 2, %i.em                    ; 2 uses
  %.idx.i.i.i.i.i70 = shl nsw i64 %.051104, 4     ; 2 uses
  br i1 %i.ej, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %i.el, ptr %7, align 8, !tbaa !1645, !alias.scope !1684
  store i64 %i.eh, ptr %i.du, align 8, !tbaa !224, !alias.scope !1684
  store i64 %i.eh, ptr %i.dv, align 8, !tbaa !224, !alias.scope !1684
  store ptr %1, ptr %i.dw, align 8, !tbaa !140, !alias.scope !1684
  store i64 %i.eg, ptr %i.dx, align 8, !tbaa !224, !alias.scope !1684
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !224, !alias.scope !1684
  store i64 2, ptr %i.dz, align 8, !tbaa !1657, !alias.scope !1684
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.eo = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1693, !nonnull !233, !align !1653 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.em
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.idx.i.i.i.i.i70
  store ptr %i.eq, ptr %8, align 8, !tbaa !1667, !alias.scope !1693
  store i64 %i.en, ptr %i.ea, align 8, !tbaa !224, !alias.scope !1693
  store ptr %i.eo, ptr %i.eb, align 8, !tbaa !140, !alias.scope !1693
  store i64 %i.em, ptr %i.ec, align 8, !tbaa !224, !alias.scope !1693
  store i64 %.051104, ptr %i.ed, align 8, !tbaa !224, !alias.scope !1693
  store i64 2, ptr %i.ee, align 8, !tbaa !1669, !alias.scope !1693
  %i.er = load ptr, ptr %i.dt, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %i.el, ptr %9, align 8, !tbaa !1645, !alias.scope !1694
  store i64 %i.eh, ptr %i.di, align 8, !tbaa !224, !alias.scope !1694
  store i64 %i.eh, ptr %i.dj, align 8, !tbaa !224, !alias.scope !1694
  store ptr %1, ptr %i.dk, align 8, !tbaa !140, !alias.scope !1694
  store i64 %i.eg, ptr %i.dl, align 8, !tbaa !224, !alias.scope !1694
  store i64 %i.eg, ptr %i.dm, align 8, !tbaa !224, !alias.scope !1694
  store i64 2, ptr %i.dn, align 8, !tbaa !1657, !alias.scope !1694
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.et = load ptr, ptr %0, align 8, !tbaa !1652, !noalias !1703, !nonnull !233, !align !1653 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.em
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %.idx.i.i.i.i.i70
  store ptr %i.ev, ptr %10, align 8, !tbaa !1667, !alias.scope !1703
  store i64 %i.en, ptr %i.do, align 8, !tbaa !224, !alias.scope !1703
  store ptr %i.et, ptr %i.dp, align 8, !tbaa !140, !alias.scope !1703
  store i64 %i.em, ptr %i.dq, align 8, !tbaa !224, !alias.scope !1703
  store i64 %.051104, ptr %i.dr, align 8, !tbaa !224, !alias.scope !1703
  store i64 2, ptr %i.ds, align 8, !tbaa !1669, !alias.scope !1703
  %i.ew = load ptr, ptr %i.dt, align 8, !tbaa !1671, !nonnull !233, !align !646
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.051104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ey = icmp samesign ugt i64 %.051.in103, 1
  br i1 %i.ey, label %bb.i, label %.loopexit, !llvm.loop !1704

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKS3_Lin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.2701", align 16 ; 17 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.2595", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2725", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.2591", align 8 ; 11 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.2611", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2615", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Map.2500", align 8  ; 8 uses
  %13 = alloca %"class.Eigen::Block.2512", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224  ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !60  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %0, align 8, !tbaa !1645   ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !224  ; 10 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph54.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i
  %min.iters.check155 = icmp ult i64 %i.k, 4
  br i1 %min.iters.check155, label %.preheader.i.i.i.i.i.i.i.preheader183, label %vector.ph156

vector.ph156:                                     ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %n.vec157 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat159 = shufflevector <2 x double> %broadcast.splatinsert158, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %index161 ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %wide.load162 = load <2 x double>, ptr %i.m, align 8, !tbaa !60
  %wide.load163 = load <2 x double>, ptr %i.n, align 8, !tbaa !60
  %i.o = fmul <2 x double> %broadcast.splat159, %wide.load162
  %i.p = fmul <2 x double> %broadcast.splat159, %wide.load163
  store <2 x double> %i.o, ptr %i.m, align 8, !tbaa !60
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !60
  %index.next164 = add nuw i64 %index161, 4       ; 2 uses
  %i.q = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.q, label %middle.block165, label %vector.body160, !llvm.loop !1705

middle.block165:                                  ; preds = %vector.body160
  %cmp.n166 = icmp eq i64 %i.k, %n.vec157
  br i1 %cmp.n166, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.preheader183

.preheader.i.i.i.i.i.i.i.preheader183:            ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %middle.block165
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec157, %middle.block165 ]
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader183, %.preheader.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.u, %.preheader.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.preheader183 ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %.09.i.i.i.i.i.i.i ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !60
  %i.t = fmul double %i.f, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !60
  %i.u = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.u, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1706

.lr.ph54.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.v = lshr exact i64 %i.i, 3
  %i.w = and i64 %i.v, 1
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.k) ; 5 uses
  %i.y = insertelement <2 x double> poison, double %i.f, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = sub i64 %i.k, %i.x                      ; 3 uses
  %i.ab = and i64 %i.aa, -2
  %i.ac = add nsw i64 %i.ab, %i.x                 ; 5 uses
  %i.ad = icmp sgt i64 %i.x, 0
  br i1 %i.ad, label %.preheader45.loopexit.i.i.i.i.i.i, label %.preheader45.i.i.i.i.i.i

.preheader45.loopexit.i.i.i.i.i.i:                ; preds = %.lr.ph54.i.i.i.i.i.i
  %i.ae = load double, ptr %i.h, align 8, !tbaa !60
  %i.af = fmul double %i.f, %i.ae
  store double %i.af, ptr %i.h, align 8, !tbaa !60
  br label %.preheader45.i.i.i.i.i.i

.preheader45.i.i.i.i.i.i:                         ; preds = %.preheader45.loopexit.i.i.i.i.i.i, %.lr.ph54.i.i.i.i.i.i
  %i.ag = icmp sgt i64 %i.aa, 1
  br i1 %i.ag, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph49.i.i.i.i.i.i, %.preheader45.i.i.i.i.i.i
  %i.ah = icmp slt i64 %i.ac, %i.k
  br i1 %i.ah, label %.lr.ph51.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

.lr.ph51.i.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.ai = and i64 %i.aa, -2
  %i.aj = add i64 %i.x, %i.ai
  %i.ak = sub i64 %i.k, %i.aj                     ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check169, label %.lr.ph51.i.i.i.i.i.i.preheader182, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph51.i.i.i.i.i.i.preheader
  %n.vec171 = and i64 %i.ak, -4                   ; 3 uses
  %i.al = add i64 %i.ac, %n.vec171
  %broadcast.splatinsert172 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat173 = shufflevector <2 x double> %broadcast.splatinsert172, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.h, i64 %i.ac
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph170
  %index175 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body174 ] ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %index175 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16     ; 2 uses
  %wide.load176 = load <2 x double>, ptr %i.an, align 8, !tbaa !60
  %wide.load177 = load <2 x double>, ptr %i.ao, align 8, !tbaa !60
  %i.ap = fmul <2 x double> %broadcast.splat173, %wide.load176
  %i.aq = fmul <2 x double> %broadcast.splat173, %wide.load177
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !60
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !60
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.ar, label %middle.block179, label %vector.body174, !llvm.loop !1707

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %i.ak, %n.vec171
  br i1 %cmp.n180, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, label %.lr.ph51.i.i.i.i.i.i.preheader182

.lr.ph51.i.i.i.i.i.i.preheader182:                ; preds = %.lr.ph51.i.i.i.i.i.i.preheader, %middle.block179
  %.050.i.i.i.i.i.i.ph = phi i64 [ %i.ac, %.lr.ph51.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block179 ]
  br label %.lr.ph51.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i:                             ; preds = %.preheader45.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i
  %.03248.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph49.i.i.i.i.i.i ], [ %i.x, %.preheader45.i.i.i.i.i.i ] ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.h, i64 %.03248.i.i.i.i.i.i ; 2 uses
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !16
  %i.au = fmul <2 x double> %i.z, %i.at
  store <2 x double> %i.au, ptr %i.as, align 16, !tbaa !16
  %i.av = add nsw i64 %.03248.i.i.i.i.i.i, 2      ; 2 uses
  %i.aw = icmp slt i64 %i.av, %i.ac
  br i1 %i.aw, label %.lr.ph49.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !1708

.lr.ph51.i.i.i.i.i.i:                             ; preds = %.lr.ph51.i.i.i.i.i.i.preheader182, %.lr.ph51.i.i.i.i.i.i
  %.050.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph51.i.i.i.i.i.i ], [ %.050.i.i.i.i.i.i.ph, %.lr.ph51.i.i.i.i.i.i.preheader182 ] ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.h, i64 %.050.i.i.i.i.i.i ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !60
  %i.az = fmul double %i.f, %i.ay
  store double %i.az, ptr %i.ax, align 8, !tbaa !60
  %i.ba = add nsw i64 %.050.i.i.i.i.i.i, 1        ; 2 uses
  %i.bb = icmp slt i64 %i.ba, %i.k
  br i1 %i.bb, label %.lr.ph51.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit, !llvm.loop !1709

bb.c:                                             ; preds = %bb.a
  %i.bc = fcmp une double %i.e, 0.000000e+00
  br i1 %i.bc, label %bb.d, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEEmLERKd.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !224 ; 3 uses
  store ptr %3, ptr %12, align 8, !tbaa !1710
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.bg = add nsw i64 %i.c, -1                    ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1645
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bi, ptr %13, align 8, !tbaa !1712
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.be, ptr %i.bj, align 8, !tbaa !224
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !224
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 0, ptr %i.bm, align 8, !tbaa !224
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 1, ptr %i.bn, align 8, !tbaa !224
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i64 2, ptr %i.bo, align 8, !tbaa !1714
end_hunk_5
