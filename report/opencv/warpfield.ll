Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpfield?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2014
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN2cv6dynafu9WarpField14initTransformsESt6vectorINS_3PtrINS0_8WarpNodeEEESaIS5_EE:bb.a

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #33
          to label %.noexc72 unwind label %.loopexit.split-lp182.loopexit.split-lp

.noexc72:                                         ; preds = %bb.v
  unreachable

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %.noexc68
  store ptr %i.cv, ptr %i.ak, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  br label %_ZNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EEC2EmRKS3_.exit.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i61
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %._crit_edge

_ZNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.da = shl nuw nsw i64 %i.ce, 4
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #34
          to label %.noexc73 unwind label %.loopexit.split-lp182.loopexit.split-lp ; 5 uses

.noexc73:                                         ; preds = %_ZNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.db, ptr %10, align 8, !tbaa !621
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %i.cf
  store ptr %i.dc, ptr %i.al, align 8, !tbaa !622
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc73, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.prol ], [ %i.db, %.noexc73 ] ; 6 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.cf, %.noexc73 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc73 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dd, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !145, !alias.scope !623
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 20
  store float 1.000000e+00, ptr %i.de, align 4, !tbaa !145, !alias.scope !623
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 40
  store float 1.000000e+00, ptr %i.df, align 4, !tbaa !145, !alias.scope !623
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 60
  store float 1.000000e+00, ptr %i.dg, align 4, !tbaa !145, !alias.scope !623
  %i.dh = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !609

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc73
  %.lcssa.unr = phi ptr [ poison, %.noexc73 ], [ %i.di, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.db, %.noexc73 ], [ %i.di, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.cf, %.noexc73 ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.dj = icmp ult i64 %i.cf, 4
  br i1 %i.dj, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dk, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %.013.i.i.i.i.i, align 4, !tbaa !145, !alias.scope !623
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store float 1.000000e+00, ptr %i.dl, align 4, !tbaa !145, !alias.scope !623
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store float 1.000000e+00, ptr %i.dm, align 4, !tbaa !145, !alias.scope !623
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store float 1.000000e+00, ptr %i.dn, align 4, !tbaa !145, !alias.scope !623
  %i.do = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dp, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.do, align 4, !tbaa !145, !alias.scope !623
  %i.dq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 84
  store float 1.000000e+00, ptr %i.dq, align 4, !tbaa !145, !alias.scope !623
  %i.dr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store float 1.000000e+00, ptr %i.dr, align 4, !tbaa !145, !alias.scope !623
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 124
  store float 1.000000e+00, ptr %i.ds, align 4, !tbaa !145, !alias.scope !623
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.du, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.dt, align 4, !tbaa !145, !alias.scope !623
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 148
  store float 1.000000e+00, ptr %i.dv, align 4, !tbaa !145, !alias.scope !623
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  store float 1.000000e+00, ptr %i.dw, align 4, !tbaa !145, !alias.scope !623
  %i.dx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 188
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !145, !alias.scope !623
  %i.dy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dz, i8 0, i64 56, i1 false), !tbaa !145, !alias.scope !623
  store float 1.000000e+00, ptr %i.dy, align 4, !tbaa !145, !alias.scope !623
  %i.ea = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 212
  store float 1.000000e+00, ptr %i.ea, align 4, !tbaa !145, !alias.scope !623
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 232
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !145, !alias.scope !623
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 252
  store float 1.000000e+00, ptr %i.ec, align 4, !tbaa !145, !alias.scope !623
  %i.ed = add nsw i64 %.01012.i.i.i.i.i, -4       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i71.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i.i71.3, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !610

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i.i ]
  store ptr %.lcssa, ptr %i.am, align 8, !tbaa !624
  %i.ef = load ptr, ptr %9, align 8, !tbaa !197
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !131
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN2cv6dynafu3DQBERSt6vectorIfSaIfEERS1_INS_7Affine3IfEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Affine3") align 4 %11, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.preheader unwind label %bb.y

