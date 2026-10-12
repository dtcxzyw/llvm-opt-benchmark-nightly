Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMorph?download=true
inline.NumInlined: 30422
inline.NumDeleted: 8287
loop-unroll.NumCompletelyUnrolled: 293
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 900
begin_hunk_0_@_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EE5eulerILi0ELi1EEEvRKNS4_11LeafManagerISD_E9LeafRangeEfjjj:bb.a
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = lshr i32 %i.fy, 3
  %i.gb = and i32 %i.ga, 7
  %i.gc = and i32 %i.fy, 7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !244
  %i.gf = add nsw i32 %i.ge, %i.fz
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 84
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !244
  %i.gi = add nsw i32 %i.gh, %i.gb
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !244
  %i.gl = add nsw i32 %i.gk, %i.gc
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.gi to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.gf to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.ah, align 8
  store i32 %i.gl, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !219
  %i.gm = load ptr, ptr %i.ai, align 8, !tbaa !474
  %i.gn = zext i32 %i.fy to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !205
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !529
  store float %i.gp, ptr %i.gq, align 4, !tbaa !205
  invoke void @_ZN7openvdb5v13_04math20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(140) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.ah)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit unwind label %bb.am

_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc65
  %i.gr = load ptr, ptr %i.aj, align 8, !tbaa !529
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !205
  %i.gt = load float, ptr %i.fs, align 4, !tbaa !205
  %i.gu = invoke noundef float @_ZN7openvdb5v13_04math16GradientNormSqrdINS1_10UnitaryMapELNS1_20BiasedGradientSchemeE4EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENT_9ValueTypeERKS3_RKSL_(ptr noundef nonnull align 8 dereferenceable(384) %i.r, ptr noundef nonnull align 8 dereferenceable(140) %6)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit
  %i.gv = fneg float %i.gt
  %i.gw = fmul float %2, %i.gv
  %i.gx = call float @llvm.fmuladd.f32(float %i.gw, float %i.gu, float %i.gs)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fr
  store float %i.gx, ptr %i.gy, align 4, !tbaa !205
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !449
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ao
  %i.gz = phi i32 [ %i.fq, %.lr.ph ], [ %.pre, %bb.ao ]
  %i.ha = load ptr, ptr %i.ak, align 8, !tbaa !467 ; 8 uses
  %i.hb = add i32 %i.gz, 1                        ; 4 uses
  %i.hc = lshr i32 %i.hb, 6                       ; 3 uses
  %i.hd = icmp ugt i32 %i.hb, 511
  br i1 %i.hd, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.he = and i32 %i.hb, 63
  %i.hf = zext nneg i32 %i.hc to i64              ; 8 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !266 ; 2 uses
  %i.hi = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hj = shl nuw i64 1, %i.hi
  %i.hk = and i64 %i.hh, %i.hj
  %.not.i.i.i.i67 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i67, label %bb.ar, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.ar:                                            ; preds = %bb.aq
  %i.hl = shl nsw i64 -1, %i.hi
  %i.hm = and i64 %i.hh, %i.hl                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.hm, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i68.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i68.preheader:                       ; preds = %bb.ar
  %exitcond.not.i.i.i.i112 = icmp eq i32 %i.hc, 7
  br i1 %exitcond.not.i.i.i.i112, label %._crit_edge, label %.lr.ph114

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph114
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %.lr.ph.i.i.i.i68
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.hf, 2 ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.1
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ho, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i68.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.1:                               ; preds = %.lr.ph114.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph114.2

.lr.ph114.2:                                      ; preds = %.lr.ph.i.i.i.i68.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.hf, 3 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.2
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.hq, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i68.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.2:                               ; preds = %.lr.ph114.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph114.3

.lr.ph114.3:                                      ; preds = %.lr.ph.i.i.i.i68.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.hf, 4 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.3
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.hs, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i68.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.3:                               ; preds = %.lr.ph114.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph114.4

.lr.ph114.4:                                      ; preds = %.lr.ph.i.i.i.i68.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.hf, 5 ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.4
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.hu, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i68.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.4:                               ; preds = %.lr.ph114.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph114.5

