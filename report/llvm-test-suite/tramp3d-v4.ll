Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S0_IS6_d16ConstantFunctionES0_IS6_4ZeroIdES9_ESA_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg7IT_T0_T1_T2_T3_T4_T5_ERKT6_RKSt6vectorIbSaIbEE:bb.a
  %indvars.iv.next.i.i.i.i.i35 = add nuw nsw i64 %indvars.iv.i.i.i.i.i29, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i36 = icmp eq i64 %indvars.iv.next.i.i.i.i.i35, %wide.trip.count.i.i.i.i.i25
  br i1 %exitcond.not.i.i.i.i.i36, label %._crit_edge.i.i.i.i.i37, label %bb.j, !llvm.loop !128

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit40: ; preds = %._crit_edge.i.i.i.i.i37, %.preheader.lr.ph.i.i.i.i.i21, %bb.i, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit
  %i.bz = and i64 %i.b, 4
  %.not82 = icmp eq i64 %i.bz, 0
  br i1 %.not82, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60, label %bb.p

bb.p:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit40
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1019 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.lr.ph.i.i.i.i.i41, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60

.preheader.lr.ph.i.i.i.i.i41:                     ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !403
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !401
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 12                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !nonnull !215, !align !571 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.cm, label %.preheader.lr.ph.split.i.i.i.i.i42, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60

.preheader.lr.ph.split.i.i.i.i.i42:               ; preds = %.preheader.lr.ph.i.i.i.i.i41
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1025
  %i.cx = getelementptr inbounds [88 x i8], ptr %i.cw, i64 %i.cs
  %.promoted13.i.i.i.i.i43 = load ptr, ptr %i.cn, align 8, !tbaa !1036
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count21.i.i.i.i.i44 = zext nneg i32 %i.cb to i64
  %wide.trip.count.i.i.i.i.i45 = and i64 %i.ck, 2147483647
  br label %.preheader.i.i.i.i.i46

