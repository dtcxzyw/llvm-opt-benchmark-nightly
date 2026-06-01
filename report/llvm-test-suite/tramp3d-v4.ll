inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_SH_SH_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !2661, !noalias !12573
  store i32 %i.ca, ptr %i.ao, align 8, !tbaa !2661, !alias.scope !12573
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  store i32 %i.ay, ptr %7, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bh, ptr %i.aq, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bk, ptr %i.ar, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bq, ptr %i.as, align 4, !tbaa !4, !alias.scope !12581
  store i32 %i.bt, ptr %i.at, align 4, !tbaa !4, !alias.scope !12581
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_EclI5INodeILi3EEEEN5View1ISE_T_E6Type_tERKSJ_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.665) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(36) %6)
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.au) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.av) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.aw) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.cc = load ptr, ptr %5, align 8, !tbaa !6055
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.cb, %i.ce
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12584

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_SE_SE_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %class.Field.571, align 8           ; 5 uses
  %8 = alloca %class.Field.571, align 8           ; 5 uses
  %9 = alloca %struct.EngineView, align 1         ; 7 uses
  %10 = alloca %struct.MultiArg4.666, align 8     ; 8 uses
  %11 = alloca %class.Interval.108, align 16      ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !12585
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !12585
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !12585
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47, !noalias !12585
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %9), !noalias !12585
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS8_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(576) %10, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %8)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !12585
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !12585
  %i.aj = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.aj, ptr %11, align 16, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !4
  store <2 x i32> %i.am, ptr %i.ak, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.an) #47
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ao) #47
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ap) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %10) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !719
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !719
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #48
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #48
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_EN6Forgas9APressureILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 9 uses
  %8 = alloca %struct.MultiArg4.666, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12595)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !12598 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !12598
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.d, ptr %7, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4, !alias.scope !12598
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4, !noalias !12598
  %i.t = add i32 %i.q, %i.l
  %reass.sub.i.1.i.i = sub i32 %i.t, %i.o
  %i.u = add i32 %reass.sub.i.1.i.i, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.o, ptr %i.v, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4, !alias.scope !12598
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4, !noalias !12598 ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4, !noalias !12598 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4, !noalias !12598
  %i.ag = add i32 %i.ad, %i.y
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !12598
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !12598
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZNK9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg4.666) align 8 %8, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %1, align 8
  %i.ak = call noalias noundef nonnull dereferenceable(728) ptr @_Znwm(i64 noundef 728) #45 ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !2454
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ao, align 8, !tbaa !2701
  %i.ap = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE, i64 16), ptr %i.ak, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(576) %i.ar, ptr noundef nonnull align 8 dereferenceable(576) %8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 608
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  store i32 %i.c, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 628
  store i32 %i.f, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  store i32 %i.n, ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 636
  store i32 %i.q, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 640
  store i32 %i.aa, ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 644
  store i32 %i.ad, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 648 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 688
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.ak, ptr %5, align 8, !tbaa !6175
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12599
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(28) %i.ak) #47, !inline_history !12599
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bi) #47
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(576) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(576) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(728) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 728) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_E15EvaluateLocLoopIN6Forgas9APressureILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(728) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.873, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !8886
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !12600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN6Forgas9APressureILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EN6Forgas9APressureILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12600 ; 2 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8886 ; 9 uses
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge36, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !6263
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !6266
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !6262
  %i.af = getelementptr inbounds [88 x i8], ptr %i.ad, i64 %i.ae ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2836 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !741 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 116
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.at = load i32, ptr %i.as, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2836 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 204
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !4  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.bc = zext i32 %i.a to i64
  %i.bd = add i32 %i.g, %i.a
  %i.be = add i32 %i.i, %i.c
  %i.bf = add i32 %i.k, %i.e
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge32.split
  %.02234 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.bg, %._crit_edge32.split ] ; 7 uses
  %i.bg = add i32 %.02234, 1                      ; 3 uses
  %i.bh = mul nsw i32 %i.al, %.02234              ; 2 uses
  %invariant.op = add i32 %i.bh, 1
  %i.bi = mul nsw i32 %i.at, %.02234
  %i.bj = mul nsw i32 %i.ba, %i.bg
  %i.bk = mul nsw i32 %i.ba, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %.02131 = phi i32 [ %i.c, %.preheader27 ], [ %i.bm, %._crit_edge ] ; 7 uses
  %i.bl = mul nsw i32 %i.aj, %.02131
  %i.bm = add nsw i32 %.02131, 1                  ; 3 uses
  %i.bn = mul nsw i32 %i.ar, %i.bm
  %i.bo = mul nsw i32 %i.ar, %.02131
  %i.bp = mul nsw i32 %i.ay, %.02131
  br label %bb.b

