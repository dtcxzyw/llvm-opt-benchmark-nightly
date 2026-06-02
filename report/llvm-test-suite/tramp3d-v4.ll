inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_SC_SC_SC_SC_EN6Forgas5VYUpdILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4, !noalias !13017
  %i.h = add i32 %i.f, %i.b
  %reass.sub.i.i.i = sub i32 %i.h, %i.d
  %i.i = add i32 %reass.sub.i.i.i, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.d, ptr %7, align 4, !tbaa !4, !alias.scope !13017
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4, !alias.scope !13017
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.o = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4, !noalias !13017
  %i.t = add i32 %i.q, %i.l
  %reass.sub.i.1.i.i = sub i32 %i.t, %i.o
  %i.u = add i32 %reass.sub.i.1.i.i, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.o, ptr %i.v, align 4, !tbaa !4, !alias.scope !13017
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4, !alias.scope !13017
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4, !noalias !13017 ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4, !noalias !13017 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4, !noalias !13017
  %i.ag = add i32 %i.ad, %i.y
  %reass.sub.i.2.i.i = sub i32 %i.ag, %i.ab
  %i.ah = add i32 %reass.sub.i.2.i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !4, !alias.scope !13017
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !4, !alias.scope !13017
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZNK9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_S8_EclI8IntervalILi3EEEEN5View1IS9_T_E6Type_tERKSE_(ptr dead_on_unwind nonnull writable sret(%struct.MultiArg6.877) align 8 %8, ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %i.ak = load i64, ptr %1, align 8
  %i.al = call noalias noundef nonnull dereferenceable(1008) ptr @_Znwm(i64 noundef 1008) #45 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !2607
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, ptr %i.ap, align 8, !tbaa !2854
  %i.aq = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2751
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !2856
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEE, i64 16), ptr %i.al, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @_ZN9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_S8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(864) %i.as, ptr noundef nonnull align 8 dereferenceable(864) %8)
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 896
  store i64 %i.ak, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 904
  store i32 %i.c, ptr %i.au, align 8, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 908
  store i32 %i.f, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 912
  store i32 %i.n, ptr %i.aw, align 8, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 916
  store i32 %i.q, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 920
  store i32 %i.aa, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 924
  store i32 %i.ad, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 928 ; 2 uses
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.am)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 968
  call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %i.al, ptr %5, align 8, !tbaa !6328
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %5, ptr %6, align 8, !tbaa !6330
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg6IT_T0_T1_T2_T3_T4_ERKT5_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(864) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !13018
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !73
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(28) %i.al) #47, !inline_history !13018
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 720
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bj) #47
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 576
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #47
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bl) #47
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 288
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bm) #47
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bn) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(864) %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(1008) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store ptr %1, ptr %2, align 8, !tbaa !6427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S8_S8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg6IT_T0_T1_T2_T3_T4_ERKT5_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(864) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6187 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !6192 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6187 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #48
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 752
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.w) #47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 464
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #47
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.y) #47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.z) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(864) %i.a) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(1008) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(1008) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1008) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(1008) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.882, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %i.b, ptr %1, align 8, !tbaa !12961
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13019
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 904
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_SB_EN6Forgas5VYUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_SB_EN6Forgas5VYUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13019 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not35 = icmp sgt i32 %i.e, %i.m
  br i1 %.not35, label %._crit_edge38, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2332 = icmp sgt i32 %i.c, %i.q
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge38, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12961 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 800
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 792
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 280
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6416
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6419
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6415
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2989 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !6416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6419
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !6415
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2989 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !859, !noalias !13021 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 136    ; 3 uses
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !6416
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6419
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !6415
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2989 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !6419
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.bl = getelementptr inbounds [88 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2989 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !6419
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.bu = getelementptr inbounds [88 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2989 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !6419
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.cd = getelementptr inbounds [88 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2989 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !4  ; 5 uses
  %i.ck = zext i32 %i.a to i64                    ; 4 uses
  %i.cl = add i32 %i.g, %i.a
  %i.cm = add i32 %i.i, %i.c
  %i.cn = add i32 %i.k, %i.e
  %i.co = add i32 %i.g, -1                        ; 2 uses
  %i.cp = add i32 %i.c, -1                        ; 3 uses
  %i.cq = load i32, ptr %i.am, align 8, !tbaa !4  ; 5 uses
  %i.cr = load i32, ptr %i.al, align 4, !tbaa !4  ; 5 uses
  %i.cs = load i32, ptr %i.av, align 8, !tbaa !4  ; 5 uses
  %i.ct = load i32, ptr %i.au, align 4, !tbaa !4  ; 8 uses
  %2 = load i32, ptr %i.bg, align 8, !tbaa !4     ; 5 uses
  %i.cu = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.cv = load i32, ptr %i.bp, align 8, !tbaa !4  ; 5 uses
  %3 = load i32, ptr %i.bo, align 4, !tbaa !4     ; 8 uses
  %i.cw = load i32, ptr %i.by, align 8, !tbaa !4  ; 5 uses
  %i.cx = load i32, ptr %i.bx, align 4, !tbaa !4  ; 8 uses
  %4 = mul i32 %i.e, %i.cq
  %5 = add i32 %i.a, %4
  %6 = mul i32 %i.e, %i.cs
  %7 = mul i32 %i.e, %i.cv
  %8 = mul i32 %i.e, %i.cw
  %9 = mul i32 %i.cx, %i.cp
  %10 = add i32 %i.a, %8                          ; 2 uses
  %11 = mul i32 %3, %i.cp
  %12 = add i32 %i.a, %7                          ; 2 uses
  %13 = mul i32 %i.c, %i.cu
  %14 = mul i32 %i.ct, %i.cp
  %15 = add i32 %i.a, %6                          ; 2 uses
  %16 = mul i32 %i.c, %i.cr
  %17 = add i32 %5, %16
  %18 = mul i32 %i.c, %i.ct
  %19 = add i32 %15, %18
  %20 = add i32 %15, %14
  %21 = mul i32 %i.e, %2
  %22 = add i32 %i.a, %21
  %23 = add i32 %22, %13
  %24 = mul i32 %i.c, %3
  %25 = add i32 %12, %24
  %26 = add i32 %12, %11
  %27 = mul i32 %i.c, %i.cx
  %28 = add i32 %10, %27
  %29 = add i32 %10, %9
  %i.cy = mul i32 %i.e, %i.cj
  %i.cz = add i32 %i.a, %i.cy
  %i.da = mul i32 %i.c, %i.ch
  %i.db = add i32 %i.cz, %i.da
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.dc = mul i32 %i.e, %i.cq
  %i.dd = add i32 %i.a, %i.dc
  %i.de = mul i32 %i.c, %i.cr
  %i.df = add i32 %i.dd, %i.de
  %i.dg = add i32 %i.g, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 8                ; 9 uses
  %scevgep62 = getelementptr i8, ptr %i.ak, i64 %i.dj
  %scevgep64 = getelementptr i8, ptr %i.aw, i64 144
  %i.dk = mul i32 %i.e, %i.cs
  %i.dl = add i32 %i.a, %i.dk                     ; 2 uses
  %i.dm = add i32 %i.c, -1                        ; 3 uses
  %i.dn = mul i32 %i.ct, %i.dm
  %i.do = add i32 %i.dl, %i.dn
  %scevgep66 = getelementptr i8, ptr %i.at, i64 %i.dj
  %i.dp = mul i32 %i.c, %i.ct
  %i.dq = add i32 %i.dl, %i.dp
  %scevgep69 = getelementptr i8, ptr %i.at, i64 %i.dj
  %i.dr = mul i32 %i.e, %2
  %i.ds = add i32 %i.a, %i.dr
  %i.dt = mul i32 %i.c, %i.cu
  %i.du = add i32 %i.ds, %i.dt
  %scevgep72 = getelementptr i8, ptr %i.be, i64 %i.dj
  %i.dv = mul i32 %i.e, %i.cv
  %i.dw = add i32 %i.a, %i.dv                     ; 2 uses
  %i.dx = mul i32 %3, %i.dm
  %i.dy = add i32 %i.dw, %i.dx
  %scevgep75 = getelementptr i8, ptr %i.bn, i64 %i.dj
  %i.dz = mul i32 %i.c, %3
  %i.ea = add i32 %i.dw, %i.dz
  %scevgep78 = getelementptr i8, ptr %i.bn, i64 %i.dj
  %i.eb = mul i32 %i.e, %i.cw
  %i.ec = add i32 %i.a, %i.eb                     ; 2 uses
  %i.ed = mul i32 %i.cx, %i.dm
  %i.ee = add i32 %i.ec, %i.ed
  %scevgep81 = getelementptr i8, ptr %i.bw, i64 %i.dj
  %i.ef = mul i32 %i.c, %i.cx
  %i.eg = add i32 %i.ec, %i.ef
  %scevgep84 = getelementptr i8, ptr %i.bw, i64 %i.dj
  %i.eh = mul i32 %i.e, %i.cj
  %i.ei = add i32 %i.a, %i.eh
  %i.ej = mul i32 %i.c, %i.ch
  %i.ek = add i32 %i.ei, %i.ej
  %scevgep87 = getelementptr i8, ptr %i.cf, i64 %i.dj
  %i.el = add i32 %i.g, -1                        ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %30 = insertelement <4 x i32> poison, i32 %17, i64 0
  %31 = insertelement <4 x i32> %30, i32 %19, i64 1
  %32 = insertelement <4 x i32> %31, i32 %20, i64 2
  %33 = insertelement <4 x i32> %32, i32 %23, i64 3
  %34 = insertelement <8 x i32> poison, i32 %i.co, i64 0
  %35 = shufflevector <8 x i32> %34, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.el, 3
  %n.vec = and i64 %i.en, 8589934590              ; 3 uses
  %i.eo = add nuw nsw i64 %n.vec, %i.ck
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34.split ] ; 13 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.jh, %._crit_edge34.split ] ; 7 uses
  %i.ep = mul i32 %i.cq, %indvar
  %i.eq = add i32 %i.df, %i.ep
  %i.er = mul i32 %i.cs, %indvar                  ; 2 uses
  %i.es = add i32 %i.do, %i.er
  %i.et = add i32 %i.dq, %i.er
  %i.eu = mul i32 %2, %indvar
  %i.ev = add i32 %i.du, %i.eu
  %i.ew = mul i32 %i.cv, %indvar                  ; 2 uses
  %i.ex = add i32 %i.dy, %i.ew
  %i.ey = add i32 %i.ea, %i.ew
  %i.ez = mul i32 %i.cw, %indvar                  ; 2 uses
  %i.fa = add i32 %i.ee, %i.ez
  %i.fb = add i32 %i.eg, %i.ez
  %i.fc = mul i32 %i.cj, %indvar
  %i.fd = add i32 %i.ek, %i.fc
  %36 = mul i32 %i.cq, %indvar
  %37 = mul i32 %i.cs, %indvar
  %38 = mul i32 %2, %indvar
  %39 = insertelement <4 x i32> poison, i32 %36, i64 0
  %40 = insertelement <4 x i32> %39, i32 %37, i64 1
  %41 = insertelement <4 x i32> %40, i32 %38, i64 3
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %43 = add <4 x i32> %33, %42
  %44 = mul i32 %i.cv, %indvar                    ; 2 uses
  %45 = add i32 %25, %44
  %46 = add i32 %26, %44
  %i.fe = mul i32 %i.cw, %indvar                  ; 2 uses
  %47 = add i32 %28, %i.fe
  %i.ff = add i32 %29, %i.fe
  %i.fg = mul i32 %i.cj, %indvar
  %48 = add i32 %i.db, %i.fg
  %i.fh = mul nsw i32 %i.cq, %.02236
  %i.fi = mul nsw i32 %i.cs, %.02236              ; 2 uses
  %i.fj = mul nsw i32 %2, %.02236
  %i.fk = mul nsw i32 %i.cv, %.02236              ; 2 uses
  %i.fl = mul nsw i32 %i.cw, %.02236              ; 2 uses
  %49 = mul nsw i32 %i.cj, %.02236
  br label %.preheader

._crit_edge38:                                    ; preds = %._crit_edge34.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar51 = phi i32 [ 0, %.preheader25 ], [ %indvar.next52, %._crit_edge ] ; 13 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.ji, %._crit_edge ] ; 8 uses
  %i.fm = mul i32 %i.cr, %indvar51
  %i.fn = add i32 %i.eq, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = shl nsw i64 %i.fo, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ak, i64 %i.fp ; 10 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.fp ; 10 uses
  %i.fq = mul i32 %i.ct, %indvar51                ; 2 uses
  %i.fr = add i32 %i.es, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = shl nsw i64 %i.fs, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.at, i64 %i.ft
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ft
  %i.fu = add i32 %i.et, %i.fq
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.at, i64 %i.fw
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.fw
  %i.fx = mul i32 %i.cu, %indvar51
  %i.fy = add i32 %i.ev, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.be, i64 %i.ga
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.ga
  %i.gb = mul i32 %3, %indvar51                   ; 2 uses
  %i.gc = add i32 %i.ex, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = shl nsw i64 %i.gd, 3                    ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.bn, i64 %i.ge
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.ge
  %i.gf = add i32 %i.ey, %i.gb
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 3                    ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.bn, i64 %i.gh
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.gh
  %i.gi = mul i32 %i.cx, %indvar51                ; 2 uses
  %i.gj = add i32 %i.fa, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 3                    ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.bw, i64 %i.gl
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.gl
  %i.gm = add i32 %i.fb, %i.gi
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 3                    ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.bw, i64 %i.go
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.go
  %i.gp = mul i32 %i.ch, %indvar51
  %i.gq = add i32 %i.fd, %i.gp
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 3                    ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.cf, i64 %i.gs
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.gs
  %i.gt = mul nsw i32 %i.cr, %.02133
  %invariant.op = add i32 %i.gt, %i.fh            ; 2 uses
  %i.gu = mul nsw i32 %i.ct, %.02133              ; 2 uses
  %i.gv = add nsw i32 %.02133, -1                 ; 3 uses
  %i.gw = mul nsw i32 %i.ct, %i.gv                ; 2 uses
  %i.gx = mul nsw i32 %i.cu, %.02133
  %invariant.op28 = add i32 %i.gx, %i.fj          ; 2 uses
  %i.gy = mul nsw i32 %3, %.02133                 ; 2 uses
  %i.gz = mul nsw i32 %3, %i.gv                   ; 2 uses
  %i.ha = mul nsw i32 %i.cx, %.02133              ; 2 uses
  %i.hb = mul nsw i32 %i.cx, %i.gv                ; 2 uses
  %i.hc = mul nsw i32 %i.ch, %.02133
  %invariant.op30 = add i32 %i.hc, %49            ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.hd = mul i32 %i.ch, %indvar51
  %50 = add i32 %48, %i.hd                        ; 2 uses
  %51 = mul i32 %i.cx, %indvar51                  ; 2 uses
  %52 = mul i32 %3, %indvar51                     ; 2 uses
  %53 = mul i32 %i.cu, %indvar51
  %54 = mul i32 %i.ct, %indvar51
  %55 = mul i32 %i.cr, %indvar51
  %56 = add i32 %i.ff, %51
  %57 = add i32 %47, %51
  %58 = add i32 %46, %52
  %i.he = add i32 %45, %52
  %59 = insertelement <4 x i32> poison, i32 %55, i64 0
  %60 = insertelement <4 x i32> %59, i32 %54, i64 1
  %61 = insertelement <4 x i32> %60, i32 %53, i64 3
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %63 = add <4 x i32> %43, %62
  %64 = shufflevector <4 x i32> %63, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = insertelement <8 x i32> %64, i32 %i.he, i64 4
  %65 = insertelement <8 x i32> %i.hf, i32 %58, i64 5
  %66 = insertelement <8 x i32> %65, i32 %57, i64 6
  %67 = insertelement <8 x i32> %66, i32 %56, i64 7 ; 2 uses
  %i.hg = add <8 x i32> %67, %35
  %i.hh = icmp slt <8 x i32> %i.hg, %67
  %i.hi = add i32 %50, %i.co
  %i.hj = icmp slt i32 %i.hi, %50
  %i.hk = bitcast <8 x i1> %i.hh to i8
  %i.hl = icmp ne i8 %i.hk, 0
  %op.rdx = or i1 %i.hl, %i.hj
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep63
  %bound1 = icmp ult ptr %scevgep61, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.ax, %scevgep63
  %bound190 = icmp ult ptr %scevgep61, %scevgep64
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %scevgep61, %scevgep67
  %bound193 = icmp ult ptr %scevgep65, %scevgep63
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %scevgep61, %scevgep70
  %bound197 = icmp ult ptr %scevgep68, %scevgep63
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep61, %scevgep73
  %bound1101 = icmp ult ptr %scevgep71, %scevgep63
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep61, %scevgep76
  %bound1105 = icmp ult ptr %scevgep74, %scevgep63
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep61, %scevgep79
  %bound1109 = icmp ult ptr %scevgep77, %scevgep63
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %scevgep61, %scevgep82
  %bound1113 = icmp ult ptr %scevgep80, %scevgep63
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %scevgep61, %scevgep85
  %bound1117 = icmp ult ptr %scevgep83, %scevgep63
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %bound0120 = icmp ult ptr %scevgep61, %scevgep88
  %bound1121 = icmp ult ptr %scevgep86, %scevgep63
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hm = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13024, !alias.scope !13026, !noalias !13029
  %broadcast.splatinsert132 = insertelement <2 x double> poison, double %i.hm, i64 0
  %broadcast.splat133 = shufflevector <2 x double> %broadcast.splatinsert132, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !13031, !noalias !13033
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ho = trunc i64 %index to i32
  %i.hp = add i32 %i.a, %i.ho                     ; 6 uses
  %i.hq = add i32 %invariant.op, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.hr ; 2 uses
  %wide.load = load <2 x double>, ptr %i.hs, align 8, !tbaa !247, !alias.scope !13029, !noalias !13034
  %i.ht = add i32 %i.fi, %i.hp                    ; 2 uses
  %i.hu = add i32 %i.ht, %i.gu
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hv
  %wide.load124 = load <2 x double>, ptr %i.hw, align 8, !tbaa !247, !alias.scope !13043
  %i.hx = add i32 %i.ht, %i.gw
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hy
  %wide.load125 = load <2 x double>, ptr %i.hz, align 8, !tbaa !247, !alias.scope !13044
  %i.ia = fsub <2 x double> %wide.load124, %wide.load125
  %i.ib = add i32 %invariant.op28, %i.hp
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ic
  %wide.load126 = load <2 x double>, ptr %i.id, align 8, !tbaa !247, !alias.scope !13045
  %i.ie = fdiv <2 x double> %i.ia, %broadcast.splat
  %i.if = fsub <2 x double> %wide.load126, %i.ie
  %i.ig = add i32 %i.fk, %i.hp                    ; 2 uses
  %i.ih = add i32 %i.ig, %i.gy
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ii
  %wide.load127 = load <2 x double>, ptr %i.ij, align 8, !tbaa !247, !alias.scope !13046
  %i.ik = add i32 %i.ig, %i.gz
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.il
  %wide.load128 = load <2 x double>, ptr %i.im, align 8, !tbaa !247, !alias.scope !13047
  %i.in = fmul <2 x double> %wide.load128, splat (double 5.000000e-01)
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load127, <2 x double> splat (double 5.000000e-01), <2 x double> %i.in)
  %i.ip = fdiv <2 x double> %i.if, %i.io
  %i.iq = add i32 %i.fl, %i.hp                    ; 2 uses
  %i.ir = add i32 %i.iq, %i.ha
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.is
  %wide.load129 = load <2 x double>, ptr %i.it, align 8, !tbaa !247, !alias.scope !13048
  %i.iu = add i32 %i.iq, %i.hb
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.iv
  %wide.load130 = load <2 x double>, ptr %i.iw, align 8, !tbaa !247, !alias.scope !13049
  %i.ix = fsub <2 x double> %wide.load129, %wide.load130
  %i.iy = fdiv <2 x double> %i.ix, %broadcast.splat
  %i.iz = fsub <2 x double> %i.ip, %i.iy
  %i.ja = add i32 %invariant.op30, %i.hp
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.jb
  %wide.load131 = load <2 x double>, ptr %i.jc, align 8, !tbaa !247, !alias.scope !13050
  %i.jd = fsub <2 x double> %i.iz, %wide.load131
  %i.je = fmul <2 x double> %broadcast.splat133, %i.jd
  %i.jf = fadd <2 x double> %wide.load, %i.je
  store <2 x double> %i.jf, ptr %i.hs, align 8, !tbaa !247, !alias.scope !13029, !noalias !13034
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !13051

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ck, %vector.memcheck ], [ %i.ck, %vector.scevcheck ], [ %i.ck, %.preheader ], [ %i.eo, %middle.block ]
  br label %scalar.ph

