Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpfield?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN2cv6dynafu9WarpField14initTransformsESt6vectorINS_3PtrINS0_8WarpNodeEEESaIS5_EE:bb.a
  %.lcssa.unr = phi ptr [ poison, %.noexc73 ], [ %i.dj, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.dc, %.noexc73 ], [ %i.dj, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc73 ], [ %i.di, %.lr.ph.i.i.i.i.i.prol ]
  %i.dk = icmp ult i64 %i.cg, 4
  br i1 %i.dk, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dl, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %.013.i.i.i.i.i, align 4, !tbaa !145, !alias.scope !623
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store float 1.000000e+00, ptr %i.dm, align 4, !tbaa !145, !alias.scope !623
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store float 1.000000e+00, ptr %i.dn, align 4, !tbaa !145, !alias.scope !623
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store float 1.000000e+00, ptr %i.do, align 4, !tbaa !145, !alias.scope !623
  %i.dp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dq, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.dp, align 4, !tbaa !145, !alias.scope !623
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 84
  store float 1.000000e+00, ptr %i.dr, align 4, !tbaa !145, !alias.scope !623
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store float 1.000000e+00, ptr %i.ds, align 4, !tbaa !145, !alias.scope !623
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 124
  store float 1.000000e+00, ptr %i.dt, align 4, !tbaa !145, !alias.scope !623
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dv, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !145, !alias.scope !623
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 148
  store float 1.000000e+00, ptr %i.dw, align 4, !tbaa !145, !alias.scope !623
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !145, !alias.scope !623
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 188
  store float 1.000000e+00, ptr %i.dy, align 4, !tbaa !145, !alias.scope !623
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.dz, align 4, !tbaa !145, !alias.scope !623
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 212
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !145, !alias.scope !623
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 232
  store float 1.000000e+00, ptr %i.ec, align 4, !tbaa !145, !alias.scope !623
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 252
  store float 1.000000e+00, ptr %i.ed, align 4, !tbaa !145, !alias.scope !623
  %i.ee = add nsw i64 %.01012.i.i.i.i.i, -4       ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i71.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i.i.i71.3, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !610

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ef, %.lr.ph.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.am, align 8, !tbaa !624
  %i.eg = load ptr, ptr %9, align 8, !tbaa !197
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !131
  br label %bb.y

._crit_edge:                                      ; preds = %bb.y, %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Affine3") align 4 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.preheader unwind label %bb.aa

.preheader:                                       ; preds = %._crit_edge
  %i.eh = load ptr, ptr %i.am, align 8, !tbaa !624 ; 2 uses
  %i.ei = load ptr, ptr %10, align 8, !tbaa !621  ; 5 uses
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %.not283 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not283, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ek, %i.ej
  %i.em = ashr exact i64 %i.el, 6
  %i.en = load ptr, ptr %9, align 8, !tbaa !197
  br label %bb.z

.loopexit170:                                     ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

.loopexit171:                                     ; preds = %bb.m
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread

.loopexit.split-lp172:                            ; preds = %bb.l
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread

bb.x:                                             ; preds = %bb.q, %_ZN7cvflann12SearchParamsC2Eifb.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %bb.o, %bb.x
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.x ], [ %i.cc, %bb.o ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit91

.loopexit176:                                     ; preds = %bb.u
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

.loopexit.split-lp177:                            ; preds = %bb.t
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

.loopexit181:                                     ; preds = %_ZNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EEC2EmRKS3_.exit.i
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85

.loopexit.split-lp182:                            ; preds = %bb.w
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.035266 = phi i64 [ 0, %.lr.ph ], [ %i.fm, %bb.y ] ; 3 uses
  %.sroa.0124.0265 = phi ptr [ %.sroa.0149.0385397, %.lr.ph ], [ %i.fo, %bb.y ] ; 2 uses
  %i.ep = load i32, ptr %.sroa.0124.0265, align 4, !tbaa !124
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !139 ; 5 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !145 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %i.bw, align 4, !tbaa !145
  %i.et = load float, ptr %i.es, align 4, !tbaa !625
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %i.eu = fsub float %i.et, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !626
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %i.ex = fsub float %i.ew, %.sroa.0.4.vec.extract.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !200
  %i.fa = fsub float %i.ez, %.sroa.24.0.copyload  ; 2 uses
  %i.fb = fmul float %i.ex, %i.ex
  %i.fc = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.fb)
  %i.fd = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fc)
  %i.fe = fneg float %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !186
  %i.fh = fmul float %i.fg, 2.000000e+00
  %i.fi = fdiv float %i.fe, %i.fh
  %i.fj = call noundef float @expf(float noundef %i.fi) #35
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.035266
  store float %i.fj, ptr %i.fk, align 4, !tbaa !145
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fm = add nuw nsw i64 %.035266, 1
  %i.fn = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %.035266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.fn, ptr noundef nonnull align 4 dereferenceable(64) %i.fl, i64 64, i1 false), !tbaa.struct !207
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0124.0265, i64 4 ; 2 uses
  %.not168 = icmp eq ptr %i.fo, %.0.i.i.i.i.i391396
  br i1 %.not168, label %._crit_edge, label %bb.y

