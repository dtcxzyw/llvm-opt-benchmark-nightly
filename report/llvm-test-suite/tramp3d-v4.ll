inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S0_IS6_d16ConstantFunctionES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg4IT_T0_T1_T2_ERKT3_RKSt6vectorIbSaIbEE:bb.a
  store ptr %i.bu, ptr %i.bb, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i24

bb.n:                                             ; preds = %bb.l
  %i.bx = icmp eq ptr %i.bv, null
  br i1 %i.bx, label %bb.o, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i24

bb.o:                                             ; preds = %bb.n
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i24

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i24: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %.promoted14.i.i.i.i.i25 = phi ptr [ %.promoted15.i.i.i.i.i21, %bb.j ], [ %.promoted15.i.i.i.i.i21, %bb.k ], [ %i.bu, %bb.m ], [ %.promoted15.i.i.i.i.i21, %bb.n ], [ %.promoted15.i.i.i.i.i21, %bb.o ] ; 2 uses
  %i.by = phi ptr [ %i.bp, %bb.j ], [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ %i.bp, %bb.n ], [ %i.bp, %bb.o ]
  %indvars.iv.next.i.i.i.i.i26 = add nuw nsw i64 %indvars.iv.i.i.i.i.i20, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i27 = icmp eq i64 %indvars.iv.next.i.i.i.i.i26, %wide.trip.count.i.i.i.i.i16
  br i1 %exitcond.not.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i28, label %bb.j, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31: ; preds = %._crit_edge.i.i.i.i.i28, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit, %bb.i, %.preheader.lr.ph.i.i.i.i.i12
  %i.bz = and i64 %i.b, 8
  %.not53 = icmp eq i64 %i.bz, 0
  br i1 %.not53, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51, label %bb.p

bb.p:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !6409 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.preheader.lr.ph.i.i.i.i.i32, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51

.preheader.lr.ph.i.i.i.i.i32:                     ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !715
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !713
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 12                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load ptr, ptr %1, align 8, !nonnull !59, !align !2253 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  br i1 %i.cm, label %.preheader.lr.ph.split.i.i.i.i.i33, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51

.preheader.lr.ph.split.i.i.i.i.i33:               ; preds = %.preheader.lr.ph.i.i.i.i.i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !6419
  %i.cx = getelementptr inbounds [88 x i8], ptr %i.cw, i64 %i.cs
  %.promoted13.i.i.i.i.i34 = load ptr, ptr %i.cn, align 8, !tbaa !6433
  %i.cy = sext i32 %i.cq to i64
  %wide.trip.count21.i.i.i.i.i35 = zext nneg i32 %i.cb to i64
  %wide.trip.count.i.i.i.i.i36 = and i64 %i.ck, 2147483647
  br label %.preheader.i.i.i.i.i37

.preheader.i.i.i.i.i37:                           ; preds = %._crit_edge.i.i.i.i.i48, %.preheader.lr.ph.split.i.i.i.i.i33
  %indvars.iv18.i.i.i.i.i38 = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i33 ], [ %indvars.iv.next19.i.i.i.i.i49, %._crit_edge.i.i.i.i.i48 ] ; 2 uses
  %.promoted16.i.i.i.i.i39 = phi ptr [ %.promoted13.i.i.i.i.i34, %.preheader.lr.ph.split.i.i.i.i.i33 ], [ %.promoted14.i.i.i.i.i45, %._crit_edge.i.i.i.i.i48 ] ; 2 uses
  %i.cz = mul nsw i64 %indvars.iv18.i.i.i.i.i38, %i.cy
  %i.da = getelementptr [88 x i8], ptr %i.cx, i64 %i.cz
  br label %bb.q

._crit_edge.i.i.i.i.i48:                          ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44
  %indvars.iv.next19.i.i.i.i.i49 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i38, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i50 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i49, %wide.trip.count21.i.i.i.i.i35
  br i1 %exitcond22.not.i.i.i.i.i50, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51, label %.preheader.i.i.i.i.i37, !llvm.loop !6435

