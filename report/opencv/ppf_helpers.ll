Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_helpers?download=true
inline.NumInlined: 5005
inline.NumDeleted: 1814
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN2cv12ppf_match_3d15transformPCPoseENS_3MatERKNS_4MatxIdLi4ELi4EEE:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.h ], [ %i.p, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %.body

_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  store <4 x i32> <i32 1124024326, i32 2, i32 4, i32 4>, ptr %33, align 16, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 153, ptr %i.s, align 16, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %33, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.u, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc53 unwind label %bb.r

.noexc53:                                         ; preds = %_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.v, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef 4, i32 noundef 4, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef 0)
          to label %.noexc54 unwind label %bb.r

.noexc54:                                         ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.x, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !116
  store ptr %33, ptr %i.w, align 8, !tbaa !117
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc54
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %.body

_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i: ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33, !noalias !667
  store i32 0, ptr %17, align 4, !tbaa !112, !noalias !667
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 3, ptr %i.z, align 4, !tbaa !113, !noalias !667
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33, !noalias !667
  store i64 9223372034707292160, ptr %18, align 8, !noalias !667
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33, !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33, !noalias !667
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !668
  store i64 9223372034707292160, ptr %15, align 8, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33, !noalias !668
  store i32 3, ptr %16, align 4, !tbaa !112, !noalias !668
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 4, ptr %i.aa, align 4, !tbaa !113, !noalias !668
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 -1040056314, ptr %34, align 8, !tbaa !116
  store ptr %36, ptr %i.ab, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 12884901889, ptr %i.ac, align 8
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %_ZN2cv12ppf_match_3dL8poseToRTERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEERNS_3VecIdLi3EEE.exit unwind label %bb.o