._crit_edge34.split:                              ; preds = %._crit_edge
  %i.jh = add i32 %.02236, 1                      ; 2 uses
  %exitcond46.not = icmp eq i32 %i.jh, %i.cn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader25, !llvm.loop !13052

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ji = add i32 %.02133, 1                      ; 2 uses
  %exitcond45.not = icmp eq i32 %i.ji, %i.cm
  %indvar.next52 = add i32 %indvar51, 1
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !13053

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jj = trunc i64 %indvars.iv to i32            ; 6 uses
  %.reass = add i32 %invariant.op, %i.jj
  %i.jk = sext i32 %.reass to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jk ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !247
  %i.jn = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13024
  %i.jo = add i32 %i.fi, %i.jj                    ; 2 uses
  %i.jp = add i32 %i.jo, %i.gu
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !247
  %i.jt = add i32 %i.jo, %i.gw
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !247
  %i.jx = fsub double %i.js, %i.jw
  %i.jy = load double, ptr %i.ax, align 8, !tbaa !247, !noalias !13021 ; 2 uses
  %.reass29 = add i32 %invariant.op28, %i.jj
  %i.jz = sext i32 %.reass29 to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !247
  %i.kc = fdiv double %i.jx, %i.jy
  %i.kd = fsub double %i.kb, %i.kc
  %i.ke = add i32 %i.fk, %i.jj                    ; 2 uses
  %i.kf = add i32 %i.ke, %i.gy
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !247
  %i.kj = add i32 %i.ke, %i.gz
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !247
  %i.kn = fmul double %i.km, 5.000000e-01
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.ki, double 5.000000e-01, double %i.kn)
  %i.kp = fdiv double %i.kd, %i.ko
  %i.kq = add i32 %i.fl, %i.jj                    ; 2 uses
  %i.kr = add i32 %i.kq, %i.ha
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !247
  %i.kv = add i32 %i.kq, %i.hb
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !247
  %i.kz = fsub double %i.ku, %i.ky
  %i.la = fdiv double %i.kz, %i.jy
  %i.lb = fsub double %i.kp, %i.la
  %.reass31 = add i32 %invariant.op30, %i.jj
  %i.lc = sext i32 %.reass31 to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !247
  %i.lf = fsub double %i.lb, %i.le
  %i.lg = fmul double %i.jn, %i.lf
  %i.lh = fadd double %i.jm, %i.lg
  store double %i.lh, ptr %i.jl, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !13054
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9MultiArg5I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESD_SD_SD_SD_EC2ERKSD_SG_SG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !894
  store i32 %i.a, ptr %0, align 8, !tbaa !894
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1059
  store i32 %i.f, ptr %i.d, align 8, !tbaa !1059
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1063
  store i64 %i.i, ptr %i.g, align 8, !tbaa !1063
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1064 ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !1064
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !837
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !4
  store i32 %i.q, ptr %i.o, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !4
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !859 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !837
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load i32, ptr %2, align 8, !tbaa !894
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !894
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1059
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !1059
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1063
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !1063
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1064 ; 4 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !1064
  %.not.i.i.i.i6 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i6, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i7, label %bb.d

bb.d:                                             ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !837
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i7

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i7: ; preds = %bb.d, %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !4
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !1065
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !859 ; 4 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !859
  %.not.i.i8.i.i8 = icmp eq ptr %i.by, null
  br i1 %.not.i.i8.i.i8, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit9, label %bb.e

bb.e:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i7
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !837
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !837
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit9

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit9: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i7, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cc = load i32, ptr %3, align 8, !tbaa !894
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !894
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1059
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !1059
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1063
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !1063
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1064 ; 4 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !1064
  %.not.i.i.i.i10 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i10, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i11, label %bb.f

bb.f:                                             ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit9
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !837
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !837
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i11

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEELb0E18RefBlockControllerIS7_EEC2ERKSA_.exit.i.i11: ; preds = %bb.f, %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEEC2ERKSC_.exit9
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !4
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 380
end_hunk_0