.preheader:                                       ; preds = %._crit_edge
  %i.eg = load ptr, ptr %i.am, align 8, !tbaa !624 ; 2 uses
  %i.eh = load ptr, ptr %10, align 8, !tbaa !621  ; 5 uses
  %i.ei = ptrtoint ptr %i.eh to i64               ; 2 uses
  %.not283 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not283, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ej, %i.ei
  %i.el = ashr exact i64 %i.ek, 6
  %i.em = load ptr, ptr %9, align 8, !tbaa !197
  br label %bb.x

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

.loopexit.split-lp172.loopexit.split-lp:          ; preds = %bb.m, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit94.thread

.body57:                                          ; preds = %bb.n, %bb.p, %_ZN7cvflann12SearchParamsC2Eifb.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7cvflann3anyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit91

.loopexit.split-lp177.loopexit.split-lp:          ; preds = %bb.t, %bb.s
  %lpad.loopexit.split-lp554 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

.loopexit.split-lp182.loopexit.split-lp:          ; preds = %_ZNSt12_Vector_baseIN2cv7Affine3IfEESaIS2_EEC2EmRKS3_.exit.i, %bb.v
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %.035266 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %bb.w ] ; 3 uses
  %.sroa.0124.0265 = phi ptr [ %.sroa.0149.0386398, %.lr.ph ], [ %i.fn, %bb.w ] ; 2 uses
  %i.eo = load i32, ptr %.sroa.0124.0265, align 4, !tbaa !124
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !139 ; 5 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !145 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %i.bw, align 4, !tbaa !145
  %i.es = load float, ptr %i.er, align 4, !tbaa !625
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %i.et = fsub float %i.es, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !626
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %i.ew = fsub float %i.ev, %.sroa.0.4.vec.extract.i ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !200
  %i.ez = fsub float %i.ey, %.sroa.24.0.copyload  ; 2 uses
  %i.fa = fmul float %i.ew, %i.ew
  %i.fb = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fa)
  %i.fc = call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fb)
  %i.fd = fneg float %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !186
  %i.fg = fmul float %i.ff, 2.000000e+00
  %i.fh = fdiv float %i.fd, %i.fg
  %i.fi = call noundef float @expf(float noundef %i.fh) #35
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.035266
  store float %i.fi, ptr %i.fj, align 4, !tbaa !145
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fl = add nuw nsw i64 %.035266, 1
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %.035266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.fm, ptr noundef nonnull align 4 dereferenceable(64) %i.fk, i64 64, i1 false), !tbaa.struct !207
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0124.0265, i64 4 ; 2 uses
  %.not168 = icmp eq ptr %i.fn, %.0.i.i.i.i.i392397
  br i1 %.not168, label %._crit_edge, label %bb.w

bb.x:                                             ; preds = %.lr.ph272, %bb.x
  %.136270 = phi i64 [ 0, %.lr.ph272 ], [ %i.gb, %bb.x ] ; 3 uses
  %i.fo = phi <4 x float> [ zeroinitializer, %.lr.ph272 ], [ %i.ga, %bb.x ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.136270
  %12 = load float, ptr %i.fp, align 4, !tbaa !145 ; 3 uses
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %i.eh, i64 %.136270 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !145, !noalias !627
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !145, !noalias !627
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 44
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !145, !noalias !627
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %i.fx = insertelement <4 x float> poison, float %i.fu, i64 0
  %14 = insertelement <4 x float> %i.fx, float %i.fs, i64 1
  %15 = fmul float %12, %i.fw
  %i.fy = insertelement <4 x float> poison, float %15, i64 0
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fz = fmul <4 x float> %16, %14
  %17 = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %18 = insertelement <4 x float> %17, float %12, i64 3
  %i.ga = fadd <4 x float> %i.fo, %18             ; 2 uses
  %i.gb = add nuw i64 %.136270, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gb, %i.el
  br i1 %exitcond.not, label %._crit_edge273, label %bb.x, !llvm.loop !613

bb.y:                                             ; preds = %._crit_edge
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.gd = load ptr, ptr %10, align 8, !tbaa !621  ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85, label %bb.aj

._crit_edge273:                                   ; preds = %bb.x, %.preheader
  %i.ge = phi <4 x float> [ zeroinitializer, %.preheader ], [ %i.ga, %bb.x ] ; 3 uses
  %i.gf = extractelement <4 x float> %i.ge, i64 3 ; 2 uses
  %i.gg = fpext float %i.gf to double
  %i.gh = fcmp olt double %i.gg, 1.000000e-05     ; 3 uses
  %i.gi = fdiv float 1.000000e+00, %i.gf          ; 2 uses
  %i.gj = extractelement <4 x float> %i.ge, i64 2
  %i.gk = fmul float %i.gj, %i.gi
  %i.gl = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gm = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x float> %i.gl, %i.gn           ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0
  %.sroa.17120.1 = select i1 %i.gh, float 0.000000e+00, float %i.gp
  %i.gq = extractelement <2 x float> %i.go, i64 1
  %.sroa.10117.1 = select i1 %i.gh, float 0.000000e+00, float %i.gq
  %.sroa.0114.1 = select i1 %i.gh, float 0.000000e+00, float %i.gk
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
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge273
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !622
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ha) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit:   ; preds = %._crit_edge273, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.hb = load ptr, ptr %9, align 8, !tbaa !197   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIfSaIfEED2Ev.exit78, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit
  %i.hc = load ptr, ptr %i.aj, align 8, !tbaa !199
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hf) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit78

