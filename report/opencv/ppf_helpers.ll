Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_helpers?download=true
inline.NumInlined: 5005
inline.NumDeleted: 1814
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE:bb.a
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.ci, double %i.cm)
  %i.cp = load double, ptr %i.am, align 8, !tbaa !164, !noalias !670
  %i.cq = call double @llvm.fmuladd.f64(double %i.cp, double %i.ck, double %i.co)
  %i.cr = load double, ptr %i.an, align 8, !tbaa !164, !noalias !670
  %i.cs = fadd double %i.cr, %i.cq                ; 2 uses
  %i.ct = call double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp ogt double %i.ct, f0x3E80000000000000
  br i1 %i.cu, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.cv = load double, ptr %i.ao, align 8, !tbaa !164, !noalias !670
  %i.cw = load double, ptr %i.ap, align 8, !tbaa !164, !noalias !670
  %i.cx = load double, ptr %i.aq, align 8, !tbaa !164, !noalias !670
  %i.cy = load double, ptr %i.ar, align 8, !tbaa !164, !noalias !670
  %i.cz = call double @llvm.fmuladd.f64(double %i.cy, double %i.cg, double 0.000000e+00)
  %i.da = call double @llvm.fmuladd.f64(double %i.cx, double %i.ci, double %i.cz)
  %i.db = call double @llvm.fmuladd.f64(double %i.cw, double %i.ck, double %i.da)
  %i.dc = fadd double %i.cv, %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  %i.dd = fdiv double 1.000000e+00, %i.cs         ; 2 uses
  %i.de = load <8 x double>, ptr %2, align 8, !tbaa !164, !noalias !670 ; 4 uses
  %i.df = shufflevector <8 x double> %i.de, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dg = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dh, <2 x double> zeroinitializer)
  %i.dj = shufflevector <8 x double> %i.de, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.dk = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dl, <2 x double> %i.di)
  %i.dn = shufflevector <8 x double> %i.de, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.do = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.dp, <2 x double> %i.dm)
  %i.dr = shufflevector <8 x double> %i.de, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ds = fadd <2 x double> %i.dr, %i.dq
  %i.dt = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.du, %i.ds
  store <2 x double> %i.dv, ptr %39, align 16, !tbaa !164, !alias.scope !671
  %i.dw = fmul double %i.dd, %i.dc
  store double %i.dw, ptr %i.as, align 16, !tbaa !164, !alias.scope !671
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %38, align 16, !tbaa !121
  store i32 153, ptr %i.at, align 16, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.av, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc55 unwind label %bb.aa

.noexc55:                                         ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aw, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef 0)
          to label %.noexc56 unwind label %bb.aa

.noexc56:                                         ; preds = %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store i64 0, ptr %i.ay, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !116
  store ptr %38, ptr %i.ax, align 8, !tbaa !117
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %.noexc56
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.body57

bb.v:                                             ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(208) %38, i32 noundef 1, i32 noundef 1)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !672
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dy, ptr %11, align 4, !tbaa !112, !noalias !672
  %i.dz = trunc i64 %indvars.iv to i32
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.az, align 4, !tbaa !113, !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !672
  store i64 9223372034707292160, ptr %12, align 8, !noalias !672
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33, !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !673
  store i64 9223372034707292160, ptr %9, align 8, !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !673
  store i32 0, ptr %10, align 4, !tbaa !112, !noalias !673
  store i32 3, ptr %i.ba, align 4, !tbaa !113, !noalias !673
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33, !noalias !673
  store i64 0, ptr %i.bc, align 8
  store i32 -1040121856, ptr %40, align 8, !tbaa !116
  store ptr %41, ptr %i.bb, align 8, !tbaa !117
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %bb.ai