bb.q:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44, %.preheader.i.i.i.i.i37
  %indvars.iv.i.i.i.i.i40 = phi i64 [ 0, %.preheader.i.i.i.i.i37 ], [ %indvars.iv.next.i.i.i.i.i46, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44 ] ; 2 uses
  %.promoted15.i.i.i.i.i41 = phi ptr [ %.promoted16.i.i.i.i.i39, %.preheader.i.i.i.i.i37 ], [ %.promoted14.i.i.i.i.i45, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44 ] ; 4 uses
  %i.db = phi ptr [ %.promoted16.i.i.i.i.i39, %.preheader.i.i.i.i.i37 ], [ %i.dk, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44 ] ; 6 uses
  %i.dc = getelementptr [88 x i8], ptr %i.da, i64 %indvars.iv.i.i.i.i.i40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2615
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !2623 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.dg, %i.db
  br i1 %.not.i.i.i.i.i.i.i.i.i42, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !6436 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not8.i.i.i.i.i.i.i.i.i43, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = icmp eq ptr %i.db, null
  br i1 %i.di, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %i.dg, ptr %i.cn, align 8, !tbaa !6433
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

bb.u:                                             ; preds = %bb.s
  %i.dj = icmp eq ptr %i.dh, null
  br i1 %i.dj, label %bb.v, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

