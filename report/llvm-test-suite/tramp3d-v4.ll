inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i24

bb.o:                                             ; preds = %bb.l
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i24

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i24: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.promoted.us13.i.i.i.i.i25 = phi ptr [ %.promoted.us14.i.i.i.i.i21, %bb.j ], [ %.promoted.us14.i.i.i.i.i21, %bb.k ], [ %i.bu, %bb.o ], [ %.promoted.us14.i.i.i.i.i21, %bb.m ], [ %.promoted.us14.i.i.i.i.i21, %bb.n ] ; 2 uses
  %i.by = phi ptr [ %i.bp, %bb.j ], [ %i.bp, %bb.k ], [ %i.bu, %bb.o ], [ %i.bp, %bb.m ], [ %i.bp, %bb.n ]
  %indvars.iv.next.i.i.i.i.i26 = add nuw nsw i64 %indvars.iv.i.i.i.i.i20, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i27 = icmp eq i64 %indvars.iv.next.i.i.i.i.i26, %wide.trip.count.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i27, label %._crit_edge.us.i.i.i.i.i28, label %bb.j, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i28:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i24
  %indvars.iv.next19.i.i.i.i.i29 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i18, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i30 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i29, %wide.trip.count21.i.i.i.i.i15
  br i1 %exitcond22.not.i.i.i.i.i30, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31, label %.preheader.us.i.i.i.i.i17, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31: ; preds = %._crit_edge.us.i.i.i.i.i28, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit, %bb.i, %.preheader.lr.ph.i.i.i.i.i12
  %i.bz = and i64 %i.b, 8
  %.not53 = icmp eq i64 %i.bz, 0
  br i1 %.not53, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51, label %bb.p

bb.p:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !6256 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.lr.ph.i.i.i.i.i32, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51

.preheader.lr.ph.i.i.i.i.i32:                     ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !597
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !595
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 12                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.cm, label %.preheader.lr.ph.split.us.i.i.i.i.i33, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51

.preheader.lr.ph.split.us.i.i.i.i.i33:            ; preds = %.preheader.lr.ph.i.i.i.i.i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !6266
  %i.cx = getelementptr inbounds [88 x i8], ptr %i.cw, i64 %i.cs
  %.promoted.i.i.i.i.i34 = load ptr, ptr %i.cn, align 8, !tbaa !6280
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count21.i.i.i.i.i35 = zext nneg i32 %i.cb to i64
  %wide.trip.count.i.i.i.i.i36 = and i64 %i.ck, 2147483647
  br label %.preheader.us.i.i.i.i.i37