bb.aa:                                            ; preds = %.noexc55, %bb.t
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.ab:                                            ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.w
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.x
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #33
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.ae ], [ %i.ee, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.ed, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ag ], [ %i.ec, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #33
  br label %.body57

.body57:                                          ; preds = %bb.aa, %bb.u, %bb.ah
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ah ], [ %i.eb, %bb.aa ], [ %i.dx, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %.body

bb.ai:                                            ; preds = %bb.z, %bb.s
  %i.eg = load i32, ptr %i.c, align 4, !tbaa !109
  %i.eh = icmp eq i32 %i.eg, 6
  br i1 %i.eh, label %bb.aj, label %bb.az

bb.aj:                                            ; preds = %bb.ai
  %i.ei = fpext float %i.ca to double             ; 2 uses
  %i.ej = fpext float %i.cb to double             ; 2 uses
  %i.ek = fpext float %i.cc to double             ; 2 uses
  %i.el = load <4 x double>, ptr %35, align 8, !tbaa !164, !noalias !674 ; 3 uses
  %i.em = shufflevector <4 x double> %i.el, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.en = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.eo, <2 x double> zeroinitializer)
  %i.eq = load <2 x double>, ptr %i.bd, align 8, !tbaa !164, !noalias !674
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.es = shufflevector <4 x double> %i.el, <4 x double> %i.er, <2 x i32> <i32 1, i32 4>
  %i.et = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.ep)
  %i.ew = shufflevector <4 x double> %i.el, <4 x double> %i.er, <2 x i32> <i32 2, i32 5>
  %i.ex = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.ev) ; 4 uses
  %i.fa = load double, ptr %i.be, align 8, !tbaa !164, !noalias !674
  %i.fb = call double @llvm.fmuladd.f64(double %i.fa, double %i.ei, double 0.000000e+00)
  %i.fc = load double, ptr %i.bf, align 8, !tbaa !164, !noalias !674
  %i.fd = call double @llvm.fmuladd.f64(double %i.fc, double %i.ej, double %i.fb)
  %i.fe = load double, ptr %i.bg, align 8, !tbaa !164, !noalias !674
  %i.ff = call double @llvm.fmuladd.f64(double %i.fe, double %i.ek, double %i.fd) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.ez, %i.ez
  %49 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fg = extractelement <2 x double> %i.ez, i64 1 ; 2 uses
  %i.fh = call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %49)
  %i.fi = call double @llvm.fmuladd.f64(double %i.ff, double %i.ff, double %i.fh)
  %sqrt = call double @llvm.sqrt.f64(double %i.fi) ; 2 uses
  %i.fj = fcmp ogt double %sqrt, f0x3E80000000000000
  br i1 %i.fj, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  %i.fk = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.fl = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x double> %i.ez, %i.fm
  store <2 x double> %i.fn, ptr %45, align 16, !tbaa !164, !alias.scope !675
  %i.fo = fmul double %i.ff, %i.fk
  store double %i.fo, ptr %i.bh, align 16, !tbaa !164, !alias.scope !675
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %44, align 16, !tbaa !121
  store i32 153, ptr %i.bi, align 16, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc61 unwind label %bb.ar

.noexc61:                                         ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bl, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef 0)
          to label %.noexc62 unwind label %bb.ar

.noexc62:                                         ; preds = %.noexc61
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i64 0, ptr %i.bn, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !116
  store ptr %44, ptr %i.bm, align 8, !tbaa !117
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %.noexc62
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.body63

bb.am:                                            ; preds = %.noexc62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %43, ptr noundef nonnull align 8 dereferenceable(208) %44, i32 noundef 1, i32 noundef 1)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !676
  %i.fq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.fq, ptr %5, align 4, !tbaa !112, !noalias !676
  %i.fr = trunc i64 %indvars.iv to i32
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.bo, align 4, !tbaa !113, !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !676
  store i64 9223372034707292160, ptr %6, align 8, !noalias !676
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !676
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !676
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !677
  store i64 9223372034707292160, ptr %3, align 8, !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !677
  store i32 3, ptr %4, align 4, !tbaa !112, !noalias !677
  store i32 6, ptr %i.bp, align 4, !tbaa !113, !noalias !677
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !677
  store i64 0, ptr %i.br, align 8
  store i32 -1040121856, ptr %46, align 8, !tbaa !116
  store ptr %47, ptr %i.bq, align 8, !tbaa !117
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(24) %46, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %bb.az