bb.m:                                             ; preds = %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ae, %bb.n ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.p ], [ %i.ad, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %.body

_ZN2cv12ppf_match_3dL8poseToRTERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEERNS_3VecIdLi3EEE.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !108
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv12ppf_match_3dL8poseToRTERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEERNS_3VecIdLi3EEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %38, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %35, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %44, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %46, i64 16
  br label %bb.s

._crit_edge:                                      ; preds = %bb.az, %_ZN2cv12ppf_match_3dL8poseToRTERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEERNS_3VecIdLi3EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  ret void

bb.r:                                             ; preds = %.noexc53, %_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit.i, %.noexc, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.az ] ; 6 uses
  %i.bt = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.bu = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.bv = mul i64 %i.bu, %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.ca = load float, ptr %i.bx, align 4, !tbaa !107
  %i.cb = load float, ptr %i.by, align 4, !tbaa !107
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !107
  %49 = load <3 x float>, ptr %i.bw, align 4, !tbaa !107
  %50 = fpext <3 x float> %49 to <3 x double>     ; 6 uses
  %51 = load double, ptr %i.ak, align 8, !tbaa !164, !noalias !669
  %52 = extractelement <3 x double> %50, i64 0    ; 2 uses
  %53 = call double @llvm.fmuladd.f64(double %51, double %52, double 0.000000e+00)
  %54 = load double, ptr %i.al, align 8, !tbaa !164, !noalias !669
  %55 = extractelement <3 x double> %50, i64 1    ; 2 uses
  %i.cd = call double @llvm.fmuladd.f64(double %54, double %55, double %53)
  %i.ce = load double, ptr %i.am, align 8, !tbaa !164, !noalias !669
  %56 = extractelement <3 x double> %50, i64 2    ; 2 uses
  %i.cf = call double @llvm.fmuladd.f64(double %i.ce, double %56, double %i.cd)
  %i.cg = load double, ptr %i.an, align 8, !tbaa !164, !noalias !669
  %i.ch = fadd double %i.cg, %i.cf                ; 2 uses
  %i.ci = call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ogt double %i.ci, f0x3E80000000000000
  br i1 %i.cj, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.ck = load double, ptr %i.ao, align 8, !tbaa !164, !noalias !669
  %i.cl = load double, ptr %i.ap, align 8, !tbaa !164, !noalias !669
  %i.cm = load double, ptr %i.aq, align 8, !tbaa !164, !noalias !669
  %i.cn = load double, ptr %i.ar, align 8, !tbaa !164, !noalias !669
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %52, double 0.000000e+00)
  %i.cp = call double @llvm.fmuladd.f64(double %i.cm, double %55, double %i.co)
  %i.cq = call double @llvm.fmuladd.f64(double %i.cl, double %56, double %i.cp)
  %i.cr = fadd double %i.ck, %i.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  %i.cs = fdiv double 1.000000e+00, %i.ch         ; 2 uses
  %i.ct = load <8 x double>, ptr %2, align 8, !tbaa !164, !noalias !669 ; 4 uses
  %i.cu = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.cv = shufflevector <3 x double> %50, <3 x double> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cv, <2 x double> zeroinitializer)
  %i.cx = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %57 = shufflevector <3 x double> %50, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %57, <2 x double> %i.cw)
  %i.cz = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %58 = shufflevector <3 x double> %50, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %58, <2 x double> %i.cy)
  %i.db = shufflevector <8 x double> %i.ct, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.dc = fadd <2 x double> %i.db, %i.da
  %i.dd = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.de, %i.dc
  store <2 x double> %i.df, ptr %39, align 16, !tbaa !164, !alias.scope !670
  %i.dg = fmul double %i.cs, %i.cr
  store double %i.dg, ptr %i.as, align 16, !tbaa !164, !alias.scope !670
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
  %i.dh = landingpad { ptr, i32 }
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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !671
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.di, ptr %11, align 4, !tbaa !112, !noalias !671
  %i.dj = trunc i64 %indvars.iv to i32
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.az, align 4, !tbaa !113, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !671
  store i64 9223372034707292160, ptr %12, align 8, !noalias !671
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !672
  store i64 9223372034707292160, ptr %9, align 8, !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !672
  store i32 0, ptr %10, align 4, !tbaa !112, !noalias !672
  store i32 3, ptr %i.ba, align 4, !tbaa !113, !noalias !672
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33, !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33, !noalias !672
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
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.ab:                                            ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #33
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.dn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ag ], [ %i.dm, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #33
  br label %.body57

.body57:                                          ; preds = %bb.aa, %bb.u, %bb.ah
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ah ], [ %i.dl, %bb.aa ], [ %i.dh, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %.body

bb.ai:                                            ; preds = %bb.z, %bb.s
  %i.dq = load i32, ptr %i.c, align 4, !tbaa !109
  %i.dr = icmp eq i32 %i.dq, 6
  br i1 %i.dr, label %bb.aj, label %bb.az

bb.aj:                                            ; preds = %bb.ai
  %i.ds = fpext float %i.ca to double             ; 2 uses
  %i.dt = fpext float %i.cb to double             ; 2 uses
  %i.du = fpext float %i.cc to double             ; 2 uses
  %i.dv = load <4 x double>, ptr %35, align 8, !tbaa !164, !noalias !673 ; 3 uses
  %i.dw = shufflevector <4 x double> %i.dv, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.dx = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dy, <2 x double> zeroinitializer)
  %i.ea = load <2 x double>, ptr %i.bd, align 8, !tbaa !164, !noalias !673
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ec = shufflevector <4 x double> %i.dv, <4 x double> %i.eb, <2 x i32> <i32 1, i32 4>
  %i.ed = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ee, <2 x double> %i.dz)
  %i.eg = shufflevector <4 x double> %i.dv, <4 x double> %i.eb, <2 x i32> <i32 2, i32 5>
  %i.eh = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ei, <2 x double> %i.ef) ; 3 uses
  %i.ek = load double, ptr %i.be, align 8, !tbaa !164, !noalias !673
  %i.el = call double @llvm.fmuladd.f64(double %i.ek, double %i.ds, double 0.000000e+00)
  %i.em = load double, ptr %i.bf, align 8, !tbaa !164, !noalias !673
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double %i.dt, double %i.el)
  %i.eo = load double, ptr %i.bg, align 8, !tbaa !164, !noalias !673
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %i.du, double %i.en) ; 3 uses
  %i.eq = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double 0.000000e+00)
  %i.es = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %i.er)
  %i.eu = call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.et)
  %sqrt = call double @llvm.sqrt.f64(double %i.eu) ; 2 uses
  %i.ev = fcmp ogt double %sqrt, f0x3E80000000000000
  br i1 %i.ev, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  %i.ew = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.ej, %i.ey
  store <2 x double> %i.ez, ptr %45, align 16, !tbaa !164, !alias.scope !674
  %i.fa = fmul double %i.ep, %i.ew
  store double %i.fa, ptr %i.bh, align 16, !tbaa !164, !alias.scope !674
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %44, align 16, !tbaa !121
  store i32 153, ptr %i.bi, align 16, !tbaa !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc61 unwind label %bb.ar

.noexc61:                                         ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bl, i8 0, i64 80, i1 false)
end_hunk_0