bb.z:                                             ; preds = %.lr.ph272, %bb.z
  %.136270 = phi i64 [ 0, %.lr.ph272 ], [ %i.gg, %bb.z ] ; 3 uses
  %i.fp = phi <4 x float> [ zeroinitializer, %.lr.ph272 ], [ %i.gf, %bb.z ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.136270
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.ei, i64 %.136270 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !145, !noalias !627
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !145, !noalias !627
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 44
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !145, !noalias !627
  %i.fy = load float, ptr %i.fq, align 4, !tbaa !145
  %i.fz = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fx, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fv, i64 1
  %i.gd = insertelement <4 x float> %i.gc, float %i.ft, i64 2
  %i.ge = fmul <4 x float> %i.ga, %i.gd
  %i.gf = fadd <4 x float> %i.fp, %i.ge           ; 2 uses
  %i.gg = add nuw i64 %.136270, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gg, %i.em
  br i1 %exitcond.not, label %._crit_edge273, label %bb.z, !llvm.loop !613

bb.aa:                                            ; preds = %._crit_edge
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.gi = load ptr, ptr %10, align 8, !tbaa !621  ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85, label %bb.al

._crit_edge273:                                   ; preds = %bb.z, %.preheader
  %i.gj = phi <4 x float> [ zeroinitializer, %.preheader ], [ %i.gf, %bb.z ] ; 4 uses
  %i.gk = extractelement <4 x float> %i.gj, i64 3 ; 2 uses
  %i.gl = fpext float %i.gk to double
  %i.gm = fcmp olt double %i.gl, 1.000000e-05     ; 3 uses
  %i.gn = fdiv float 1.000000e+00, %i.gk          ; 3 uses
  %i.go = extractelement <4 x float> %i.gj, i64 2
  %i.gp = fmul float %i.go, %i.gn
  %12 = extractelement <4 x float> %i.gj, i64 1
  %13 = fmul float %12, %i.gn
  %i.gq = extractelement <4 x float> %i.gj, i64 0
  %14 = fmul float %i.gq, %i.gn
  %.sroa.17120.1 = select i1 %i.gm, float 0.000000e+00, float %14
  %.sroa.10117.1 = select i1 %i.gm, float 0.000000e+00, float %13
  %.sroa.0114.1 = select i1 %i.gm, float 0.000000e+00, float %i.gp
  %i.gr = load float, ptr %i.ao, align 8, !tbaa !145, !noalias !628
  %i.gs = load float, ptr %i.aq, align 8, !tbaa !145, !noalias !628
  %i.gt = load float, ptr %i.as, align 8, !tbaa !145, !noalias !628
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.gv = load <2 x float>, ptr %11, align 8, !tbaa !145, !noalias !628
  %.sroa.798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.gw = load <2 x float>, ptr %i.ap, align 8, !tbaa !145, !noalias !628
  %.sroa.11100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store float %i.gs, ptr %.sroa.11100.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  store float %.sroa.10117.1, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.gx = load <2 x float>, ptr %i.ar, align 8, !tbaa !145, !noalias !628
  store float %i.gr, ptr %.sroa.798.0..sroa_idx, align 4
  store float %.sroa.0114.1, ptr %.sroa.8.0..sroa_idx, align 4
  store <2 x float> %i.gv, ptr %i.gu, align 4
  store <2 x float> %i.gw, ptr %.sroa.999.0..sroa_idx, align 4
  store <2 x float> %i.gx, ptr %.sroa.13101.0..sroa_idx, align 4
  %.sroa.15102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store float %i.gt, ptr %.sroa.15102.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  store float %.sroa.17120.1, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.17103.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge273
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !622
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ha) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit:   ; preds = %._crit_edge273, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.hb = load ptr, ptr %9, align 8, !tbaa !197   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIfSaIfEED2Ev.exit78, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit
  %i.hc = load ptr, ptr %i.aj, align 8, !tbaa !199
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hf) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit78