bb.ar:                                            ; preds = %.noexc61, %bb.ak
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.as:                                            ; preds = %bb.am
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.ao
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ap
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %47) #33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn39.pn = phi { ptr, i32 } [ %i.fx, %bb.av ], [ %i.fw, %bb.au ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #33
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %bb.aw ], [ %i.fv, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %43) #33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.ax ], [ %i.fu, %bb.as ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #33
  br label %.body63

.body63:                                          ; preds = %bb.ar, %bb.al, %bb.ay
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn.pn, %bb.ay ], [ %i.ft, %bb.ar ], [ %i.fp, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %.body

bb.az:                                            ; preds = %bb.aj, %bb.aq, %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !108
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next, %i.fz
  br i1 %i.ga, label %bb.s, label %._crit_edge, !llvm.loop !665

.body:                                            ; preds = %.body57, %.body63, %bb.r, %bb.q, %bb.j, %bb.i, %bb.b
  %.pn39.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.i ], [ %i.bs, %bb.r ], [ %.pn.pn.pn.i, %bb.q ], [ %i.y, %bb.j ], [ %i.k, %bb.b ], [ %.pn39.pn.pn.pn.pn, %.body63 ], [ %.pn.pn.pn.pn.pn, %.body57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #33
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12ppf_match_3d12genRandomMatEiiddi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %12 = alloca %"class.cv::RNG", align 8          ; 5 uses
  %13 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i32 noundef 1, i32 noundef 1, i32 noundef %5)
  invoke void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, double noundef %3, ptr noundef nonnull align 8 dereferenceable(688) %8)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #33
  %i.a = load ptr, ptr %7, align 8, !tbaa !172, !noalias !682 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
end_hunk_0
begin_hunk_1_@_ZN2cv12ppf_match_3d12genRandomMatEiiddi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #33
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #33
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #33
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #33
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #33
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %11, i32 noundef 1, i32 noundef 1, i32 noundef %5)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  invoke void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, double noundef %4, ptr noundef nonnull align 8 dereferenceable(688) %11)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #33
  %i.l = load ptr, ptr %10, align 8, !tbaa !172, !noalias !683 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit31 unwind label %.body29

.body29:                                          ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #33
  br label %bb.k