.lr.ph114.5:                                      ; preds = %.lr.ph.i.i.i.i68.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.hf, 6 ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.5
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.hw, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i68.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph.i.i.i.i68.5:                               ; preds = %.lr.ph114.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph114.6

.lr.ph114.6:                                      ; preds = %.lr.ph.i.i.i.i68.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.hf, 7 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i.6
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.hy, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.lr.ph114:                                        ; preds = %.lr.ph.i.i.i.i68.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.hf, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i.i.i.i
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !266 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i68, label %.critedge.loopexit.i.i.i.i, !llvm.loop !12

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph114.6, %.lr.ph114.5, %.lr.ph114.4, %.lr.ph114.3, %.lr.ph114.2, %.lr.ph114.1, %.lr.ph114
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph114 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph114.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph114.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph114.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph114.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph114.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph114.6 ]
  %.lcssa = phi i64 [ %i.ia, %.lr.ph114 ], [ %i.ho, %.lr.ph114.1 ], [ %i.hq, %.lr.ph114.2 ], [ %i.hs, %.lr.ph114.3 ], [ %i.hu, %.lr.ph114.4 ], [ %i.hw, %.lr.ph114.5 ], [ %i.hy, %.lr.ph114.6 ]
  %i.ib = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.ar
  %.016.lcssa.i.i.i.i = phi i32 [ %i.hc, %bb.ar ], [ %i.ib, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.hm, %bb.ar ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.ic = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.id = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = or disjoint i32 %i.ic, %i.ie
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.aq, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.if, %.critedge.i.i.i.i ], [ %i.hb, %bb.aq ] ; 3 uses
  store i32 %.118.i.i.i.i, ptr %i.ag, align 8, !tbaa !449
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.as:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.am, %bb.as, %bb.al
  %.pn23 = phi { ptr, i32 } [ %i.fp, %bb.al ], [ %i.ig, %bb.as ], [ %i.fw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

bb.au:                                            ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE4dataEv.exit, %._crit_edge
  %i.ih = add nuw i64 %.sroa.9.082, 1             ; 2 uses
  %i.ii = load i64, ptr %1, align 8, !tbaa !338
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %bb.h, label %._crit_edge85, !llvm.loop !3593

.body:                                            ; preds = %bb.ak, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53, %bb.aj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36, %bb.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.at
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i53 ], [ %i.dv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i36 ], [ %i.ch, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn23, %bb.at ], [ %i.cm, %bb.q ], [ %i.fn, %bb.aj ], [ %i.fo, %bb.ak ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn23.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN7openvdb5v13_04math16GradientNormSqrdINS1_10UnitaryMapELNS1_20BiasedGradientSchemeE4EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS9_8RootNodeINS9_12InternalNodeINSC_INS9_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENT_9ValueTypeERKS3_RKSL_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call { <2 x float>, float } @_ZN7openvdb5v13_04math10ISGradientILNS1_7DSchemeE12EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS1_4Vec3INT_9ValueTypeEEERKSL_(ptr noundef nonnull align 8 dereferenceable(140) %1) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.a, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %2 = load double, ptr %i.e, align 8, !tbaa !234, !noalias !3610
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %3 = load double, ptr %i.f, align 8, !tbaa !234, !noalias !3610
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %4 = load double, ptr %i.g, align 8, !tbaa !234, !noalias !3610
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !234, !noalias !3610
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !234, !noalias !3610
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !234, !noalias !3610
  %i.k = tail call { <2 x float>, float } @_ZN7openvdb5v13_04math10ISGradientILNS1_7DSchemeE13EE6resultINS1_20NineteenPointStencilINS0_4GridINS0_4tree4TreeINS8_8RootNodeINS8_12InternalNodeINSB_INS8_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEEEENS1_4Vec3INT_9ValueTypeEEERKSL_(ptr noundef nonnull align 8 dereferenceable(140) %1) ; 2 uses
  %.fca.0.extract.i9 = extractvalue { <2 x float>, float } %i.k, 0 ; 2 uses
  %.fca.1.extract.i10 = extractvalue { <2 x float>, float } %i.k, 1
  %i.l = load <2 x double>, ptr %i.b, align 8, !tbaa !234, !noalias !3611
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !234, !noalias !3611
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !234, !noalias !3611
  %i.o = load double, ptr %i.e, align 8, !tbaa !234, !noalias !3611
  %i.p = load double, ptr %i.f, align 8, !tbaa !234, !noalias !3611
  %i.q = shufflevector <2 x float> %.fca.0.extract.i, <2 x float> %.fca.0.extract.i9, <2 x i32> <i32 1, i32 3>
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 3 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.i, %i.s
  %i.u = shufflevector <2 x float> %.fca.0.extract.i, <2 x float> %.fca.0.extract.i9, <2 x i32> <i32 0, i32 2>
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 3 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.h, <2 x double> %i.t)
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %i.y = insertelement <2 x double> %5, double %i.p, i64 1
  %i.z = fmul <2 x double> %i.y, %i.r
  %6 = insertelement <2 x double> poison, double %2, i64 0
  %i.aa = insertelement <2 x double> %6, double %i.o, i64 1
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.aa, <2 x double> %i.z)
  %i.ac = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %i.m, %i.ac
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.l, <2 x double> %i.ad)
  %i.ag = load double, ptr %i.g, align 8, !tbaa !234, !noalias !3611
  %i.ah = insertelement <2 x float> poison, float %.fca.1.extract.i, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %.fca.1.extract.i10, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 3 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.j, <2 x double> %i.x) ; 3 uses
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.n, <2 x double> %i.af) ; 3 uses
  %7 = insertelement <2 x double> poison, double %4, i64 0
  %i.ap = insertelement <2 x double> %7, double %i.ag, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ap, <2 x double> %i.ab) ; 4 uses
  %i.ar = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  %i.as = extractelement <2 x double> %i.aq, i64 1 ; 3 uses
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !529
  %i.aw = load float, ptr %i.av, align 4, !tbaa !205
  %i.ax = fcmp ogt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = fcmp olt <2 x double> %i.ao, splat (double f0xB690000000000000)
  %i.az = select <2 x i1> %i.ay, <2 x float> zeroinitializer, <2 x float> %i.ar ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %i.bb = fcmp ogt <2 x double> %i.am, splat (double f0x3690000000000000)
  %i.bc = select <2 x i1> %i.bb, <2 x float> zeroinitializer, <2 x float> %i.an ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.bc           ; 2 uses
  %i.be = fcmp olt <2 x float> %i.ba, %i.bd
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.bd, <2 x float> %i.ba
  %i.bg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp olt double %i.as, f0xB690000000000000
  %.sroa.speculated80.i.i = select i1 %i.bh, float 0.000000e+00, float %i.at ; 2 uses
  %i.bi = fmul float %.sroa.speculated80.i.i, %.sroa.speculated80.i.i
  %i.bj = extractelement <2 x double> %i.aq, i64 0
  %i.bk = fcmp ogt double %i.bj, f0x3690000000000000
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIfEET_bRKNS1_4Vec3IS3_EES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.bl = fcmp ogt <2 x double> %i.ao, splat (double f0x3690000000000000)
  %i.bm = fcmp olt <2 x double> %i.am, splat (double f0xB690000000000000)
  %i.bn = select <2 x i1> %i.bl, <2 x float> zeroinitializer, <2 x float> %i.ar ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn           ; 2 uses
  %i.bp = select <2 x i1> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.an ; 2 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bp           ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bo, %i.bq
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bq, <2 x float> %i.bo
  %i.bt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bs)
  %i.bu = fcmp ogt double %i.as, f0x3690000000000000
  %.sroa.speculated62.i.i = select i1 %i.bu, float 0.000000e+00, float %i.at ; 2 uses
  %i.bv = fmul float %.sroa.speculated62.i.i, %.sroa.speculated62.i.i
  %i.bw = extractelement <2 x double> %i.aq, i64 0
  %i.bx = fcmp olt double %i.bw, f0xB690000000000000
  br label %_ZN7openvdb5v13_04math16GodunovsNormSqrdIfEET_bRKNS1_4Vec3IS3_EES7_.exit