.preheader.us.i.i.i.i.i37:                        ; preds = %._crit_edge.us.i.i.i.i.i48, %.preheader.lr.ph.split.us.i.i.i.i.i33
  %indvars.iv18.i.i.i.i.i38 = phi i64 [ %indvars.iv.next19.i.i.i.i.i49, %._crit_edge.us.i.i.i.i.i48 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i33 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i39 = phi ptr [ %.promoted.us13.i.i.i.i.i45, %._crit_edge.us.i.i.i.i.i48 ], [ %.promoted.i.i.i.i.i34, %.preheader.lr.ph.split.us.i.i.i.i.i33 ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv18.i.i.i.i.i38, %i.cy
  %i.da = getelementptr [88 x i8], ptr %i.cx, i64 %i.cz
  br label %bb.q

bb.q:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44, %.preheader.us.i.i.i.i.i37
  %indvars.iv.i.i.i.i.i40 = phi i64 [ 0, %.preheader.us.i.i.i.i.i37 ], [ %indvars.iv.next.i.i.i.i.i46, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i41 = phi ptr [ %.promoted.us15.i.i.i.i.i39, %.preheader.us.i.i.i.i.i37 ], [ %.promoted.us13.i.i.i.i.i45, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44 ] ; 4 uses
  %i.db = phi ptr [ %.promoted.us15.i.i.i.i.i39, %.preheader.us.i.i.i.i.i37 ], [ %i.dk, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44 ] ; 6 uses
  %i.dc = getelementptr [88 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2462
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i42 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.us.i.i.i.i.i42, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i43 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i43, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.u, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

bb.v:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted.us13.i.i.i.i.i45 = phi ptr [ %.promoted.us14.i.i.i.i.i41, %bb.q ], [ %.promoted.us14.i.i.i.i.i41, %bb.r ], [ %i.dg, %bb.v ], [ %.promoted.us14.i.i.i.i.i41, %bb.t ], [ %.promoted.us14.i.i.i.i.i41, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.v ], [ %i.db, %bb.t ], [ %i.db, %bb.u ]
  %indvars.iv.next.i.i.i.i.i46 = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i.i46, %wide.trip.count.i.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i47, label %._crit_edge.us.i.i.i.i.i48, label %bb.q, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i48:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i44
  %indvars.iv.next19.i.i.i.i.i49 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i38, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i50 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i49, %wide.trip.count21.i.i.i.i.i35
  br i1 %exitcond22.not.i.i.i.i.i50, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51, label %.preheader.us.i.i.i.i.i37, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51: ; preds = %._crit_edge.us.i.i.i.i.i48, %.preheader.lr.ph.i.i.i.i.i32, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d16ConstantFunctionESB_EN3CFL10CflFunctorILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !6278 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 16 uses
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
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !6276 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !741  ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 128      ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6266
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2836 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6266
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2836 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2836 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2836 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 204 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !6266
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.bg = getelementptr inbounds [88 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2836 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = zext i32 %i.a to i64                    ; 4 uses
  %i.bm = add i32 %i.g, %i.a
  %i.bn = add i32 %i.i, %i.c
  %i.bo = add i32 %i.k, %i.e
  %i.bp = add i32 %i.g, -1
  %i.bq = load i32, ptr %i.ah, align 4, !tbaa !4  ; 5 uses
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !4  ; 5 uses
  %i.bs = load <2 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.bt = load i32, ptr %i.ar, align 8, !tbaa !4  ; 4 uses
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !4  ; 4 uses
  %i.bv = load <2 x i32>, ptr %i.av, align 4, !tbaa !4 ; 2 uses
  %2 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %3 = load <2 x i32>, ptr %i.bj, align 4, !tbaa !4 ; 2 uses
  %4 = load i32, ptr %i.bk, align 8, !tbaa !4     ; 4 uses
  %i.bw = load i32, ptr %i.bj, align 4, !tbaa !4  ; 4 uses
  %5 = mul i32 %i.e, %4
  %6 = add i32 %i.a, %5
  %7 = mul i32 %i.c, %i.bw
  %8 = add i32 %6, %7
  %i.bx = mul i32 %i.e, %i.br
  %i.by = add i32 %i.a, %i.bx
  %i.bz = mul i32 %i.c, %i.bq
  %9 = add i32 %i.by, %i.bz                       ; 2 uses
  %i.ca = add i32 %9, 1
  %i.cb = mul i32 %i.e, %i.bt
  %i.cc = add i32 %i.a, %i.cb
  %i.cd = mul i32 %i.c, %i.bu
  %10 = add i32 %i.cc, %i.cd
  %i.ce = add i32 %i.e, 1
  %i.cf = add i32 %i.c, 1
  %11 = load i32, ptr %i.aw, align 8, !tbaa !4    ; 4 uses
  %12 = load i32, ptr %i.av, align 4, !tbaa !4    ; 7 uses
  %13 = load i32, ptr %i.bb, align 8, !tbaa !4    ; 7 uses
  %14 = load i32, ptr %i.ba, align 4, !tbaa !4    ; 4 uses
  %15 = mul i32 %i.e, %13
  %i.cg = mul i32 %i.c, %12
  %16 = mul i32 %13, %i.ce
  %i.ch = mul i32 %i.c, %14                       ; 2 uses
  %17 = mul i32 %12, %i.cf
  %i.ci = mul i32 %i.e, %11
  %i.cj = add i32 %i.a, %i.ch
  %18 = add i32 %i.a, %15
  %i.ck = add i32 %i.a, %i.ci                     ; 2 uses
  %19 = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %20 = insertelement <4 x i32> %19, i32 %i.ck, i64 1
  %21 = insertelement <4 x i32> %20, i32 %18, i64 2
  %22 = insertelement <4 x i32> %21, i32 %i.cj, i64 3
  %23 = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %24 = insertelement <4 x i32> %23, i32 %17, i64 1
  %25 = insertelement <4 x i32> %24, i32 %i.ch, i64 2
  %26 = insertelement <4 x i32> %25, i32 %16, i64 3
  %27 = add <4 x i32> %22, %26
  %scevgep = getelementptr i8, ptr %i.y, i64 152
  %i.cl = mul i32 %i.e, %4
  %i.cm = add i32 %i.a, %i.cl
  %i.cn = mul i32 %i.c, %i.bw
  %i.co = add i32 %i.cm, %i.cn
  %i.cp = add i32 %i.g, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 8                ; 8 uses
  %scevgep61 = getelementptr i8, ptr %i.bi, i64 %i.cs
  %scevgep63 = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ct = mul i32 %i.e, %i.br
  %i.cu = add i32 %i.a, %i.ct
  %i.cv = mul i32 %i.c, %i.bq
  %i.cw = add i32 %i.cu, %i.cv                    ; 2 uses
  %i.cx = add i32 %i.cw, 1
  %scevgep65 = getelementptr i8, ptr %i.ag, i64 %i.cs
  %scevgep68 = getelementptr i8, ptr %i.ag, i64 %i.cs
  %i.cy = mul i32 %i.e, %i.bt
  %i.cz = add i32 %i.a, %i.cy
  %i.da = mul i32 %i.c, %i.bu
  %i.db = add i32 %i.cz, %i.da
  %scevgep71 = getelementptr i8, ptr %i.ap, i64 %i.cs
  %i.dc = mul i32 %i.e, %11
  %i.dd = add i32 %i.a, %i.dc                     ; 2 uses
  %i.de = add i32 %i.c, 1
  %i.df = mul i32 %12, %i.de
  %i.dg = add i32 %i.dd, %i.df
  %scevgep74 = getelementptr i8, ptr %i.au, i64 %i.cs
  %i.dh = mul i32 %i.c, %12
  %i.di = add i32 %i.dd, %i.dh
  %scevgep77 = getelementptr i8, ptr %i.au, i64 %i.cs
  %i.dj = mul i32 %i.c, %14                       ; 2 uses
  %i.dk = add i32 %i.a, %i.dj
  %i.dl = add i32 %i.e, 1
  %i.dm = mul i32 %13, %i.dl
  %i.dn = add i32 %i.dk, %i.dm
  %scevgep80 = getelementptr i8, ptr %i.az, i64 %i.cs
  %i.do = mul i32 %i.e, %13
  %i.dp = add i32 %i.a, %i.do
  %i.dq = add i32 %i.dp, %i.dj
  %scevgep83 = getelementptr i8, ptr %i.az, i64 %i.cs
  %i.dr = add i32 %i.g, -1                        ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %i.du = insertelement <8 x i32> poison, i32 %8, i64 0
  %i.dv = insertelement <8 x i32> %i.du, i32 %9, i64 1
  %i.dw = insertelement <8 x i32> %i.dv, i32 %i.ca, i64 2
  %i.dx = insertelement <8 x i32> %i.dw, i32 %10, i64 3
  %28 = shufflevector <2 x i32> %i.bv, <2 x i32> %2, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 1, i32 3, i32 3>
  %i.dy = insertelement <8 x i32> %28, i32 %i.br, i64 1
  %29 = shufflevector <2 x i32> %3, <2 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <8 x i32> %i.dy, <8 x i32> %29, <8 x i32> <i32 9, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %31 = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %32 = shufflevector <4 x i32> %27, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <8 x i32> %i.dx, <8 x i32> %32, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dz = shufflevector <8 x i32> %30, <8 x i32> %31, <8 x i32> <i32 0, i32 1, i32 1, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <2 x i32> %i.bv, <2 x i32> %2, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0, i32 2, i32 2>
  %i.eb = insertelement <8 x i32> %i.ea, i32 %i.bq, i64 1
  %i.ec = insertelement <8 x i32> poison, i32 %i.bp, i64 0
  %i.ed = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ee = shufflevector <2 x i32> %3, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <8 x i32> %i.ee, <8 x i32> %i.eb, <8 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %min.iters.check = icmp ult i32 %i.dr, 3
  %i.eg = shufflevector <8 x i32> %i.ef, <8 x i32> %31, <8 x i32> <i32 0, i32 1, i32 1, i32 8, i32 4, i32 5, i32 6, i32 7>
  %invariant.op130 = add <8 x i32> %33, %i.ed
  %n.vec = and i64 %i.dt, 8589934590              ; 3 uses
  %i.eh = add nuw nsw i64 %n.vec, %i.bl
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34.split ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.ez, %._crit_edge34.split ] ; 6 uses
  %i.ei = mul i32 %4, %indvar
  %i.ej = add i32 %i.co, %i.ei
  %i.ek = mul i32 %i.br, %indvar                  ; 2 uses
  %i.el = add i32 %i.cx, %i.ek
  %i.em = add i32 %i.cw, %i.ek
  %i.en = mul i32 %i.bt, %indvar
  %i.eo = add i32 %i.db, %i.en
  %i.ep = mul i32 %11, %indvar                    ; 2 uses
  %i.eq = add i32 %i.dg, %i.ep
  %i.er = add i32 %i.di, %i.ep
  %i.es = mul i32 %13, %indvar                    ; 2 uses
  %i.et = add i32 %i.dn, %i.es
  %i.eu = add i32 %i.dq, %i.es
  %i.ev = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.ew = shufflevector <8 x i32> %i.ev, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ex = mul <8 x i32> %i.dz, %i.ew              ; 2 uses
  %i.ey = add <8 x i32> %33, %i.ex
  %i.ez = add i32 %.02236, 1                      ; 3 uses
  %i.fa = mul nsw i32 %i.br, %.02236
  %i.fb = mul nsw i32 %i.bt, %.02236
  %i.fc = mul nsw i32 %11, %.02236                ; 2 uses
  %i.fd = mul nsw i32 %13, %.02236                ; 2 uses
  %i.fe = mul nsw i32 %13, %i.ez                  ; 2 uses
  %i.ff = mul nsw i32 %4, %.02236
  %invariant.op128.reass = add <8 x i32> %i.ex, %invariant.op130
  br label %.preheader

._crit_edge38:                                    ; preds = %._crit_edge34.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar51 = phi i32 [ 0, %.preheader25 ], [ %indvar.next52, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.gm, %._crit_edge ] ; 6 uses
  %i.fg = mul i32 %i.bw, %indvar51
  %i.fh = add i32 %i.ej, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = shl nsw i64 %i.fi, 3                    ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.bi, i64 %i.fj ; 9 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.fj ; 9 uses
  %i.fk = mul i32 %i.bq, %indvar51                ; 2 uses
  %i.fl = add i32 %i.el, %i.fk
  %i.fm = sext i32 %i.fl to i64
  %i.fn = shl nsw i64 %i.fm, 3                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.ag, i64 %i.fn
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.fn
  %i.fo = add i32 %i.em, %i.fk
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 3                    ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.ag, i64 %i.fq
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.fq
  %i.fr = mul i32 %i.bu, %indvar51
  %i.fs = add i32 %i.eo, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.ap, i64 %i.fu
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.fu
  %i.fv = mul i32 %12, %indvar51                  ; 2 uses
  %i.fw = add i32 %i.eq, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = shl nsw i64 %i.fx, 3                    ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.au, i64 %i.fy
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.fy
  %i.fz = add i32 %i.er, %i.fv
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %i.au, i64 %i.gb
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.gb
  %i.gc = mul i32 %14, %indvar51                  ; 2 uses
  %i.gd = add i32 %i.et, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3                    ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.az, i64 %i.gf
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.gf
  %i.gg = add i32 %i.eu, %i.gc
  %i.gh = sext i32 %i.gg to i64
  %i.gi = shl nsw i64 %i.gh, 3                    ; 2 uses
  %scevgep82 = getelementptr i8, ptr %i.az, i64 %i.gi
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.gi
  %i.gj = mul nsw i32 %i.bq, %.02133
  %invariant.op = add i32 %i.gj, %i.fa            ; 2 uses
  %i.gk = mul nsw i32 %i.bu, %.02133
  %invariant.op28 = add i32 %i.gk, %i.fb          ; 2 uses
  %i.gl = mul nsw i32 %12, %.02133                ; 2 uses
  %i.gm = add i32 %.02133, 1                      ; 3 uses
  %i.gn = mul nsw i32 %12, %i.gm                  ; 2 uses
  %i.go = mul nsw i32 %14, %.02133                ; 2 uses
  %i.gp = mul nsw i32 %i.bw, %.02133
  %invariant.op30 = add i32 %i.gp, %i.ff          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.gq = insertelement <8 x i32> poison, i32 %indvar51, i64 0
  %i.gr = shufflevector <8 x i32> %i.gq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gs = mul <8 x i32> %i.eg, %i.gr              ; 2 uses
  %i.gt = add <8 x i32> %i.ey, %i.gs
  %.reass129 = add <8 x i32> %i.gs, %invariant.op128.reass
  %i.gu = icmp slt <8 x i32> %.reass129, %i.gt
  %i.gv = bitcast <8 x i1> %i.gu to i8
  %.not = icmp eq i8 %i.gv, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.z, %scevgep62
  %bound1 = icmp ult ptr %scevgep60, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %.sroa.4.0.copyload, %scevgep62
  %bound186 = icmp ult ptr %scevgep60, %scevgep63
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %scevgep60, %scevgep66
  %bound189 = icmp ult ptr %scevgep64, %scevgep62
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %scevgep60, %scevgep69
  %bound193 = icmp ult ptr %scevgep67, %scevgep62
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep60, %scevgep72
  %bound197 = icmp ult ptr %scevgep70, %scevgep62
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep60, %scevgep75
  %bound1101 = icmp ult ptr %scevgep73, %scevgep62
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep60, %scevgep78
  %bound1105 = icmp ult ptr %scevgep76, %scevgep62
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep60, %scevgep81
  %bound1109 = icmp ult ptr %scevgep79, %scevgep62
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %scevgep60, %scevgep84
  %bound1113 = icmp ult ptr %scevgep82, %scevgep62
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  br i1 %conflict.rdx115, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gw = load double, ptr %i.z, align 8, !tbaa !247, !alias.scope !6285, !noalias !6288
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = load double, ptr %i.as, align 8, !tbaa !247, !alias.scope !6285, !noalias !6288
  %broadcast.splatinsert120 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat121 = shufflevector <2 x double> %broadcast.splatinsert120, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !6285, !noalias !6288
  %broadcast.splatinsert126 = insertelement <2 x double> poison, double %i.gy, i64 0
  %broadcast.splat127 = shufflevector <2 x double> %broadcast.splatinsert126, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !6290, !alias.scope !6292, !noalias !6288
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.gz, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ha = trunc i64 %index to i32
  %i.hb = add i32 %i.a, %i.ha                     ; 5 uses
  %i.hc = add i32 %invariant.op, %i.hb            ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hd
  %wide.load = load <2 x double>, ptr %i.he, align 8, !tbaa !247, !alias.scope !6294
  %i.hf = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load) ; 2 uses
  %i.hg = add i32 %i.hc, 1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hh
  %wide.load116 = load <2 x double>, ptr %i.hi, align 8, !tbaa !247, !alias.scope !6296
  %i.hj = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load116) ; 2 uses
  %i.hk = fcmp olt <2 x double> %i.hf, %i.hj
  %i.hl = select <2 x i1> %i.hk, <2 x double> %i.hj, <2 x double> %i.hf
  %i.hm = add i32 %invariant.op28, %i.hb
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.hn
  %wide.load117 = load <2 x double>, ptr %i.ho, align 8, !tbaa !247, !alias.scope !6298 ; 3 uses
  %i.hp = fadd <2 x double> %i.hl, %wide.load117
  %i.hq = fdiv <2 x double> %broadcast.splat, %i.hp ; 2 uses
  %i.hr = add i32 %i.fc, %i.hb                    ; 2 uses
  %i.hs = add i32 %i.hr, %i.gl
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ht
  %wide.load118 = load <2 x double>, ptr %i.hu, align 8, !tbaa !247, !alias.scope !6300
  %i.hv = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load118) ; 2 uses
  %i.hw = add i32 %i.hr, %i.gn
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.hx
  %wide.load119 = load <2 x double>, ptr %i.hy, align 8, !tbaa !247, !alias.scope !6302
  %i.hz = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load119) ; 2 uses
  %i.ia = fcmp olt <2 x double> %i.hv, %i.hz
  %i.ib = select <2 x i1> %i.ia, <2 x double> %i.hz, <2 x double> %i.hv
  %i.ic = fadd <2 x double> %wide.load117, %i.ib
  %i.id = fdiv <2 x double> %broadcast.splat121, %i.ic ; 2 uses
  %i.ie = fcmp olt <2 x double> %i.id, %i.hq
  %i.if = select <2 x i1> %i.ie, <2 x double> %i.id, <2 x double> %i.hq ; 2 uses
  %i.ig = add i32 %i.go, %i.hb                    ; 2 uses
  %i.ih = add i32 %i.ig, %i.fd
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ii
  %wide.load122 = load <2 x double>, ptr %i.ij, align 8, !tbaa !247, !alias.scope !6304
  %i.ik = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load122)
  %i.il = fadd <2 x double> %i.ik, %broadcast.splat124 ; 2 uses
  %i.im = add i32 %i.ig, %i.fe
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.in
  %wide.load125 = load <2 x double>, ptr %i.io, align 8, !tbaa !247, !alias.scope !6306
  %i.ip = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load125)
  %i.iq = fadd <2 x double> %broadcast.splat124, %i.ip ; 2 uses
  %i.ir = fcmp olt <2 x double> %i.il, %i.iq
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.iq, <2 x double> %i.il
  %i.it = fadd <2 x double> %wide.load117, %i.is
  %i.iu = fdiv <2 x double> %broadcast.splat127, %i.it ; 2 uses
  %i.iv = fcmp olt <2 x double> %i.iu, %i.if
  %i.iw = select <2 x i1> %i.iv, <2 x double> %i.iu, <2 x double> %i.if
  %i.ix = add i32 %invariant.op30, %i.hb
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.iy
  store <2 x double> %i.iw, ptr %i.iz, align 8, !tbaa !247, !alias.scope !6288, !noalias !6308
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !6309

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bl, %vector.memcheck ], [ %i.bl, %vector.scevcheck ], [ %i.bl, %.preheader ], [ %i.eh, %middle.block ]
  br label %scalar.ph

