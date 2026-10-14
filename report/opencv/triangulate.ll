Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/triangulate?download=true
inline.NumInlined: 264
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv17triangulatePointsERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayE:bb.a
  %i.cx = icmp eq i32 %i.cw, 65536
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc149
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !11, !noalias !54
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.cz)
          to label %bb.aj unwind label %bb.ar

bb.ai:                                            ; preds = %.noexc149
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 -1040056314, ptr %22, align 8, !tbaa !29
  store ptr %18, ptr %i.da, align 8, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 12884901892, ptr %i.db, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  %i.dc = icmp sgt i32 %.093, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ak
  %.not172 = icmp eq ptr %i.o, null
  %.not = select i1 %i.m, i1 true, i1 %.not172
  %.not124173 = icmp eq ptr %i.r, null
  %.not124 = select i1 %i.p, i1 true, i1 %.not124173
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %wide.trip.count = zext nneg i32 %.093 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %.096
  %invariant.gep182 = getelementptr [8 x i8], ptr %i.o, i64 %.096
  %invariant.gep184 = getelementptr [4 x i8], ptr %i.r, i64 %.094
  %invariant.gep186 = getelementptr [8 x i8], ptr %i.r, i64 %.094
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 56
  br label %bb.au

._crit_edge:                                      ; preds = %bb.bf, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #15
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