_ZN7openvdb5v13_04math16GodunovsNormSqrdIfEET_bRKNS1_4Vec3IS3_EES7_.exit: ; preds = %bb.b, %bb.c
  %.sink113.i.i = phi i1 [ %i.bx, %bb.c ], [ %i.bk, %bb.b ]
  %.sink110.i.i = phi float [ %i.bv, %bb.c ], [ %i.bi, %bb.b ] ; 2 uses
  %.sink.i.i = phi float [ %i.bt, %bb.c ], [ %i.bg, %bb.b ]
  %i.by = extractelement <2 x double> %i.aq, i64 0
  %i.bz = fptrunc double %i.by to float
  %.sroa.speculated59.i.i = select i1 %.sink113.i.i, float 0.000000e+00, float %i.bz ; 2 uses
  %i.ca = fmul float %.sroa.speculated59.i.i, %.sroa.speculated59.i.i ; 2 uses
  %i.cb = fcmp olt float %.sink110.i.i, %i.ca
  %.sroa.speculated.i.i = select i1 %i.cb, float %i.ca, float %.sink110.i.i
  %i.cc = fadd float %.sink.i.i, %.sroa.speculated.i.i
  ret float %i.cc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_fjESt12_PlaceholderILi1EESZ_ILi2EEfiEEE9_M_invokeERKSt9_Any_dataOSP_SU_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !888    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !893
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %.elt5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack6.i.i.i.i.i.i = load i64, ptr %.elt5.i.i.i.i.i.i, align 8, !tbaa !219
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack6.i.i.i.i.i.i ; 2 uses
  %i.d = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !223
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math10UnitaryMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math10UnitaryMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS2_4GridINS2_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE5MorphINS2_4math10UnitaryMapELNSL_20BiasedGradientSchemeE4ELNSL_25TemporalIntegrationSchemeE0EEEFvRKNS6_11LeafManagerISF_E9LeafRangeEfjESt12_PlaceholderILi1EESX_ILi2EEfiEEJPSP_SU_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES15_E4typeEOS16_DpOS17_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !205
  %i.n = load i32, ptr %i.k, align 8, !tbaa !244
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.m, i32 noundef %i.n), !inline_history !3612
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_fjESt12_PlaceholderILi1EESZ_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS15_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEEFvRKNS5_11LeafManagerISE_E9LeafRangeEfjESt12_PlaceholderILi1EESW_ILi2EEfiEE, ptr %0, align 8, !tbaa !386
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !888
  store ptr %i.a, ptr %0, align 8, !tbaa !888
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !888
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !888
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !888    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_05tools16LevelSetMorphingINS3_4GridINS3_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS3_4util15NullInterrupterEE5MorphINS3_4math10UnitaryMapELNSM_20BiasedGradientSchemeE4ELNSM_25TemporalIntegrationSchemeE0EEEFvRKNS7_11LeafManagerISG_E9LeafRangeEfjESt12_PlaceholderILi1EESY_ILi2EEfiEEE10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools16LevelSetMorphingINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5MorphINS0_4math10UnitaryMapELNSJ_20BiasedGradientSchemeE4ELNSJ_25TemporalIntegrationSchemeE0EEclERKNS4_11LeafManagerISD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclESP_SU_.exit

_ZNKSt8functionIFvPN7openvdb5v13_05tools16LevelSetMorphingINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEE5MorphINS1_4math10UnitaryMapELNSK_20BiasedGradientSchemeE4ELNSK_25TemporalIntegrationSchemeE0EEERKNS5_11LeafManagerISE_E9LeafRangeEEEclESP_SU_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !893
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !894
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !218
  store i8 0, ptr %i.g, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #20 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !220    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !219
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