._crit_edge34.split:                              ; preds = %._crit_edge
  %exitcond46.not = icmp eq i32 %i.ez, %i.bo
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader25, !llvm.loop !6310

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond45.not = icmp eq i32 %i.gm, %i.bn
  %indvar.next52 = add i32 %indvar51, 1
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !6311

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jb = trunc i64 %indvars.iv to i32            ; 5 uses
  %.reass = add i32 %invariant.op, %i.jb          ; 2 uses
  %i.jc = sext i32 %.reass to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.jc
  %i.je = load double, ptr %i.jd, align 8, !tbaa !247
  %i.jf = add i32 %.reass, 1
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !247
  %.reass29 = add i32 %invariant.op28, %i.jb
  %i.jj = sext i32 %.reass29 to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !247 ; 2 uses
  %i.jm = add i32 %i.fc, %i.jb                    ; 2 uses
  %i.jn = add i32 %i.jm, %i.gl
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !247
  %i.jr = add i32 %i.jm, %i.gn
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !247
  %i.jv = load <2 x double>, ptr %i.z, align 8, !tbaa !247
  %i.jw = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jx = insertelement <2 x double> %i.jw, double %i.jq, i64 1
  %i.jy = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.jx) ; 2 uses
  %i.jz = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.ju, i64 1
  %i.kb = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ka) ; 2 uses
  %i.kc = fcmp olt <2 x double> %i.jy, %i.kb
  %i.kd = select <2 x i1> %i.kc, <2 x double> %i.kb, <2 x double> %i.jy
  %i.ke = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = fadd <2 x double> %i.kf, %i.kd
  %i.kh = fdiv <2 x double> %i.jv, %i.kg          ; 2 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0 ; 2 uses
  %i.kj = extractelement <2 x double> %i.kh, i64 1 ; 2 uses
  %i.kk = fcmp olt double %i.kj, %i.ki
  %.sroa.speculated54.i.i = select i1 %i.kk, double %i.kj, double %i.ki ; 2 uses
  %i.kl = load double, ptr %i.ax, align 8, !tbaa !247
  %i.km = add i32 %i.go, %i.jb                    ; 2 uses
  %i.kn = add i32 %i.km, %i.fd
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !247
  %i.kr = tail call double @llvm.fabs.f64(double %i.kq)
  %i.ks = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !6290 ; 2 uses
  %i.kt = fadd double %i.kr, %i.ks                ; 2 uses
end_hunk_0