bb.an:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ao:                                            ; preds = %bb.ae, %bb.ad, %_ZNK2cv11_InputArray6getMatEi.exit144
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn118.pn = phi { ptr, i32 } [ %i.et, %bb.ap ], [ %i.es, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  br label %bb.bg

bb.ar:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.aj
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn121.pn = phi { ptr, i32 } [ %i.ev, %bb.as ], [ %i.eu, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  br label %bb.bg

bb.au:                                            ; preds = %.lr.ph, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bf ] ; 11 uses
  %i.ew = mul nuw nsw i64 %indvars.iv, %.097      ; 4 uses
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !35
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ew
  %i.ez = load float, ptr %gep, align 4, !tbaa !35
  %i.fa = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ez, i64 1
  %i.fc = fpext <2 x float> %i.fb to <2 x double>
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ew
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !28
  %gep183 = getelementptr [8 x i8], ptr %invariant.gep182, i64 %i.ew
  %i.ff = load double, ptr %gep183, align 8, !tbaa !28
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ff, i64 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fi = phi <2 x double> [ %i.fc, %bb.av ], [ %i.fh, %bb.aw ] ; 4 uses
  %i.fj = mul nuw nsw i64 %indvars.iv, %.095      ; 4 uses
  br i1 %.not124, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !35
  %gep185 = getelementptr [4 x i8], ptr %invariant.gep184, i64 %i.fj
  %i.fm = load float, ptr %gep185, align 4, !tbaa !35
  %i.fn = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.fm, i64 1
  %i.fp = fpext <2 x float> %i.fo to <2 x double>
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fj
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !28
  %gep187 = getelementptr [8 x i8], ptr %invariant.gep186, i64 %i.fj
  %i.fs = load double, ptr %gep187, align 8, !tbaa !28
  %i.ft = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fv = phi <2 x double> [ %i.fp, %bb.ay ], [ %i.fu, %bb.az ] ; 4 uses
  %23 = load <1 x double>, ptr %i.dk, align 16
  %i.fw = load <2 x double>, ptr %17, align 16
  %i.fx = load double, ptr %i.dl, align 16, !tbaa !28
  %i.fy = insertelement <2 x double> %i.fw, double %i.fx, i64 1
  %i.fz = fneg <2 x double> %i.fy
  %i.ga = shufflevector <1 x double> %23, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.ga, <2 x double> %i.fz)
  store <2 x double> %i.gb, ptr %13, align 16, !tbaa !28
  %24 = load <1 x double>, ptr %i.dm, align 16
  %i.gc = load <2 x double>, ptr %18, align 16
  %i.gd = load double, ptr %i.do, align 16, !tbaa !28
  %i.ge = insertelement <2 x double> %i.gc, double %i.gd, i64 1
  %i.gf = fneg <2 x double> %i.ge
  %i.gg = shufflevector <1 x double> %24, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gg, <2 x double> %i.gf)
  store <2 x double> %i.gh, ptr %i.dn, align 16, !tbaa !28
  %25 = load <1 x double>, ptr %i.dp, align 8
  %i.gi = load <2 x double>, ptr %i.dq, align 8
  %i.gj = load double, ptr %i.ds, align 8, !tbaa !28
  %i.gk = insertelement <2 x double> %i.gi, double %i.gj, i64 1
  %i.gl = fneg <2 x double> %i.gk
  %i.gm = shufflevector <1 x double> %25, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.gm, <2 x double> %i.gl)
  store <2 x double> %i.gn, ptr %i.dr, align 16, !tbaa !28
  %26 = load <1 x double>, ptr %i.dt, align 8
  %i.go = load <2 x double>, ptr %i.du, align 8
  %i.gp = load double, ptr %i.dw, align 8, !tbaa !28
  %i.gq = insertelement <2 x double> %i.go, double %i.gp, i64 1
  %i.gr = fneg <2 x double> %i.gq
  %i.gs = shufflevector <1 x double> %26, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gs, <2 x double> %i.gr)
  store <2 x double> %i.gt, ptr %i.dv, align 16, !tbaa !28
  %27 = load <1 x double>, ptr %i.dx, align 16
  %i.gu = load <2 x double>, ptr %i.dy, align 16
  %i.gv = load double, ptr %i.ea, align 16, !tbaa !28
  %i.gw = insertelement <2 x double> %i.gu, double %i.gv, i64 1
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = shufflevector <1 x double> %27, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.gy, <2 x double> %i.gx)
  store <2 x double> %i.gz, ptr %i.dz, align 16, !tbaa !28
  %28 = load <1 x double>, ptr %i.eb, align 16
  %i.ha = load <2 x double>, ptr %i.ec, align 16
  %i.hb = load double, ptr %i.ee, align 16, !tbaa !28
  %i.hc = insertelement <2 x double> %i.ha, double %i.hb, i64 1
  %i.hd = fneg <2 x double> %i.hc
  %i.he = shufflevector <1 x double> %28, <1 x double> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.he, <2 x double> %i.hd)
  store <2 x double> %i.hf, ptr %i.ed, align 16, !tbaa !28
  %i.hg = load double, ptr %i.ef, align 8, !tbaa !28
  %i.hh = load <2 x double>, ptr %i.eg, align 8
  %i.hi = load double, ptr %i.ei, align 8, !tbaa !28
  %i.hj = insertelement <2 x double> %i.hh, double %i.hi, i64 1
  %i.hk = fneg <2 x double> %i.hj
  %i.hl = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.hm, <2 x double> %i.hk)
  store <2 x double> %i.hn, ptr %i.eh, align 16, !tbaa !28
  %i.ho = load double, ptr %i.ej, align 8, !tbaa !28
  %i.hp = load <2 x double>, ptr %i.ek, align 8
  %i.hq = load double, ptr %i.em, align 8, !tbaa !28
  %i.hr = insertelement <2 x double> %i.hp, double %i.hq, i64 1
  %i.hs = fneg <2 x double> %i.hr
  %i.ht = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.hu, <2 x double> %i.hs)
  store <2 x double> %i.hv, ptr %i.el, align 16, !tbaa !28
  invoke void @_ZN2cv3hal6SVD64fEPdmS1_S1_mS1_miii(ptr noundef nonnull %13, i64 noundef 32, ptr noundef nonnull %15, ptr noundef nonnull %14, i64 noundef 32, ptr noundef nonnull %16, i64 noundef 32, i32 noundef 4, i32 noundef 4, i32 noundef 4)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hw = load double, ptr %i.dd, align 8, !tbaa !28 ; 2 uses
  %i.hx = load i32, ptr %i.de, align 4, !tbaa !36 ; 2 uses
  %i.hy = load ptr, ptr %i.df, align 8, !tbaa !37 ; 8 uses
  br i1 %i.m, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv
  %i.ia = fptrunc double %i.hw to float
  store float %i.ia, ptr %i.hz, align 4, !tbaa !35
  %i.ib = load double, ptr %i.dh, align 8, !tbaa !28
  %i.ic = icmp slt i32 %i.hx, 2                   ; 3 uses
  %i.id = load i64, ptr %i.dg, align 8
  %.sink.idx.i = select i1 %i.ic, i64 0, i64 %i.id
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.if = fptrunc double %i.ib to float
  store float %i.if, ptr %i.ie, align 4, !tbaa !35
  %i.ig = load double, ptr %i.di, align 8, !tbaa !28
  %i.ih = load i64, ptr %i.dg, align 8
  %i.ii = shl i64 %i.ih, 1
  %.sink.idx.i153 = select i1 %i.ic, i64 0, i64 %i.ii
  %.sink.i154 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i153
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sink.i154, i64 %indvars.iv
  %i.ik = fptrunc double %i.ig to float
  store float %i.ik, ptr %i.ij, align 4, !tbaa !35
  %i.il = load double, ptr %i.dj, align 8, !tbaa !28
  %i.im = load i64, ptr %i.dg, align 8
  %i.in = mul i64 %i.im, 3
  %.sink.idx.i155 = select i1 %i.ic, i64 0, i64 %i.in
  %.sink.i156 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i155
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sink.i156, i64 %indvars.iv
  %i.ip = fptrunc double %i.il to float
  store float %i.ip, ptr %i.io, align 4, !tbaa !35
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv
  store double %i.hw, ptr %i.ir, align 8, !tbaa !28
  %i.is = load double, ptr %i.dh, align 8, !tbaa !28
  %i.it = icmp slt i32 %i.hx, 2                   ; 3 uses
  %i.iu = load i64, ptr %i.dg, align 8
  %.sink.idx.i159 = select i1 %i.it, i64 0, i64 %i.iu
  %.sink.i160 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i159
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i160, i64 %indvars.iv
  store double %i.is, ptr %i.iv, align 8, !tbaa !28
  %i.iw = load double, ptr %i.di, align 8, !tbaa !28
  %i.ix = load i64, ptr %i.dg, align 8
  %i.iy = shl i64 %i.ix, 1
  %.sink.idx.i161 = select i1 %i.it, i64 0, i64 %i.iy
  %.sink.i162 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i161
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sink.i162, i64 %indvars.iv
  store double %i.iw, ptr %i.iz, align 8, !tbaa !28
  %i.ja = load double, ptr %i.dj, align 8, !tbaa !28
  %i.jb = load i64, ptr %i.dg, align 8
  %i.jc = mul i64 %i.jb, 3
  %.sink.idx.i163 = select i1 %i.it, i64 0, i64 %i.jc
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i163
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %.sink.i164, i64 %indvars.iv
  store double %i.ja, ptr %i.jd, align 8, !tbaa !28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !49