.preheader.i.i.i.i.i46:                           ; preds = %._crit_edge.i.i.i.i.i57, %.preheader.lr.ph.split.i.i.i.i.i42
  %indvars.iv18.i.i.i.i.i47 = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i42 ], [ %indvars.iv.next19.i.i.i.i.i58, %._crit_edge.i.i.i.i.i57 ] ; 2 uses
  %.promoted16.i.i.i.i.i48 = phi ptr [ %.promoted13.i.i.i.i.i43, %.preheader.lr.ph.split.i.i.i.i.i42 ], [ %.promoted14.i.i.i.i.i54, %._crit_edge.i.i.i.i.i57 ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv18.i.i.i.i.i47, %i.cy
  %i.da = getelementptr [88 x i8], ptr %i.cx, i64 %i.cz
  br label %bb.q

._crit_edge.i.i.i.i.i57:                          ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53
  %indvars.iv.next19.i.i.i.i.i58 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i47, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i59 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i58, %wide.trip.count21.i.i.i.i.i44
  br i1 %exitcond22.not.i.i.i.i.i59, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60, label %.preheader.i.i.i.i.i46, !llvm.loop !127

bb.q:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53, %.preheader.i.i.i.i.i46
  %indvars.iv.i.i.i.i.i49 = phi i64 [ 0, %.preheader.i.i.i.i.i46 ], [ %indvars.iv.next.i.i.i.i.i55, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53 ] ; 2 uses
  %.promoted15.i.i.i.i.i50 = phi ptr [ %.promoted16.i.i.i.i.i48, %.preheader.i.i.i.i.i46 ], [ %.promoted14.i.i.i.i.i54, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53 ] ; 4 uses
  %i.db = phi ptr [ %.promoted16.i.i.i.i.i48, %.preheader.i.i.i.i.i46 ], [ %i.dk, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53 ] ; 6 uses
  %i.dc = getelementptr [88 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !665
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !670 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.i.i.i.i.i51, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !1037 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i52 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.i.i.i.i.i52, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !1036
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53

bb.u:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.v, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53

bb.v:                                             ; preds = %bb.u
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !1037
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i53: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted14.i.i.i.i.i54 = phi ptr [ %.promoted15.i.i.i.i.i50, %bb.q ], [ %.promoted15.i.i.i.i.i50, %bb.r ], [ %i.dg, %bb.t ], [ %.promoted15.i.i.i.i.i50, %bb.u ], [ %.promoted15.i.i.i.i.i50, %bb.v ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.t ], [ %i.db, %bb.u ], [ %i.db, %bb.v ]
  %indvars.iv.next.i.i.i.i.i55 = add nuw nsw i64 %indvars.iv.i.i.i.i.i49, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i56 = icmp eq i64 %indvars.iv.next.i.i.i.i.i55, %wide.trip.count.i.i.i.i.i45
  br i1 %exitcond.not.i.i.i.i.i56, label %._crit_edge.i.i.i.i.i57, label %bb.q, !llvm.loop !128

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60: ; preds = %._crit_edge.i.i.i.i.i57, %.preheader.lr.ph.i.i.i.i.i41, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit40
  %i.dl = and i64 %i.b, 8
  %.not83 = icmp eq i64 %i.dl, 0
  br i1 %.not83, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80, label %bb.w

bb.w:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !1019 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i.i.i.i.i61, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80

.preheader.lr.ph.i.i.i.i.i61:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !403
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !401
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !215, !align !571 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.i.i.i.i.i62, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80

.preheader.lr.ph.split.i.i.i.i.i62:               ; preds = %.preheader.lr.ph.i.i.i.i.i61
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1025
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted13.i.i.i.i.i63 = load ptr, ptr %i.dz, align 8, !tbaa !1036
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i64 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i65 = and i64 %i.dw, 2147483647
  br label %.preheader.i.i.i.i.i66

.preheader.i.i.i.i.i66:                           ; preds = %._crit_edge.i.i.i.i.i77, %.preheader.lr.ph.split.i.i.i.i.i62
  %indvars.iv18.i.i.i.i.i67 = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i62 ], [ %indvars.iv.next19.i.i.i.i.i78, %._crit_edge.i.i.i.i.i77 ] ; 2 uses
  %.promoted16.i.i.i.i.i68 = phi ptr [ %.promoted13.i.i.i.i.i63, %.preheader.lr.ph.split.i.i.i.i.i62 ], [ %.promoted14.i.i.i.i.i74, %._crit_edge.i.i.i.i.i77 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i67, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

._crit_edge.i.i.i.i.i77:                          ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73
  %indvars.iv.next19.i.i.i.i.i78 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i67, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i79 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i78, %wide.trip.count21.i.i.i.i.i64
  br i1 %exitcond22.not.i.i.i.i.i79, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80, label %.preheader.i.i.i.i.i66, !llvm.loop !127

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73, %.preheader.i.i.i.i.i66
  %indvars.iv.i.i.i.i.i69 = phi i64 [ 0, %.preheader.i.i.i.i.i66 ], [ %indvars.iv.next.i.i.i.i.i75, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73 ] ; 2 uses
  %.promoted15.i.i.i.i.i70 = phi ptr [ %.promoted16.i.i.i.i.i68, %.preheader.i.i.i.i.i66 ], [ %.promoted14.i.i.i.i.i74, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73 ] ; 4 uses
  %i.en = phi ptr [ %.promoted16.i.i.i.i.i68, %.preheader.i.i.i.i.i66 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i69
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !665
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !670 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !1037 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.i.i.i.i.i72, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !1036
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73

bb.ab:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ac, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !1037
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i73: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted14.i.i.i.i.i74 = phi ptr [ %.promoted15.i.i.i.i.i70, %bb.x ], [ %.promoted15.i.i.i.i.i70, %bb.y ], [ %i.es, %bb.aa ], [ %.promoted15.i.i.i.i.i70, %bb.ab ], [ %.promoted15.i.i.i.i.i70, %bb.ac ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.aa ], [ %i.en, %bb.ab ], [ %i.en, %bb.ac ]
  %indvars.iv.next.i.i.i.i.i75 = add nuw nsw i64 %indvars.iv.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i76 = icmp eq i64 %indvars.iv.next.i.i.i.i.i75, %wide.trip.count.i.i.i.i.i65
  br i1 %exitcond.not.i.i.i.i.i76, label %._crit_edge.i.i.i.i.i77, label %bb.x, !llvm.loop !128

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80: ; preds = %._crit_edge.i.i.i.i.i77, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60, %bb.w, %.preheader.lr.ph.i.i.i.i.i61
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg7I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_S3_IS9_d16ConstantFunctionES3_IS9_4ZeroIdESC_ESD_EN6Forgas6TGuessILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1156 ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !165    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !165  ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !165  ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !165  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !165  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !165  ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not39 = icmp sgt i32 %i.e, %i.m
  br i1 %.not39, label %._crit_edge42.split, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2336 = icmp sgt i32 %i.c, %i.o
  %.not2428 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2336, i1 true, i1 %.not2428
  br i1 %brmerge, label %._crit_edge42.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !1154 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 944
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 936
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1022
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1025
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !1021
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !779 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !450 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 128    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !779 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 116 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !779 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 204 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !1022
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1025
  %i.bc = load i64, ptr %i.aa, align 8, !tbaa !1021
  %i.bd = getelementptr inbounds [88 x i8], ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !779 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 28 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !1022
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1025
  %i.bl = load i64, ptr %i.y, align 8, !tbaa !1021
  %i.bm = getelementptr inbounds [88 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !779 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.br = load <2 x i32>, ptr %i.al, align 4, !tbaa !165 ; 2 uses
  %i.bs = load i32, ptr %i.am, align 8, !tbaa !165 ; 4 uses
  %i.bt = load i32, ptr %i.al, align 4, !tbaa !165 ; 4 uses
  %i.bu = load <2 x i32>, ptr %i.ar, align 4, !tbaa !165 ; 3 uses
  %i.bv = load i32, ptr %i.as, align 8, !tbaa !165 ; 4 uses
  %i.bw = load i32, ptr %i.ar, align 4, !tbaa !165 ; 7 uses
  %i.bx = load <2 x i32>, ptr %i.aw, align 4, !tbaa !165 ; 2 uses
  %i.by = load i32, ptr %i.ax, align 8, !tbaa !165 ; 7 uses
  %i.bz = load i32, ptr %i.aw, align 4, !tbaa !165 ; 4 uses
  %i.ca = load <2 x i32>, ptr %i.bg, align 4, !tbaa !165
  %i.cb = load i32, ptr %i.bh, align 8, !tbaa !165 ; 4 uses
  %i.cc = load i32, ptr %i.bg, align 4, !tbaa !165 ; 4 uses
  %i.cd = load <2 x i32>, ptr %i.bp, align 4, !tbaa !165 ; 2 uses
  %i.ce = load i32, ptr %i.bq, align 8, !tbaa !165 ; 4 uses
  %i.cf = load i32, ptr %i.bp, align 4, !tbaa !165 ; 4 uses
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !1022
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1025
  %i.cj = load i64, ptr %i.w, align 8, !tbaa !1021
  %i.ck = getelementptr inbounds [88 x i8], ptr %i.ci, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !779 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !165 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !165 ; 5 uses
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !468
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !471 ; 2 uses
  %i.cu = load i64, ptr %i.u, align 8, !tbaa !473 ; 2 uses
  %i.cv = getelementptr [56 x i8], ptr %i.ct, i64 %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !468
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !471 ; 2 uses
  %i.cz = load i64, ptr %i.s, align 8, !tbaa !473 ; 2 uses
  %i.da = getelementptr [56 x i8], ptr %i.cy, i64 %i.cz ; 3 uses
  %i.db = zext i32 %i.a to i64                    ; 4 uses
  %i.dc = add i32 %i.g, %i.a
  %i.dd = add i32 %i.i, %i.c
  %i.de = add i32 %i.k, %i.e
  %i.df = add i32 %i.g, -1                        ; 2 uses
  %i.dg = mul i32 %i.ce, %i.e
  %i.dh = mul i32 %i.bt, %i.c
  %i.di = add i32 %i.a, %i.dh
  %i.dj = mul i32 %i.cf, %i.c
  %i.dk = add i32 %i.a, %i.dj
  %i.dl = mul i32 %i.bs, %i.e
  %i.dm = add i32 %i.di, %i.dl                    ; 2 uses
  %i.dn = insertelement <2 x i32> <i32 poison, i32 1>, i32 %i.dg, i64 0
  %i.do = insertelement <2 x i32> poison, i32 %i.dk, i64 0
  %i.dp = insertelement <2 x i32> %i.do, i32 %i.dm, i64 1
  %i.dq = add <2 x i32> %i.dp, %i.dn
  %i.dr = mul i32 %i.bv, %i.e                     ; 2 uses
  %i.ds = add i32 %i.a, %i.dr
  %i.dt = add i32 %i.c, 1
  %i.du = mul i32 %i.bw, %i.dt
  %i.dv = add i32 %i.ds, %i.du
  %i.dw = mul i32 %i.bw, %i.c
  %i.dx = add i32 %i.a, %i.dw
  %i.dy = add i32 %i.dx, %i.dr
  %i.dz = mul i32 %i.bz, %i.c
  %i.ea = add i32 %i.a, %i.dz                     ; 2 uses
  %i.eb = add i32 %i.e, 1
  %i.ec = mul i32 %i.by, %i.eb
  %i.ed = add i32 %i.ea, %i.ec
  %i.ee = mul i32 %i.by, %i.e
  %i.ef = add i32 %i.ea, %i.ee
  %i.eg = mul i32 %i.cc, %i.c
  %i.eh = add i32 %i.a, %i.eg
  %i.ei = mul i32 %i.cb, %i.e
  %i.ej = add i32 %i.eh, %i.ei
  %i.ek = mul i32 %i.co, %i.c
  %i.el = add i32 %i.a, %i.ek
  %i.em = mul i32 %i.cq, %i.e
  %i.en = add i32 %i.el, %i.em
  %i.eo = mul i32 %i.cf, %i.c
  %i.ep = add i32 %i.a, %i.eo
  %i.eq = mul i32 %i.ce, %i.e
  %i.er = add i32 %i.ep, %i.eq
  %i.es = add i32 %i.g, -1
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 3
  %i.ev = add nuw nsw i64 %i.eu, 8                ; 9 uses
  %scevgep54 = getelementptr i8, ptr %i.bo, i64 %i.ev
  %i.ew = mul i64 %i.cu, 56
  %i.ex = getelementptr i8, ptr %i.ct, i64 %i.ew
  %i.ey = mul i64 %i.cz, 56
  %i.ez = getelementptr i8, ptr %i.cy, i64 %i.ey
  %i.fa = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %.sroa.4.0.copyload, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %i.ex, i64 2
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %i.ez, i64 3 ; 2 uses
  %i.fe = getelementptr i8, <4 x ptr> %i.fd, <4 x i64> <i64 152, i64 8, i64 8, i64 8>
  %i.ff = mul i32 %i.bt, %i.c
  %i.fg = add i32 %i.a, %i.ff
  %i.fh = mul i32 %i.bs, %i.e
  %i.fi = add i32 %i.fg, %i.fh                    ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.ak, i64 %i.ev
  %i.fj = add i32 %i.fi, 1
  %scevgep63 = getelementptr i8, ptr %i.ak, i64 %i.ev
  %i.fk = mul i32 %i.bw, %i.c
  %i.fl = add i32 %i.a, %i.fk
  %i.fm = mul i32 %i.bv, %i.e                     ; 2 uses
  %i.fn = add i32 %i.fl, %i.fm
  %scevgep66 = getelementptr i8, ptr %i.aq, i64 %i.ev
  %i.fo = add i32 %i.a, %i.fm
  %i.fp = add i32 %i.c, 1
  %i.fq = mul i32 %i.bw, %i.fp
  %i.fr = add i32 %i.fo, %i.fq
  %scevgep69 = getelementptr i8, ptr %i.aq, i64 %i.ev
  %i.fs = mul i32 %i.bz, %i.c
  %i.ft = add i32 %i.a, %i.fs                     ; 2 uses
  %i.fu = mul i32 %i.by, %i.e
  %i.fv = add i32 %i.ft, %i.fu
  %scevgep72 = getelementptr i8, ptr %i.av, i64 %i.ev
  %i.fw = add i32 %i.e, 1
  %i.fx = mul i32 %i.by, %i.fw
  %i.fy = add i32 %i.ft, %i.fx
  %scevgep75 = getelementptr i8, ptr %i.av, i64 %i.ev
  %i.fz = mul i32 %i.cc, %i.c
  %i.ga = add i32 %i.a, %i.fz
  %i.gb = mul i32 %i.cb, %i.e
  %i.gc = add i32 %i.ga, %i.gb
  %scevgep78 = getelementptr i8, ptr %i.bf, i64 %i.ev
  %i.gd = mul i32 %i.co, %i.c
  %i.ge = add i32 %i.a, %i.gd
  %i.gf = mul i32 %i.cq, %i.e
  %i.gg = add i32 %i.ge, %i.gf
  %scevgep81 = getelementptr i8, ptr %i.cm, i64 %i.ev
  %i.gh = shufflevector <2 x i32> %i.cd, <2 x i32> %i.br, <8 x i32> <i32 1, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <2 x i32> %i.bu, <2 x i32> %i.bx, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 3, i32 3, i32 poison>
  %i.gj = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gi, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 poison>
  %i.gk = shufflevector <2 x i32> %i.bu, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 4, i32 5, i32 6, i32 poison>
  %i.gm = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  %i.go = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = insertelement <8 x i32> %i.go, i32 %i.dm, i64 2
  %i.gq = insertelement <8 x i32> %i.gp, i32 %i.dv, i64 3
  %i.gr = insertelement <8 x i32> %i.gq, i32 %i.dy, i64 4
  %i.gs = insertelement <8 x i32> %i.gr, i32 %i.ed, i64 5
  %i.gt = insertelement <8 x i32> %i.gs, i32 %i.ef, i64 6
  %i.gu = insertelement <8 x i32> %i.gt, i32 %i.ej, i64 7 ; 2 uses
  %i.gv = insertelement <4 x ptr> %i.fd, ptr %i.ao, i64 0
  %i.gw = insertelement <4 x ptr> %i.gv, ptr %i.cv, i64 2
  %i.gx = insertelement <4 x ptr> %i.gw, ptr %i.da, i64 3
  %i.gy = shufflevector <2 x i32> %i.cd, <2 x i32> %i.br, <8 x i32> <i32 0, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <2 x i32> %i.bu, <2 x i32> %i.bx, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 2, i32 2, i32 poison>
  %i.ha = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 poison>
  %i.hb = insertelement <8 x i32> poison, i32 %i.df, i64 0
  %i.hc = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hd = shufflevector <8 x i32> %i.ha, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 poison>
  %i.he = shufflevector <8 x i32> %i.hd, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.hf = add i32 %i.g, -1                        ; 2 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.hf, 0
  %invariant.op157 = add <8 x i32> %i.gu, %i.hc
  %n.vec = and i64 %i.hh, 8589934590              ; 3 uses
  %i.hi = add nuw nsw i64 %n.vec, %i.db
  %cmp.n = icmp eq i64 %i.hh, %n.vec
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge38
  %indvar = phi i32 [ 0, %.preheader27.lr.ph.split.split ], [ %indvar.next, %._crit_edge38 ] ; 9 uses
  %.02240 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.ie, %._crit_edge38 ] ; 7 uses
  %i.hj = mul i32 %i.ce, %indvar
  %i.hk = add i32 %i.er, %i.hj
  %i.hl = mul i32 %i.bs, %indvar                  ; 2 uses
  %i.hm = add i32 %i.fi, %i.hl
  %i.hn = add i32 %i.fj, %i.hl
  %i.ho = mul i32 %i.bv, %indvar                  ; 2 uses
  %i.hp = add i32 %i.fn, %i.ho
  %i.hq = add i32 %i.fr, %i.ho
  %i.hr = mul i32 %i.by, %indvar                  ; 2 uses
  %i.hs = add i32 %i.fv, %i.hr
  %i.ht = add i32 %i.fy, %i.hr
  %i.hu = mul i32 %i.cb, %indvar
  %i.hv = add i32 %i.gc, %i.hu
  %i.hw = mul i32 %i.cq, %indvar
  %i.hx = add i32 %i.gg, %i.hw
  %i.hy = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.hz = shufflevector <8 x i32> %i.hy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ia = mul <8 x i32> %i.gn, %i.hz              ; 2 uses
  %i.ib = add <8 x i32> %i.gu, %i.ia
  %i.ic = mul i32 %i.cq, %indvar
  %i.id = add i32 %i.en, %i.ic
  %i.ie = add i32 %.02240, 1                      ; 3 uses
  %i.if = mul nsw i32 %i.bs, %.02240              ; 3 uses
  %invariant.op = add i32 %i.if, 1                ; 2 uses
  %i.ig = mul nsw i32 %i.bv, %.02240              ; 2 uses
  %i.ih = mul nsw i32 %i.by, %i.ie                ; 2 uses
  %i.ii = mul nsw i32 %i.by, %.02240              ; 2 uses
  %i.ij = mul nsw i32 %i.cb, %.02240
  %i.ik = mul nsw i32 %i.ce, %.02240
  %i.il = mul nsw i32 %i.cq, %.02240
  %invariant.op155.reass = add <8 x i32> %i.ia, %invariant.op157
  br label %.preheader

._crit_edge42.split:                              ; preds = %._crit_edge38, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %indvar51 = phi i32 [ 0, %.preheader27 ], [ %indvar.next52, %._crit_edge ] ; 9 uses
  %.02137 = phi i32 [ %i.c, %.preheader27 ], [ %i.ju, %._crit_edge ] ; 7 uses
  %i.im = mul i32 %i.cf, %indvar51
  %i.in = add i32 %i.hk, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = shl nsw i64 %i.io, 3                    ; 2 uses
  %scevgep53 = getelementptr i8, ptr %i.bo, i64 %i.ip ; 9 uses
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %i.ip ; 9 uses
  %i.iq = mul i32 %i.bt, %indvar51                ; 2 uses
  %i.ir = add i32 %i.hm, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.ak, i64 %i.it
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.it
  %i.iu = add i32 %i.hn, %i.iq
  %i.iv = sext i32 %i.iu to i64
  %i.iw = shl nsw i64 %i.iv, 3                    ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.ak, i64 %i.iw
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.iw
  %i.ix = mul i32 %i.bw, %indvar51                ; 2 uses
  %i.iy = add i32 %i.hp, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i64 %i.iz, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.aq, i64 %i.ja
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ja
  %i.jb = add i32 %i.hq, %i.ix
  %i.jc = sext i32 %i.jb to i64
  %i.jd = shl nsw i64 %i.jc, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.aq, i64 %i.jd
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.jd
  %i.je = mul i32 %i.bz, %indvar51                ; 2 uses
  %i.jf = add i32 %i.hs, %i.je
  %i.jg = sext i32 %i.jf to i64
  %i.jh = shl nsw i64 %i.jg, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.av, i64 %i.jh
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.jh
  %i.ji = add i32 %i.ht, %i.je
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 3                    ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.av, i64 %i.jk
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.jk
  %i.jl = mul i32 %i.cc, %indvar51
  %i.jm = add i32 %i.hv, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3                    ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.bf, i64 %i.jo
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.jo
  %i.jp = mul i32 %i.co, %indvar51
  %i.jq = add i32 %i.hx, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = shl nsw i64 %i.jr, 3                    ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.cm, i64 %i.js
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.js
  %i.jt = mul nsw i32 %i.bt, %.02137              ; 2 uses
  %i.ju = add nsw i32 %.02137, 1                  ; 3 uses
  %i.jv = mul nsw i32 %i.bw, %i.ju                ; 2 uses
  %i.jw = mul nsw i32 %i.bw, %.02137              ; 2 uses
  %i.jx = mul nsw i32 %i.bz, %.02137              ; 2 uses
  %i.jy = mul nsw i32 %i.cc, %.02137
  %invariant.op30 = add i32 %i.jy, %i.ij          ; 2 uses
  %i.jz = mul nsw i32 %i.cf, %.02137
  %invariant.op32 = add i32 %i.jz, %i.ik          ; 2 uses
  %i.ka = mul nsw i32 %i.co, %.02137
  %invariant.op34 = add i32 %i.ka, %i.il          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.kb = mul i32 %i.co, %indvar51
  %i.kc = add i32 %i.id, %i.kb                    ; 2 uses
  %i.kd = insertelement <8 x i32> poison, i32 %indvar51, i64 0
  %i.ke = shufflevector <8 x i32> %i.kd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kf = mul <8 x i32> %i.he, %i.ke              ; 2 uses
  %i.kg = add <8 x i32> %i.ib, %i.kf
  %.reass156 = add <8 x i32> %i.kf, %invariant.op155.reass
  %i.kh = icmp slt <8 x i32> %.reass156, %i.kg
  %i.ki = add i32 %i.kc, %i.df
  %i.kj = icmp slt i32 %i.ki, %i.kc
  %i.kk = bitcast <8 x i1> %i.kh to i8
  %i.kl = icmp ne i8 %i.kk, 0
  %op.rdx151 = or i1 %i.kl, %i.kj
  br i1 %op.rdx151, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.km = insertelement <4 x ptr> poison, ptr %scevgep55, i64 0
  %i.kn = shufflevector <4 x ptr> %i.km, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ko = icmp ult <4 x ptr> %i.gx, %i.kn
  %i.kp = insertelement <4 x ptr> poison, ptr %scevgep53, i64 0
  %i.kq = shufflevector <4 x ptr> %i.kp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kr = icmp ult <4 x ptr> %i.kq, %i.fe
  %i.ks = and <4 x i1> %i.ko, %i.kr
  %bound094 = icmp ult ptr %scevgep53, %scevgep61
  %bound195 = icmp ult ptr %scevgep59, %scevgep55
  %found.conflict96 = and i1 %bound094, %bound195
  %bound098 = icmp ult ptr %scevgep53, %scevgep64
  %bound199 = icmp ult ptr %scevgep62, %scevgep55
  %found.conflict100 = and i1 %bound098, %bound199
  %bound0102 = icmp ult ptr %scevgep53, %scevgep67
  %bound1103 = icmp ult ptr %scevgep65, %scevgep55
  %found.conflict104 = and i1 %bound0102, %bound1103
  %bound0106 = icmp ult ptr %scevgep53, %scevgep70
  %bound1107 = icmp ult ptr %scevgep68, %scevgep55
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0110 = icmp ult ptr %scevgep53, %scevgep73
  %bound1111 = icmp ult ptr %scevgep71, %scevgep55
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0114 = icmp ult ptr %scevgep53, %scevgep76
  %bound1115 = icmp ult ptr %scevgep74, %scevgep55
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0118 = icmp ult ptr %scevgep53, %scevgep79
  %bound1119 = icmp ult ptr %scevgep77, %scevgep55
  %found.conflict120 = and i1 %bound0118, %bound1119
  %bound0122 = icmp ult ptr %scevgep53, %scevgep82
  %bound1123 = icmp ult ptr %scevgep80, %scevgep55
  %found.conflict124 = and i1 %bound0122, %bound1123
  %i.kt = bitcast <4 x i1> %i.ks to i4
  %i.ku = icmp ne i4 %i.kt, 0
  %op.rdx = or i1 %i.ku, %found.conflict96
  %op.rdx144 = or i1 %found.conflict100, %found.conflict104
  %op.rdx145 = or i1 %found.conflict108, %found.conflict112
  %op.rdx146 = or i1 %found.conflict116, %found.conflict120
  %op.rdx147 = or i1 %op.rdx, %op.rdx144
  %op.rdx148 = or i1 %op.rdx145, %op.rdx146
  %op.rdx149 = or i1 %op.rdx147, %op.rdx148
  %op.rdx150 = or i1 %op.rdx149, %found.conflict124
  br i1 %op.rdx150, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kv = load double, ptr %i.ao, align 8, !tbaa !350, !alias.scope !12730, !noalias !12731
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = load double, ptr %i.at, align 8, !tbaa !350, !alias.scope !12730, !noalias !12731
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.kw, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = load double, ptr %i.ay, align 8, !tbaa !350, !alias.scope !12730, !noalias !12731
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %i.kx, i64 0
  %broadcast.splat134 = shufflevector <2 x double> %broadcast.splatinsert133, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12733, !alias.scope !12734, !noalias !12731
  %broadcast.splatinsert138 = insertelement <2 x double> poison, double %i.ky, i64 0
  %broadcast.splat139 = shufflevector <2 x double> %broadcast.splatinsert138, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = load double, ptr %i.cv, align 8, !tbaa !475, !alias.scope !12735, !noalias !12731
  %broadcast.splatinsert140 = insertelement <2 x double> poison, double %i.kz, i64 0
end_hunk_0