bb.v:                                             ; preds = %bb.u
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !6436
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.i.i.i.i.i44: ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %.promoted14.i.i.i.i.i45 = phi ptr [ %.promoted15.i.i.i.i.i41, %bb.q ], [ %.promoted15.i.i.i.i.i41, %bb.r ], [ %i.dg, %bb.t ], [ %.promoted15.i.i.i.i.i41, %bb.u ], [ %.promoted15.i.i.i.i.i41, %bb.v ] ; 2 uses
  %i.dk = phi ptr [ %i.db, %bb.q ], [ %i.db, %bb.r ], [ %i.dg, %bb.t ], [ %i.db, %bb.u ], [ %i.db, %bb.v ]
  %indvars.iv.next.i.i.i.i.i46 = add nuw nsw i64 %indvars.iv.i.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i47 = icmp eq i64 %indvars.iv.next.i.i.i.i.i46, %wide.trip.count.i.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i48, label %bb.q, !llvm.loop !6437

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit51: ; preds = %._crit_edge.i.i.i.i.i48, %.preheader.lr.ph.i.i.i.i.i32, %bb.p, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg4I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_S3_IS9_d16ConstantFunctionESB_EN3CFL10CflFunctorILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !6431 ; 4 uses
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
  br i1 %.not35, label %._crit_edge38.split, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.c, -1
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.a, -1
  %i.q = add i32 %i.p, %i.g
  %.not2332 = icmp sgt i32 %i.c, %i.o
  %.not2426 = icmp sgt i32 %i.a, %i.q
  %brmerge = select i1 %.not2332, i1 true, i1 %.not2426
  br i1 %brmerge, label %._crit_edge38.split, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !6429 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !859  ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 128      ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !6416
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !6419
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !6415
  %i.ae = getelementptr inbounds [88 x i8], ptr %i.ac, i64 %i.ad ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2989 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !6416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !6419
  %i.am = load i64, ptr %i.u, align 8, !tbaa !6415
  %i.an = getelementptr inbounds [88 x i8], ptr %i.al, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2989 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2989 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2989 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 204 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !6416
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !6419
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !6415
  %i.bg = getelementptr inbounds [88 x i8], ptr %i.be, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2989 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = zext i32 %i.a to i64                    ; 4 uses
  %i.bm = add i32 %i.g, %i.a
  %i.bn = add i32 %i.i, %i.c
  %i.bo = add i32 %i.k, %i.e
  %i.bp = add i32 %i.g, -1
  %2 = add i32 %i.c, 1
  %3 = add i32 %i.e, 1
  %i.bq = load i32, ptr %i.ah, align 4, !tbaa !4  ; 5 uses
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !4  ; 5 uses
  %i.bs = load <2 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.bt = load i32, ptr %i.ar, align 8, !tbaa !4  ; 4 uses
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !4  ; 4 uses
  %i.bv = load <2 x i32>, ptr %i.av, align 4, !tbaa !4 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.ba, align 4, !tbaa !4 ; 2 uses
  %i.bx = load <2 x i32>, ptr %i.bj, align 4, !tbaa !4 ; 2 uses
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !4  ; 4 uses
  %i.bz = load i32, ptr %i.bj, align 4, !tbaa !4  ; 4 uses
  %i.ca = mul i32 %i.e, %i.by
  %i.cb = add i32 %i.a, %i.ca
  %i.cc = mul i32 %i.c, %i.bz
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = mul i32 %i.e, %i.br
  %i.cf = add i32 %i.a, %i.ce
  %i.cg = mul i32 %i.c, %i.bq
  %i.ch = add i32 %i.cf, %i.cg                    ; 2 uses
  %i.ci = add i32 %i.ch, 1
  %i.cj = mul i32 %i.e, %i.bt
  %i.ck = add i32 %i.a, %i.cj
  %i.cl = mul i32 %i.c, %i.bu
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = load i32, ptr %i.aw, align 8, !tbaa !4  ; 4 uses
  %i.co = load i32, ptr %i.av, align 4, !tbaa !4  ; 7 uses
  %i.cp = load i32, ptr %i.bb, align 8, !tbaa !4  ; 7 uses
  %i.cq = load i32, ptr %i.ba, align 4, !tbaa !4  ; 4 uses
  %i.cr = mul i32 %i.c, %i.cq                     ; 2 uses
  %i.cs = mul i32 %i.e, %i.cp
  %i.ct = mul i32 %i.e, %i.cn
  %i.cu = mul i32 %i.c, %i.co
  %4 = add i32 %i.a, %i.cr
  %5 = add i32 %i.a, %i.cs
  %i.cv = add i32 %i.a, %i.ct                     ; 2 uses
  %6 = mul i32 %i.co, %2
  %7 = mul i32 %i.cp, %3
  %i.cw = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %6, i64 1
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cr, i64 2
  %i.cz = insertelement <4 x i32> %i.cy, i32 %7, i64 3
  %i.da = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cv, i64 1
  %i.dc = insertelement <4 x i32> %i.db, i32 %5, i64 2
  %i.dd = insertelement <4 x i32> %i.dc, i32 %4, i64 3
  %i.de = add <4 x i32> %i.dd, %i.cz
  %scevgep = getelementptr i8, ptr %i.y, i64 152
  %i.df = mul i32 %i.e, %i.by
  %i.dg = add i32 %i.a, %i.df
  %i.dh = mul i32 %i.c, %i.bz
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = add i32 %i.g, -1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 8                ; 8 uses
  %scevgep57 = getelementptr i8, ptr %i.bi, i64 %i.dm
  %scevgep59 = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.dn = mul i32 %i.e, %i.br
  %i.do = add i32 %i.a, %i.dn
  %i.dp = mul i32 %i.c, %i.bq
  %i.dq = add i32 %i.do, %i.dp                    ; 2 uses
  %i.dr = add i32 %i.dq, 1
  %scevgep61 = getelementptr i8, ptr %i.ag, i64 %i.dm
  %scevgep64 = getelementptr i8, ptr %i.ag, i64 %i.dm
  %i.ds = mul i32 %i.e, %i.bt
  %i.dt = add i32 %i.a, %i.ds
  %i.du = mul i32 %i.c, %i.bu
  %i.dv = add i32 %i.dt, %i.du
  %scevgep67 = getelementptr i8, ptr %i.ap, i64 %i.dm
  %i.dw = mul i32 %i.e, %i.cn
  %i.dx = add i32 %i.a, %i.dw                     ; 2 uses
  %i.dy = add i32 %i.c, 1
  %i.dz = mul i32 %i.co, %i.dy
  %i.ea = add i32 %i.dx, %i.dz
  %scevgep70 = getelementptr i8, ptr %i.au, i64 %i.dm
  %i.eb = mul i32 %i.c, %i.co
  %i.ec = add i32 %i.dx, %i.eb
  %scevgep73 = getelementptr i8, ptr %i.au, i64 %i.dm
  %i.ed = mul i32 %i.c, %i.cq                     ; 2 uses
  %i.ee = add i32 %i.a, %i.ed
  %i.ef = add i32 %i.e, 1
  %i.eg = mul i32 %i.cp, %i.ef
  %i.eh = add i32 %i.ee, %i.eg
  %scevgep76 = getelementptr i8, ptr %i.az, i64 %i.dm
  %i.ei = mul i32 %i.e, %i.cp
  %i.ej = add i32 %i.a, %i.ei
  %i.ek = add i32 %i.ej, %i.ed
  %scevgep79 = getelementptr i8, ptr %i.az, i64 %i.dm
  %i.el = insertelement <8 x i32> poison, i32 %i.cd, i64 0
  %i.em = insertelement <8 x i32> %i.el, i32 %i.ch, i64 1
  %i.en = insertelement <8 x i32> %i.em, i32 %i.ci, i64 2
  %i.eo = insertelement <8 x i32> %i.en, i32 %i.cm, i64 3
  %i.ep = shufflevector <2 x i32> %i.bv, <2 x i32> %i.bw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 1, i32 3, i32 3>
  %i.eq = insertelement <8 x i32> %i.ep, i32 %i.br, i64 1
  %i.er = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i32> %i.eq, <8 x i32> %i.er, <8 x i32> <i32 9, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.et = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eu = shufflevector <4 x i32> %i.de, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ew = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 1, i32 1, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.ex = shufflevector <2 x i32> %i.bv, <2 x i32> %i.bw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0, i32 2, i32 2>
  %i.ey = insertelement <8 x i32> %i.ex, i32 %i.bq, i64 1
  %i.ez = insertelement <8 x i32> poison, i32 %i.bp, i64 0
  %i.fa = shufflevector <8 x i32> %i.ez, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fb = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.fb, <8 x i32> %i.ey, <8 x i32> <i32 0, i32 9, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.fd = add i32 %i.g, -1                        ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.fd, 3
  %i.fg = shufflevector <8 x i32> %i.fc, <8 x i32> %i.et, <8 x i32> <i32 0, i32 1, i32 1, i32 8, i32 4, i32 5, i32 6, i32 7>
  %invariant.op126 = add <8 x i32> %i.ev, %i.fa
  %n.vec = and i64 %i.ff, 8589934590              ; 3 uses
  %i.fh = add nuw nsw i64 %n.vec, %i.bl
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34 ] ; 7 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.fz, %._crit_edge34 ] ; 6 uses
  %i.fi = mul i32 %i.by, %indvar
  %i.fj = add i32 %i.di, %i.fi
  %i.fk = mul i32 %i.br, %indvar                  ; 2 uses
  %i.fl = add i32 %i.dr, %i.fk
  %i.fm = add i32 %i.dq, %i.fk
  %i.fn = mul i32 %i.bt, %indvar
  %i.fo = add i32 %i.dv, %i.fn
  %i.fp = mul i32 %i.cn, %indvar                  ; 2 uses
  %i.fq = add i32 %i.ea, %i.fp
  %i.fr = add i32 %i.ec, %i.fp
  %i.fs = mul i32 %i.cp, %indvar                  ; 2 uses
  %i.ft = add i32 %i.eh, %i.fs
  %i.fu = add i32 %i.ek, %i.fs
  %i.fv = insertelement <8 x i32> poison, i32 %indvar, i64 0
  %i.fw = shufflevector <8 x i32> %i.fv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fx = mul <8 x i32> %i.ew, %i.fw              ; 2 uses
  %i.fy = add <8 x i32> %i.ev, %i.fx
  %i.fz = add i32 %.02236, 1                      ; 3 uses
  %i.ga = mul nsw i32 %i.br, %.02236
  %i.gb = mul nsw i32 %i.bt, %.02236
  %i.gc = mul nsw i32 %i.cn, %.02236              ; 2 uses
  %i.gd = mul nsw i32 %i.cp, %.02236              ; 2 uses
  %i.ge = mul nsw i32 %i.cp, %i.fz                ; 2 uses
  %i.gf = mul nsw i32 %i.by, %.02236
  %invariant.op124.reass = add <8 x i32> %i.fx, %invariant.op126
  br label %.preheader

