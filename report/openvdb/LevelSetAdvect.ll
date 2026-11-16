Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetAdvect?download=true
inline.NumInlined: 45983
inline.NumDeleted: 12404
loop-unroll.NumCompletelyUnrolled: 486
loop-unroll.NumRuntimeUnrolled: 808
loop-unroll.NumUnrolled: 1305
begin_hunk_0_@_ZN7openvdb5v13_05tools17LevelSetAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_13DiscreteFieldINS3_INS5_INS6_INS7_INS7_INS8_INS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEENS0_4util15NullInterrupterEE6AdvectINSG_15UniformScaleMapELNSG_20BiasedGradientSchemeE4ELNSG_25TemporalIntegrationSchemeE0EE5eulerILi0ELi1EEEvRKNS4_11LeafManagerISD_E9LeafRangeEfjj:bb.a
  %i.fc = zext i32 %i.en to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !347
  %i.ff = load ptr, ptr %i.aj, align 8, !tbaa !528
  store float %i.fe, ptr %i.ff, align 4, !tbaa !347
  invoke void @_ZN7openvdb5v13_04math20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc44
  %i.fg = load ptr, ptr %i.aj, align 8, !tbaa !528
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !347
  %i.fi = invoke { <2 x float>, float } @_ZN7openvdb5v13_04math16ISGradientBiasedILNS1_20BiasedGradientSchemeE4ENS1_4Vec3IfEEE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS4_INT_9ValueTypeEEERKSM_RKS5_(ptr noundef nonnull align 8 dereferenceable(140) %5, ptr noundef nonnull align 4 dereferenceable(12) %.01364)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aa:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.fi, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.fi, 1
  %i.fj = fpext float %.fca.1.extract.i to double
  %i.fk = load double, ptr %i.al, align 8, !tbaa !524, !noalias !5861
  %i.fl = fmul double %i.fk, %i.fj
  %i.fm = fpext <2 x float> %.fca.0.extract.i to <2 x double>
  %i.fn = load <2 x double>, ptr %i.ak, align 8, !tbaa !524, !noalias !5861
  %i.fo = fmul <2 x double> %i.fn, %i.fm
  %i.fp = fptrunc <2 x double> %i.fo to <2 x float> ; 2 uses
  %i.fq = fptrunc double %i.fl to float
  %i.fr = load float, ptr %.01364, align 4, !tbaa !347
  %i.fs = getelementptr inbounds nuw i8, ptr %.01364, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !347
  %i.fu = extractelement <2 x float> %i.fp, i64 1
  %i.fv = fmul float %i.ft, %i.fu
  %i.fw = extractelement <2 x float> %i.fp, i64 0
  %i.fx = call float @llvm.fmuladd.f32(float %i.fr, float %i.fw, float %i.fv)
  %i.fy = getelementptr inbounds nuw i8, ptr %.01364, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !347
  %i.ga = call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.fq, float %i.fx)
  %i.gb = call float @llvm.fmuladd.f32(float %i.am, float %i.ga, float %i.fh)
  %i.gc = zext i32 %i.el to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gc
  store float %i.gb, ptr %i.gd, align 4, !tbaa !347
  %i.ge = load ptr, ptr %i.an, align 8, !tbaa !479 ; 8 uses
  %i.gf = load i32, ptr %i.ag, align 8, !tbaa !460
  %i.gg = add i32 %i.gf, 1                        ; 4 uses
  %i.gh = lshr i32 %i.gg, 6                       ; 3 uses
  %i.gi = icmp ugt i32 %i.gg, 511
  br i1 %i.gi, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = and i32 %i.gg, 63
  %i.gk = zext nneg i32 %i.gh to i64              ; 8 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !282 ; 2 uses
  %i.gn = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.gm, %i.go
  %.not.i.i.i.i49 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i.i.i49, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.gq = shl nsw i64 -1, %i.gn
  %i.gr = and i64 %i.gm, %i.gq                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i50.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i50.preheader:                       ; preds = %bb.ac
  %exitcond.not.i.i.i.i91 = icmp eq i32 %i.gh, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge, label %.lr.ph93

.lr.ph.i.i.i.i50:                                 ; preds = %.lr.ph93
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph93.1

.lr.ph93.1:                                       ; preds = %.lr.ph.i.i.i.i50
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.gk, 2 ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.1
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.gt, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i50.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.1:                               ; preds = %.lr.ph93.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph93.2

.lr.ph93.2:                                       ; preds = %.lr.ph.i.i.i.i50.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.gk, 3 ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.2
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.gv, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i50.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.2:                               ; preds = %.lr.ph93.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph93.3

.lr.ph93.3:                                       ; preds = %.lr.ph.i.i.i.i50.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.gk, 4 ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.3
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.gx, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i50.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.3:                               ; preds = %.lr.ph93.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph93.4

.lr.ph93.4:                                       ; preds = %.lr.ph.i.i.i.i50.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.gk, 5 ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.4
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.gz, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i50.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.4:                               ; preds = %.lr.ph93.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph93.5

.lr.ph93.5:                                       ; preds = %.lr.ph.i.i.i.i50.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.gk, 6 ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.5
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.hb, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i50.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph.i.i.i.i50.5:                               ; preds = %.lr.ph93.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph93.6