_ZNSt6vectorIfSaIfEED2Ev.exit78:                  ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 12) #36
  %.not.i.i.i79 = icmp eq ptr %.sroa.0142.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIfSaIfEED2Ev.exit81, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit78
  %i.hg = ptrtoint ptr %.sroa.11146.0 to i64
  %i.hh = sub i64 %i.hg, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.0, i64 noundef %i.hh) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit81

_ZNSt6vectorIfSaIfEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit78, %bb.ad
  %.not.i.i.i82 = icmp eq ptr %.sroa.0149.0385397, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit81
  %i.hi = ptrtoint ptr %.sroa.17159.0379398 to i64
  %i.hj = sub i64 %i.hi, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0385397, i64 noundef %i.hj) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit81, %bb.ae
  %i.hk = load ptr, ptr %i.t, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.hl, align 8, !tbaa !120
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4, !tbaa !121
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !123
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #35, !inline_history !14
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !123
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #35, !inline_history !14
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i83 = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i83, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi i32 [ %i.ho, %bb.ai ], [ %i.hy, %bb.aj ]
  %i.hz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hz, label %bb.ak, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #35
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0162.0280, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.s
  br i1 %.not, label %.loopexit169, label %bb.f

bb.al:                                            ; preds = %bb.aa
  %i.ib = load ptr, ptr %i.al, align 8, !tbaa !622
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.gi to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.ie) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85: ; preds = %.loopexit181, %.loopexit.split-lp182, %bb.al, %bb.aa
  %.pn42.pn = phi { ptr, i32 } [ %i.gh, %bb.al ], [ %i.gh, %bb.aa ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.if = load ptr, ptr %9, align 8, !tbaa !197   ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfSaIfEED2Ev.exit88, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85
  %i.ig = load ptr, ptr %i.aj, align 8, !tbaa !199
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

_ZNSt6vectorIfSaIfEED2Ev.exit88:                  ; preds = %.loopexit176, %.loopexit.split-lp177, %bb.am, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.am ], [ %.pn42.pn, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85 ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit91

_ZNSt6vectorIfSaIfEED2Ev.exit91:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit88, %.body57
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ], [ %.pn, %.body57 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 12) #36
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit91
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit91 ], [ %i.bz, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.0142.0, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIfSaIfEED2Ev.exit94, label %bb.an

bb.an:                                            ; preds = %.body
  %i.ik = ptrtoint ptr %.sroa.11146.0 to i64
  %i.il = ptrtoint ptr %.sroa.0142.0 to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.0, i64 noundef %i.im) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit94

_ZNSt6vectorIfSaIfEED2Ev.exit94:                  ; preds = %bb.an, %.body
  %.not.i.i.i95 = icmp eq ptr %.sroa.0149.0385397, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIiSaIiEED2Ev.exit96, label %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread

_ZNSt6vectorIfSaIfEED2Ev.exit94.thread:           ; preds = %.loopexit.split-lp172, %.loopexit171, %_ZNSt6vectorIfSaIfEED2Ev.exit94
  %.pn42.pn.pn.pn.pn.pn406 = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit94 ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp172 ], [ %lpad.loopexit173, %.loopexit171 ]
  %.sroa.17159.0380405 = phi ptr [ %.sroa.17159.0379398, %_ZNSt6vectorIfSaIfEED2Ev.exit94 ], [ %i.bg, %.loopexit.split-lp172 ], [ %i.bg, %.loopexit171 ]
  %.sroa.0149.0386404 = phi ptr [ %.sroa.0149.0385397, %_ZNSt6vectorIfSaIfEED2Ev.exit94 ], [ %i.bf, %.loopexit.split-lp172 ], [ %i.bf, %.loopexit171 ] ; 2 uses
  %i.in = ptrtoint ptr %.sroa.17159.0380405 to i64
  %i.io = ptrtoint ptr %.sroa.0149.0386404 to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0386404, i64 noundef %i.ip) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

_ZNSt6vectorIiSaIiEED2Ev.exit96:                  ; preds = %.loopexit170, %.loopexit.split-lp, %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit94
  %.pn42.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn.pn.pn406, %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread ], [ %.pn42.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit94 ], [ %lpad.loopexit, %.loopexit170 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %common.resume

.loopexit169:                                     ; preds = %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.e, %_ZNK2cv8MatShapeclEv.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11
end_hunk_0