._crit_edge38.split:                              ; preds = %._crit_edge34, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar47 = phi i32 [ 0, %.preheader25 ], [ %indvar.next48, %._crit_edge ] ; 7 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.hm, %._crit_edge ] ; 6 uses
  %i.gg = mul i32 %i.bz, %indvar47
  %i.gh = add i32 %i.fj, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 3                    ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.bi, i64 %i.gj ; 9 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.gj ; 9 uses
  %i.gk = mul i32 %i.bq, %indvar47                ; 2 uses
  %i.gl = add i32 %i.fl, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 3                    ; 2 uses
  %scevgep60 = getelementptr i8, ptr %i.ag, i64 %i.gn
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.gn
  %i.go = add i32 %i.fm, %i.gk
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 3                    ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.ag, i64 %i.gq
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.gq
  %i.gr = mul i32 %i.bu, %indvar47
  %i.gs = add i32 %i.fo, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 3                    ; 2 uses
  %scevgep66 = getelementptr i8, ptr %i.ap, i64 %i.gu
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.gu
  %i.gv = mul i32 %i.co, %indvar47                ; 2 uses
  %i.gw = add i32 %i.fq, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.au, i64 %i.gy
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.gy
  %i.gz = add i32 %i.fr, %i.gv
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.au, i64 %i.hb
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.hb
  %i.hc = mul i32 %i.cq, %indvar47                ; 2 uses
  %i.hd = add i32 %i.ft, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.az, i64 %i.hf
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.hf
  %i.hg = add i32 %i.fu, %i.hc
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 3                    ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.az, i64 %i.hi
  %scevgep80 = getelementptr i8, ptr %scevgep79, i64 %i.hi
  %i.hj = mul nsw i32 %i.bq, %.02133
  %invariant.op = add i32 %i.hj, %i.ga            ; 2 uses
  %i.hk = mul nsw i32 %i.bu, %.02133
  %invariant.op28 = add i32 %i.hk, %i.gb          ; 2 uses
  %i.hl = mul nsw i32 %i.co, %.02133              ; 2 uses
  %i.hm = add i32 %.02133, 1                      ; 3 uses
  %i.hn = mul nsw i32 %i.co, %i.hm                ; 2 uses
  %i.ho = mul nsw i32 %i.cq, %.02133              ; 2 uses
  %i.hp = mul nsw i32 %i.bz, %.02133
  %invariant.op30 = add i32 %i.hp, %i.gf          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.hq = insertelement <8 x i32> poison, i32 %indvar47, i64 0
  %i.hr = shufflevector <8 x i32> %i.hq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hs = mul <8 x i32> %i.fg, %i.hr              ; 2 uses
  %i.ht = add <8 x i32> %i.fy, %i.hs
  %.reass125 = add <8 x i32> %i.hs, %invariant.op124.reass
  %i.hu = icmp slt <8 x i32> %.reass125, %i.ht
  %i.hv = bitcast <8 x i1> %i.hu to i8
  %.not = icmp eq i8 %i.hv, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.z, %scevgep58
  %bound1 = icmp ult ptr %scevgep56, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %.sroa.4.0.copyload, %scevgep58
  %bound182 = icmp ult ptr %scevgep56, %scevgep59
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  %bound084 = icmp ult ptr %scevgep56, %scevgep62
  %bound185 = icmp ult ptr %scevgep60, %scevgep58
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx, %found.conflict86
  %bound088 = icmp ult ptr %scevgep56, %scevgep65
  %bound189 = icmp ult ptr %scevgep63, %scevgep58
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  %bound092 = icmp ult ptr %scevgep56, %scevgep68
  %bound193 = icmp ult ptr %scevgep66, %scevgep58
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep56, %scevgep71
  %bound197 = icmp ult ptr %scevgep69, %scevgep58
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep56, %scevgep74
  %bound1101 = icmp ult ptr %scevgep72, %scevgep58
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep56, %scevgep77
  %bound1105 = icmp ult ptr %scevgep75, %scevgep58
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep56, %scevgep80
  %bound1109 = icmp ult ptr %scevgep78, %scevgep58
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hw = load double, ptr %i.z, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = load double, ptr %i.as, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !6438, !noalias !6441
  %broadcast.splatinsert122 = insertelement <2 x double> poison, double %i.hy, i64 0
  %broadcast.splat123 = shufflevector <2 x double> %broadcast.splatinsert122, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !6443, !alias.scope !6445, !noalias !6441
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.hz, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ia = trunc i64 %index to i32
  %i.ib = add i32 %i.a, %i.ia                     ; 5 uses
  %i.ic = add i32 %invariant.op, %i.ib            ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.id
  %wide.load = load <2 x double>, ptr %i.ie, align 8, !tbaa !247, !alias.scope !6447
  %i.if = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load) ; 2 uses
  %i.ig = add i32 %i.ic, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ih
  %wide.load112 = load <2 x double>, ptr %i.ii, align 8, !tbaa !247, !alias.scope !6449
  %i.ij = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load112) ; 2 uses
  %i.ik = fcmp olt <2 x double> %i.if, %i.ij
  %i.il = select <2 x i1> %i.ik, <2 x double> %i.ij, <2 x double> %i.if
  %i.im = add i32 %invariant.op28, %i.ib
  %i.in = sext i32 %i.im to i64
end_hunk_0