_ZNK2cv7MatExprcvNS_3MatEEv.exit31:               ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #33
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #33
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.s) #33
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #33
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #33
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.w = call i64 @time(ptr noundef null) #33     ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not.i, i64 4294967295, i64 %i.w
  store i64 %i.x, ptr %12, align 8, !tbaa !175
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %5)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 50397184, ptr %13, align 8, !tbaa !116
  store ptr %0, ptr %i.y, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !166
  store i32 16842752, ptr %14, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %6, ptr %i.ac, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !166
  store i32 16842752, ptr %15, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %9, ptr %i.af, align 8, !tbaa !117
  invoke void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.e, %.body ], [ %i.ag, %bb.g ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.q

bb.i:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.body29, %bb.j
  %.pn19 = phi { ptr, i32 } [ %i.p, %.body29 ], [ %i.ai, %bb.j ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.k ], [ %i.ah, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.p

bb.m:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit31
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn, %bb.o ], [ %.pn19.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn, %bb.p ], [ %.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #6

declare void @_ZN2cv3Mat4onesEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #1

declare void @_ZN2cv3RNG4fillERKNS_17_InputOutputArrayEiRKNS_11_InputArrayES6_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv12ppf_match_3d11getRandQuatERNS_3VecIdLi4EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @rand() #33
  %i.b = sitofp i32 %i.a to float
  %i.c = fmul nnan float %i.b, f0x30000000
  %i.d = fpext float %i.c to double
  store double %i.d, ptr %0, align 8, !tbaa !164
  %i.e = tail call i32 @rand() #33
  %i.f = sitofp i32 %i.e to float
  %i.g = fmul nnan float %i.f, f0x30000000
  %i.h = fpext float %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store double %i.h, ptr %i.i, align 8, !tbaa !164
  %i.j = tail call i32 @rand() #33
  %i.k = sitofp i32 %i.j to float
  %i.l = fmul nnan float %i.k, f0x30000000
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.m, ptr %i.n, align 8, !tbaa !164
  %i.o = tail call i32 @rand() #33
  %i.p = sitofp i32 %i.o to float
  %i.q = fmul nnan float %i.p, f0x30000000
  %i.r = fpext float %i.q to double               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load double, ptr %0, align 8, !tbaa !164 ; 3 uses
  %1 = fmul double %i.t, %i.t
  %i.u = load double, ptr %i.i, align 8, !tbaa !164 ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %1)
  %i.w = load double, ptr %i.n, align 8, !tbaa !164 ; 3 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.v)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.x)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.y)
  %i.z = fdiv double 1.000000e+00, %sqrt          ; 4 uses
  %i.aa = fmul double %i.t, %i.z
  %i.ab = fmul double %i.u, %i.z
  store double %i.ab, ptr %i.i, align 8, !tbaa !164
  %i.ac = fmul double %i.w, %i.z
  store double %i.ac, ptr %i.n, align 8, !tbaa !164
  %i.ad = fmul double %i.z, %i.r
  store double %i.ad, ptr %i.s, align 8, !tbaa !164
  %i.ae = tail call double @llvm.fabs.f64(double %i.aa)
  store double %i.ae, ptr %0, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv12ppf_match_3d17getRandomRotationERNS_4MatxIdLi3ELi3EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @rand() #33
  %i.b = sitofp i32 %i.a to float
  %i.c = fmul nnan float %i.b, f0x30000000
  %i.d = fpext float %i.c to double               ; 3 uses
  %i.e = tail call i32 @rand() #33
  %i.f = sitofp i32 %i.e to float
  %i.g = fmul nnan float %i.f, f0x30000000
  %i.h = fpext float %i.g to double               ; 3 uses
  %i.i = tail call i32 @rand() #33
  %i.j = sitofp i32 %i.i to float
  %i.k = fmul nnan float %i.j, f0x30000000
  %i.l = fpext float %i.k to double               ; 3 uses
  %i.m = tail call i32 @rand() #33
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x30000000
  %i.p = fpext float %i.o to double               ; 3 uses
  %1 = fmul nnan double %i.d, %i.d
  %i.q = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %1)
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.q)
  %i.s = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.r)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.s)
  %i.t = fdiv double 1.000000e+00, %sqrt.i        ; 4 uses
  %i.u = fmul double %i.t, %i.d                   ; 3 uses
  %i.v = fmul double %i.t, %i.h                   ; 5 uses
  %i.w = fmul double %i.t, %i.l                   ; 5 uses
  %i.x = fmul double %i.t, %i.p                   ; 5 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.u) ; 3 uses
  %i.z = fmul double %i.u, %i.u                   ; 2 uses
  %i.aa = fmul double %i.v, %i.v                  ; 2 uses
  %i.ab = fmul double %i.w, %i.w                  ; 3 uses
  %i.ac = fmul double %i.x, %i.x                  ; 3 uses
  %i.ad = fadd double %i.z, %i.aa
  %i.ae = fsub double %i.ad, %i.ab
  %i.af = fsub double %i.ae, %i.ac
  store double %i.af, ptr %0, align 8, !tbaa !164
  %i.ag = fsub double %i.z, %i.aa                 ; 2 uses
  %i.ah = fadd double %i.ab, %i.ag
  %i.ai = fsub double %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ai, ptr %i.aj, align 8, !tbaa !164
  %i.ak = fsub double %i.ag, %i.ab
  %i.al = fadd double %i.ac, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.al, ptr %i.am, align 8, !tbaa !164
  %i.an = fmul double %i.v, %i.w                  ; 2 uses
  %i.ao = fmul double %i.x, %i.y                  ; 2 uses
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fmul double %i.ap, 2.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aq, ptr %i.ar, align 8, !tbaa !164
  %i.as = fsub double %i.an, %i.ao
  %i.at = fmul double %i.as, 2.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.at, ptr %i.au, align 8, !tbaa !164
  %i.av = fmul double %i.v, %i.x                  ; 2 uses
  %i.aw = fmul double %i.w, %i.y                  ; 2 uses
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = fmul double %i.ax, 2.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ay, ptr %i.az, align 8, !tbaa !164
  %i.ba = fadd double %i.av, %i.aw
  %i.bb = fmul double %i.ba, 2.000000e+00
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.bb, ptr %i.bc, align 8, !tbaa !164
  %i.bd = fmul double %i.w, %i.x                  ; 2 uses
  %i.be = fmul double %i.v, %i.y                  ; 2 uses
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fmul double %i.bf, 2.000000e+00
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bg, ptr %i.bh, align 8, !tbaa !164
  %i.bi = fsub double %i.bd, %i.be
  %i.bj = fmul double %i.bi, 2.000000e+00
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bj, ptr %i.bk, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13getRandomPoseERNS_4MatxIdLi4ELi4EEE(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Matx.36", align 8       ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::Matx.37", align 8       ; 5 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Matx.19", align 8       ; 12 uses
  %10 = alloca %"class.cv::Vec.20", align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.a = tail call i64 @time(ptr noundef null) #33
  %i.b = trunc i64 %i.a to i32
  tail call void @srand(i32 noundef %i.b) #33
  %i.c = tail call i32 @rand() #33
  %i.d = sitofp i32 %i.c to float
  %i.e = fmul nnan float %i.d, f0x30000000
  %i.f = fpext float %i.e to double               ; 3 uses
  %i.g = tail call i32 @rand() #33
  %i.h = sitofp i32 %i.g to float
  %i.i = fmul nnan float %i.h, f0x30000000
  %i.j = fpext float %i.i to double               ; 3 uses
  %i.k = tail call i32 @rand() #33
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x30000000
  %i.n = fpext float %i.m to double               ; 3 uses
  %i.o = tail call i32 @rand() #33
  %i.p = sitofp i32 %i.o to float
  %i.q = fmul nnan float %i.p, f0x30000000
  %i.r = fpext float %i.q to double               ; 3 uses
  %11 = fmul nnan double %i.f, %i.f
  %i.s = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %11)
  %i.t = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.s)
  %i.u = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.t)
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.u)
  %i.v = fdiv double 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.w = fmul double %i.v, %i.f                   ; 3 uses
  %i.x = fmul double %i.v, %i.j                   ; 5 uses
  %i.y = fmul double %i.v, %i.n                   ; 5 uses
  %i.z = fmul double %i.v, %i.r                   ; 5 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.w) ; 3 uses
  %i.ab = fmul double %i.w, %i.w                  ; 2 uses
  %i.ac = fmul double %i.x, %i.x                  ; 2 uses
  %i.ad = fmul double %i.y, %i.y                  ; 3 uses
  %i.ae = fmul double %i.z, %i.z                  ; 3 uses
  %i.af = fadd double %i.ab, %i.ac
  %i.ag = fsub double %i.af, %i.ad
  %i.ah = fsub double %i.ag, %i.ae
  store double %i.ah, ptr %9, align 8, !tbaa !164
  %i.ai = fsub double %i.ab, %i.ac                ; 2 uses
  %i.aj = fadd double %i.ad, %i.ai
  %i.ak = fsub double %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  store double %i.ak, ptr %i.al, align 8, !tbaa !164
  %i.am = fsub double %i.ai, %i.ad
  %i.an = fadd double %i.ae, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 64
  store double %i.an, ptr %i.ao, align 8, !tbaa !164
  %i.ap = fmul double %i.x, %i.y                  ; 2 uses
  %i.aq = fmul double %i.z, %i.aa                 ; 2 uses
  %i.ar = fadd double %i.ap, %i.aq
  %i.as = fmul double %i.ar, 2.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.as, ptr %i.at, align 8, !tbaa !164
  %i.au = fsub double %i.ap, %i.aq
  %i.av = fmul double %i.au, 2.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.av, ptr %i.aw, align 8, !tbaa !164
  %i.ax = fmul double %i.x, %i.z                  ; 2 uses
  %i.ay = fmul double %i.y, %i.aa                 ; 2 uses
  %i.az = fsub double %i.ax, %i.ay
  %i.ba = fmul double %i.az, 2.000000e+00
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.ba, ptr %i.bb, align 8, !tbaa !164
  %i.bc = fadd double %i.ax, %i.ay
  %i.bd = fmul double %i.bc, 2.000000e+00
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 48
  store double %i.bd, ptr %i.be, align 8, !tbaa !164
  %i.bf = fmul double %i.y, %i.z                  ; 2 uses
  %i.bg = fmul double %i.x, %i.aa                 ; 2 uses
  %i.bh = fadd double %i.bf, %i.bg
  %i.bi = fmul double %i.bh, 2.000000e+00
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40
  store double %i.bi, ptr %i.bj, align 8, !tbaa !164
  %i.bk = fsub double %i.bf, %i.bg
  %i.bl = fmul double %i.bk, 2.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store double %i.bl, ptr %i.bm, align 8, !tbaa !164
  %i.bn = tail call i32 @rand() #33
  %i.bo = tail call i32 @rand() #33
  %i.bp = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.bo, i64 1
  %i.br = sitofp <2 x i32> %i.bq to <2 x float>
  %i.bs = fmul nnan <2 x float> %i.br, splat (float f0x30000000)
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  store <2 x double> %i.bt, ptr %10, align 16, !tbaa !164
  %i.bu = tail call i32 @rand() #33
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fmul nnan float %i.bv, f0x30000000
  %i.bx = fpext float %i.bw to double
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.bx, ptr %i.by, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false), !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %9, ptr %i.ca, align 8, !tbaa !117
  store i64 12884901891, ptr %i.bz, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833530, ptr %3, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %10, ptr %i.cc, align 8, !tbaa !117
  store i64 12884901889, ptr %i.cb, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1040056314, ptr %4, align 8, !tbaa !116
  store ptr %1, ptr %i.cd, align 8, !tbaa !117
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 12884901892, ptr %i.ce, align 8, !tbaa !121
  call void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.cg, align 8, !tbaa !117
  store i64 12884901892, ptr %i.cf, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ch, align 8, !tbaa !164
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.cj, align 8, !tbaa !117
  store i64 4294967300, ptr %i.ci, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056314, ptr %8, align 8, !tbaa !116
  store ptr %0, ptr %i.ck, align 8, !tbaa !117
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 17179869188, ptr %i.cl, align 8, !tbaa !121
  call void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret void
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d10addNoisePCENS_3MatEd(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef align 8 %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109
  call void @_ZN2cv12ppf_match_3d12genRandomMatEiiddi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, i32 noundef %i.b, i32 noundef %i.d, double noundef 0.000000e+00, double noundef %2, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #33
  %i.e = load ptr, ptr %4, align 8, !tbaa !172, !noalias !686 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(688) %4, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #33
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %4) #33
  br label %bb.d

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #33
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #33
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %.body ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12ppf_match_3d14meanCovLocalPCERKNS_3MatEiRNS_4MatxIdLi3ELi3EEERNS_3VecIdLi3EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
end_hunk_1