._crit_edge32.split:                              ; preds = %._crit_edge
  %exitcond44.not = icmp eq i32 %i.bg, %i.bf
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader27, !llvm.loop !12602

._crit_edge:                                      ; preds = %_ZNK6Forgas9APressureILi3EEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_EEvRKT_RKT0_RKT1_RKT2_RK3LocILi3EE.exit
  %exitcond43.not = icmp eq i32 %i.bm, %i.be
end_hunk_0
begin_hunk_1_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  store i32 %i.bk, ptr %i.an, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bo, ptr %i.ao, align 8, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bt, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.bx, ptr %i.aq, align 8, !tbaa !4, !alias.scope !13188, !noalias !13181
  store i32 %i.cc, ptr %i.ar, align 4, !tbaa !4, !alias.scope !13188, !noalias !13181
  store ptr %i.ce, ptr %i.as, align 8, !tbaa !2658, !alias.scope !13188, !noalias !13181
  store i32 %i.cg, ptr %i.at, align 8, !tbaa !2661, !alias.scope !13188, !noalias !13181
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !13191
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !13178
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !13181
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47, !noalias !13178
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !13192
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !13202
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.au), !noalias !13202
  store i32 %i.bf, ptr %6, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.bx, ptr %i.ay, align 8, !tbaa !4, !alias.scope !13199, !noalias !13192
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !4, !alias.scope !13199, !noalias !13192
  store ptr %i.ce, ptr %i.ba, align 8, !tbaa !2658, !alias.scope !13199, !noalias !13192
  store i32 %i.cg, ptr %i.bb, align 8, !tbaa !2661, !alias.scope !13199, !noalias !13192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !13202
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !13178
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !13192
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESA_EC2ERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(144) %10)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47, !noalias !13178
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !13178
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bc) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  %i.ci = load ptr, ptr %11, align 8, !tbaa !6055
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.ch, %i.ck
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13203

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %struct.EngineView, align 1         ; 5 uses
  %8 = alloca %struct.MultiArg2.649, align 8      ; 6 uses
  %9 = alloca %class.Interval.108, align 16       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !13204
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !13204
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13204
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !13204
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !13204
  %i.ah = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %9, align 16, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.al) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.am = load i32, ptr %i.a, align 8, !tbaa !719
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 8, !tbaa !719
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #48
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #48
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
  %10 = alloca %class.Interval.108, align 4       ; 9 uses
  %11 = alloca %class.Field.571, align 8          ; 5 uses
  %12 = alloca %class.Field.571, align 8          ; 5 uses
  %13 = alloca %struct.MultiArg2.649, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !13211 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !13211
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !4, !noalias !13211
  %i.s = add i32 %i.p, %i.k
  %reass.sub.i.1.i.i = sub i32 %i.s, %i.n
  %i.t = add i32 %reass.sub.i.1.i.i, %i.r         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !4, !noalias !13211 ; 2 uses
  %i.y = sub nsw i32 %i.v, %i.x                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !13211 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4, !noalias !13211
  %i.ad = add i32 %i.aa, %i.v
  %reass.sub.i.2.i.i = sub i32 %i.ad, %i.y
  %i.ae = add i32 %reass.sub.i.2.i.i, %i.ac       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47, !noalias !13216
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47, !noalias !13219
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47, !noalias !13229
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %9, ptr noundef nonnull align 8 dereferenceable(288) %0), !noalias !13229
  store i32 %i.d, ptr %10, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.i, ptr %i.af, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !4, !alias.scope !13230, !noalias !13219
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !13229
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(24) %10), !noalias !13216
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47, !noalias !13219
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47, !noalias !13216
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47, !noalias !13235
  call void @llvm.experimental.noalias.scope.decl(metadata !13242)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !13245
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ak), !noalias !13245
  store i32 %i.d, ptr %8, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.i, ptr %i.al, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.n, ptr %i.am, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.t, ptr %i.an, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.y, ptr %i.ao, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13246, !noalias !13235
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !13245
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 4 dereferenceable(24) %8), !noalias !13216
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !13235
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %12)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47, !noalias !13216
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47, !noalias !13216
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %1, align 8
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #45 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !2454
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.au, align 8, !tbaa !2701
  %i.av = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %i.aq, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  store i32 %i.f, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  store i32 %i.m, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 %i.p, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  store i32 %i.x, ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 356
  store i32 %i.aa, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 360 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 400
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #47, !inline_history !13251
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #47, !inline_history !13251
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.893, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13252 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge36, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8422 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6266
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2836 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2836 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6266
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6262
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bj = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.bk = add i32 %i.c, 1
  %i.bl = add i32 %i.bi, %i.bj
  %i.bm = mul i32 %i.ae, %i.bk                    ; 2 uses
  %i.bn = add i32 %i.bi, %i.bm
  %i.bo = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bp = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bn, i64 1
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bo, i64 2
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bm, i64 3
  %i.bt = insertelement <4 x i32> <i32 -1, i32 -1, i32 poison, i32 poison>, i32 %i.bj, i64 2
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bo, i64 3
  %i.bv = add <4 x i32> %i.bs, %i.bu              ; 2 uses
  %i.bw = mul i32 %i.e, %i.am
  %i.bx = add i32 %i.a, %i.bw
  %i.by = mul i32 %i.c, %i.ak
  %i.bz = add i32 %i.bx, %i.by
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.ca = mul i32 %i.e, %i.ax
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = mul i32 %i.c, %i.av
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = add i32 %i.g, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.ch
  %i.ci = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.cj = add i32 %i.a, %i.ci                     ; 2 uses
  %i.ck = add i32 %i.c, 1
  %i.cl = mul i32 %i.ae, %i.ck                    ; 2 uses
  %i.cm = add i32 %i.cj, %i.cl
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.ch
  %i.cn = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.co = add i32 %i.cj, %i.cn
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.ch
end_hunk_1
begin_hunk_2_@_ZN17MultiArgEvaluatorI28RemoteMultiPatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSO_4sizeEERKT2_:bb.a
  store i32 %i.bk, ptr %i.an, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bo, ptr %i.ao, align 8, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bt, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.bx, ptr %i.aq, align 8, !tbaa !4, !alias.scope !13298, !noalias !13291
  store i32 %i.cc, ptr %i.ar, align 4, !tbaa !4, !alias.scope !13298, !noalias !13291
  store ptr %i.ce, ptr %i.as, align 8, !tbaa !2658, !alias.scope !13298, !noalias !13291
  store i32 %i.cg, ptr %i.at, align 8, !tbaa !2661, !alias.scope !13298, !noalias !13291
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !13301
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !13288
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !13291
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47, !noalias !13288
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !13302
  call void @llvm.experimental.noalias.scope.decl(metadata !13309)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !13312
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.au), !noalias !13312
  store i32 %i.bf, ptr %6, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bo, ptr %i.aw, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.bx, ptr %i.ay, align 8, !tbaa !4, !alias.scope !13309, !noalias !13302
  store i32 %i.cc, ptr %i.az, align 4, !tbaa !4, !alias.scope !13309, !noalias !13302
  store ptr %i.ce, ptr %i.ba, align 8, !tbaa !2658, !alias.scope !13309, !noalias !13302
  store i32 %i.cg, ptr %i.bb, align 8, !tbaa !2661, !alias.scope !13309, !noalias !13302
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !13312
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEC2Id10MultiPatchI7GridTagS6_I5BrickEEEERKS_IS5_T_T0_ERK5INodeILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !13288
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !13302
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESA_EC2ERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(144) %10)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47, !noalias !13288
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !13288
  call void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bc) #47
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  %i.ci = load ptr, ptr %11, align 8, !tbaa !6055
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2645
  %.not = icmp eq ptr %i.ch, %i.ck
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13313

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN13RefCountedPtrI21SimpleIntersectorDataILi3EEE10invalidateEv(ptr noundef nonnull align 8 dereferenceable(9) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI29RemoteSinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEESE_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISI_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSL_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.Field.571, align 8           ; 5 uses
  %6 = alloca %class.Field.571, align 8           ; 5 uses
  %7 = alloca %struct.EngineView, align 1         ; 5 uses
  %8 = alloca %struct.MultiArg2.649, align 8      ; 6 uses
  %9 = alloca %class.Interval.108, align 16       ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !719
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6080
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6083
  %i.h = load i64, ptr %i.c, align 8, !tbaa !6086
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2830
  tail call void @_ZNK14GatherContexts18GatherContextsData10addContextEi(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144  ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !141  ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i

_ZNK14GatherContexts17mostCommonContextEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  br label %bb.d

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i: ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.n, ptr %i.m, i64 noundef %i.u)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.n, ptr %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1547 ; 6 uses
  %.not24.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not24.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i, %.critedge.i.i.i
  %.sroa.04.027.i.i.i = phi ptr [ %spec.select7.i.i.i, %.critedge.i.i.i ], [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ]
  %.026.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 2 uses
  %.sroa.010.025.i.i.i = phi ptr [ %.sroa.010.1.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.v, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ] ; 3 uses
  %.sroa.010.116.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.025.i.i.i, i64 4 ; 3 uses
  %.not1517.i.i.i = icmp eq ptr %.sroa.010.116.i.i.i, %i.w
  br i1 %.not1517.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.x = load i32, ptr %.sroa.010.025.i.i.i, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.010.119.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 3 uses
  %.0618.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.y = load i32, ptr %.sroa.010.119.i.i.i, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.x
  br i1 %i.z, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %.0618.i.i.i, 1         ; 2 uses
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.119.i.i.i, i64 4 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %.sroa.010.1.i.i.i, %i.w
  br i1 %.not15.i.i.i, label %.critedge.i.i.i, label %bb.b, !llvm.loop !2688

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b, %.preheader.i.i.i
  %.06.lcssa.i.i.i = phi i32 [ 1, %.preheader.i.i.i ], [ %.0618.i.i.i, %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  %.sroa.010.1.lcssa.i.i.i = phi ptr [ %.sroa.010.116.i.i.i, %.preheader.i.i.i ], [ %.sroa.010.119.i.i.i, %bb.b ], [ %.sroa.010.1.i.i.i, %bb.c ] ; 2 uses
  %i.ab = icmp samesign ugt i32 %.06.lcssa.i.i.i, %.026.i.i.i
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %.06.lcssa.i.i.i, i32 %.026.i.i.i)
  %spec.select7.i.i.i = select i1 %i.ab, ptr %.sroa.010.025.i.i.i, ptr %.sroa.04.027.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.010.1.lcssa.i.i.i, %i.w
  br i1 %.not.i.i.i, label %_ZNK14GatherContexts17mostCommonContextEv.exit, label %.preheader.i.i.i, !llvm.loop !2689

_ZNK14GatherContexts17mostCommonContextEv.exit:   ; preds = %.critedge.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %i.w, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i.i ], [ %spec.select7.i.i.i, %.critedge.i.i.i ]
  %i.ac = load i32, ptr %.sroa.04.0.lcssa.i.i.i, align 4, !tbaa !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = load i32, ptr @_ZN5Pooma11myContext_gE, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit.thread, %_ZNK14GatherContexts17mostCommonContextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !13314
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13314
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !13314
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IS5_d6RemoteIS6_E10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !13314
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %6)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !13314
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !13314
  %i.ah = load <4 x i32>, ptr %2, align 4, !tbaa !4
  store <4 x i32> %i.ah, ptr %9, align 16, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 16, !tbaa !4
  call void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.al) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %bb.e