_ZNSt6vectorIfSaIfEED2Ev.exit78:                  ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 12) #36
  %.not.i.i.i79 = icmp eq ptr %.sroa.0142.0, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIfSaIfEED2Ev.exit81, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit78
  %i.hg = ptrtoint ptr %.sroa.11146.0 to i64
  %i.hh = sub i64 %i.hg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.0, i64 noundef %i.hh) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit81

_ZNSt6vectorIfSaIfEED2Ev.exit81:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit78, %bb.ab
  %.not.i.i.i82 = icmp eq ptr %.sroa.0149.0386398, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit81
  %i.hi = ptrtoint ptr %.sroa.17159.0380399 to i64
  %i.hj = sub i64 %i.hi, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0149.0386398, i64 noundef %i.hj) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit81, %bb.ac
  %i.hk = load ptr, ptr %i.t, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
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

bb.af:                                            ; preds = %bb.ad
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i83 = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i83, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi i32 [ %i.ho, %bb.ag ], [ %i.hy, %bb.ah ]
  %i.hz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hz, label %bb.ai, label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #35
  br label %_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6dynafu8WarpNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0162.0280, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.s
  br i1 %.not, label %.loopexit169, label %bb.f

bb.aj:                                            ; preds = %bb.y
  %i.ib = load ptr, ptr %i.al, align 8, !tbaa !622
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = ptrtoint ptr %i.gd to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.ie) #36
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85: ; preds = %.loopexit.split-lp182.loopexit.split-lp, %bb.aj, %bb.y
  %.pn42.pn = phi { ptr, i32 } [ %i.gc, %bb.aj ], [ %i.gc, %bb.y ], [ %lpad.loopexit.split-lp557, %.loopexit.split-lp182.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.if = load ptr, ptr %9, align 8, !tbaa !197   ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIfSaIfEED2Ev.exit88, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85
  %i.ig = load ptr, ptr %i.aj, align 8, !tbaa !199
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

_ZNSt6vectorIfSaIfEED2Ev.exit88:                  ; preds = %.loopexit.split-lp177.loopexit.split-lp, %bb.ak, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.ak ], [ %.pn42.pn, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EED2Ev.exit85 ], [ %lpad.loopexit.split-lp554, %.loopexit.split-lp177.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit91

_ZNSt6vectorIfSaIfEED2Ev.exit91:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit88, %.body57
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit88 ], [ %i.en, %.body57 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 12) #36
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i, %_ZNSt6vectorIfSaIfEED2Ev.exit91
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit91 ], [ %i.bz, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ] ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.0142.0, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIfSaIfEED2Ev.exit94, label %bb.al

bb.al:                                            ; preds = %.body
  %i.ik = ptrtoint ptr %.sroa.11146.0 to i64
  %i.il = ptrtoint ptr %.sroa.0142.0 to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0142.0, i64 noundef %i.im) #36
end_hunk_0