.lr.ph93.6:                                       ; preds = %.lr.ph.i.i.i.i50.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.gk, 7 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.6
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.hd, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.lr.ph93:                                         ; preds = %.lr.ph.i.i.i.i50.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.gk, 1 ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !282 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i50, label %.critedge.loopexit.i.i.i.i, !llvm.loop !20

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph93.6, %.lr.ph93.5, %.lr.ph93.4, %.lr.ph93.3, %.lr.ph93.2, %.lr.ph93.1, %.lr.ph93
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph93 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph93.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph93.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph93.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph93.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph93.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph93.6 ]
  %.lcssa = phi i64 [ %i.hf, %.lr.ph93 ], [ %i.gt, %.lr.ph93.1 ], [ %i.gv, %.lr.ph93.2 ], [ %i.gx, %.lr.ph93.3 ], [ %i.gz, %.lr.ph93.4 ], [ %i.hb, %.lr.ph93.5 ], [ %i.hd, %.lr.ph93.6 ]
  %i.hg = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.ac
  %.016.lcssa.i.i.i.i = phi i32 [ %i.gh, %bb.ac ], [ %i.hg, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.gr, %bb.ac ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.hh = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.hi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.hj = trunc nuw nsw i64 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i.i.i.i, %bb.ab
  %.118.i.i.i.i = phi i32 [ %i.hk, %.critedge.i.i.i.i ], [ %i.gg, %bb.ab ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !460
  %i.hl = getelementptr inbounds nuw i8, ptr %.01364, i64 12
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5860

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.noexc44, %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit, %bb.y
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body

.body:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i32, %bb.z, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %i.ek, %bb.z ], [ %i.dy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i32 ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZN7openvdb5v13_04math16ISGradientBiasedILNS1_20BiasedGradientSchemeE4ENS1_4Vec3IfEEE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS4_INT_9ValueTypeEEERKSM_RKS5_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !347
  %i.b = fcmp olt float %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528  ; 30 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load float, ptr %i.e, align 4, !tbaa !347
  %i.j = load float, ptr %i.f, align 4, !tbaa !347
  %i.k = load float, ptr %i.g, align 4, !tbaa !347
  %i.l = load float, ptr %i.h, align 4, !tbaa !347
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !347 ; 5 uses
  %i.n = insertelement <2 x float> %i.m, float %i.i, i64 0
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.j, i64 0 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 4 uses
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %i.k, i64 1 ; 2 uses
  %i.t = fsub <2 x float> %i.p, %i.s              ; 5 uses
  %i.u = insertelement <2 x float> %i.m, float %i.l, i64 1
  %i.v = fsub <2 x float> %i.s, %i.u              ; 2 uses
  %i.w = extractelement <2 x float> %i.q, i64 0
  %i.x = extractelement <2 x float> %i.q, i64 1
  %i.y = extractelement <2 x float> %i.t, i64 1   ; 3 uses
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float -2.000000e+00), <2 x float> %i.q)
  %i.aa = fadd <2 x float> %i.z, %i.v             ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  %i.ad = extractelement <2 x float> %i.v, i64 1
  %i.ae = fpext float %i.ad to double             ; 2 uses
  %i.af = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.ag = extractelement <2 x float> %i.t, i64 0  ; 3 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float -4.000000e+00, float %i.w)
  %i.ai = fpext float %i.ah to double
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.x, float -2.000000e+00, float %i.ag)
  %i.ak = fadd float %i.aj, %i.y                  ; 2 uses
  %i.al = fsub float %i.ag, %i.y                  ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fpext float %i.am to double
  %i.ao = fmul double %i.an, 2.500000e-01
  %i.ap = fmul <2 x float> %i.t, <float poison, float 4.000000e+00>
  %2 = shufflevector <2 x float> %i.t, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.aq = fpext <2 x float> %2 to <2 x double>    ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fmul double %i.ar, -7.000000e+00
  %i.at = fmul float %i.ak, %i.ak
  %i.au = insertelement <4 x float> %i.af, float %i.at, i64 1
  %i.av = fpext <4 x float> %i.au to <4 x double> ; 2 uses
  %i.aw = insertelement <4 x double> poison, double %i.ai, i64 0
  %i.ax = insertelement <4 x double> %i.aw, double %i.ao, i64 1
  %i.ay = fneg <2 x double> %i.aq                 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.ax, <4 x double> %i.az, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bb = insertelement <4 x double> %i.ba, double %i.as, i64 3
  %i.bc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.av, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.bb) ; 4 uses
  %i.bd = extractelement <4 x double> %i.bc, i64 1
  %i.be = fadd double %i.bd, f0x3E45798EDA22F6A5  ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fdiv double 6.000000e-01, %i.bf         ; 2 uses
  %i.bh = extractelement <4 x double> %i.bc, i64 2
  %i.bi = fadd double %i.bh, %i.ae
  %i.bj = shufflevector <4 x double> %i.bc, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1 ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, %i.bk
  %i.bm = fmul <2 x double> %i.bl, splat (double 2.500000e-01)
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.bm)
  %i.bo = fadd <2 x double> %i.bn, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, %i.bo
  %i.bq = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.bp ; 2 uses
  %i.br = extractelement <4 x double> %i.bc, i64 3
  %i.bs = extractelement <4 x double> %i.av, i64 0 ; 3 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double 1.100000e+01, double %i.br)
  %i.bu = extractelement <2 x double> %i.ay, i64 0
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double 5.000000e+00, double %i.bu)
  %i.bw = fpext float %i.y to double              ; 2 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double 2.000000e+00, double %i.bv)
  %i.by = fmul double %i.bx, %i.bg
  %i.bz = extractelement <2 x double> %i.bq, i64 0 ; 2 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bt, double %i.by)
  %i.cb = fmul double %i.bw, 5.000000e+00
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bs, double 2.000000e+00, double %i.cb)
  %i.cd = fsub double %i.cc, %i.ae
  %i.ce = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cd, double %i.ca)
  %i.cg = fptrunc double %i.cf to float
  %i.ch = fpext float %i.cg to double
  %i.ci = fadd double %i.bz, %i.bg
  %i.cj = fadd double %i.ci, %i.ce
  %i.ck = fmul double %i.cj, 6.000000e+00
  %i.cl = fdiv double %i.ch, %i.ck
  %i.cm = fptrunc double %i.cl to float
  %i.cn = extractelement <2 x float> %i.m, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cp = load float, ptr %i.co, align 4, !tbaa !347
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !347
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !347 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !347
  %i.cw = load <2 x float>, ptr %i.d, align 4, !tbaa !347 ; 4 uses
  %i.cx = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.ct, i64 1
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x float> %i.cz, float %i.cr, i64 0 ; 2 uses
  %i.db = fsub <2 x float> %i.cy, %i.da           ; 4 uses
  %i.dc = insertelement <2 x float> %i.cw, float %i.ct, i64 0 ; 2 uses
  %i.dd = fsub <2 x float> %i.da, %i.dc           ; 5 uses
  %i.de = insertelement <2 x float> %i.cw, float %i.cv, i64 1
  %i.df = fsub <2 x float> %i.dc, %i.de           ; 2 uses
  %i.dg = extractelement <2 x float> %i.db, i64 0
  %i.dh = extractelement <2 x float> %i.db, i64 1
  %i.di = extractelement <2 x float> %i.dd, i64 1 ; 3 uses
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> splat (float -2.000000e+00), <2 x float> %i.db)
  %i.dk = fadd <2 x float> %i.dj, %i.df           ; 2 uses
  %i.dl = fmul <2 x float> %i.dk, %i.dk
  %i.dm = fpext <2 x float> %i.dl to <2 x double>
  %i.dn = extractelement <2 x float> %i.df, i64 1
  %i.do = fpext float %i.dn to double             ; 2 uses
  %i.dp = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.dq = extractelement <2 x float> %i.dd, i64 0 ; 3 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float -4.000000e+00, float %i.dg)
  %i.ds = fpext float %i.dr to double
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dh, float -2.000000e+00, float %i.dq)
  %i.du = fadd float %i.dt, %i.di                 ; 2 uses
  %i.dv = fsub float %i.dq, %i.di                 ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %i.dx = fpext float %i.dw to double
  %i.dy = fmul double %i.dx, 2.500000e-01
  %i.dz = fmul <2 x float> %i.dd, <float poison, float 4.000000e+00>
  %3 = shufflevector <2 x float> %i.dd, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ea = fpext <2 x float> %3 to <2 x double>    ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fmul double %i.eb, -7.000000e+00
  %i.ed = fmul float %i.du, %i.du
  %i.ee = insertelement <4 x float> %i.dp, float %i.ed, i64 1
  %i.ef = fpext <4 x float> %i.ee to <4 x double> ; 2 uses
  %i.eg = insertelement <4 x double> poison, double %i.ds, i64 0
  %i.eh = insertelement <4 x double> %i.eg, double %i.dy, i64 1
  %i.ei = fneg <2 x double> %i.ea                 ; 2 uses
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x double> %i.eh, <4 x double> %i.ej, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.el = insertelement <4 x double> %i.ek, double %i.ec, i64 3
  %i.em = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ef, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.el) ; 4 uses
  %i.en = extractelement <4 x double> %i.em, i64 1
  %i.eo = fadd double %i.en, f0x3E45798EDA22F6A5  ; 2 uses
  %i.ep = fmul double %i.eo, %i.eo
  %i.eq = fdiv double 6.000000e-01, %i.ep         ; 2 uses
  %i.er = extractelement <4 x double> %i.em, i64 2
  %i.es = fadd double %i.er, %i.do
  %i.et = shufflevector <4 x double> %i.em, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.eu = insertelement <2 x double> %i.et, double %i.es, i64 1 ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = fmul <2 x double> %i.ev, splat (double 2.500000e-01)
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ew)
  %i.ey = fadd <2 x double> %i.ex, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.ez = fmul <2 x double> %i.ey, %i.ey
  %i.fa = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.ez ; 2 uses
  %i.fb = extractelement <4 x double> %i.em, i64 3
  %i.fc = extractelement <4 x double> %i.ef, i64 0 ; 3 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double 1.100000e+01, double %i.fb)
  %i.fe = extractelement <2 x double> %i.ei, i64 0
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fc, double 5.000000e+00, double %i.fe)
  %i.fg = fpext float %i.di to double             ; 2 uses
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double 2.000000e+00, double %i.ff)
  %i.fi = fmul double %i.fh, %i.eq
  %i.fj = extractelement <2 x double> %i.fa, i64 0 ; 2 uses
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fd, double %i.fi)
  %i.fl = fmul double %i.fg, 5.000000e+00
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fc, double 2.000000e+00, double %i.fl)
  %i.fn = fsub double %i.fm, %i.do
  %i.fo = extractelement <2 x double> %i.fa, i64 1 ; 2 uses
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fn, double %i.fk)
  %i.fq = fptrunc double %i.fp to float
  %i.fr = fpext float %i.fq to double
  %i.fs = fadd double %i.fj, %i.eq
  %i.ft = fadd double %i.fs, %i.fo
  %i.fu = fmul double %i.ft, 6.000000e+00
  %i.fv = fdiv double %i.fr, %i.fu
  %i.fw = fptrunc double %i.fv to float
  %i.fx = fneg float %i.fw
  %i.fy = extractelement <2 x float> %i.cw, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fz = phi float [ %i.cn, %bb.b ], [ %i.fy, %bb.c ] ; 4 uses
  %i.ga = phi float [ %i.cm, %bb.b ], [ %i.fx, %bb.c ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !347
  %i.gd = fcmp olt float %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gj = load float, ptr %i.ge, align 4, !tbaa !347
  %i.gk = load float, ptr %i.gf, align 4, !tbaa !347
  %i.gl = load float, ptr %i.gg, align 4, !tbaa !347 ; 2 uses
  %i.gm = load float, ptr %i.gh, align 4, !tbaa !347 ; 2 uses
  %i.gn = load float, ptr %i.gi, align 4, !tbaa !347
  %i.go = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gl, i64 1
  %i.gq = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.fz, i64 1 ; 2 uses
  %i.gs = fsub <2 x float> %i.gp, %i.gr           ; 5 uses
  %i.gt = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gm, i64 1
  %i.gv = fsub <2 x float> %i.gr, %i.gu           ; 5 uses
  %i.gw = fsub float %i.gm, %i.gn                 ; 2 uses
  %i.gx = extractelement <2 x float> %i.gs, i64 0
  %i.gy = extractelement <2 x float> %i.gs, i64 1
  %i.gz = extractelement <2 x float> %i.gv, i64 1 ; 3 uses
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> splat (float -2.000000e+00), <2 x float> %i.gs)
  %i.hb = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hc = insertelement <2 x float> %i.hb, float %i.gw, i64 1
  %i.hd = fadd <2 x float> %i.ha, %i.hc           ; 2 uses
  %i.he = fmul <2 x float> %i.hd, %i.hd
  %i.hf = fpext <2 x float> %i.he to <2 x double>
  %i.hg = fpext float %i.gw to double             ; 2 uses
  %i.hh = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.hi = extractelement <2 x float> %i.gv, i64 0 ; 3 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float -4.000000e+00, float %i.gx)
  %i.hk = fpext float %i.hj to double
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.gy, float -2.000000e+00, float %i.hi)
  %i.hm = fadd float %i.hl, %i.gz                 ; 2 uses
  %i.hn = fsub float %i.hi, %i.gz                 ; 2 uses
  %i.ho = fmul float %i.hn, %i.hn
  %i.hp = fpext float %i.ho to double
  %i.hq = fmul double %i.hp, 2.500000e-01
  %i.hr = fmul <2 x float> %i.gv, <float poison, float 4.000000e+00>
  %4 = shufflevector <2 x float> %i.gv, <2 x float> %i.hr, <2 x i32> <i32 0, i32 3>
  %i.hs = fpext <2 x float> %4 to <2 x double>    ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 0
  %i.hu = fmul double %i.ht, -7.000000e+00
  %i.hv = fmul float %i.hm, %i.hm
  %i.hw = insertelement <4 x float> %i.hh, float %i.hv, i64 1
  %i.hx = fpext <4 x float> %i.hw to <4 x double> ; 2 uses
  %i.hy = insertelement <4 x double> poison, double %i.hk, i64 0
  %i.hz = insertelement <4 x double> %i.hy, double %i.hq, i64 1
  %i.ia = fneg <2 x double> %i.hs                 ; 2 uses
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x double> %i.hz, <4 x double> %i.ib, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.id = insertelement <4 x double> %i.ic, double %i.hu, i64 3
  %i.ie = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hx, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.id) ; 4 uses
  %i.if = extractelement <4 x double> %i.ie, i64 1
  %i.ig = fadd double %i.if, f0x3E45798EDA22F6A5  ; 2 uses
  %i.ih = fmul double %i.ig, %i.ig
  %i.ii = fdiv double 6.000000e-01, %i.ih         ; 2 uses
  %i.ij = extractelement <4 x double> %i.ie, i64 2
  %i.ik = fadd double %i.ij, %i.hg
  %i.il = shufflevector <4 x double> %i.ie, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1 ; 2 uses
  %i.in = fmul <2 x double> %i.im, %i.im
  %i.io = fmul <2 x double> %i.in, splat (double 2.500000e-01)
  %i.ip = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.io)
  %i.iq = fadd <2 x double> %i.ip, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.ir = fmul <2 x double> %i.iq, %i.iq
  %i.is = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.ir ; 2 uses
  %i.it = extractelement <4 x double> %i.ie, i64 3
  %i.iu = extractelement <4 x double> %i.hx, i64 0 ; 3 uses
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double 1.100000e+01, double %i.it)
  %i.iw = extractelement <2 x double> %i.ia, i64 0
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.iu, double 5.000000e+00, double %i.iw)
  %i.iy = fpext float %i.gz to double             ; 2 uses
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iy, double 2.000000e+00, double %i.ix)
  %i.ja = fmul double %i.iz, %i.ii
  %i.jb = extractelement <2 x double> %i.is, i64 0 ; 2 uses
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.iv, double %i.ja)
  %i.jd = fmul double %i.iy, 5.000000e+00
  %i.je = tail call double @llvm.fmuladd.f64(double %i.iu, double 2.000000e+00, double %i.jd)
  %i.jf = fsub double %i.je, %i.hg
  %i.jg = extractelement <2 x double> %i.is, i64 1 ; 2 uses
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jf, double %i.jc)
  %i.ji = fptrunc double %i.jh to float
  %i.jj = fpext float %i.ji to double
  %i.jk = fadd double %i.jb, %i.ii
  %i.jl = fadd double %i.jk, %i.jg
  %i.jm = fmul double %i.jl, 6.000000e+00
  %i.jn = fdiv double %i.jj, %i.jm
  %i.jo = fptrunc double %i.jn to float
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !347
  %i.jr = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.js = load float, ptr %i.jr, align 4, !tbaa !347
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !347 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !347 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !347
  %i.jz = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.ju, i64 1
  %i.kb = insertelement <2 x float> poison, float %i.js, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %i.fz, i64 1 ; 2 uses
  %i.kd = fsub <2 x float> %i.ka, %i.kc           ; 5 uses
  %i.ke = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.jw, i64 1
  %i.kg = fsub <2 x float> %i.kc, %i.kf           ; 5 uses
  %i.kh = fsub float %i.jw, %i.jy                 ; 2 uses
  %i.ki = extractelement <2 x float> %i.kd, i64 0
  %i.kj = extractelement <2 x float> %i.kd, i64 1
  %i.kk = extractelement <2 x float> %i.kg, i64 1 ; 3 uses
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> splat (float -2.000000e+00), <2 x float> %i.kd)
  %i.km = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = insertelement <2 x float> %i.km, float %i.kh, i64 1
  %i.ko = fadd <2 x float> %i.kl, %i.kn           ; 2 uses
  %i.kp = fmul <2 x float> %i.ko, %i.ko
  %i.kq = fpext <2 x float> %i.kp to <2 x double>
  %i.kr = fpext float %i.kh to double             ; 2 uses
  %i.ks = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.kt = extractelement <2 x float> %i.kg, i64 0 ; 3 uses
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float -4.000000e+00, float %i.ki)
  %i.kv = fpext float %i.ku to double
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kj, float -2.000000e+00, float %i.kt)
  %i.kx = fadd float %i.kw, %i.kk                 ; 2 uses
  %i.ky = fsub float %i.kt, %i.kk                 ; 2 uses
  %i.kz = fmul float %i.ky, %i.ky
  %i.la = fpext float %i.kz to double
  %i.lb = fmul double %i.la, 2.500000e-01
  %i.lc = fmul <2 x float> %i.kg, <float poison, float 4.000000e+00>
  %5 = shufflevector <2 x float> %i.kg, <2 x float> %i.lc, <2 x i32> <i32 0, i32 3>
  %i.ld = fpext <2 x float> %5 to <2 x double>    ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = fmul double %i.le, -7.000000e+00
  %i.lg = fmul float %i.kx, %i.kx
  %i.lh = insertelement <4 x float> %i.ks, float %i.lg, i64 1
  %i.li = fpext <4 x float> %i.lh to <4 x double> ; 2 uses
  %i.lj = insertelement <4 x double> poison, double %i.kv, i64 0
  %i.lk = insertelement <4 x double> %i.lj, double %i.lb, i64 1
  %i.ll = fneg <2 x double> %i.ld                 ; 2 uses
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ln = shufflevector <4 x double> %i.lk, <4 x double> %i.lm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.lo = insertelement <4 x double> %i.ln, double %i.lf, i64 3
  %i.lp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.li, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.lo) ; 4 uses
  %i.lq = extractelement <4 x double> %i.lp, i64 1
  %i.lr = fadd double %i.lq, f0x3E45798EDA22F6A5  ; 2 uses
  %i.ls = fmul double %i.lr, %i.lr
  %i.lt = fdiv double 6.000000e-01, %i.ls         ; 2 uses
  %i.lu = extractelement <4 x double> %i.lp, i64 2
  %i.lv = fadd double %i.lu, %i.kr
  %i.lw = shufflevector <4 x double> %i.lp, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.lx = insertelement <2 x double> %i.lw, double %i.lv, i64 1 ; 2 uses
  %i.ly = fmul <2 x double> %i.lx, %i.lx
  %i.lz = fmul <2 x double> %i.ly, splat (double 2.500000e-01)
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.lz)
  %i.mb = fadd <2 x double> %i.ma, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.mc = fmul <2 x double> %i.mb, %i.mb
  %i.md = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.mc ; 2 uses
  %i.me = extractelement <4 x double> %i.lp, i64 3
  %i.mf = extractelement <4 x double> %i.li, i64 0 ; 3 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mf, double 1.100000e+01, double %i.me)
  %i.mh = extractelement <2 x double> %i.ll, i64 0
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mf, double 5.000000e+00, double %i.mh)
  %i.mj = fpext float %i.kk to double             ; 2 uses
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mj, double 2.000000e+00, double %i.mi)
  %i.ml = fmul double %i.mk, %i.lt
  %i.mm = extractelement <2 x double> %i.md, i64 0 ; 2 uses
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mm, double %i.mg, double %i.ml)
  %i.mo = fmul double %i.mj, 5.000000e+00
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.mf, double 2.000000e+00, double %i.mo)
  %i.mq = fsub double %i.mp, %i.kr
  %i.mr = extractelement <2 x double> %i.md, i64 1 ; 2 uses
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.mq, double %i.mn)
  %i.mt = fptrunc double %i.ms to float
  %i.mu = fpext float %i.mt to double
  %i.mv = fadd double %i.mm, %i.lt
  %i.mw = fadd double %i.mv, %i.mr
  %i.mx = fmul double %i.mw, 6.000000e+00
  %i.my = fdiv double %i.mu, %i.mx
  %i.mz = fptrunc double %i.my to float
  %i.na = fneg float %i.mz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.nb = phi float [ %i.jo, %bb.e ], [ %i.na, %bb.f ]
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !347
  %i.ne = fcmp olt float %i.nd, 0.000000e+00
  br i1 %i.ne, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.nh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.nk = load float, ptr %i.nf, align 4, !tbaa !347
  %i.nl = load float, ptr %i.ng, align 4, !tbaa !347
  %i.nm = load float, ptr %i.nh, align 4, !tbaa !347 ; 2 uses
  %i.nn = load float, ptr %i.ni, align 4, !tbaa !347 ; 2 uses
  %i.no = load float, ptr %i.nj, align 4, !tbaa !347
  %i.np = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.nq = insertelement <2 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.fz, i64 1 ; 2 uses
  %i.nt = fsub <2 x float> %i.nq, %i.ns           ; 5 uses
  %i.nu = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.nn, i64 1
  %i.nw = fsub <2 x float> %i.ns, %i.nv           ; 5 uses
  %i.nx = fsub float %i.nn, %i.no                 ; 2 uses
  %i.ny = extractelement <2 x float> %i.nt, i64 0
  %i.nz = extractelement <2 x float> %i.nt, i64 1
  %i.oa = extractelement <2 x float> %i.nw, i64 1 ; 3 uses
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nw, <2 x float> splat (float -2.000000e+00), <2 x float> %i.nt)
  %i.oc = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.od = insertelement <2 x float> %i.oc, float %i.nx, i64 1
  %i.oe = fadd <2 x float> %i.ob, %i.od           ; 2 uses
  %i.of = fmul <2 x float> %i.oe, %i.oe
  %i.og = fpext <2 x float> %i.of to <2 x double>
  %i.oh = fpext float %i.nx to double             ; 2 uses
  %i.oi = shufflevector <2 x float> %i.nt, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.oj = extractelement <2 x float> %i.nw, i64 0 ; 3 uses
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.oj, float -4.000000e+00, float %i.ny)
  %i.ol = fpext float %i.ok to double
  %i.om = tail call float @llvm.fmuladd.f32(float %i.nz, float -2.000000e+00, float %i.oj)
  %i.on = fadd float %i.om, %i.oa                 ; 2 uses
  %i.oo = fsub float %i.oj, %i.oa                 ; 2 uses
  %i.op = fmul float %i.oo, %i.oo
  %i.oq = fpext float %i.op to double
  %i.or = fmul double %i.oq, 2.500000e-01
  %i.os = fmul <2 x float> %i.nw, <float poison, float 4.000000e+00>
  %6 = shufflevector <2 x float> %i.nw, <2 x float> %i.os, <2 x i32> <i32 0, i32 3>
  %i.ot = fpext <2 x float> %6 to <2 x double>    ; 2 uses
  %i.ou = extractelement <2 x double> %i.ot, i64 0
  %i.ov = fmul double %i.ou, -7.000000e+00
  %i.ow = fmul float %i.on, %i.on
  %i.ox = insertelement <4 x float> %i.oi, float %i.ow, i64 1
  %i.oy = fpext <4 x float> %i.ox to <4 x double> ; 2 uses
  %i.oz = insertelement <4 x double> poison, double %i.ol, i64 0
  %i.pa = insertelement <4 x double> %i.oz, double %i.or, i64 1
  %i.pb = fneg <2 x double> %i.ot                 ; 2 uses
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pd = shufflevector <4 x double> %i.pa, <4 x double> %i.pc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.pe = insertelement <4 x double> %i.pd, double %i.ov, i64 3
  %i.pf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oy, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.pe) ; 4 uses
  %i.pg = extractelement <4 x double> %i.pf, i64 1
  %i.ph = fadd double %i.pg, f0x3E45798EDA22F6A5  ; 2 uses
  %i.pi = fmul double %i.ph, %i.ph
  %i.pj = fdiv double 6.000000e-01, %i.pi         ; 2 uses
  %i.pk = extractelement <4 x double> %i.pf, i64 2
  %i.pl = fadd double %i.pk, %i.oh
  %i.pm = shufflevector <4 x double> %i.pf, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.pn = insertelement <2 x double> %i.pm, double %i.pl, i64 1 ; 2 uses
  %i.po = fmul <2 x double> %i.pn, %i.pn
  %i.pp = fmul <2 x double> %i.po, splat (double 2.500000e-01)
  %i.pq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.pp)
  %i.pr = fadd <2 x double> %i.pq, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.ps = fmul <2 x double> %i.pr, %i.pr
  %i.pt = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.ps ; 2 uses
  %i.pu = extractelement <4 x double> %i.pf, i64 3
  %i.pv = extractelement <4 x double> %i.oy, i64 0 ; 3 uses
  %i.pw = tail call double @llvm.fmuladd.f64(double %i.pv, double 1.100000e+01, double %i.pu)
  %i.px = extractelement <2 x double> %i.pb, i64 0
  %i.py = tail call double @llvm.fmuladd.f64(double %i.pv, double 5.000000e+00, double %i.px)
  %i.pz = fpext float %i.oa to double             ; 2 uses
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.pz, double 2.000000e+00, double %i.py)
  %i.qb = fmul double %i.qa, %i.pj
  %i.qc = extractelement <2 x double> %i.pt, i64 0 ; 2 uses
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.pw, double %i.qb)
  %i.qe = fmul double %i.pz, 5.000000e+00
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pv, double 2.000000e+00, double %i.qe)
  %i.qg = fsub double %i.qf, %i.oh
  %i.qh = extractelement <2 x double> %i.pt, i64 1 ; 2 uses
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qh, double %i.qg, double %i.qd)
  %i.qj = fptrunc double %i.qi to float
  %i.qk = fpext float %i.qj to double
  %i.ql = fadd double %i.qc, %i.pj
  %i.qm = fadd double %i.ql, %i.qh
  %i.qn = fmul double %i.qm, 6.000000e+00
  %i.qo = fdiv double %i.qk, %i.qn
  %i.qp = fptrunc double %i.qo to float
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.qq = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !347
  %i.qs = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !347
  %i.qu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !347 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !347 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !347
  %i.ra = insertelement <2 x float> poison, float %i.qr, i64 0
  %i.rb = insertelement <2 x float> %i.ra, float %i.qv, i64 1
  %i.rc = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.rd = insertelement <2 x float> %i.rc, float %i.fz, i64 1 ; 2 uses
  %i.re = fsub <2 x float> %i.rb, %i.rd           ; 5 uses
  %i.rf = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.rg = insertelement <2 x float> %i.rf, float %i.qx, i64 1
  %i.rh = fsub <2 x float> %i.rd, %i.rg           ; 5 uses
  %i.ri = fsub float %i.qx, %i.qz                 ; 2 uses
  %i.rj = extractelement <2 x float> %i.re, i64 0
  %i.rk = extractelement <2 x float> %i.re, i64 1
  %i.rl = extractelement <2 x float> %i.rh, i64 1 ; 3 uses
  %i.rm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rh, <2 x float> splat (float -2.000000e+00), <2 x float> %i.re)
  %i.rn = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ro = insertelement <2 x float> %i.rn, float %i.ri, i64 1
  %i.rp = fadd <2 x float> %i.rm, %i.ro           ; 2 uses
  %i.rq = fmul <2 x float> %i.rp, %i.rp
  %i.rr = fpext <2 x float> %i.rq to <2 x double>
  %i.rs = fpext float %i.ri to double             ; 2 uses
  %i.rt = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.ru = extractelement <2 x float> %i.rh, i64 0 ; 3 uses
  %i.rv = tail call float @llvm.fmuladd.f32(float %i.ru, float -4.000000e+00, float %i.rj)
  %i.rw = fpext float %i.rv to double
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.rk, float -2.000000e+00, float %i.ru)
  %i.ry = fadd float %i.rx, %i.rl                 ; 2 uses
  %i.rz = fsub float %i.ru, %i.rl                 ; 2 uses
  %i.sa = fmul float %i.rz, %i.rz
  %i.sb = fpext float %i.sa to double
  %i.sc = fmul double %i.sb, 2.500000e-01
  %i.sd = fmul <2 x float> %i.rh, <float poison, float 4.000000e+00>
  %7 = shufflevector <2 x float> %i.rh, <2 x float> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.se = fpext <2 x float> %7 to <2 x double>    ; 2 uses
  %i.sf = extractelement <2 x double> %i.se, i64 0
  %i.sg = fmul double %i.sf, -7.000000e+00
  %i.sh = fmul float %i.ry, %i.ry
  %i.si = insertelement <4 x float> %i.rt, float %i.sh, i64 1
  %i.sj = fpext <4 x float> %i.si to <4 x double> ; 2 uses
  %i.sk = insertelement <4 x double> poison, double %i.rw, i64 0
  %i.sl = insertelement <4 x double> %i.sk, double %i.sc, i64 1
  %i.sm = fneg <2 x double> %i.se                 ; 2 uses
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.so = shufflevector <4 x double> %i.sl, <4 x double> %i.sn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sp = insertelement <4 x double> %i.so, double %i.sg, i64 3
  %i.sq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.sj, <4 x double> <double 3.000000e+00, double f0x3FF1555555555555, double 3.000000e+00, double 2.000000e+00>, <4 x double> %i.sp) ; 4 uses
  %i.sr = extractelement <4 x double> %i.sq, i64 1
  %i.ss = fadd double %i.sr, f0x3E45798EDA22F6A5  ; 2 uses
  %i.st = fmul double %i.ss, %i.ss
  %i.su = fdiv double 6.000000e-01, %i.st         ; 2 uses
  %i.sv = extractelement <4 x double> %i.sq, i64 2
  %i.sw = fadd double %i.sv, %i.rs
  %i.sx = shufflevector <4 x double> %i.sq, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.sy = insertelement <2 x double> %i.sx, double %i.sw, i64 1 ; 2 uses
  %i.sz = fmul <2 x double> %i.sy, %i.sy
  %i.ta = fmul <2 x double> %i.sz, splat (double 2.500000e-01)
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rr, <2 x double> splat (double f0x3FF1555555555555), <2 x double> %i.ta)
  %i.tc = fadd <2 x double> %i.tb, splat (double f0x3E45798EDA22F6A5) ; 2 uses
  %i.td = fmul <2 x double> %i.tc, %i.tc
  %i.te = fdiv <2 x double> <double 1.000000e-01, double 3.000000e-01>, %i.td ; 2 uses
  %i.tf = extractelement <4 x double> %i.sq, i64 3
  %i.tg = extractelement <4 x double> %i.sj, i64 0 ; 3 uses
  %i.th = tail call double @llvm.fmuladd.f64(double %i.tg, double 1.100000e+01, double %i.tf)
  %i.ti = extractelement <2 x double> %i.sm, i64 0
  %i.tj = tail call double @llvm.fmuladd.f64(double %i.tg, double 5.000000e+00, double %i.ti)
  %i.tk = fpext float %i.rl to double             ; 2 uses
  %i.tl = tail call double @llvm.fmuladd.f64(double %i.tk, double 2.000000e+00, double %i.tj)
  %i.tm = fmul double %i.tl, %i.su
  %i.tn = extractelement <2 x double> %i.te, i64 0 ; 2 uses
  %i.to = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.th, double %i.tm)
  %i.tp = fmul double %i.tk, 5.000000e+00
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.tg, double 2.000000e+00, double %i.tp)
  %i.tr = fsub double %i.tq, %i.rs
  %i.ts = extractelement <2 x double> %i.te, i64 1 ; 2 uses
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.ts, double %i.tr, double %i.to)
  %i.tu = fptrunc double %i.tt to float
  %i.tv = fpext float %i.tu to double
  %i.tw = fadd double %i.tn, %i.su
  %i.tx = fadd double %i.tw, %i.ts
  %i.ty = fmul double %i.tx, 6.000000e+00
  %i.tz = fdiv double %i.tv, %i.ty
  %i.ua = fptrunc double %i.tz to float
  %i.ub = fneg float %i.ua
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.uc = phi float [ %i.qp, %bb.h ], [ %i.ub, %bb.i ]
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ga, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.nb, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.uc, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE4ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSZ_FvS15_fESt12_PlaceholderILi1EES1A_ILi2EEfEEE9_M_invokeERKSt9_Any_dataOS10_S15_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1337   ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1341
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !185 ; 3 uses
  %.elt4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack5.i.i.i.i.i.i = load i64, ptr %.elt4.i.i.i.i.i.i, align 8, !tbaa !185
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack5.i.i.i.i.i.i ; 2 uses
  %i.d = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !184
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE4ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfESt12_PlaceholderILi1EES18_ILi2EEfEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE4ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfESt12_PlaceholderILi1EES18_ILi2EEfEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_13DiscreteFieldINS5_INS7_INS8_INS9_INS9_INSA_INS2_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS3_10BoxSamplerEEENS2_4util15NullInterrupterEE6AdvectINSI_15UniformScaleMapELNSI_20BiasedGradientSchemeE4ELNSI_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfESt12_PlaceholderILi1EES18_ILi2EEfEEJPS10_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES1G_E4typeEOS1H_DpOS1I_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !347
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(73) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.l), !inline_history !5862
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE4ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSZ_FvS15_fESt12_PlaceholderILi1EES1A_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1G_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE4ELNSH_25TemporalIntegrationSchemeE0EEEFvRKNS5_11LeafManagerISE_E9LeafRangeEfESt12_PlaceholderILi1EES17_ILi2EEfEE, ptr %0, align 8, !tbaa !411
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1337
  store ptr %i.a, ptr %0, align 8, !tbaa !1337
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !1337
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !1337
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1337   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #27
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools17LevelSetAdvectionINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS4_13DiscreteFieldINS6_INS8_INS9_INSA_INSA_INSB_INS3_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS4_10BoxSamplerEEENS3_4util15NullInterrupterEE6AdvectINSJ_15UniformScaleMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfESt12_PlaceholderILi1EES19_ILi2EEfEEE10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools17LevelSetAdvectionINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_13DiscreteFieldINS3_INS5_INS6_INS7_INS7_INS8_INS0_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEEENS0_4util15NullInterrupterEE6AdvectINSG_15UniformScaleMapELNSG_20BiasedGradientSchemeE4ELNSG_25TemporalIntegrationSchemeE0EEclERKNS4_11LeafManagerISD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE4ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclES10_S15_.exit

_ZNKSt8functionIFvPN7openvdb5v13_05tools17LevelSetAdvectionINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_13DiscreteFieldINS4_INS6_INS7_INS8_INS8_INS9_INS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEEEEEENS2_10BoxSamplerEEENS1_4util15NullInterrupterEE6AdvectINSH_15UniformScaleMapELNSH_20BiasedGradientSchemeE4ELNSH_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclES10_S15_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !1341
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5864
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !5863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !231
  store i8 0, ptr %i.g, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.48, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #16 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !232    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !185
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