bb.e:                                             ; preds = %_ZNK14GatherContexts17mostCommonContextEv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.am = load i32, ptr %i.a, align 8, !tbaa !719
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.a, align 8, !tbaa !719
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_ZN14GatherContextsD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #48
  br label %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i

_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #48
  br label %_ZN14GatherContextsD2Ev.exit

_ZN14GatherContextsD2Ev.exit:                     ; preds = %bb.e, %_ZN14GatherContexts18GatherContextsDataD2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.DataObjectRequest.349, align 8 ; 5 uses
  %6 = alloca %struct.ExpressionApply.578, align 8 ; 4 uses
  %7 = alloca %class.Interval.108, align 4        ; 3 uses
  %8 = alloca %class.Interval.108, align 4        ; 9 uses
  %9 = alloca %class.Interval.108, align 4        ; 3 uses
  %10 = alloca %class.Interval.108, align 4       ; 9 uses
  %11 = alloca %class.Field.571, align 8          ; 5 uses
  %12 = alloca %class.Field.571, align 8          ; 5 uses
  %13 = alloca %struct.MultiArg2.649, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %2, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !4, !noalias !13321 ; 2 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !13321
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !4, !noalias !13321
  %i.s = add i32 %i.p, %i.k
  %reass.sub.i.1.i.i = sub i32 %i.s, %i.n
  %i.t = add i32 %reass.sub.i.1.i.i, %i.r         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !4, !noalias !13321 ; 2 uses
  %i.y = sub nsw i32 %i.v, %i.x                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !13321 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4, !noalias !13321
  %i.ad = add i32 %i.aa, %i.v
  %reass.sub.i.2.i.i = sub i32 %i.ad, %i.y
  %i.ae = add i32 %reass.sub.i.2.i.i, %i.ac       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47, !noalias !13326
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47, !noalias !13329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13336)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47, !noalias !13339
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %9, ptr noundef nonnull align 8 dereferenceable(288) %0), !noalias !13339
  store i32 %i.d, ptr %10, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.i, ptr %i.af, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.t, ptr %i.ah, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !4, !alias.scope !13340, !noalias !13329
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !13339
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(24) %10), !noalias !13326
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47, !noalias !13329
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47, !noalias !13326
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47, !noalias !13345
  call void @llvm.experimental.noalias.scope.decl(metadata !13352)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !13355
  call void @_ZNK11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUE11totalDomainEv(ptr dead_on_unwind nonnull writable sret(%class.Interval.108) align 4 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.ak), !noalias !13355
  store i32 %i.d, ptr %8, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.i, ptr %i.al, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.n, ptr %i.am, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.t, ptr %i.an, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.y, ptr %i.ao, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !4, !alias.scope !13356, !noalias !13345
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47, !noalias !13355
  call void @_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEC2IdS6_EERKS_IS5_T_T0_ERK8IntervalILi3EE(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 4 dereferenceable(24) %8), !noalias !13326
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !13345
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %12)
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47, !noalias !13326
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47, !noalias !13326
  %.sroa.0.i.sroa.0.0.copyload = load <2 x double>, ptr %1, align 8
  %i.aq = call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #45 ; 19 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !2454
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.au, align 8, !tbaa !2701
  %i.av = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !2703
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %i.aq, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  store <2 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 336
  store i32 %i.c, ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  store i32 %i.f, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  store i32 %i.m, ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 348
  store i32 %i.p, ptr %i.bc, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
  store i32 %i.x, ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 356
  store i32 %i.aa, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 360 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 400
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #47, !inline_history !13361
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #47, !inline_history !13361
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6034 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6039 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6034 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.896, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13362
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13362 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not33 = icmp sgt i32 %i.e, %i.m
  br i1 %.not33, label %._crit_edge36, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2330 = icmp sgt i32 %i.c, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2330, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge36, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !8422 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !6263
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !6266
  %i.z = load i64, ptr %i.v, align 8, !tbaa !6262
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.y, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2836 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !4  ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2836 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4  ; 5 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !6263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6266
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !6262
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !4  ; 5 uses
  %i.ay = zext i32 %i.a to i64                    ; 4 uses
  %i.az = add i32 %i.g, %i.a
  %i.ba = add i32 %i.i, %i.c
  %i.bb = add i32 %i.k, %i.e
  %i.bc = add i32 %i.g, -1                        ; 3 uses
  %i.bd = mul i32 %i.e, %i.ax
  %i.be = add i32 %i.a, %i.bd
  %i.bf = mul i32 %i.c, %i.av
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.bi = mul i32 %i.c, %i.ae
  %i.bj = add i32 %i.c, -1
  %i.bk = mul i32 %i.ae, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.a, %i.bh
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = add i32 %i.a, %i.bh                     ; 2 uses
  %i.bo = add i32 %i.bn, %i.bi                    ; 2 uses
  %i.bp = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.bq = insertelement <2 x i32> %i.bp, i32 %i.bn, i64 1
  %i.br = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.bk, i64 1
  %i.bs = add <2 x i32> %i.bq, %i.br
  %i.bt = add i32 %i.bm, 1
  %i.bu = mul i32 %i.e, %i.am
  %i.bv = add i32 %i.a, %i.bu
  %i.bw = mul i32 %i.c, %i.ak
  %i.bx = add i32 %i.bv, %i.bw
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.by = mul i32 %i.e, %i.ax
  %i.bz = add i32 %i.a, %i.by
  %i.ca = mul i32 %i.c, %i.av
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = add i32 %i.g, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.cf
  %i.cg = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.ch = add i32 %i.a, %i.cg
  %i.ci = add i32 %i.c, -1
  %i.cj = mul i32 %i.ae, %i.ci
  %i.ck = add i32 %i.ch, %i.cj                    ; 2 uses
  %i.cl = add i32 %i.ck, 1
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.cf
  %i.cm = add i32 %i.a, %i.cg
  %i.cn = mul i32 %i.c, %i.ae
  %i.co = add i32 %i.cm, %i.cn                    ; 2 uses
end_hunk_2