bb.bg:                                            ; preds = %bb.bd, %bb.at, %bb.aq
  %.pn125 = phi { ptr, i32 } [ %i.iq, %bb.bd ], [ %.pn121.pn, %bb.at ], [ %.pn118.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #12
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.an
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %bb.bg ], [ %i.er, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.bh ], [ %i.an, %bb.o ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #12
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.g
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn, %bb.bi ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.f
  %.pn125.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn, %bb.bj ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn125.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !55
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.i, ptr %i.h, align 1, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@_ZN2cv14correctMatchesERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayES5_:bb.a
  %i.ku = getelementptr inbounds [16 x i8], ptr %i.ks, i64 %i.kt
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit

_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit:          ; preds = %bb.cp, %bb.cr, %bb.ct, %bb.cu
  %.0.i513 = phi ptr [ %i.jw, %bb.cp ], [ %i.kd, %bb.cr ], [ %i.kj, %bb.ct ], [ %i.ku, %bb.cu ]
  %i.kv = load <2 x double>, ptr %.0.i513, align 8, !tbaa !28
  %i.kw = load i32, ptr %i.fc, align 4, !tbaa !36
  %i.kx = icmp slt i32 %i.kw, 2
  br i1 %i.kx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit
  %i.ky = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

bb.cw:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit
  %i.la = load i32, ptr %13, align 8, !tbaa !19
  %i.lb = and i32 %i.la, 16384
  %i.lc = icmp ne i32 %i.lb, 0
  %i.ld = load i32, ptr %i.bl, align 4
  %i.le = icmp eq i32 %i.ld, 1
  %or.cond.i514 = select i1 %i.lc, i1 true, i1 %i.le
  br i1 %or.cond.i514, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.lf = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

bb.cy:                                            ; preds = %bb.cw
  %i.lh = load i32, ptr %i.fd, align 8, !tbaa !30
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.lj = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.lk = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.ll = mul i64 %i.lk, %indvars.iv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ll
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

bb.da:                                            ; preds = %bb.cy
  %i.ln = load i32, ptr %i.fe, align 4, !tbaa !79 ; 3 uses
  %i.lo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.lp = sdiv i32 %i.lo, %i.ln                   ; 2 uses
  %i.lq = mul nsw i32 %i.lp, %i.ln                ; 0 uses
  %.recomposed760 = srem i32 %i.lo, %i.ln
  %i.lr = load ptr, ptr %i.ff, align 8, !tbaa !37
  %i.ls = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.lt = sext i32 %i.lp to i64
  %i.lu = mul i64 %i.ls, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lu
  %i.lw = sext i32 %.recomposed760 to i64
  %i.lx = getelementptr inbounds [16 x i8], ptr %i.lv, i64 %i.lw
  br label %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516

_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516:       ; preds = %bb.cv, %bb.cx, %bb.cz, %bb.da
  %.0.i515 = phi ptr [ %i.kz, %bb.cv ], [ %i.lg, %bb.cx ], [ %i.lm, %bb.cz ], [ %i.lx, %bb.da ]
  %i.ly = load <2 x double>, ptr %.0.i515, align 8, !tbaa !28
  br label %bb.db

bb.db:                                            ; preds = %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516
  %i.lz = phi <2 x double> [ %i.ju, %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511 ], [ %i.ly, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516 ] ; 5 uses
  %i.ma = phi <2 x double> [ %i.jt, %_ZN2cv3Mat2atINS_6Point_IfEEEERT_i.exit511 ], [ %i.kv, %_ZN2cv3Mat2atINS_6Point_IdEEEERT_i.exit516 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  %i.mb = load double, ptr %i.fj, align 16, !tbaa !28, !noalias !81 ; 3 uses
  %i.mc = fadd double %i.mb, 0.000000e+00
  %i.md = load double, ptr %i.fk, align 8, !tbaa !28, !noalias !81 ; 3 uses
  %i.me = load double, ptr %i.fl, align 16, !tbaa !28, !noalias !81 ; 2 uses
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.mb, i64 1
  %i.mh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mc, i64 0
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> zeroinitializer, <2 x double> %i.mh) ; 2 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 1
  %i.mk = fadd double %i.md, %i.mj
  %i.ml = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = insertelement <2 x double> %i.mi, double %i.mk, i64 1
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> zeroinitializer, <2 x double> %i.mn) ; 4 uses
  %i.mp = extractelement <2 x double> %i.lz, i64 0 ; 2 uses
  %i.mq = extractelement <2 x double> %i.lz, i64 1 ; 2 uses
  %i.mr = call double @llvm.fmuladd.f64(double %i.mp, double %i.mb, double 0.000000e+00)
  %i.ms = call double @llvm.fmuladd.f64(double %i.mq, double %i.md, double %i.mr)
  %i.mt = fadd double %i.me, %i.ms                ; 2 uses
  %i.mu = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = extractelement <2 x double> %i.ma, i64 1
  %i.mw = load <2 x double>, ptr %26, align 16, !tbaa !28, !noalias !81 ; 4 uses
  %i.mx = extractelement <2 x double> %i.mw, i64 0
  %i.my = fadd double %i.mx, 0.000000e+00
  %i.mz = load <2 x double>, ptr %i.fh, align 8, !tbaa !28, !noalias !81 ; 4 uses
  %i.na = extractelement <2 x double> %i.mz, i64 0
  %i.nb = load <2 x double>, ptr %i.fi, align 16, !tbaa !28, !noalias !81 ; 5 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = extractelement <2 x double> %i.mw, i64 1
  %i.ne = extractelement <2 x double> %i.mz, i64 1
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.ng = fadd <2 x double> %i.mz, %i.nf          ; 2 uses
  %i.nh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> zeroinitializer, <2 x double> %i.ng) ; 3 uses
  %i.ni = insertelement <2 x double> %i.lz, double 1.000000e+00, i64 1
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.mw, <2 x double> zeroinitializer)
  %i.nk = shufflevector <2 x double> %i.lz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.nk, <2 x double> %i.nj) ; 2 uses
  %i.nm = insertelement <2 x double> %i.nl, double 0.000000e+00, i64 0
  %i.nn = call double @llvm.fmuladd.f64(double %i.na, double 0.000000e+00, double %i.my)
  %i.no = call double @llvm.fmuladd.f64(double %i.nc, double 0.000000e+00, double %i.nn) ; 3 uses
  %i.np = fadd double %i.no, 0.000000e+00
  %i.nq = insertelement <2 x double> %i.nb, double %i.no, i64 0
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> zeroinitializer, <2 x double> %i.nm) ; 4 uses
  %i.ns = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.no, i64 1
  %i.nt = shufflevector <2 x double> %i.nr, <2 x double> %i.ma, <2 x i32> <i32 1, i32 2>
  %i.nu = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.np, i64 0
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.nt, <2 x double> %i.nu) ; 2 uses
  %i.nw = shufflevector <2 x double> %i.nb, <2 x double> %i.nh, <2 x i32> <i32 1, i32 2>
  %i.nx = shufflevector <2 x double> %i.ng, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> zeroinitializer, <2 x double> %i.nx) ; 2 uses
  %i.nz = fadd <2 x double> %i.nh, <double 0.000000e+00, double -0.000000e+00>
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.nz)
  %i.ob = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> zeroinitializer, <2 x double> %i.oa)
  store <2 x double> %i.oc, ptr %i.fn, align 8, !tbaa !28, !alias.scope !82
  %i.od = shufflevector <2 x double> %i.nh, <2 x double> %i.nr, <2 x i32> <i32 0, i32 3>
  %i.oe = insertelement <2 x double> %i.nv, double 0.000000e+00, i64 0
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.ma, <2 x double> %i.oe) ; 2 uses
  %i.og = shufflevector <2 x double> %i.nr, <2 x double> %i.of, <2 x i32> <i32 0, i32 3>
  %i.oh = shufflevector <2 x double> %i.nr, <2 x double> %i.mo, <2 x i32> <i32 1, i32 2>
  %i.oi = fadd <2 x double> %i.og, %i.oh          ; 2 uses
  %i.oj = shufflevector <2 x double> %i.nv, <2 x double> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> zeroinitializer, <2 x double> %i.oj)
  store <2 x double> %i.ok, ptr %32, align 16, !tbaa !28, !alias.scope !82
  %i.ol = extractelement <2 x double> %i.oi, i64 1
  store double %i.ol, ptr %i.fm, align 16, !tbaa !28, !alias.scope !82
  %i.om = call double @llvm.fmuladd.f64(double %i.mp, double %i.nd, double 0.000000e+00)
  %i.on = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer
  %i.op = call double @llvm.fmuladd.f64(double %i.mq, double %i.ne, double %i.om)
  %i.oq = insertelement <2 x double> %i.nl, double %i.op, i64 1
  %i.or = fadd <2 x double> %i.nb, %i.oq          ; 5 uses
  %i.os = extractelement <2 x double> %i.or, i64 0
  %i.ot = fadd double %i.os, 0.000000e+00
  %i.ou = extractelement <2 x double> %i.or, i64 1
  %i.ov = shufflevector <2 x double> %i.ny, <2 x double> %i.or, <2 x i32> <i32 0, i32 2>
  %i.ow = shufflevector <2 x double> %i.ma, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ox = insertelement <2 x double> %i.of, double 0.000000e+00, i64 1
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.ow, <2 x double> %i.ox)
  %i.oz = shufflevector <2 x double> %i.mo, <2 x double> %i.or, <2 x i32> <i32 1, i32 3>
  %i.pa = fadd <2 x double> %i.oy, %i.oz          ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 0
  store double %i.pb, ptr %i.fo, align 8, !tbaa !28, !alias.scope !82
  %i.pc = insertelement <2 x double> %i.ma, double 0.000000e+00, i64 1
  %i.pd = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ot, i64 1
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.pc, <2 x double> %i.pd) ; 2 uses
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> %i.pa, <2 x i32> <i32 1, i32 3>
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> zeroinitializer, <2 x double> %i.pf)
  store <2 x double> %i.pg, ptr %i.fp, align 16, !tbaa !28, !alias.scope !82
  %i.ph = extractelement <2 x double> %i.pe, i64 0
  %i.pi = call double @llvm.fmuladd.f64(double %i.ou, double %i.mv, double %i.ph)
  %i.pj = fadd double %i.pi, %i.mt
  store double %i.pj, ptr %i.fr, align 16, !tbaa !28, !alias.scope !82
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  store i32 -1056833530, ptr %33, align 8, !tbaa !29
  store ptr %32, ptr %i.ft, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fs, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #12
  store i32 -1040056314, ptr %34, align 8, !tbaa !29
  store ptr %29, ptr %i.fu, align 8, !tbaa !11
  store i64 12884901889, ptr %i.fv, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #12
  store i32 -1040056314, ptr %35, align 8, !tbaa !29
  store ptr %27, ptr %i.fw, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fx, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #12
  store i32 -1040056314, ptr %36, align 8, !tbaa !29
  store ptr %28, ptr %i.fy, align 8, !tbaa !11
  store i64 12884901891, ptr %i.fz, align 8, !tbaa !30
  invoke void @_ZN2cv8SVDecompERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef 0)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  %i.pk = load double, ptr %i.gd, align 8, !tbaa !28 ; 2 uses
  %i.pl = load double, ptr %i.ge, align 8, !tbaa !28 ; 2 uses
  %i.pm = load double, ptr %i.gf, align 8, !tbaa !28
  %i.pn = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.pl, i64 1
  %i.pp = load double, ptr %i.fr, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.pq = load double, ptr %i.fm, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.pr = load double, ptr %i.fo, align 8, !tbaa !28, !noalias !83 ; 2 uses
  %i.ps = load <2 x double>, ptr %32, align 16, !tbaa !28, !noalias !83 ; 3 uses
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %i.pu = load <2 x double>, ptr %i.fn, align 8, !tbaa !28, !noalias !83 ; 3 uses
  %i.pv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> zeroinitializer, <2 x double> %i.pt) ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0
  %i.px = extractelement <2 x double> %i.pv, i64 1
  %i.py = call double @llvm.fmuladd.f64(double %i.pq, double 0.000000e+00, double 0.000000e+00)
  %i.pz = call double @llvm.fmuladd.f64(double %i.pr, double 0.000000e+00, double %i.py)
  %i.qa = fadd double %i.pp, %i.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #12
  %i.qb = load <2 x double>, ptr %i.ga, align 8   ; 2 uses
  %i.qc = load double, ptr %i.gb, align 8, !tbaa !28 ; 2 uses
  %i.qd = insertelement <2 x double> poison, double %i.qc, i64 0
  %i.qe = insertelement <2 x double> %i.qd, double %i.pl, i64 1 ; 2 uses
  %i.qf = fmul <2 x double> %i.qe, %i.qe
  %i.qg = insertelement <2 x double> %i.qb, double %i.pk, i64 1 ; 2 uses
  %i.qh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qg, <2 x double> %i.qf)
  %i.qi = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qh) ; 3 uses
  %i.qj = insertelement <2 x double> %i.qb, double %i.qc, i64 1
  %i.qk = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ql = fdiv <2 x double> %i.qj, %i.qk          ; 2 uses
  %i.qm = load double, ptr %i.gc, align 8, !tbaa !28
  %i.qn = extractelement <2 x double> %i.ql, i64 0 ; 2 uses
  %i.qo = fneg double %i.qn
  %i.qp = extractelement <2 x double> %i.ql, i64 1 ; 2 uses
  %i.qq = fneg double %i.qp
  %i.qr = insertelement <2 x double> poison, double %i.qm, i64 0
  %i.qs = insertelement <2 x double> %i.qr, double %i.pm, i64 1
  %i.qt = fdiv <2 x double> %i.qs, %i.qi          ; 3 uses
  %i.qu = fcmp olt <2 x double> %i.qt, zeroinitializer ; 3 uses
  %i.qv = extractelement <2 x i1> %i.qu, i64 0    ; 2 uses
  %.sroa.8629.0 = select i1 %i.qv, double %i.qq, double %i.qp ; 2 uses
  %.sroa.0626.0 = select i1 %i.qv, double %i.qo, double %i.qn ; 3 uses
  %i.qw = fneg <2 x double> %i.qt
  %i.qx = select <2 x i1> %i.qu, <2 x double> %i.qw, <2 x double> %i.qt ; 25 uses
  %i.qy = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qz = fdiv <2 x double> %i.po, %i.qy          ; 2 uses
  %i.ra = fneg <2 x double> %i.qz
  %i.rb = shufflevector <2 x i1> %i.qu, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.rc = select <2 x i1> %i.rb, <2 x double> %i.ra, <2 x double> %i.qz ; 5 uses
  %i.rd = fneg double %.sroa.8629.0
  %i.re = extractelement <2 x double> %i.rc, i64 1
  %i.rf = fneg double %i.re                       ; 4 uses
  %i.rg = extractelement <2 x double> %i.rc, i64 0 ; 2 uses
  %i.rh = extractelement <2 x double> %i.ps, i64 0
  %i.ri = extractelement <2 x double> %i.pu, i64 0
  %i.rj = extractelement <2 x double> %i.ps, i64 1
  %i.rk = extractelement <2 x double> %i.pu, i64 1
  %i.rl = load double, ptr %i.fp, align 16, !tbaa !28, !noalias !83 ; 2 uses
  %i.rm = load double, ptr %i.fq, align 8, !tbaa !28, !noalias !83 ; 2 uses
  %i.rn = fadd double %i.rl, %i.pw
  %i.ro = fadd double %i.rm, %i.px
  %i.rp = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.rq = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rr = call double @llvm.fmuladd.f64(double %i.rf, double %i.rh, double 0.000000e+00)
  %i.rs = call double @llvm.fmuladd.f64(double %i.rg, double %i.ri, double %i.rr)
  %i.rt = call double @llvm.fmuladd.f64(double %i.rl, double 0.000000e+00, double %i.rs) ; 2 uses
  %i.ru = call double @llvm.fmuladd.f64(double %i.rf, double %i.rj, double 0.000000e+00)
  %i.rv = call double @llvm.fmuladd.f64(double %i.rg, double %i.rk, double %i.ru)
  %i.rw = insertelement <2 x double> poison, double %i.rm, i64 0
  %i.rx = insertelement <2 x double> %i.rw, double %i.rt, i64 1
  %i.ry = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.rv, i64 0
  %i.rz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> zeroinitializer, <2 x double> %i.ry) ; 3 uses
  %i.sa = extractelement <2 x double> %i.rz, i64 0
  %i.sb = extractelement <2 x double> %i.rz, i64 1
  %i.sc = call double @llvm.fmuladd.f64(double %i.sa, double 0.000000e+00, double %i.sb)
  %i.sd = call double @llvm.fmuladd.f64(double %i.rf, double %i.pq, double 0.000000e+00)
  %i.se = insertelement <2 x double> %i.rp, double %i.rt, i64 1 ; 2 uses
  %i.sf = insertelement <2 x double> poison, double %i.rd, i64 0 ; 2 uses
  %i.sg = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.sg, <2 x double> zeroinitializer)
  %i.si = shufflevector <2 x double> %i.rq, <2 x double> %i.rz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sj = insertelement <2 x double> poison, double %.sroa.0626.0, i64 0
  %i.sk = shufflevector <2 x double> %i.sj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.si, <2 x double> %i.sk, <2 x double> %i.sh)
  %i.sm = shufflevector <2 x double> %i.rc, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.sn = insertelement <2 x double> %i.se, double %i.pr, i64 1
  %i.so = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.sd, i64 1
  %i.sp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %i.sn, <2 x double> %i.so)
  %i.sq = insertelement <2 x double> %i.si, double %i.pp, i64 1
  %i.sr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> zeroinitializer, <2 x double> %i.sp) ; 2 uses
  %i.ss = insertelement <2 x double> %i.sr, double %i.qa, i64 0 ; 2 uses
  %i.st = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> zeroinitializer, <2 x double> %i.sl) ; 30 uses
  %i.su = extractelement <2 x double> %i.st, i64 1 ; 11 uses
  %i.sv = extractelement <2 x double> %i.st, i64 0 ; 11 uses
  %i.sw = insertelement <2 x double> %i.ss, double %i.sc, i64 1
  %i.sx = fadd <2 x double> %i.sr, %i.sw          ; 34 uses
  %i.sy = extractelement <2 x double> %i.sx, i64 1 ; 10 uses
  %i.sz = extractelement <2 x double> %i.sx, i64 0 ; 15 uses
  %i.ta = extractelement <2 x double> %i.qx, i64 1 ; 10 uses
  %i.tb = fmul double %i.ta, %i.ta                ; 14 uses
  %i.tc = shufflevector <2 x double> %i.sx, <2 x double> %i.st, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.td = fmul <2 x double> %i.tc, <double 2.000000e+00, double 8.000000e+00> ; 2 uses
  %i.te = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tf = fmul <2 x double> %i.te, %i.td          ; 2 uses
  %i.tg = fmul double %i.su, 2.000000e+00         ; 2 uses
  %i.th = fmul double %i.ta, 4.000000e+00
  %i.ti = fmul double %i.ta, %i.th
  %i.tj = fmul double %i.ta, %i.ti
  %i.tk = fmul double %i.ta, %i.tj
  %i.tl = fmul double %i.sy, %i.sv
  %i.tm = fmul double %i.sz, %i.tg
  %i.tn = fmul double %i.sz, %i.tm
  %i.to = extractelement <2 x double> %i.qx, i64 0 ; 9 uses
  %i.tp = fneg double %i.to                       ; 3 uses
  %i.tq = insertelement <2 x double> <double poison, double 6.000000e+00>, double %i.tk, i64 0
  %i.tr = fmul <2 x double> %i.tq, %i.st          ; 2 uses
  %i.ts = shufflevector <2 x double> %i.sx, <2 x double> %i.st, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.tt = fmul <2 x double> %i.ts, %i.tr
  %i.tu = fmul <2 x double> %i.sx, %i.tt
  %i.tv = fmul double %i.ta, 6.000000e+00
  %i.tw = fmul double %i.ta, %i.tv
  %i.tx = fmul double %i.ta, %i.tw
  %i.ty = fmul double %i.ta, %i.tx
  %i.tz = insertelement <2 x double> %i.qx, double %i.ty, i64 0
  %i.ua = shufflevector <2 x double> %i.st, <2 x double> %i.tf, <2 x i32> <i32 0, i32 2>
  %i.ub = fmul <2 x double> %i.tz, %i.ua
  %i.uc = shufflevector <2 x double> %i.st, <2 x double> %i.qx, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ud = fmul <2 x double> %i.uc, %i.ub          ; 2 uses
  %shift = shufflevector <2 x double> %i.ud, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.sx, %shift
  %i.ue = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.uf = shufflevector <2 x double> %i.sx, <2 x double> %i.st, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ug = fmul <2 x double> %i.uf, %i.ud          ; 2 uses
  %foldExtExtBinop739 = fmul <2 x double> %i.sx, %i.ug
  %i.uh = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ui = shufflevector <2 x double> %i.st, <2 x double> %i.sx, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.uj = insertelement <2 x double> poison, double %i.tl, i64 0
  %i.uk = shufflevector <2 x double> %i.st, <2 x double> %i.sx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ul = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = shufflevector <2 x double> %i.qx, <2 x double> %i.sx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.un = insertelement <2 x double> %i.sx, double %i.tp, i64 1 ; 2 uses
  %i.uo = shufflevector <2 x double> %i.sx, <2 x double> %i.qx, <2 x i32> <i32 0, i32 2>
  %i.up = fmul <2 x double> %i.uc, %i.tf          ; 2 uses
  %i.uq = shufflevector <2 x double> %i.qx, <2 x double> %i.st, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ur = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.us = insertelement <2 x double> %i.ur, double %i.tn, i64 0
  %i.ut = fmul <2 x double> %i.uq, %i.us
  %i.uu = shufflevector <2 x double> %i.un, <2 x double> %i.qx, <2 x i32> <i32 1, i32 2>
  %i.uv = fmul <2 x double> %i.ut, %i.uu
  %i.uw = shufflevector <2 x double> %i.sx, <2 x double> %i.qx, <2 x i32> <i32 1, i32 2>
  %i.ux = fmul <2 x double> %i.qx, %i.up
  %i.uy = fmul <2 x double> %i.uq, %i.ux
  %i.uz = fmul double %i.su, %i.sz
  %i.va = fmul double %i.sz, %i.uz
  %i.vb = fneg <2 x double> %i.st                 ; 2 uses
  %i.vc = shufflevector <2 x double> %i.sx, <2 x double> %i.vb, <2 x i32> <i32 3, i32 1>
  %i.vd = fmul <2 x double> %i.sx, %i.vc          ; 2 uses
  %i.ve = fmul <2 x double> %i.uf, %i.vd          ; 3 uses
  %i.vf = extractelement <2 x double> %i.ve, i64 1 ; 2 uses
  %i.vg = fmul double %i.sz, %i.vf
  %foldExtExtBinop741 = fmul <2 x double> %i.sx, %i.vd
  %foldExtExtBinop743 = fmul <2 x double> %i.sx, %foldExtExtBinop741
  %i.vh = shufflevector <2 x double> %i.sx, <2 x double> %i.st, <2 x i32> <i32 1, i32 2>
  %i.vi = insertelement <2 x double> poison, double %i.vg, i64 0
  %i.vj = fmul double %i.to, %i.vf
  %i.vk = fmul double %i.to, %i.vj
  %i.vl = shufflevector <2 x double> %i.st, <2 x double> %i.qx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.vm = insertelement <2 x double> <double 4.000000e+00, double poison>, double %i.tb, i64 1
  %i.vn = fmul <2 x double> %i.vl, %i.vm          ; 2 uses
  %i.vo = fmul <2 x double> %i.vl, %i.vn          ; 3 uses
  %i.vp = shufflevector <2 x double> %i.qx, <2 x double> %i.st, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.vq = insertelement <2 x double> %i.st, double %i.vk, i64 0
  %i.vr = fmul <2 x double> %i.vp, %i.vq          ; 2 uses
  %i.vs = insertelement <2 x double> %i.vn, double %i.tg, i64 1
  %i.vt = fmul <2 x double> %i.tc, %i.vs          ; 3 uses
  %i.vu = shufflevector <2 x double> %i.vo, <2 x double> %i.qx, <2 x i32> <i32 1, i32 3>
  %i.vv = shufflevector <2 x double> %i.sx, <2 x double> %i.vt, <2 x i32> <i32 0, i32 3>
  %i.vw = fmul <2 x double> %i.vu, %i.vv          ; 2 uses
  %foldExtExtBinop745 = fmul <2 x double> %i.sx, %i.vw
  %i.vx = fmul <2 x double> %i.um, %i.vt          ; 2 uses
  %i.vy = fmul <2 x double> %i.um, %i.vx          ; 2 uses
  %i.vz = fmul <2 x double> %i.un, %i.vy
  %i.wa = shufflevector <2 x double> %i.td, <2 x double> %i.sx, <2 x i32> <i32 0, i32 3>
  %i.wb = fmul <2 x double> %i.wa, <double 1.000000e+00, double 4.000000e+00>
  %i.wc = shufflevector <2 x double> %i.st, <2 x double> %i.sx, <2 x i32> <i32 0, i32 3>
  %i.wd = fmul <2 x double> %i.wc, %i.wb
  %i.we = fmul <2 x double> %i.uc, %i.wd
  %i.wf = fmul <2 x double> %i.qx, %i.we
  %i.wg = shufflevector <2 x double> %i.qx, <2 x double> %i.st, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wh = fmul <2 x double> %i.wg, %i.wf
  %i.wi = fmul <2 x double> %i.uk, %i.wh
  %i.wj = shufflevector <2 x double> %i.st, <2 x double> %i.sx, <2 x i32> <i32 1, i32 3>
  %i.wk = shufflevector <2 x double> %i.vo, <2 x double> %i.vt, <2 x i32> <i32 0, i32 2>
  %i.wl = fmul <2 x double> %i.wj, %i.wk
  %i.wm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.te, <2 x double> %i.wi) ; 2 uses
  %i.wn = shufflevector <2 x double> %i.wm, <2 x double> %foldExtExtBinop739, <2 x i32> <i32 1, i32 2>
  %i.wo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.sx, <2 x double> %i.wn)
  %i.wp = shufflevector <2 x double> %i.qx, <2 x double> %i.st, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.wq = fmul <2 x double> %i.wp, %i.vo
  %i.wr = fmul <2 x double> %i.wp, %i.wq
  %i.ws = fmul <2 x double> %i.uh, %i.wr
  %i.wt = shufflevector <2 x double> %i.qx, <2 x double> %i.sx, <2 x i32> <i32 1, i32 2>
  %i.wu = shufflevector <2 x double> %i.vw, <2 x double> %i.vr, <2 x i32> <i32 1, i32 3>
  %i.wv = fmul <2 x double> %i.wt, %i.wu          ; 3 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 1 ; 2 uses
  %i.wx = fneg double %i.ww                       ; 2 uses
  %i.wy = insertelement <2 x double> %i.ug, double %i.wx, i64 0
  %i.wz = shufflevector <2 x double> %i.uj, <2 x double> %i.wv, <2 x i32> <i32 0, i32 2>
  %i.xa = fmul <2 x double> %i.ui, %i.wz          ; 2 uses
  %i.xb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wy, <2 x double> %i.uh, <2 x double> %i.wo)
  %i.xc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xa, <2 x double> %i.uk, <2 x double> %i.xb)
  %i.xd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %i.uo, <2 x double> %i.xc)
  %i.xe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> %i.uw, <2 x double> %i.xd)
  %i.xf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uy, <2 x double> %i.ul, <2 x double> %i.xe)
  %i.xg = fmul <2 x double> %i.ui, %i.wv
  %i.xh = shufflevector <2 x double> %i.st, <2 x double> %i.qx, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.xi = fmul <2 x double> %i.xh, %i.xg          ; 2 uses
  %i.xj = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xk = shufflevector <2 x double> %i.vx, <2 x double> %i.xi, <2 x i32> <i32 1, i32 3>
  %i.xl = fmul <2 x double> %i.xj, %i.xk
  %i.xm = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.xn = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xo = fmul <2 x double> %i.xl, %i.xn
  %foldExtExtBinop747 = fmul <2 x double> %i.qx, %i.xa
  %foldExtExtBinop749 = fmul <2 x double> %i.qx, %foldExtExtBinop747
  %i.xp = fmul double %i.to, %i.ww
  %i.xq = fmul double %i.to, %i.xp
  %i.xr = fmul double %i.to, %i.xq
end_hunk_1
