inline.NumInlined: 28162
inline.NumDeleted: 8422
begin_hunk_0_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S0_IS6_d16ConstantFunctionES0_IS6_4ZeroIdES9_ESA_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg7IT_T0_T1_T2_T3_T4_T5_ERKT6_RKSt6vectorIbSaIbEE:bb.a

.preheader.lr.ph.i.i.i.i.i61:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !597
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !595
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.us.i.i.i.i.i62, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80

.preheader.lr.ph.split.us.i.i.i.i.i62:            ; preds = %.preheader.lr.ph.i.i.i.i.i61
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !6266
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted.i.i.i.i.i63 = load ptr, ptr %i.dz, align 8, !tbaa !6280
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i64 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i65 = and i64 %i.dw, 2147483647
  br label %.preheader.us.i.i.i.i.i66

.preheader.us.i.i.i.i.i66:                        ; preds = %._crit_edge.us.i.i.i.i.i77, %.preheader.lr.ph.split.us.i.i.i.i.i62
  %indvars.iv18.i.i.i.i.i67 = phi i64 [ %indvars.iv.next19.i.i.i.i.i78, %._crit_edge.us.i.i.i.i.i77 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i62 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i68 = phi ptr [ %.promoted.us13.i.i.i.i.i74, %._crit_edge.us.i.i.i.i.i77 ], [ %.promoted.i.i.i.i.i63, %.preheader.lr.ph.split.us.i.i.i.i.i62 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i67, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73, %.preheader.us.i.i.i.i.i66
  %indvars.iv.i.i.i.i.i69 = phi i64 [ 0, %.preheader.us.i.i.i.i.i66 ], [ %indvars.iv.next.i.i.i.i.i75, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i70 = phi ptr [ %.promoted.us15.i.i.i.i.i68, %.preheader.us.i.i.i.i.i66 ], [ %.promoted.us13.i.i.i.i.i74, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73 ] ; 4 uses
  %i.en = phi ptr [ %.promoted.us15.i.i.i.i.i68, %.preheader.us.i.i.i.i.i66 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i69
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2462
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i71 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.us.i.i.i.i.i71, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i72 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i72, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ab, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73

bb.ac:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted.us13.i.i.i.i.i74 = phi ptr [ %.promoted.us14.i.i.i.i.i70, %bb.x ], [ %.promoted.us14.i.i.i.i.i70, %bb.y ], [ %i.es, %bb.ac ], [ %.promoted.us14.i.i.i.i.i70, %bb.aa ], [ %.promoted.us14.i.i.i.i.i70, %bb.ab ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.ac ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next.i.i.i.i.i75 = add nuw nsw i64 %indvars.iv.i.i.i.i.i69, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i76 = icmp eq i64 %indvars.iv.next.i.i.i.i.i75, %wide.trip.count.i.i.i.i.i65
  br i1 %exitcond.not.i.i.i.i.i76, label %._crit_edge.us.i.i.i.i.i77, label %bb.x, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i77:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i73
  %indvars.iv.next19.i.i.i.i.i78 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i67, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i79 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i78, %wide.trip.count21.i.i.i.i.i64
  br i1 %exitcond22.not.i.i.i.i.i79, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80, label %.preheader.us.i.i.i.i.i66, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit80: ; preds = %._crit_edge.us.i.i.i.i.i77, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit60, %bb.w, %.preheader.lr.ph.i.i.i.i.i61
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg7I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_S3_IS9_d16ConstantFunctionES3_IS9_4ZeroIdESC_ESD_EN6Forgas6TGuessILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12416 ; 3 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not39 = icmp sgt i32 %i.e, %i.m
  br i1 %.not39, label %._crit_edge42, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2336 = icmp sgt i32 %i.c, %i.q
  %.not2428 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2336, i1 true, i1 %.not2428
  br i1 %or.cond, label %._crit_edge42, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12414 ; 13 uses
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
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6263
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6266
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6262
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2836 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !741 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 128    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2836 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 116
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 136 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2836 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 204
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !6263
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !6266
  %i.bc = load i64, ptr %i.aa, align 8, !tbaa !6262
  %i.bd = getelementptr inbounds [88 x i8], ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2836 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !6266
  %i.bl = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.bm = getelementptr inbounds [88 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2836 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !6266
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.bv = getelementptr inbounds [88 x i8], ptr %i.bt, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2836 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !4  ; 5 uses
  %i.cc = load ptr, ptr %i.t, align 8, !tbaa !1064
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1067 ; 2 uses
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !1070 ; 2 uses
  %i.cg = getelementptr [56 x i8], ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !1064
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1067 ; 2 uses
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !1070 ; 2 uses
  %i.cl = getelementptr [56 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = zext i32 %i.a to i64                    ; 4 uses
  %i.cn = add i32 %i.g, %i.a
  %i.co = add i32 %i.i, %i.c
  %i.cp = add i32 %i.k, %i.e
  %i.cq = add i32 %i.g, -1                        ; 2 uses
  %i.cr = add i32 %i.c, 1
  %2 = load i32, ptr %i.al, align 4, !tbaa !4     ; 5 uses
  %i.cs = load i32, ptr %i.am, align 8, !tbaa !4  ; 5 uses
  %3 = mul i32 %i.e, %i.cs
  %4 = add i32 %i.a, %3
  %5 = mul i32 %i.c, %2
  %i.ct = load i32, ptr %i.bq, align 8, !tbaa !4  ; 5 uses
  %i.cu = load i32, ptr %i.bp, align 4, !tbaa !4  ; 5 uses
  %6 = mul i32 %i.e, %i.ct
  %7 = add i32 %i.a, %6
  %8 = mul i32 %i.c, %i.cu
  %9 = add i32 %i.e, 1
  %10 = load i32, ptr %i.ax, align 8, !tbaa !4    ; 8 uses
  %11 = load i32, ptr %i.aw, align 4, !tbaa !4    ; 5 uses
  %12 = load i32, ptr %i.bh, align 8, !tbaa !4    ; 5 uses
  %13 = load i32, ptr %i.bg, align 4, !tbaa !4    ; 5 uses
  %14 = load i32, ptr %i.as, align 8, !tbaa !4    ; 5 uses
  %15 = load i32, ptr %i.ar, align 4, !tbaa !4    ; 8 uses
  %i.cv = mul i32 %15, %i.cr
  %16 = mul i32 %i.e, %12
  %17 = mul i32 %i.e, %10
  %i.cw = mul i32 %i.e, %14
  %18 = mul i32 %i.c, %13
  %i.cx = mul i32 %i.c, %11                       ; 2 uses
  %19 = mul i32 %10, %9
  %i.cy = mul i32 %i.c, %15
  %i.cz = add i32 %i.a, %16
  %20 = add i32 %i.a, %17
  %i.da = add i32 %i.a, %i.cx
  %21 = add i32 %i.a, %i.cw                       ; 2 uses
  %i.db = add i32 %7, %8
  %22 = add i32 %4, %5                            ; 2 uses
  %i.dc = add i32 %22, 1
  %i.dd = add i32 %21, %i.cv
  %23 = add i32 %21, %i.cy
  %i.de = add i32 %i.da, %19
  %24 = add i32 %20, %i.cx
  %i.df = add i32 %i.cz, %18
  %i.dg = mul i32 %i.e, %i.cb
  %i.dh = add i32 %i.a, %i.dg
  %i.di = mul i32 %i.c, %i.bz
  %i.dj = add i32 %i.dh, %i.di
  %i.dk = mul i32 %i.e, %i.ct
  %i.dl = add i32 %i.a, %i.dk
  %i.dm = mul i32 %i.c, %i.cu
  %i.dn = add i32 %i.dl, %i.dm
  %i.do = add i32 %i.g, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 8                ; 9 uses
  %scevgep66 = getelementptr i8, ptr %i.bo, i64 %i.dr
  %i.ds = mul i64 %i.cf, 56
  %i.dt = getelementptr i8, ptr %i.ce, i64 %i.ds
  %i.du = mul i64 %i.ck, 56
  %i.dv = getelementptr i8, ptr %i.cj, i64 %i.du
  %i.dw = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %.sroa.4.0.copyload, i64 1
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.dt, i64 2
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.dv, i64 3 ; 2 uses
  %i.ea = getelementptr i8, <4 x ptr> %i.dz, <4 x i64> <i64 152, i64 8, i64 8, i64 8>
  %i.eb = mul i32 %i.e, %i.cs
  %i.ec = add i32 %i.a, %i.eb
  %i.ed = mul i32 %i.c, %2
  %i.ee = add i32 %i.ec, %i.ed                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.ak, i64 %i.dr
  %i.ef = add i32 %i.ee, 1
  %scevgep75 = getelementptr i8, ptr %i.ak, i64 %i.dr
  %i.eg = mul i32 %i.e, %14
  %i.eh = add i32 %i.a, %i.eg                     ; 2 uses
  %i.ei = mul i32 %i.c, %15
  %i.ej = add i32 %i.eh, %i.ei
  %scevgep78 = getelementptr i8, ptr %i.aq, i64 %i.dr
  %i.ek = add i32 %i.c, 1
  %i.el = mul i32 %15, %i.ek
  %i.em = add i32 %i.eh, %i.el
  %scevgep81 = getelementptr i8, ptr %i.aq, i64 %i.dr
  %i.en = mul i32 %i.e, %10
  %i.eo = add i32 %i.a, %i.en
  %i.ep = mul i32 %i.c, %11                       ; 2 uses
  %i.eq = add i32 %i.eo, %i.ep
  %scevgep84 = getelementptr i8, ptr %i.av, i64 %i.dr
  %i.er = add i32 %i.a, %i.ep
  %i.es = add i32 %i.e, 1
  %i.et = mul i32 %10, %i.es
  %i.eu = add i32 %i.er, %i.et
  %scevgep87 = getelementptr i8, ptr %i.av, i64 %i.dr
  %i.ev = mul i32 %i.e, %12
  %i.ew = add i32 %i.a, %i.ev
  %i.ex = mul i32 %i.c, %13
  %i.ey = add i32 %i.ew, %i.ex
  %scevgep90 = getelementptr i8, ptr %i.bf, i64 %i.dr
  %i.ez = mul i32 %i.e, %i.cb
  %i.fa = add i32 %i.a, %i.ez
  %i.fb = mul i32 %i.c, %i.bz
  %i.fc = add i32 %i.fa, %i.fb
  %scevgep93 = getelementptr i8, ptr %i.bx, i64 %i.dr
  %i.fd = add i32 %i.g, -1                        ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %25 = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %26 = insertelement <4 x i32> %25, i32 %i.dc, i64 1
  %27 = insertelement <4 x i32> %26, i32 %22, i64 2
  %28 = insertelement <4 x i32> %27, i32 %i.dd, i64 3
  %29 = insertelement <4 x i32> poison, i32 %23, i64 0
  %30 = insertelement <4 x i32> %29, i32 %i.de, i64 1
  %31 = insertelement <4 x i32> %30, i32 %24, i64 2
  %32 = insertelement <4 x i32> %31, i32 %i.df, i64 3
  %i.fg = insertelement <4 x ptr> %i.dz, ptr %i.ao, i64 0
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %i.cg, i64 2
  %i.fi = insertelement <4 x ptr> %i.fh, ptr %i.cl, i64 3
  %i.fj = insertelement <8 x i32> poison, i32 %i.cq, i64 0
  %i.fk = shufflevector <8 x i32> %i.fj, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp eq i32 %i.fd, 0
  %n.vec = and i64 %i.ff, 8589934590              ; 3 uses
  %i.fl = add nuw nsw i64 %n.vec, %i.cm
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge38.split
  %indvar = phi i32 [ 0, %.preheader27.lr.ph.split.split ], [ %indvar.next, %._crit_edge38.split ] ; 13 uses
  %.02240 = phi i32 [ %i.e, %.preheader27.lr.ph.split.split ], [ %i.gg, %._crit_edge38.split ] ; 7 uses
  %i.fm = mul i32 %i.ct, %indvar
  %i.fn = add i32 %i.dn, %i.fm
  %i.fo = mul i32 %i.cs, %indvar                  ; 2 uses
  %i.fp = add i32 %i.ee, %i.fo
  %i.fq = add i32 %i.ef, %i.fo
  %i.fr = mul i32 %14, %indvar                    ; 2 uses
  %i.fs = add i32 %i.ej, %i.fr
  %i.ft = add i32 %i.em, %i.fr
  %i.fu = mul i32 %10, %indvar                    ; 2 uses
  %i.fv = add i32 %i.eq, %i.fu
  %i.fw = add i32 %i.eu, %i.fu
  %i.fx = mul i32 %12, %indvar
  %i.fy = add i32 %i.ey, %i.fx
  %i.fz = mul i32 %i.cb, %indvar
  %i.ga = add i32 %i.fc, %i.fz
  %i.gb = mul i32 %i.ct, %indvar
  %33 = mul i32 %i.cs, %indvar
  %i.gc = mul i32 %14, %indvar                    ; 2 uses
  %34 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %35 = insertelement <4 x i32> %34, i32 %33, i64 1
  %36 = insertelement <4 x i32> %35, i32 %i.gc, i64 3
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %38 = add <4 x i32> %28, %37
  %39 = mul i32 %10, %indvar
  %i.gd = mul i32 %12, %indvar
  %40 = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %41 = insertelement <4 x i32> %40, i32 %39, i64 1
  %42 = insertelement <4 x i32> %41, i32 %i.gd, i64 3
  %43 = shufflevector <4 x i32> %42, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %44 = add <4 x i32> %32, %43
  %i.ge = mul i32 %i.cb, %indvar
  %i.gf = add i32 %i.dj, %i.ge
  %i.gg = add i32 %.02240, 1                      ; 3 uses
  %i.gh = mul nsw i32 %i.cs, %.02240              ; 3 uses
  %invariant.op = add i32 %i.gh, 1                ; 2 uses
  %i.gi = mul nsw i32 %14, %.02240                ; 2 uses
  %i.gj = mul nsw i32 %10, %i.gg                  ; 2 uses
  %i.gk = mul nsw i32 %10, %.02240                ; 2 uses
  %i.gl = mul nsw i32 %12, %.02240
  %i.gm = mul nsw i32 %i.ct, %.02240
  %i.gn = mul nsw i32 %i.cb, %.02240
  br label %.preheader

._crit_edge42:                                    ; preds = %._crit_edge38.split, %.preheader27.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader27, %._crit_edge
  %indvar55 = phi i32 [ 0, %.preheader27 ], [ %indvar.next56, %._crit_edge ] ; 13 uses
  %.02137 = phi i32 [ %i.c, %.preheader27 ], [ %i.hw, %._crit_edge ] ; 7 uses
  %i.go = mul i32 %i.cu, %indvar55
  %i.gp = add i32 %i.fn, %i.go
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.bo, i64 %i.gr ; 9 uses
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.gr ; 9 uses
  %i.gs = mul i32 %2, %indvar55                   ; 2 uses
  %i.gt = add i32 %i.fp, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.ak, i64 %i.gv
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.gv
  %i.gw = add i32 %i.fq, %i.gs
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.ak, i64 %i.gy
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.gy
  %i.gz = mul i32 %15, %indvar55                  ; 2 uses
  %i.ha = add i32 %i.fs, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 3                    ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.aq, i64 %i.hc
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.hc
  %i.hd = add i32 %i.ft, %i.gz
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.aq, i64 %i.hf
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.hf
  %i.hg = mul i32 %11, %indvar55                  ; 2 uses
  %i.hh = add i32 %i.fv, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 3                    ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.av, i64 %i.hj
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.hj
  %i.hk = add i32 %i.fw, %i.hg
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl nsw i64 %i.hl, 3                    ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.av, i64 %i.hm
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.hm
  %i.hn = mul i32 %13, %indvar55
  %i.ho = add i32 %i.fy, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3                    ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.bf, i64 %i.hq
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.hq
  %i.hr = mul i32 %i.bz, %indvar55
  %i.hs = add i32 %i.ga, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.bx, i64 %i.hu
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.hu
  %i.hv = mul nsw i32 %2, %.02137                 ; 2 uses
  %i.hw = add nsw i32 %.02137, 1                  ; 3 uses
  %i.hx = mul nsw i32 %15, %i.hw                  ; 2 uses
  %i.hy = mul nsw i32 %15, %.02137                ; 2 uses
  %i.hz = mul nsw i32 %11, %.02137                ; 2 uses
  %i.ia = mul nsw i32 %13, %.02137
  %invariant.op30 = add i32 %i.ia, %i.gl          ; 2 uses
  %i.ib = mul nsw i32 %i.cu, %.02137
  %invariant.op32 = add i32 %i.ib, %i.gm          ; 2 uses
  %i.ic = mul nsw i32 %i.bz, %.02137
  %invariant.op34 = add i32 %i.ic, %i.gn          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.id = mul i32 %i.bz, %indvar55
  %i.ie = add i32 %i.gf, %i.id                    ; 2 uses
  %i.if = mul i32 %13, %indvar55
  %i.ig = mul i32 %11, %indvar55
  %i.ih = mul i32 %15, %indvar55                  ; 2 uses
  %i.ii = mul i32 %2, %indvar55
  %i.ij = mul i32 %i.cu, %indvar55
  %45 = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %46 = insertelement <4 x i32> %45, i32 %i.ig, i64 1
  %47 = insertelement <4 x i32> %46, i32 %i.if, i64 3
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %49 = add <4 x i32> %44, %48                    ; 2 uses
  %50 = insertelement <4 x i32> poison, i32 %i.ij, i64 0
  %51 = insertelement <4 x i32> %50, i32 %i.ii, i64 1
  %52 = insertelement <4 x i32> %51, i32 %i.ih, i64 3
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %54 = add <4 x i32> %38, %53                    ; 2 uses
  %55 = shufflevector <4 x i32> %54, <4 x i32> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %56 = add <8 x i32> %55, %i.fk
  %57 = shufflevector <4 x i32> %54, <4 x i32> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ik = icmp slt <8 x i32> %56, %57
  %i.il = add i32 %i.ie, %i.cq
  %i.im = icmp slt i32 %i.il, %i.ie
  %i.in = bitcast <8 x i1> %i.ik to i8
  %i.io = icmp ne i8 %i.in, 0
  %op.rdx163 = or i1 %i.io, %i.im
  br i1 %op.rdx163, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ip = insertelement <4 x ptr> poison, ptr %scevgep67, i64 0
  %i.iq = shufflevector <4 x ptr> %i.ip, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ir = icmp ult <4 x ptr> %i.fi, %i.iq
  %i.is = insertelement <4 x ptr> poison, ptr %scevgep65, i64 0
  %i.it = shufflevector <4 x ptr> %i.is, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iu = icmp ult <4 x ptr> %i.it, %i.ea
  %i.iv = and <4 x i1> %i.ir, %i.iu
  %bound0106 = icmp ult ptr %scevgep65, %scevgep73
  %bound1107 = icmp ult ptr %scevgep71, %scevgep67
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0110 = icmp ult ptr %scevgep65, %scevgep76
  %bound1111 = icmp ult ptr %scevgep74, %scevgep67
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0114 = icmp ult ptr %scevgep65, %scevgep79
  %bound1115 = icmp ult ptr %scevgep77, %scevgep67
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0118 = icmp ult ptr %scevgep65, %scevgep82
  %bound1119 = icmp ult ptr %scevgep80, %scevgep67
  %found.conflict120 = and i1 %bound0118, %bound1119
  %bound0122 = icmp ult ptr %scevgep65, %scevgep85
  %bound1123 = icmp ult ptr %scevgep83, %scevgep67
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0126 = icmp ult ptr %scevgep65, %scevgep88
  %bound1127 = icmp ult ptr %scevgep86, %scevgep67
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0130 = icmp ult ptr %scevgep65, %scevgep91
  %bound1131 = icmp ult ptr %scevgep89, %scevgep67
  %found.conflict132 = and i1 %bound0130, %bound1131
  %bound0134 = icmp ult ptr %scevgep65, %scevgep94
  %bound1135 = icmp ult ptr %scevgep92, %scevgep67
  %found.conflict136 = and i1 %bound0134, %bound1135
  %i.iw = bitcast <4 x i1> %i.iv to i4
  %i.ix = icmp ne i4 %i.iw, 0
  %op.rdx = or i1 %i.ix, %found.conflict108
  %op.rdx156 = or i1 %found.conflict112, %found.conflict116
  %op.rdx157 = or i1 %found.conflict120, %found.conflict124
  %op.rdx158 = or i1 %found.conflict128, %found.conflict132
  %op.rdx159 = or i1 %op.rdx, %op.rdx156
  %op.rdx160 = or i1 %op.rdx157, %op.rdx158
  %op.rdx161 = or i1 %op.rdx159, %op.rdx160
  %op.rdx162 = or i1 %op.rdx161, %found.conflict136
  br i1 %op.rdx162, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iy = load double, ptr %i.ao, align 8, !tbaa !247, !alias.scope !12418, !noalias !12421
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = load double, ptr %i.at, align 8, !tbaa !247, !alias.scope !12418, !noalias !12421
  %broadcast.splatinsert141 = insertelement <2 x double> poison, double %i.iz, i64 0
  %broadcast.splat142 = shufflevector <2 x double> %broadcast.splatinsert141, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = load double, ptr %i.ay, align 8, !tbaa !247, !alias.scope !12418, !noalias !12421
  %broadcast.splatinsert145 = insertelement <2 x double> poison, double %i.ja, i64 0
  %broadcast.splat146 = shufflevector <2 x double> %broadcast.splatinsert145, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12423, !alias.scope !12425, !noalias !12421
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %i.jb, i64 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = load double, ptr %i.cg, align 8, !tbaa !1072, !alias.scope !12427, !noalias !12421
  %broadcast.splatinsert152 = insertelement <2 x double> poison, double %i.jc, i64 0
  %broadcast.splat153 = shufflevector <2 x double> %broadcast.splatinsert152, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = load double, ptr %i.cl, align 8, !tbaa !1072, !alias.scope !12429, !noalias !12421
  %broadcast.splatinsert154 = insertelement <2 x double> poison, double %i.jd, i64 0
  %broadcast.splat155 = shufflevector <2 x double> %broadcast.splatinsert154, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.je = trunc i64 %index to i32
  %i.jf = add i32 %i.a, %i.je                     ; 6 uses
  %i.jg = add i32 %i.hv, %i.jf                    ; 2 uses
  %i.jh = add i32 %i.jg, %invariant.op
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ji
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !247, !alias.scope !12431
  %i.jk = add i32 %i.jg, %i.gh
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jl
  %wide.load138 = load <2 x double>, ptr %i.jm, align 8, !tbaa !247, !alias.scope !12433
  %i.jn = fsub <2 x double> %wide.load, %wide.load138
  %i.jo = fdiv <2 x double> %i.jn, %broadcast.splat
  %i.jp = add i32 %i.gi, %i.jf                    ; 2 uses
  %i.jq = add i32 %i.jp, %i.hx
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.jr
  %wide.load139 = load <2 x double>, ptr %i.js, align 8, !tbaa !247, !alias.scope !12435
  %i.jt = add i32 %i.jp, %i.hy
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ju
  %wide.load140 = load <2 x double>, ptr %i.jv, align 8, !tbaa !247, !alias.scope !12437
  %i.jw = fsub <2 x double> %wide.load139, %wide.load140
  %i.jx = fdiv <2 x double> %i.jw, %broadcast.splat142
  %i.jy = fadd <2 x double> %i.jo, %i.jx
  %i.jz = add i32 %i.hz, %i.jf                    ; 2 uses
  %i.ka = add i32 %i.jz, %i.gj
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.kb
  %wide.load143 = load <2 x double>, ptr %i.kc, align 8, !tbaa !247, !alias.scope !12439
  %i.kd = add i32 %i.jz, %i.gk
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ke
  %wide.load144 = load <2 x double>, ptr %i.kf, align 8, !tbaa !247, !alias.scope !12441
  %i.kg = fsub <2 x double> %wide.load143, %wide.load144
  %i.kh = fdiv <2 x double> %i.kg, %broadcast.splat146
  %i.ki = fadd <2 x double> %i.jy, %i.kh
  %i.kj = add i32 %invariant.op30, %i.jf
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.kk
  %wide.load147 = load <2 x double>, ptr %i.kl, align 8, !tbaa !247, !alias.scope !12443
  %i.km = add i32 %invariant.op32, %i.jf
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.kn ; 2 uses
  %wide.load148 = load <2 x double>, ptr %i.ko, align 8, !tbaa !247, !alias.scope !12421, !noalias !12445
  %i.kp = add i32 %invariant.op34, %i.jf
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.kq
  %wide.load149 = load <2 x double>, ptr %i.kr, align 8, !tbaa !247, !alias.scope !12447 ; 2 uses
  %i.ks = fneg <2 x double> %wide.load148
  %i.kt = fmul <2 x double> %broadcast.splat151, %i.ks
  %i.ku = fdiv <2 x double> %i.kt, %wide.load149
  %i.kv = fdiv <2 x double> %i.ku, %broadcast.splat153
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.ki, <2 x double> %wide.load147)
  %i.kx = fmul <2 x double> %wide.load149, %i.kw
  %i.ky = fdiv <2 x double> %i.kx, %broadcast.splat155
  store <2 x double> %i.ky, ptr %i.ko, align 8, !tbaa !247, !alias.scope !12421, !noalias !12445
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kz = icmp eq i64 %index.next, %n.vec
  br i1 %i.kz, label %middle.block, label %vector.body, !llvm.loop !12448

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %.preheader ], [ %i.fl, %middle.block ]
  br label %scalar.ph

._crit_edge38.split:                              ; preds = %._crit_edge
  %exitcond50.not = icmp eq i32 %i.gg, %i.cp
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond50.not, label %._crit_edge42, label %.preheader27, !llvm.loop !12449

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond49.not = icmp eq i32 %i.hw, %i.co
  %indvar.next56 = add i32 %indvar55, 1
  br i1 %exitcond49.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !12450

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.la = trunc i64 %indvars.iv to i32            ; 6 uses
  %i.lb = add i32 %i.hv, %i.la                    ; 2 uses
  %.reass = add i32 %i.lb, %invariant.op
  %i.lc = sext i32 %.reass to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !247
  %i.lf = add i32 %i.lb, %i.gh
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !247
  %i.lj = fsub double %i.le, %i.li
  %i.lk = load double, ptr %i.ao, align 8, !tbaa !247
  %i.ll = fdiv double %i.lj, %i.lk
  %i.lm = add i32 %i.gi, %i.la                    ; 2 uses
  %i.ln = add i32 %i.lm, %i.hx
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !247
  %i.lr = add i32 %i.lm, %i.hy
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !247
  %i.lv = fsub double %i.lq, %i.lu
  %i.lw = load double, ptr %i.at, align 8, !tbaa !247
  %i.lx = fdiv double %i.lv, %i.lw
  %i.ly = fadd double %i.ll, %i.lx
  %i.lz = add i32 %i.hz, %i.la                    ; 2 uses
  %i.ma = add i32 %i.lz, %i.gj
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.mb
  %i.md = load double, ptr %i.mc, align 8, !tbaa !247
  %i.me = add i32 %i.lz, %i.gk
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !247
  %i.mi = fsub double %i.md, %i.mh
  %i.mj = load double, ptr %i.ay, align 8, !tbaa !247
  %i.mk = fdiv double %i.mi, %i.mj
  %i.ml = fadd double %i.ly, %i.mk
  %.reass31 = add i32 %invariant.op30, %i.la
  %i.mm = sext i32 %.reass31 to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !247
  %i.mp = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12423
  %.reass33 = add i32 %invariant.op32, %i.la
  %i.mq = sext i32 %.reass33 to i64
end_hunk_0
begin_hunk_1_@_ZN14MultiArgKernelI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_S9_S9_S9_S9_E15EvaluateLocLoopIN6Forgas5VYUpdILi3EEELi3EEE3runEv:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_SB_SB_EN6Forgas5VYUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12866 ; 4 uses
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
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !12808 ; 13 uses
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
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !6263
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !6266
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !6262
  %i.ai = getelementptr inbounds [88 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2836 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !6263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6266
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !6262
  %i.ar = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !741, !noalias !12868 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 136    ; 3 uses
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !6266
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2836 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !6266
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.bl = getelementptr inbounds [88 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2836 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !6266
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.bu = getelementptr inbounds [88 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2836 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !6263
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !6266
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !6262
  %i.cd = getelementptr inbounds [88 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2836 ; 4 uses
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
  %i.cu = load i32, ptr %i.bg, align 8, !tbaa !4  ; 5 uses
  %i.cv = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.cw = load i32, ptr %i.bp, align 8, !tbaa !4  ; 5 uses
  %i.cx = load i32, ptr %i.bo, align 4, !tbaa !4  ; 8 uses
  %i.cy = load i32, ptr %i.by, align 8, !tbaa !4  ; 5 uses
  %i.cz = load i32, ptr %i.bx, align 4, !tbaa !4  ; 8 uses
  %i.da = mul i32 %i.e, %i.cq
  %i.db = add i32 %i.a, %i.da
  %i.dc = mul i32 %i.e, %i.cs
  %i.dd = mul i32 %i.e, %i.cw
  %i.de = mul i32 %i.e, %i.cy
  %i.df = mul i32 %i.cz, %i.cp
  %i.dg = add i32 %i.a, %i.de                     ; 2 uses
  %i.dh = mul i32 %i.cx, %i.cp
  %i.di = add i32 %i.a, %i.dd                     ; 2 uses
  %i.dj = mul i32 %i.c, %i.cv
  %i.dk = mul i32 %i.ct, %i.cp
  %i.dl = add i32 %i.a, %i.dc                     ; 2 uses
  %i.dm = mul i32 %i.c, %i.cr
  %i.dn = add i32 %i.db, %i.dm
  %i.do = mul i32 %i.c, %i.ct
  %i.dp = add i32 %i.dl, %i.do
  %i.dq = add i32 %i.dl, %i.dk
  %i.dr = mul i32 %i.e, %i.cu
  %i.ds = add i32 %i.a, %i.dr
  %i.dt = add i32 %i.ds, %i.dj
  %i.du = mul i32 %i.c, %i.cx
  %i.dv = add i32 %i.di, %i.du
  %i.dw = add i32 %i.di, %i.dh
  %i.dx = mul i32 %i.c, %i.cz
  %i.dy = add i32 %i.dg, %i.dx
  %i.dz = add i32 %i.dg, %i.df
  %i.ea = mul i32 %i.e, %i.cj
  %i.eb = add i32 %i.a, %i.ea
  %i.ec = mul i32 %i.c, %i.ch
  %i.ed = add i32 %i.eb, %i.ec
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ee = mul i32 %i.e, %i.cq
  %i.ef = add i32 %i.a, %i.ee
  %i.eg = mul i32 %i.c, %i.cr
  %i.eh = add i32 %i.ef, %i.eg
  %i.ei = add i32 %i.g, -1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 8                ; 9 uses
  %scevgep62 = getelementptr i8, ptr %i.ak, i64 %i.el
  %scevgep64 = getelementptr i8, ptr %i.aw, i64 144
  %i.em = mul i32 %i.e, %i.cs
  %i.en = add i32 %i.a, %i.em                     ; 2 uses
  %i.eo = add i32 %i.c, -1                        ; 3 uses
  %i.ep = mul i32 %i.ct, %i.eo
  %i.eq = add i32 %i.en, %i.ep
  %scevgep66 = getelementptr i8, ptr %i.at, i64 %i.el
  %i.er = mul i32 %i.c, %i.ct
  %i.es = add i32 %i.en, %i.er
  %scevgep69 = getelementptr i8, ptr %i.at, i64 %i.el
  %i.et = mul i32 %i.e, %i.cu
  %i.eu = add i32 %i.a, %i.et
  %i.ev = mul i32 %i.c, %i.cv
  %i.ew = add i32 %i.eu, %i.ev
  %scevgep72 = getelementptr i8, ptr %i.be, i64 %i.el
  %i.ex = mul i32 %i.e, %i.cw
  %i.ey = add i32 %i.a, %i.ex                     ; 2 uses
  %i.ez = mul i32 %i.cx, %i.eo
  %i.fa = add i32 %i.ey, %i.ez
  %scevgep75 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.fb = mul i32 %i.c, %i.cx
  %i.fc = add i32 %i.ey, %i.fb
  %scevgep78 = getelementptr i8, ptr %i.bn, i64 %i.el
  %i.fd = mul i32 %i.e, %i.cy
  %i.fe = add i32 %i.a, %i.fd                     ; 2 uses
  %i.ff = mul i32 %i.cz, %i.eo
  %i.fg = add i32 %i.fe, %i.ff
  %scevgep81 = getelementptr i8, ptr %i.bw, i64 %i.el
  %i.fh = mul i32 %i.c, %i.cz
  %i.fi = add i32 %i.fe, %i.fh
  %scevgep84 = getelementptr i8, ptr %i.bw, i64 %i.el
  %i.fj = mul i32 %i.e, %i.cj
  %i.fk = add i32 %i.a, %i.fj
  %i.fl = mul i32 %i.c, %i.ch
  %i.fm = add i32 %i.fk, %i.fl
  %scevgep87 = getelementptr i8, ptr %i.cf, i64 %i.el
  %i.fn = add i32 %i.g, -1                        ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %2 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %3 = insertelement <4 x i32> %2, i32 %i.dp, i64 1
  %4 = insertelement <4 x i32> %3, i32 %i.dq, i64 2
  %5 = insertelement <4 x i32> %4, i32 %i.dt, i64 3
  %i.fq = insertelement <8 x i32> poison, i32 %i.co, i64 0
  %i.fr = shufflevector <8 x i32> %i.fq, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.fn, 3
  %n.vec = and i64 %i.fp, 8589934590              ; 3 uses
  %i.fs = add nuw nsw i64 %n.vec, %i.ck
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge34.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge34.split ] ; 13 uses
  %.02236 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.lf, %._crit_edge34.split ] ; 7 uses
  %i.ft = mul i32 %i.cq, %indvar
  %i.fu = add i32 %i.eh, %i.ft
  %i.fv = mul i32 %i.cs, %indvar                  ; 2 uses
  %i.fw = add i32 %i.eq, %i.fv
  %i.fx = add i32 %i.es, %i.fv
  %i.fy = mul i32 %i.cu, %indvar
  %i.fz = add i32 %i.ew, %i.fy
  %i.ga = mul i32 %i.cw, %indvar                  ; 2 uses
  %i.gb = add i32 %i.fa, %i.ga
  %i.gc = add i32 %i.fc, %i.ga
  %i.gd = mul i32 %i.cy, %indvar                  ; 2 uses
  %i.ge = add i32 %i.fg, %i.gd
  %i.gf = add i32 %i.fi, %i.gd
  %i.gg = mul i32 %i.cj, %indvar
  %i.gh = add i32 %i.fm, %i.gg
  %i.gi = mul i32 %i.cq, %indvar
  %6 = mul i32 %i.cs, %indvar
  %i.gj = mul i32 %i.cu, %indvar
  %7 = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %8 = insertelement <4 x i32> %7, i32 %6, i64 1
  %9 = insertelement <4 x i32> %8, i32 %i.gj, i64 3
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %11 = add <4 x i32> %5, %10
  %i.gk = mul i32 %i.cw, %indvar                  ; 2 uses
  %i.gl = add i32 %i.dv, %i.gk
  %i.gm = add i32 %i.dw, %i.gk
  %i.gn = mul i32 %i.cy, %indvar                  ; 2 uses
  %i.go = add i32 %i.dy, %i.gn
  %i.gp = add i32 %i.dz, %i.gn
  %i.gq = mul i32 %i.cj, %indvar
  %i.gr = add i32 %i.ed, %i.gq
  %i.gs = mul nsw i32 %i.cq, %.02236
  %i.gt = mul nsw i32 %i.cs, %.02236              ; 2 uses
  %i.gu = mul nsw i32 %i.cu, %.02236
  %i.gv = mul nsw i32 %i.cw, %.02236              ; 2 uses
  %i.gw = mul nsw i32 %i.cy, %.02236              ; 2 uses
  %i.gx = mul nsw i32 %i.cj, %.02236
  br label %.preheader

._crit_edge38:                                    ; preds = %._crit_edge34.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar51 = phi i32 [ 0, %.preheader25 ], [ %indvar.next52, %._crit_edge ] ; 13 uses
  %.02133 = phi i32 [ %i.c, %.preheader25 ], [ %i.lg, %._crit_edge ] ; 8 uses
  %i.gy = mul i32 %i.cr, %indvar51
  %i.gz = add i32 %i.fu, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3                    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ak, i64 %i.hb ; 10 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.hb ; 10 uses
  %i.hc = mul i32 %i.ct, %indvar51                ; 2 uses
  %i.hd = add i32 %i.fw, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.at, i64 %i.hf
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.hf
  %i.hg = add i32 %i.fx, %i.hc
  %i.hh = sext i32 %i.hg to i64
  %i.hi = shl nsw i64 %i.hh, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.at, i64 %i.hi
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.hi
  %i.hj = mul i32 %i.cv, %indvar51
  %i.hk = add i32 %i.fz, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl nsw i64 %i.hl, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.be, i64 %i.hm
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.hm
  %i.hn = mul i32 %i.cx, %indvar51                ; 2 uses
  %i.ho = add i32 %i.gb, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3                    ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.bn, i64 %i.hq
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.hq
  %i.hr = add i32 %i.gc, %i.hn
  %i.hs = sext i32 %i.hr to i64
  %i.ht = shl nsw i64 %i.hs, 3                    ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.bn, i64 %i.ht
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.ht
  %i.hu = mul i32 %i.cz, %indvar51                ; 2 uses
  %i.hv = add i32 %i.ge, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 3                    ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.bw, i64 %i.hx
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.hx
  %i.hy = add i32 %i.gf, %i.hu
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 3                    ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.bw, i64 %i.ia
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.ia
  %i.ib = mul i32 %i.ch, %indvar51
  %i.ic = add i32 %i.gh, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = shl nsw i64 %i.id, 3                    ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.cf, i64 %i.ie
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.ie
  %i.if = mul nsw i32 %i.cr, %.02133
  %invariant.op = add i32 %i.if, %i.gs            ; 2 uses
  %i.ig = mul nsw i32 %i.ct, %.02133              ; 2 uses
  %i.ih = add nsw i32 %.02133, -1                 ; 3 uses
  %i.ii = mul nsw i32 %i.ct, %i.ih                ; 2 uses
  %i.ij = mul nsw i32 %i.cv, %.02133
  %invariant.op28 = add i32 %i.ij, %i.gu          ; 2 uses
  %i.ik = mul nsw i32 %i.cx, %.02133              ; 2 uses
  %i.il = mul nsw i32 %i.cx, %i.ih                ; 2 uses
  %i.im = mul nsw i32 %i.cz, %.02133              ; 2 uses
  %i.in = mul nsw i32 %i.cz, %i.ih                ; 2 uses
  %i.io = mul nsw i32 %i.ch, %.02133
  %invariant.op30 = add i32 %i.io, %i.gx          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ip = mul i32 %i.ch, %indvar51
  %i.iq = add i32 %i.gr, %i.ip                    ; 2 uses
  %i.ir = mul i32 %i.cz, %indvar51                ; 2 uses
  %i.is = mul i32 %i.cx, %indvar51                ; 2 uses
  %i.it = mul i32 %i.cv, %indvar51
  %i.iu = mul i32 %i.ct, %indvar51
  %i.iv = mul i32 %i.cr, %indvar51
  %i.iw = add i32 %i.gp, %i.ir
  %i.ix = add i32 %i.go, %i.ir
  %i.iy = add i32 %i.gm, %i.is
  %i.iz = add i32 %i.gl, %i.is
  %12 = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %13 = insertelement <4 x i32> %12, i32 %i.iu, i64 1
  %14 = insertelement <4 x i32> %13, i32 %i.it, i64 3
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %16 = add <4 x i32> %11, %15
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = insertelement <8 x i32> %17, i32 %i.iz, i64 4
  %i.jb = insertelement <8 x i32> %i.ja, i32 %i.iy, i64 5
  %i.jc = insertelement <8 x i32> %i.jb, i32 %i.ix, i64 6
  %i.jd = insertelement <8 x i32> %i.jc, i32 %i.iw, i64 7 ; 2 uses
  %i.je = add <8 x i32> %i.jd, %i.fr
  %i.jf = icmp slt <8 x i32> %i.je, %i.jd
  %i.jg = add i32 %i.iq, %i.co
  %i.jh = icmp slt i32 %i.jg, %i.iq
  %i.ji = bitcast <8 x i1> %i.jf to i8
  %i.jj = icmp ne i8 %i.ji, 0
  %op.rdx = or i1 %i.jj, %i.jh
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
  %i.jk = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12871, !alias.scope !12873, !noalias !12876
  %broadcast.splatinsert132 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat133 = shufflevector <2 x double> %broadcast.splatinsert132, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = load double, ptr %i.ax, align 8, !tbaa !247, !alias.scope !12878, !noalias !12880
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jm = trunc i64 %index to i32
  %i.jn = add i32 %i.a, %i.jm                     ; 6 uses
  %i.jo = add i32 %invariant.op, %i.jn
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.jp ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jq, align 8, !tbaa !247, !alias.scope !12876, !noalias !12881
  %i.jr = add i32 %i.gt, %i.jn                    ; 2 uses
  %i.js = add i32 %i.jr, %i.ig
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jt
  %wide.load124 = load <2 x double>, ptr %i.ju, align 8, !tbaa !247, !alias.scope !12890
  %i.jv = add i32 %i.jr, %i.ii
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jw
  %wide.load125 = load <2 x double>, ptr %i.jx, align 8, !tbaa !247, !alias.scope !12891
  %i.jy = fsub <2 x double> %wide.load124, %wide.load125
  %i.jz = add i32 %invariant.op28, %i.jn
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ka
  %wide.load126 = load <2 x double>, ptr %i.kb, align 8, !tbaa !247, !alias.scope !12892
  %i.kc = fdiv <2 x double> %i.jy, %broadcast.splat
  %i.kd = fsub <2 x double> %wide.load126, %i.kc
  %i.ke = add i32 %i.gv, %i.jn                    ; 2 uses
  %i.kf = add i32 %i.ke, %i.ik
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.kg
  %wide.load127 = load <2 x double>, ptr %i.kh, align 8, !tbaa !247, !alias.scope !12893
  %i.ki = add i32 %i.ke, %i.il
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.kj
  %wide.load128 = load <2 x double>, ptr %i.kk, align 8, !tbaa !247, !alias.scope !12894
  %i.kl = fmul <2 x double> %wide.load128, splat (double 5.000000e-01)
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load127, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kl)
  %i.kn = fdiv <2 x double> %i.kd, %i.km
  %i.ko = add i32 %i.gw, %i.jn                    ; 2 uses
  %i.kp = add i32 %i.ko, %i.im
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.kq
  %wide.load129 = load <2 x double>, ptr %i.kr, align 8, !tbaa !247, !alias.scope !12895
  %i.ks = add i32 %i.ko, %i.in
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.kt
  %wide.load130 = load <2 x double>, ptr %i.ku, align 8, !tbaa !247, !alias.scope !12896
  %i.kv = fsub <2 x double> %wide.load129, %wide.load130
  %i.kw = fdiv <2 x double> %i.kv, %broadcast.splat
  %i.kx = fsub <2 x double> %i.kn, %i.kw
  %i.ky = add i32 %invariant.op30, %i.jn
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.kz
  %wide.load131 = load <2 x double>, ptr %i.la, align 8, !tbaa !247, !alias.scope !12897
  %i.lb = fsub <2 x double> %i.kx, %wide.load131
  %i.lc = fmul <2 x double> %broadcast.splat133, %i.lb
  %i.ld = fadd <2 x double> %wide.load, %i.lc
  store <2 x double> %i.ld, ptr %i.jq, align 8, !tbaa !247, !alias.scope !12876, !noalias !12881
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.le = icmp eq i64 %index.next, %n.vec
  br i1 %i.le, label %middle.block, label %vector.body, !llvm.loop !12898

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ck, %vector.memcheck ], [ %i.ck, %vector.scevcheck ], [ %i.ck, %.preheader ], [ %i.fs, %middle.block ]
  br label %scalar.ph

._crit_edge34.split:                              ; preds = %._crit_edge
  %i.lf = add i32 %.02236, 1                      ; 2 uses
  %exitcond46.not = icmp eq i32 %i.lf, %i.cn
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond46.not, label %._crit_edge38, label %.preheader25, !llvm.loop !12899

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.lg = add i32 %.02133, 1                      ; 2 uses
  %exitcond45.not = icmp eq i32 %i.lg, %i.cm
  %indvar.next52 = add i32 %indvar51, 1
  br i1 %exitcond45.not, label %._crit_edge34.split, label %.preheader, !llvm.loop !12900

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.lh = trunc i64 %indvars.iv to i32            ; 6 uses
  %.reass = add i32 %invariant.op, %i.lh
  %i.li = sext i32 %.reass to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.li ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !247
  %i.ll = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !12871
  %i.lm = add i32 %i.gt, %i.lh                    ; 2 uses
  %i.ln = add i32 %i.lm, %i.ig
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !247
  %i.lr = add i32 %i.lm, %i.ii
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !247
  %i.lv = fsub double %i.lq, %i.lu
  %i.lw = load double, ptr %i.ax, align 8, !tbaa !247, !noalias !12868 ; 2 uses
  %.reass29 = add i32 %invariant.op28, %i.lh
  %i.lx = sext i32 %.reass29 to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.lx
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !247
  %i.ma = fdiv double %i.lv, %i.lw
  %i.mb = fsub double %i.lz, %i.ma
  %i.mc = add i32 %i.gv, %i.lh                    ; 2 uses
  %i.md = add i32 %i.mc, %i.ik
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.me
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !247
  %i.mh = add i32 %i.mc, %i.il
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.mi
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !247
  %i.ml = fmul double %i.mk, 5.000000e-01
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.mg, double 5.000000e-01, double %i.ml)
  %i.mn = fdiv double %i.mb, %i.mm
  %i.mo = add i32 %i.gw, %i.lh                    ; 2 uses
  %i.mp = add i32 %i.mo, %i.im
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !247
  %i.mt = add i32 %i.mo, %i.in
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.mu
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !247
  %i.mx = fsub double %i.ms, %i.mw
  %i.my = fdiv double %i.mx, %i.lw
  %i.mz = fsub double %i.mn, %i.my
  %.reass31 = add i32 %invariant.op30, %i.lh
  %i.na = sext i32 %.reass31 to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !247
  %i.nd = fsub double %i.mz, %i.nc
  %i.ne = fmul double %i.ll, %i.nd
  %i.nf = fadd double %i.lk, %i.ne
  store double %i.nf, ptr %i.lj, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cl, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !12901
end_hunk_1
begin_hunk_2_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisXILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13251
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
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
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
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
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisXILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.893, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisXILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
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
  %2 = mul i32 %i.c, %i.ae                        ; 2 uses
  %i.bj = add i32 %i.c, 1
  %3 = add i32 %i.bi, %2
  %i.bk = mul i32 %i.ae, %i.bj                    ; 2 uses
  %i.bl = add i32 %i.bi, %i.bk
  %i.bm = add i32 %i.a, %i.bh                     ; 2 uses
  %4 = insertelement <4 x i32> poison, i32 %3, i64 0
  %5 = insertelement <4 x i32> %4, i32 %i.bl, i64 1
  %6 = insertelement <4 x i32> %5, i32 %i.bm, i64 2
  %7 = insertelement <4 x i32> %6, i32 %i.bk, i64 3
  %8 = insertelement <4 x i32> <i32 -1, i32 -1, i32 poison, i32 poison>, i32 %2, i64 2
  %9 = insertelement <4 x i32> %8, i32 %i.bm, i64 3
  %10 = add <4 x i32> %7, %9                      ; 2 uses
  %i.bn = mul i32 %i.e, %i.am
  %i.bo = add i32 %i.a, %i.bn
  %i.bp = mul i32 %i.c, %i.ak
  %i.bq = add i32 %i.bo, %i.bp
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.br = mul i32 %i.e, %i.ax
  %i.bs = add i32 %i.a, %i.br
  %i.bt = mul i32 %i.c, %i.av
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = add i32 %i.g, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.by
  %i.bz = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.ca = add i32 %i.a, %i.bz                     ; 2 uses
  %i.cb = add i32 %i.c, 1
  %i.cc = mul i32 %i.ae, %i.cb                    ; 2 uses
  %i.cd = add i32 %i.ca, %i.cc
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.by
  %i.ce = mul i32 %i.c, %i.ae                     ; 2 uses
  %i.cf = add i32 %i.ca, %i.ce
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.by
  %i.cg = add i32 %i.a, %i.bz                     ; 2 uses
  %i.ch = add i32 %i.cg, %i.cc
  %i.ci = add i32 %i.ch, -1
  %scevgep66 = getelementptr i8, ptr %i.ac, i64 %i.by
  %i.cj = add i32 %i.cg, %i.ce
  %i.ck = add i32 %i.cj, -1
  %scevgep69 = getelementptr i8, ptr %i.ac, i64 %i.by
  %i.cl = mul i32 %i.e, %i.am
  %i.cm = add i32 %i.a, %i.cl
  %i.cn = mul i32 %i.c, %i.ak
  %i.co = add i32 %i.cm, %i.cn
  %scevgep72 = getelementptr i8, ptr %i.ai, i64 %i.by
  %i.cp = add i32 %i.g, -1                        ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %i.cs = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.cp, 7
  %invariant.op100 = add <4 x i32> %10, %i.ct
  %n.vec = and i64 %i.cr, 8589934590              ; 3 uses
  %i.cu = add nuw nsw i64 %n.vec, %i.ay
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32.split ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gj, %._crit_edge32.split ] ; 4 uses
  %i.cv = mul i32 %i.ax, %indvar
  %i.cw = add i32 %i.bu, %i.cv
  %i.cx = mul i32 %i.ag, %indvar                  ; 4 uses
  %i.cy = add i32 %i.cd, %i.cx
  %i.cz = add i32 %i.cf, %i.cx
  %i.da = add i32 %i.ci, %i.cx
  %i.db = add i32 %i.ck, %i.cx
  %i.dc = mul i32 %i.am, %indvar
  %i.dd = add i32 %i.co, %i.dc
  %i.de = mul i32 %i.ax, %indvar
  %i.df = add i32 %i.bg, %i.de
  %i.dg = mul i32 %i.ag, %indvar
  %i.dh = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.di = mul i32 %i.am, %indvar
  %i.dj = add i32 %i.bq, %i.di
  %i.dk = mul nsw i32 %i.ag, %.02234              ; 2 uses
  %i.dl = mul nsw i32 %i.am, %.02234
  %i.dm = mul nsw i32 %i.ax, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar49 = phi i32 [ 0, %.preheader25 ], [ %indvar.next50, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.ej, %._crit_edge ] ; 4 uses
  %i.dn = mul i32 %i.av, %indvar49
  %i.do = add i32 %i.cw, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 3                    ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.at, i64 %i.dq ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.dq ; 6 uses
  %i.dr = mul i32 %i.ae, %indvar49                ; 4 uses
  %i.ds = add i32 %i.cy, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.ac, i64 %i.du
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.du
  %i.dv = add i32 %i.cz, %i.dr
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 3                    ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.ac, i64 %i.dx
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.dx
  %i.dy = add i32 %i.da, %i.dr
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl nsw i64 %i.dz, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.ac, i64 %i.ea
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ea
  %i.eb = add i32 %i.db, %i.dr
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ac, i64 %i.ed
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.ed
  %i.ee = mul i32 %i.ak, %indvar49
  %i.ef = add i32 %i.dd, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = shl nsw i64 %i.eg, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.ai, i64 %i.eh
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.eh
  %i.ei = mul nsw i32 %i.ae, %.02131              ; 4 uses
  %i.ej = add nsw i32 %.02131, 1                  ; 3 uses
  %i.ek = mul nsw i32 %i.ae, %i.ej                ; 4 uses
  %i.el = mul nsw i32 %i.ak, %.02131
  %invariant.op = add i32 %i.el, %i.dl            ; 2 uses
  %i.em = mul nsw i32 %i.av, %.02131
  %invariant.op28 = add i32 %i.em, %i.dm          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.en = mul i32 %i.ak, %indvar49
  %i.eo = add i32 %i.dj, %i.en                    ; 2 uses
  %i.ep = mul i32 %i.ae, %indvar49
  %i.eq = mul i32 %i.av, %indvar49
  %i.er = add i32 %i.df, %i.eq                    ; 2 uses
  %i.es = add i32 %i.er, %i.bc
  %i.et = icmp slt i32 %i.es, %i.er
  %i.eu = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.ev = add <4 x i32> %i.eu, %i.dh
  %i.ew = shufflevector <4 x i32> %i.ev, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ex = add <4 x i32> %i.ew, %10
  %.reass101 = add <4 x i32> %i.ew, %invariant.op100
  %i.ey = icmp slt <4 x i32> %.reass101, %i.ex
  %i.ez = add i32 %i.eo, %i.bc
  %i.fa = icmp slt i32 %i.ez, %i.eo
  %i.fb = bitcast <4 x i1> %i.ey to i4
  %i.fc = icmp ne i4 %i.fb, 0
  %op.rdx = or i1 %i.fc, %i.et
  %op.rdx99 = or i1 %op.rdx, %i.fa
  br i1 %op.rdx99, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep58
  %bound1 = icmp ult ptr %scevgep56, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound074 = icmp ult ptr %scevgep56, %scevgep61
  %bound175 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict, %found.conflict76
  %bound077 = icmp ult ptr %scevgep56, %scevgep64
  %bound178 = icmp ult ptr %scevgep62, %scevgep58
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict79
  %bound081 = icmp ult ptr %scevgep56, %scevgep67
  %bound182 = icmp ult ptr %scevgep65, %scevgep58
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %scevgep56, %scevgep70
  %bound186 = icmp ult ptr %scevgep68, %scevgep58
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %scevgep56, %scevgep73
  %bound190 = icmp ult ptr %scevgep71, %scevgep58
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fd = load double, ptr %i.r, align 8, !tbaa !13254, !alias.scope !13256, !noalias !13259
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13261, !alias.scope !13256, !noalias !13259
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fe, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = trunc i64 %index to i32
  %i.fg = add i32 %i.a, %i.ff                     ; 3 uses
  %i.fh = add i32 %i.dk, %i.fg                    ; 3 uses
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  %i.fj = add i32 %i.fi, %i.ei
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fk
  %wide.load = load <2 x double>, ptr %i.fl, align 8, !tbaa !247, !alias.scope !13262
  %i.fm = add i32 %i.fi, %i.ek
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fn
  %wide.load93 = load <2 x double>, ptr %i.fo, align 8, !tbaa !247, !alias.scope !13264
  %i.fp = fadd <2 x double> %wide.load, %wide.load93
  %i.fq = add i32 %i.fh, %i.ei
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fr
  %wide.load94 = load <2 x double>, ptr %i.fs, align 8, !tbaa !247, !alias.scope !13266
  %i.ft = add i32 %i.fh, %i.ek
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fu
  %wide.load95 = load <2 x double>, ptr %i.fv, align 8, !tbaa !247, !alias.scope !13268
  %i.fw = fadd <2 x double> %wide.load94, %wide.load95
  %i.fx = fmul <2 x double> %i.fw, splat (double 5.000000e-01)
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> splat (double 5.000000e-01), <2 x double> %i.fx)
  %i.fz = fmul <2 x double> %i.fy, splat (double 5.000000e-01)
  %i.ga = add i32 %invariant.op, %i.fg
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.gb
  %wide.load96 = load <2 x double>, ptr %i.gc, align 8, !tbaa !247, !alias.scope !13270
  %i.gd = fmul <2 x double> %i.fz, %broadcast.splat
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load96, <2 x double> %broadcast.splat98, <2 x double> %i.gd)
  %i.gf = add i32 %invariant.op28, %i.fg
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.gg
  store <2 x double> %i.ge, ptr %i.gh, align 8, !tbaa !247, !alias.scope !13259, !noalias !13272
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !13273

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.preheader ], [ %i.cu, %middle.block ]
  br label %scalar.ph

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.gj = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.gj, %i.bb
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader25, !llvm.loop !13274

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond43.not = icmp eq i32 %i.ej, %i.ba
  %indvar.next50 = add i32 %indvar49, 1
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !13275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gk = trunc i64 %indvars.iv to i32            ; 3 uses
  %i.gl = add i32 %i.dk, %i.gk                    ; 3 uses
  %i.gm = add i32 %i.gl, -1                       ; 2 uses
  %i.gn = add i32 %i.gm, %i.ei
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !247
  %i.gr = add i32 %i.gm, %i.ek
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !247
  %i.gv = fadd double %i.gq, %i.gu
  %i.gw = add i32 %i.gl, %i.ei
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !247
  %i.ha = add i32 %i.gl, %i.ek
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !247
  %i.he = fadd double %i.gz, %i.hd
  %i.hf = fmul double %i.he, 5.000000e-01
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gv, double 5.000000e-01, double %i.hf)
  %i.hh = fmul double %i.hg, 5.000000e-01
  %.reass = add i32 %invariant.op, %i.gk
  %i.hi = sext i32 %.reass to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !247
  %i.hl = load double, ptr %i.r, align 8, !tbaa !13254
  %i.hm = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13261
  %i.hn = fmul double %i.hh, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hl, double %i.hn)
  %.reass29 = add i32 %invariant.op28, %i.gk
  %i.hp = sext i32 %.reass29 to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hp
  store double %i.ho, ptr %i.hq, align 8, !tbaa !247
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !13276
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17MultiArgEvaluatorI16MainEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10MultiPatchI7GridTag6RemoteI5BrickEEESH_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISL_Li3EEEEvRKT_RKT0_RK8IntervalIXT1_EERKT2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %class.ScalarCodeInfo.647, align 8  ; 21 uses
  %5 = alloca %struct.UpdateNotifier, align 1     ; 3 uses
  %6 = alloca %struct.EngineWriteNotifier, align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 24, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !6034
  store ptr %i.f, ptr %i.a, align 8
  store i32 0, ptr %i.b, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i32 2, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !6034
  store ptr %i.m, ptr %i.h, align 8
  store i32 0, ptr %i.i, align 8
  store ptr %i.m, ptr %i.j, align 8
  store i32 2, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !6034
  store ptr %i.t, ptr %i.o, align 8
  store i32 0, ptr %i.p, align 8
  store ptr %i.t, ptr %i.q, align 8
  store i32 2, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !4
  store i64 1, ptr %i.m, align 8, !tbaa !12
  store i64 -1, ptr %i.t, align 8, !tbaa !12
  store i64 -2, ptr %i.f, align 8, !tbaa !12
  %i.x = load i32, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !2598
end_hunk_2
begin_hunk_3_@_ZN17MultiArgEvaluatorI23SinglePatchEvaluatorTagE8evaluateI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESC_EN6Forgas9CoriolisYILi3EEELi3E15EvaluateLocLoopISG_Li3EEEEvRKT_RKT0_8IntervalIXT1_EER14ScalarCodeInfoIXT1_EXsrSJ_4sizeEERKT2_:bb.a
  call void @_ZN9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_EC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.ax, ptr noundef nonnull align 8 dereferenceable(288) %13)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  store ptr %i.aq, ptr %5, align 8, !tbaa !6175
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %5, ptr %6, align 8, !tbaa !6177
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteRequestEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %13, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13361
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.aq) #48, !inline_history !13361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 144
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bo) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %13) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %class.DataObjectRequest.351, align 8 ; 4 uses
  %2 = alloca %struct.ExpressionApply.583, align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE, i64 16), ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  store ptr %1, ptr %2, align 8, !tbaa !6274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  call void @_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg2IT_T0_ERKT1_RKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
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
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #49
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
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #49
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.v) #48
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(288) %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEED2Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MultiArgKernelI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES9_E15EvaluateLocLoopIN6Forgas9CoriolisYILi3EEELi3EEE3runEv(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %struct.ApplyMultiArgLoc.896, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #48
  store ptr %i.b, ptr %1, align 8, !tbaa !8422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13362
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #48
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg2I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_EN6Forgas9CoriolisYILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
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
  %2 = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.bn, i64 1
  %4 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %i.bk, i64 1
  %5 = add <2 x i32> %3, %4
  %i.bp = add i32 %i.bm, 1
  %i.bq = mul i32 %i.e, %i.am
  %i.br = add i32 %i.a, %i.bq
  %i.bs = mul i32 %i.c, %i.ak
  %i.bt = add i32 %i.br, %i.bs
  %scevgep = getelementptr i8, ptr %.sroa.4.0.copyload, i64 16
  %i.bu = mul i32 %i.e, %i.ax
  %i.bv = add i32 %i.a, %i.bu
  %i.bw = mul i32 %i.c, %i.av
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = add i32 %i.g, -1
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 8                ; 6 uses
  %scevgep57 = getelementptr i8, ptr %i.at, i64 %i.cb
  %i.cc = mul i32 %i.e, %i.ag                     ; 2 uses
  %i.cd = add i32 %i.a, %i.cc
  %i.ce = add i32 %i.c, -1
  %i.cf = mul i32 %i.ae, %i.ce
  %i.cg = add i32 %i.cd, %i.cf                    ; 2 uses
  %i.ch = add i32 %i.cg, 1
  %scevgep60 = getelementptr i8, ptr %i.ac, i64 %i.cb
  %scevgep63 = getelementptr i8, ptr %i.ac, i64 %i.cb
  %i.ci = add i32 %i.a, %i.cc
  %i.cj = mul i32 %i.c, %i.ae
  %i.ck = add i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = add i32 %i.ck, 1
  %scevgep66 = getelementptr i8, ptr %i.ac, i64 %i.cb
  %scevgep69 = getelementptr i8, ptr %i.ac, i64 %i.cb
  %i.cm = mul i32 %i.e, %i.am
  %i.cn = add i32 %i.a, %i.cm
  %i.co = mul i32 %i.c, %i.ak
  %i.cp = add i32 %i.cn, %i.co
  %scevgep72 = getelementptr i8, ptr %i.ai, i64 %i.cb
  %i.cq = add i32 %i.g, -1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %i.ct = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x i32> %i.ct, <4 x i32> %6, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cu = insertelement <4 x i32> %7, i32 %i.bp, i64 3 ; 2 uses
  %i.cv = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.cq, 7
  %invariant.op100 = add <4 x i32> %i.cu, %i.cw
  %n.vec = and i64 %i.cs, 8589934590              ; 3 uses
  %i.cx = add nuw nsw i64 %n.vec, %i.ay
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge32.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge32.split ] ; 7 uses
  %.02234 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.gm, %._crit_edge32.split ] ; 4 uses
  %i.cy = mul i32 %i.ax, %indvar
  %i.cz = add i32 %i.bx, %i.cy
  %i.da = mul i32 %i.ag, %indvar                  ; 4 uses
  %i.db = add i32 %i.ch, %i.da
  %i.dc = add i32 %i.cg, %i.da
  %i.dd = add i32 %i.cl, %i.da
  %i.de = add i32 %i.ck, %i.da
  %i.df = mul i32 %i.am, %indvar
  %i.dg = add i32 %i.cp, %i.df
  %i.dh = mul i32 %i.ax, %indvar
  %i.di = add i32 %i.bg, %i.dh
  %i.dj = mul i32 %i.ag, %indvar
  %i.dk = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %i.dl = mul i32 %i.am, %indvar
  %i.dm = add i32 %i.bt, %i.dl
  %i.dn = mul nsw i32 %i.ag, %.02234              ; 2 uses
  %i.do = mul nsw i32 %i.am, %.02234
  %i.dp = mul nsw i32 %i.ax, %.02234
  br label %.preheader

._crit_edge36:                                    ; preds = %._crit_edge32.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar49 = phi i32 [ 0, %.preheader25 ], [ %indvar.next50, %._crit_edge ] ; 7 uses
  %.02131 = phi i32 [ %i.c, %.preheader25 ], [ %i.gn, %._crit_edge ] ; 5 uses
  %i.dq = mul i32 %i.av, %indvar49
  %i.dr = add i32 %i.cz, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 3                    ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.at, i64 %i.dt ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.dt ; 6 uses
  %i.du = mul i32 %i.ae, %indvar49                ; 4 uses
  %i.dv = add i32 %i.db, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 3                    ; 2 uses
  %scevgep59 = getelementptr i8, ptr %i.ac, i64 %i.dx
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.dx
  %i.dy = add i32 %i.dc, %i.du
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl nsw i64 %i.dz, 3                    ; 2 uses
  %scevgep62 = getelementptr i8, ptr %i.ac, i64 %i.ea
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.ea
  %i.eb = add i32 %i.dd, %i.du
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 3                    ; 2 uses
  %scevgep65 = getelementptr i8, ptr %i.ac, i64 %i.ed
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.ed
  %i.ee = add i32 %i.de, %i.du
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ac, i64 %i.eg
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.eg
  %i.eh = mul i32 %i.ak, %indvar49
  %i.ei = add i32 %i.dg, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.ai, i64 %i.ek
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.ek
  %i.el = mul nsw i32 %i.ae, %.02131              ; 4 uses
  %i.em = add nsw i32 %.02131, -1
  %i.en = mul nsw i32 %i.ae, %i.em                ; 4 uses
  %i.eo = mul nsw i32 %i.ak, %.02131
  %invariant.op = add i32 %i.eo, %i.do            ; 2 uses
  %i.ep = mul nsw i32 %i.av, %.02131
  %invariant.op28 = add i32 %i.ep, %i.dp          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.eq = mul i32 %i.ak, %indvar49
  %i.er = add i32 %i.dm, %i.eq                    ; 2 uses
  %i.es = mul i32 %i.ae, %indvar49
  %i.et = mul i32 %i.av, %indvar49
  %i.eu = add i32 %i.di, %i.et                    ; 2 uses
  %i.ev = add i32 %i.eu, %i.bc
  %i.ew = icmp slt i32 %i.ev, %i.eu
  %i.ex = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %i.ey = add <4 x i32> %i.ex, %i.dk
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = add <4 x i32> %i.ez, %i.cu
  %.reass101 = add <4 x i32> %i.ez, %invariant.op100
  %i.fb = icmp slt <4 x i32> %.reass101, %i.fa
  %i.fc = add i32 %i.er, %i.bc
  %i.fd = icmp slt i32 %i.fc, %i.er
  %i.fe = bitcast <4 x i1> %i.fb to i4
  %i.ff = icmp ne i4 %i.fe, 0
  %op.rdx = or i1 %i.ff, %i.ew
  %op.rdx99 = or i1 %op.rdx, %i.fd
  br i1 %op.rdx99, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %.sroa.4.0.copyload, %scevgep58
  %bound1 = icmp ult ptr %scevgep56, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound074 = icmp ult ptr %scevgep56, %scevgep61
  %bound175 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict, %found.conflict76
  %bound077 = icmp ult ptr %scevgep56, %scevgep64
  %bound178 = icmp ult ptr %scevgep62, %scevgep58
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict79
  %bound081 = icmp ult ptr %scevgep56, %scevgep67
  %bound182 = icmp ult ptr %scevgep65, %scevgep58
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %scevgep56, %scevgep70
  %bound186 = icmp ult ptr %scevgep68, %scevgep58
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  %bound089 = icmp ult ptr %scevgep56, %scevgep73
  %bound190 = icmp ult ptr %scevgep71, %scevgep58
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fg = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13364, !alias.scope !13366, !noalias !13369
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = load double, ptr %i.r, align 8, !tbaa !13371, !alias.scope !13366, !noalias !13369
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = trunc i64 %index to i32
  %i.fj = add i32 %i.a, %i.fi                     ; 3 uses
  %i.fk = add i32 %i.dn, %i.fj                    ; 3 uses
  %i.fl = add i32 %i.fk, %i.el
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fm
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !247, !alias.scope !13372
  %i.fo = add i32 %i.fk, 1                        ; 2 uses
  %i.fp = add i32 %i.fo, %i.el
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fq
  %wide.load93 = load <2 x double>, ptr %i.fr, align 8, !tbaa !247, !alias.scope !13374
  %i.fs = fadd <2 x double> %wide.load, %wide.load93
  %i.ft = add i32 %i.fk, %i.en
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fu
  %wide.load94 = load <2 x double>, ptr %i.fv, align 8, !tbaa !247, !alias.scope !13376
  %i.fw = add i32 %i.fo, %i.en
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.fx
  %wide.load95 = load <2 x double>, ptr %i.fy, align 8, !tbaa !247, !alias.scope !13378
  %i.fz = fadd <2 x double> %wide.load94, %wide.load95
  %i.ga = fmul <2 x double> %i.fz, splat (double 5.000000e-01)
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ga)
  %i.gc = fmul <2 x double> %i.gb, splat (double -5.000000e-01)
  %i.gd = add i32 %invariant.op, %i.fj
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ge
  %wide.load96 = load <2 x double>, ptr %i.gf, align 8, !tbaa !247, !alias.scope !13380
  %i.gg = fmul <2 x double> %wide.load96, %broadcast.splat
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %broadcast.splat98, <2 x double> %i.gg)
  %i.gi = add i32 %invariant.op28, %i.fj
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.gj
  store <2 x double> %i.gh, ptr %i.gk, align 8, !tbaa !247, !alias.scope !13369, !noalias !13382
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !13383

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %vector.scevcheck ], [ %i.ay, %.preheader ], [ %i.cx, %middle.block ]
  br label %scalar.ph

._crit_edge32.split:                              ; preds = %._crit_edge
  %i.gm = add i32 %.02234, 1                      ; 2 uses
  %exitcond44.not = icmp eq i32 %i.gm, %i.bb
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond44.not, label %._crit_edge36, label %.preheader25, !llvm.loop !13384

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.gn = add i32 %.02131, 1                      ; 2 uses
  %exitcond43.not = icmp eq i32 %i.gn, %i.ba
  %indvar.next50 = add i32 %indvar49, 1
  br i1 %exitcond43.not, label %._crit_edge32.split, label %.preheader, !llvm.loop !13385

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.go = trunc i64 %indvars.iv to i32            ; 3 uses
end_hunk_3
begin_hunk_4_@_Z15applyMultiArgIfI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUES8_S8_S8_S0_IS6_d16ConstantFunctionES0_IS6_4ZeroIdES9_E15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEEvRK9MultiArg6IT_T0_T1_T2_T3_T4_ERKT5_RKSt6vectorIbSaIbEE:bb.a
  br i1 %.not80, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77, label %bb.w

bb.w:                                             ; preds = %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit57
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !6256 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader.lr.ph.i.i.i.i.i58, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77

.preheader.lr.ph.i.i.i.i.i58:                     ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !597
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !595
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12                ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = icmp sgt i32 %i.dx, 0
  %i.dz = load ptr, ptr %1, align 8, !nonnull !59, !align !2135 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  br i1 %i.dy, label %.preheader.lr.ph.split.us.i.i.i.i.i59, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77

.preheader.lr.ph.split.us.i.i.i.i.i59:            ; preds = %.preheader.lr.ph.i.i.i.i.i58
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !6266
  %i.ej = getelementptr inbounds [88 x i8], ptr %i.ei, i64 %i.ee
  %.promoted.i.i.i.i.i60 = load ptr, ptr %i.dz, align 8, !tbaa !6280
  %i.ek = sext i32 %i.ec to i64
  %wide.trip.count21.i.i.i.i.i61 = zext nneg i32 %i.dn to i64
  %wide.trip.count.i.i.i.i.i62 = and i64 %i.dw, 2147483647
  br label %.preheader.us.i.i.i.i.i63

.preheader.us.i.i.i.i.i63:                        ; preds = %._crit_edge.us.i.i.i.i.i74, %.preheader.lr.ph.split.us.i.i.i.i.i59
  %indvars.iv18.i.i.i.i.i64 = phi i64 [ %indvars.iv.next19.i.i.i.i.i75, %._crit_edge.us.i.i.i.i.i74 ], [ 0, %.preheader.lr.ph.split.us.i.i.i.i.i59 ] ; 2 uses
  %.promoted.us15.i.i.i.i.i65 = phi ptr [ %.promoted.us13.i.i.i.i.i71, %._crit_edge.us.i.i.i.i.i74 ], [ %.promoted.i.i.i.i.i60, %.preheader.lr.ph.split.us.i.i.i.i.i59 ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv18.i.i.i.i.i64, %i.ek
  %i.em = getelementptr [88 x i8], ptr %i.ej, i64 %i.el
  br label %bb.x

bb.x:                                             ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70, %.preheader.us.i.i.i.i.i63
  %indvars.iv.i.i.i.i.i66 = phi i64 [ 0, %.preheader.us.i.i.i.i.i63 ], [ %indvars.iv.next.i.i.i.i.i72, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70 ] ; 2 uses
  %.promoted.us14.i.i.i.i.i67 = phi ptr [ %.promoted.us15.i.i.i.i.i65, %.preheader.us.i.i.i.i.i63 ], [ %.promoted.us13.i.i.i.i.i71, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70 ] ; 4 uses
  %i.en = phi ptr [ %.promoted.us15.i.i.i.i.i65, %.preheader.us.i.i.i.i.i63 ], [ %i.ew, %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70 ] ; 6 uses
  %i.eo = getelementptr [88 x i8], ptr %i.em, i64 %indvars.iv.i.i.i.i.i66
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2462
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2470 ; 6 uses
  %.not.i.i.i.i.us.i.i.i.i.i68 = icmp eq ptr %i.es, %i.en
  br i1 %.not.i.i.i.i.us.i.i.i.i.i68, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.ea, align 8, !tbaa !6282 ; 2 uses
  %.not8.i.i.i.i.us.i.i.i.i.i69 = icmp eq ptr %i.es, %i.et
  br i1 %.not8.i.i.i.i.us.i.i.i.i.i69, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.en, null
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ab, label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.es, ptr %i.ea, align 8, !tbaa !6282
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70

bb.ac:                                            ; preds = %bb.z
  store ptr %i.es, ptr %i.dz, align 8, !tbaa !6280
  br label %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70

_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.promoted.us13.i.i.i.i.i71 = phi ptr [ %.promoted.us14.i.i.i.i.i67, %bb.x ], [ %.promoted.us14.i.i.i.i.i67, %bb.y ], [ %i.es, %bb.ac ], [ %.promoted.us14.i.i.i.i.i67, %bb.aa ], [ %.promoted.us14.i.i.i.i.i67, %bb.ab ] ; 2 uses
  %i.ew = phi ptr [ %i.en, %bb.x ], [ %i.en, %bb.y ], [ %i.es, %bb.ac ], [ %i.en, %bb.aa ], [ %i.en, %bb.ab ]
  %indvars.iv.next.i.i.i.i.i72 = add nuw nsw i64 %indvars.iv.i.i.i.i.i66, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i73 = icmp eq i64 %indvars.iv.next.i.i.i.i.i72, %wide.trip.count.i.i.i.i.i62
  br i1 %exitcond.not.i.i.i.i.i73, label %._crit_edge.us.i.i.i.i.i74, label %bb.x, !llvm.loop !6283

._crit_edge.us.i.i.i.i.i74:                       ; preds = %_ZN11LeafFunctorI6EngineILi3Ed10BrickViewUE15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEE5applyERKS2_RKS7_.exit.us.i.i.i.i.i70
  %indvars.iv.next19.i.i.i.i.i75 = add nuw nsw i64 %indvars.iv18.i.i.i.i.i64, 1 ; 2 uses
  %exitcond22.not.i.i.i.i.i76 = icmp eq i64 %indvars.iv.next19.i.i.i.i.i75, %wide.trip.count21.i.i.i.i.i61
  br i1 %exitcond22.not.i.i.i.i.i76, label %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77, label %.preheader.us.i.i.i.i.i63, !llvm.loop !6284

_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit77: ; preds = %._crit_edge.us.i.i.i.i.i74, %.preheader.lr.ph.i.i.i.i.i58, %bb.w, %_ZNK15ExpressionApplyI17DataObjectRequestI12WriteReleaseEEclI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEEvRKT_.exit57
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18LoopApplyEvaluator8evaluateI16ApplyMultiArgLocI9MultiArg6I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUESB_SB_SB_S3_IS9_d16ConstantFunctionES3_IS9_4ZeroIdESC_EEN6Forgas4TUpdILi3EEEE8IntervalILi3EEEEvRKT_RKT0_10WrappedIntILi3EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13954 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4    ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 2 uses
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.k
  %.not37 = icmp sgt i32 %i.e, %i.m
  br i1 %.not37, label %._crit_edge40, label %.preheader25.lr.ph

.preheader25.lr.ph:                               ; preds = %bb.a
  %i.n = add i32 %i.a, -1
  %i.o = add i32 %i.n, %i.g
  %i.p = add i32 %i.c, -1
  %i.q = add i32 %i.p, %i.i
  %.not2334 = icmp sgt i32 %i.c, %i.q
  %.not2426 = icmp sgt i32 %i.a, %i.o
  %or.cond = select i1 %.not2334, i1 true, i1 %.not2426
  br i1 %or.cond, label %._crit_edge40, label %.preheader25.lr.ph.split.split

.preheader25.lr.ph.split.split:                   ; preds = %.preheader25.lr.ph
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !13952 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 656
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 648
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 136
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !6263
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6266
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !6262
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.ae, i64 %i.af ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2836 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !741 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 128    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2836 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 116
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2836 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 204
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !6263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6266
  %i.ba = load i64, ptr %i.y, align 8, !tbaa !6262
  %i.bb = getelementptr inbounds [88 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2836 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !6263
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !6266
  %i.bj = load i64, ptr %i.w, align 8, !tbaa !6262
  %i.bk = getelementptr inbounds [88 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2836 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !6263
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !6266
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !6262
  %i.bt = getelementptr inbounds [88 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !2836 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !4  ; 5 uses
  %i.ca = load ptr, ptr %i.r, align 8, !tbaa !1064
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1067 ; 2 uses
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !1070 ; 2 uses
  %i.ce = getelementptr [56 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = zext i32 %i.a to i64                    ; 4 uses
  %i.cg = add i32 %i.g, %i.a
  %i.ch = add i32 %i.i, %i.c
  %i.ci = add i32 %i.k, %i.e
  %i.cj = add i32 %i.g, -1                        ; 2 uses
  %i.ck = add i32 %i.c, 1
  %2 = load i32, ptr %i.aj, align 4, !tbaa !4     ; 5 uses
  %i.cl = load i32, ptr %i.ak, align 8, !tbaa !4  ; 5 uses
  %3 = mul i32 %i.e, %i.cl
  %4 = add i32 %i.a, %3
  %5 = mul i32 %i.c, %2
  %i.cm = load i32, ptr %i.bf, align 8, !tbaa !4  ; 5 uses
  %i.cn = load i32, ptr %i.be, align 4, !tbaa !4  ; 5 uses
  %6 = mul i32 %i.e, %i.cm
  %7 = add i32 %i.a, %6
  %8 = mul i32 %i.c, %i.cn
  %9 = add i32 %i.e, 1
  %10 = load i32, ptr %i.av, align 8, !tbaa !4    ; 8 uses
  %11 = load i32, ptr %i.au, align 4, !tbaa !4    ; 5 uses
  %12 = load i32, ptr %i.bo, align 8, !tbaa !4    ; 5 uses
  %13 = load i32, ptr %i.bn, align 4, !tbaa !4    ; 5 uses
  %14 = load i32, ptr %i.aq, align 8, !tbaa !4    ; 5 uses
  %15 = load i32, ptr %i.ap, align 4, !tbaa !4    ; 8 uses
  %i.co = mul i32 %15, %i.ck
  %16 = mul i32 %i.e, %12
  %17 = mul i32 %i.e, %10
  %i.cp = mul i32 %i.e, %14
  %18 = mul i32 %i.c, %13
  %i.cq = mul i32 %i.c, %11                       ; 2 uses
  %19 = mul i32 %10, %9
  %i.cr = mul i32 %i.c, %15
  %i.cs = add i32 %i.a, %16
  %20 = add i32 %i.a, %17
  %i.ct = add i32 %i.a, %i.cq
  %21 = add i32 %i.a, %i.cp                       ; 2 uses
  %i.cu = add i32 %7, %8
  %22 = add i32 %4, %5                            ; 2 uses
  %i.cv = add i32 %22, 1
  %i.cw = add i32 %21, %i.co
  %23 = add i32 %21, %i.cr
  %i.cx = add i32 %i.ct, %19
  %24 = add i32 %20, %i.cq
  %i.cy = add i32 %i.cs, %18
  %i.cz = mul i32 %i.e, %i.bz
  %i.da = add i32 %i.a, %i.cz
  %i.db = mul i32 %i.c, %i.bx
  %i.dc = add i32 %i.da, %i.db
  %scevgep = getelementptr i8, ptr %i.al, i64 152
  %i.dd = mul i32 %i.e, %i.cm
  %i.de = add i32 %i.a, %i.dd
  %i.df = mul i32 %i.c, %i.cn
  %i.dg = add i32 %i.de, %i.df
  %i.dh = add i32 %i.g, -1
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 8                ; 9 uses
  %scevgep64 = getelementptr i8, ptr %i.bd, i64 %i.dk
  %scevgep66 = getelementptr i8, ptr %.sroa.4.0.copyload, i64 8
  %i.dl = mul i64 %i.cd, 56
  %i.dm = getelementptr i8, ptr %i.cc, i64 %i.dl
  %scevgep67 = getelementptr i8, ptr %i.dm, i64 8
  %i.dn = mul i32 %i.e, %i.cl
  %i.do = add i32 %i.a, %i.dn
  %i.dp = mul i32 %i.c, %2
  %i.dq = add i32 %i.do, %i.dp                    ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.ai, i64 %i.dk
  %i.dr = add i32 %i.dq, 1
  %scevgep72 = getelementptr i8, ptr %i.ai, i64 %i.dk
  %i.ds = mul i32 %i.e, %14
  %i.dt = add i32 %i.a, %i.ds                     ; 2 uses
  %i.du = mul i32 %i.c, %15
  %i.dv = add i32 %i.dt, %i.du
  %scevgep75 = getelementptr i8, ptr %i.ao, i64 %i.dk
  %i.dw = add i32 %i.c, 1
  %i.dx = mul i32 %15, %i.dw
  %i.dy = add i32 %i.dt, %i.dx
  %scevgep78 = getelementptr i8, ptr %i.ao, i64 %i.dk
  %i.dz = mul i32 %i.e, %10
  %i.ea = add i32 %i.a, %i.dz
  %i.eb = mul i32 %i.c, %11                       ; 2 uses
  %i.ec = add i32 %i.ea, %i.eb
  %scevgep81 = getelementptr i8, ptr %i.at, i64 %i.dk
  %i.ed = add i32 %i.a, %i.eb
  %i.ee = add i32 %i.e, 1
  %i.ef = mul i32 %10, %i.ee
  %i.eg = add i32 %i.ed, %i.ef
  %scevgep84 = getelementptr i8, ptr %i.at, i64 %i.dk
  %i.eh = mul i32 %i.e, %12
  %i.ei = add i32 %i.a, %i.eh
  %i.ej = mul i32 %i.c, %13
  %i.ek = add i32 %i.ei, %i.ej
  %scevgep87 = getelementptr i8, ptr %i.bm, i64 %i.dk
  %i.el = mul i32 %i.e, %i.bz
  %i.em = add i32 %i.a, %i.el
  %i.en = mul i32 %i.c, %i.bx
  %i.eo = add i32 %i.em, %i.en
  %scevgep90 = getelementptr i8, ptr %i.bv, i64 %i.dk
  %i.ep = add i32 %i.g, -1                        ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %25 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %26 = insertelement <4 x i32> %25, i32 %i.cv, i64 1
  %27 = insertelement <4 x i32> %26, i32 %22, i64 2
  %28 = insertelement <4 x i32> %27, i32 %i.cw, i64 3
  %29 = insertelement <4 x i32> poison, i32 %23, i64 0
  %30 = insertelement <4 x i32> %29, i32 %i.cx, i64 1
  %31 = insertelement <4 x i32> %30, i32 %24, i64 2
  %32 = insertelement <4 x i32> %31, i32 %i.cy, i64 3
  %i.es = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %i.et = shufflevector <8 x i32> %i.es, <8 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp eq i32 %i.ep, 0
  %n.vec = and i64 %i.er, 8589934590              ; 3 uses
  %i.eu = add nuw nsw i64 %n.vec, %i.cf
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.lr.ph.split.split, %._crit_edge36.split
  %indvar = phi i32 [ 0, %.preheader25.lr.ph.split.split ], [ %indvar.next, %._crit_edge36.split ] ; 13 uses
  %.02238 = phi i32 [ %i.e, %.preheader25.lr.ph.split.split ], [ %i.fp, %._crit_edge36.split ] ; 7 uses
  %i.ev = mul i32 %i.cm, %indvar
  %i.ew = add i32 %i.dg, %i.ev
  %i.ex = mul i32 %i.cl, %indvar                  ; 2 uses
  %i.ey = add i32 %i.dq, %i.ex
  %i.ez = add i32 %i.dr, %i.ex
  %i.fa = mul i32 %14, %indvar                    ; 2 uses
  %i.fb = add i32 %i.dv, %i.fa
  %i.fc = add i32 %i.dy, %i.fa
  %i.fd = mul i32 %10, %indvar                    ; 2 uses
  %i.fe = add i32 %i.ec, %i.fd
  %i.ff = add i32 %i.eg, %i.fd
  %i.fg = mul i32 %12, %indvar
  %i.fh = add i32 %i.ek, %i.fg
  %i.fi = mul i32 %i.bz, %indvar
  %i.fj = add i32 %i.eo, %i.fi
  %i.fk = mul i32 %i.cm, %indvar
  %33 = mul i32 %i.cl, %indvar
  %i.fl = mul i32 %14, %indvar                    ; 2 uses
  %34 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %35 = insertelement <4 x i32> %34, i32 %33, i64 1
  %36 = insertelement <4 x i32> %35, i32 %i.fl, i64 3
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %38 = add <4 x i32> %28, %37
  %39 = mul i32 %10, %indvar
  %i.fm = mul i32 %12, %indvar
  %40 = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %41 = insertelement <4 x i32> %40, i32 %39, i64 1
  %42 = insertelement <4 x i32> %41, i32 %i.fm, i64 3
  %43 = shufflevector <4 x i32> %42, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %44 = add <4 x i32> %32, %43
  %i.fn = mul i32 %i.bz, %indvar
  %i.fo = add i32 %i.dc, %i.fn
  %i.fp = add i32 %.02238, 1                      ; 3 uses
  %i.fq = mul nsw i32 %i.cl, %.02238
  %i.fr = mul nsw i32 %14, %.02238                ; 2 uses
  %i.fs = mul nsw i32 %10, %i.fp                  ; 2 uses
  %i.ft = mul nsw i32 %10, %.02238                ; 2 uses
  %i.fu = mul nsw i32 %i.cm, %.02238
  %i.fv = mul nsw i32 %12, %.02238
  %i.fw = mul nsw i32 %i.bz, %.02238
  br label %.preheader

._crit_edge40:                                    ; preds = %._crit_edge36.split, %.preheader25.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader25, %._crit_edge
  %indvar53 = phi i32 [ 0, %.preheader25 ], [ %indvar.next54, %._crit_edge ] ; 13 uses
  %.02135 = phi i32 [ %i.c, %.preheader25 ], [ %i.hf, %._crit_edge ] ; 7 uses
  %i.fx = mul i32 %i.cn, %indvar53
  %i.fy = add i32 %i.ew, %i.fx
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 3                    ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.bd, i64 %i.ga ; 11 uses
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.ga ; 11 uses
  %i.gb = mul i32 %2, %indvar53                   ; 2 uses
  %i.gc = add i32 %i.ey, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = shl nsw i64 %i.gd, 3                    ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ai, i64 %i.ge
  %scevgep70 = getelementptr i8, ptr %scevgep69, i64 %i.ge
  %i.gf = add i32 %i.ez, %i.gb
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 3                    ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.ai, i64 %i.gh
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.gh
  %i.gi = mul i32 %15, %indvar53                  ; 2 uses
  %i.gj = add i32 %i.fb, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 3                    ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.ao, i64 %i.gl
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.gl
  %i.gm = add i32 %i.fc, %i.gi
  %i.gn = sext i32 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 3                    ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.ao, i64 %i.go
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.go
  %i.gp = mul i32 %11, %indvar53                  ; 2 uses
  %i.gq = add i32 %i.fe, %i.gp
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 3                    ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.at, i64 %i.gs
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.gs
  %i.gt = add i32 %i.ff, %i.gp
  %i.gu = sext i32 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 3                    ; 2 uses
  %scevgep83 = getelementptr i8, ptr %i.at, i64 %i.gv
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.gv
  %i.gw = mul i32 %13, %indvar53
  %i.gx = add i32 %i.fh, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = shl nsw i64 %i.gy, 3                    ; 2 uses
  %scevgep86 = getelementptr i8, ptr %i.bm, i64 %i.gz
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.gz
  %i.ha = mul i32 %i.bx, %indvar53
  %i.hb = add i32 %i.fj, %i.ha
  %i.hc = sext i32 %i.hb to i64
  %i.hd = shl nsw i64 %i.hc, 3                    ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.bv, i64 %i.hd
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.hd
  %i.he = mul nsw i32 %2, %.02135
  %invariant.op = add i32 %i.he, %i.fq            ; 2 uses
  %i.hf = add nsw i32 %.02135, 1                  ; 3 uses
  %i.hg = mul nsw i32 %15, %i.hf                  ; 2 uses
  %i.hh = mul nsw i32 %15, %.02135                ; 2 uses
  %i.hi = mul nsw i32 %11, %.02135                ; 2 uses
  %i.hj = mul nsw i32 %i.cn, %.02135
  %invariant.op28 = add i32 %i.hj, %i.fu          ; 2 uses
  %i.hk = mul nsw i32 %13, %.02135
  %invariant.op30 = add i32 %i.hk, %i.fv          ; 2 uses
  %i.hl = mul nsw i32 %i.bx, %.02135
  %invariant.op32 = add i32 %i.hl, %i.fw          ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.hm = mul i32 %i.bx, %indvar53
  %i.hn = add i32 %i.fo, %i.hm                    ; 2 uses
  %i.ho = mul i32 %13, %indvar53
  %i.hp = mul i32 %11, %indvar53
  %i.hq = mul i32 %15, %indvar53                  ; 2 uses
  %i.hr = mul i32 %2, %indvar53
  %i.hs = mul i32 %i.cn, %indvar53
  %45 = insertelement <4 x i32> poison, i32 %i.hq, i64 0
  %46 = insertelement <4 x i32> %45, i32 %i.hp, i64 1
  %47 = insertelement <4 x i32> %46, i32 %i.ho, i64 3
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %49 = add <4 x i32> %44, %48                    ; 2 uses
  %50 = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %51 = insertelement <4 x i32> %50, i32 %i.hr, i64 1
  %52 = insertelement <4 x i32> %51, i32 %i.hq, i64 3
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %54 = add <4 x i32> %38, %53                    ; 2 uses
  %55 = shufflevector <4 x i32> %54, <4 x i32> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %56 = add <8 x i32> %55, %i.et
  %57 = shufflevector <4 x i32> %54, <4 x i32> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ht = icmp slt <8 x i32> %56, %57
  %i.hu = add i32 %i.hn, %i.cj
  %i.hv = icmp slt i32 %i.hu, %i.hn
  %i.hw = bitcast <8 x i1> %i.ht to i8
  %i.hx = icmp ne i8 %i.hw, 0
  %op.rdx = or i1 %i.hx, %i.hv
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.am, %scevgep65
  %bound1 = icmp ult ptr %scevgep63, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %.sroa.4.0.copyload, %scevgep65
  %bound193 = icmp ult ptr %scevgep63, %scevgep66
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  %bound095 = icmp ult ptr %i.ce, %scevgep65
  %bound196 = icmp ult ptr %scevgep63, %scevgep67
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx, %found.conflict97
  %bound099 = icmp ult ptr %scevgep63, %scevgep70
  %bound1100 = icmp ult ptr %scevgep68, %scevgep65
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %scevgep63, %scevgep73
  %bound1104 = icmp ult ptr %scevgep71, %scevgep65
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep63, %scevgep76
  %bound1108 = icmp ult ptr %scevgep74, %scevgep65
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %scevgep63, %scevgep79
  %bound1112 = icmp ult ptr %scevgep77, %scevgep65
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %scevgep63, %scevgep82
  %bound1116 = icmp ult ptr %scevgep80, %scevgep65
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %scevgep63, %scevgep85
  %bound1120 = icmp ult ptr %scevgep83, %scevgep65
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep63, %scevgep88
  %bound1124 = icmp ult ptr %scevgep86, %scevgep65
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep63, %scevgep91
  %bound1128 = icmp ult ptr %scevgep89, %scevgep65
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  br i1 %conflict.rdx130, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hy = load double, ptr %i.am, align 8, !tbaa !247, !alias.scope !13956, !noalias !13959
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = load double, ptr %i.ar, align 8, !tbaa !247, !alias.scope !13956, !noalias !13959
  %broadcast.splatinsert134 = insertelement <2 x double> poison, double %i.hz, i64 0
  %broadcast.splat135 = shufflevector <2 x double> %broadcast.splatinsert134, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = load double, ptr %i.aw, align 8, !tbaa !247, !alias.scope !13956, !noalias !13959
  %broadcast.splatinsert138 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat139 = shufflevector <2 x double> %broadcast.splatinsert138, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13961, !alias.scope !13963, !noalias !13959
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = load double, ptr %i.ce, align 8, !tbaa !1072, !alias.scope !13965, !noalias !13959
  %broadcast.splatinsert145 = insertelement <2 x double> poison, double %i.ic, i64 0
  %broadcast.splat146 = shufflevector <2 x double> %broadcast.splatinsert145, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = trunc i64 %index to i32
  %i.ie = add i32 %i.a, %i.id                     ; 6 uses
  %i.if = add i32 %invariant.op, %i.ie            ; 2 uses
  %i.ig = add i32 %i.if, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ih
  %wide.load = load <2 x double>, ptr %i.ii, align 8, !tbaa !247, !alias.scope !13967
  %i.ij = sext i32 %i.if to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ij
  %wide.load131 = load <2 x double>, ptr %i.ik, align 8, !tbaa !247, !alias.scope !13969
  %i.il = fsub <2 x double> %wide.load, %wide.load131
  %i.im = fdiv <2 x double> %i.il, %broadcast.splat
  %i.in = add i32 %i.fr, %i.ie                    ; 2 uses
  %i.io = add i32 %i.in, %i.hg
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ip
  %wide.load132 = load <2 x double>, ptr %i.iq, align 8, !tbaa !247, !alias.scope !13971
  %i.ir = add i32 %i.in, %i.hh
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.is
  %wide.load133 = load <2 x double>, ptr %i.it, align 8, !tbaa !247, !alias.scope !13973
  %i.iu = fsub <2 x double> %wide.load132, %wide.load133
  %i.iv = fdiv <2 x double> %i.iu, %broadcast.splat135
  %i.iw = fadd <2 x double> %i.im, %i.iv
  %i.ix = add i32 %i.hi, %i.ie                    ; 2 uses
  %i.iy = add i32 %i.ix, %i.fs
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.iz
  %wide.load136 = load <2 x double>, ptr %i.ja, align 8, !tbaa !247, !alias.scope !13975
  %i.jb = add i32 %i.ix, %i.ft
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.jc
  %wide.load137 = load <2 x double>, ptr %i.jd, align 8, !tbaa !247, !alias.scope !13977
  %i.je = fsub <2 x double> %wide.load136, %wide.load137
  %i.jf = fdiv <2 x double> %i.je, %broadcast.splat139
  %i.jg = fadd <2 x double> %i.iw, %i.jf
  %i.jh = add i32 %invariant.op28, %i.ie
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ji ; 2 uses
  %wide.load140 = load <2 x double>, ptr %i.jj, align 8, !tbaa !247, !alias.scope !13959, !noalias !13979
  %i.jk = add i32 %invariant.op30, %i.ie
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.jl
  %wide.load141 = load <2 x double>, ptr %i.jm, align 8, !tbaa !247, !alias.scope !13982
  %i.jn = add i32 %invariant.op32, %i.ie
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.jo
  %wide.load142 = load <2 x double>, ptr %i.jp, align 8, !tbaa !247, !alias.scope !13983
  %i.jq = fneg <2 x double> %wide.load141
  %i.jr = fmul <2 x double> %broadcast.splat144, %i.jq
  %i.js = fdiv <2 x double> %i.jr, %wide.load142
  %i.jt = fdiv <2 x double> %i.js, %broadcast.splat146
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jg, <2 x double> %wide.load140)
  store <2 x double> %i.ju, ptr %i.jj, align 8, !tbaa !247, !alias.scope !13959, !noalias !13979
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jv = icmp eq i64 %index.next, %n.vec
  br i1 %i.jv, label %middle.block, label %vector.body, !llvm.loop !13984

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cf, %vector.memcheck ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %.preheader ], [ %i.eu, %middle.block ]
  br label %scalar.ph

._crit_edge36.split:                              ; preds = %._crit_edge
  %exitcond48.not = icmp eq i32 %i.fp, %i.ci
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond48.not, label %._crit_edge40, label %.preheader25, !llvm.loop !13985

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond47.not = icmp eq i32 %i.hf, %i.ch
  %indvar.next54 = add i32 %indvar53, 1
  br i1 %exitcond47.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !13986

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jw = trunc i64 %indvars.iv to i32            ; 6 uses
  %.reass = add i32 %invariant.op, %i.jw          ; 2 uses
  %i.jx = add i32 %.reass, 1
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !247
  %i.kb = sext i32 %.reass to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.kb
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !247
  %i.ke = fsub double %i.ka, %i.kd
  %i.kf = load double, ptr %i.am, align 8, !tbaa !247
  %i.kg = fdiv double %i.ke, %i.kf
  %i.kh = add i32 %i.fr, %i.jw                    ; 2 uses
  %i.ki = add i32 %i.kh, %i.hg
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !247
  %i.km = add i32 %i.kh, %i.hh
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.kn
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !247
  %i.kq = fsub double %i.kl, %i.kp
  %i.kr = load double, ptr %i.ar, align 8, !tbaa !247
  %i.ks = fdiv double %i.kq, %i.kr
  %i.kt = fadd double %i.kg, %i.ks
  %i.ku = add i32 %i.hi, %i.jw                    ; 2 uses
  %i.kv = add i32 %i.ku, %i.fs
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !247
  %i.kz = add i32 %i.ku, %i.ft
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !247
  %i.ld = fsub double %i.ky, %i.lc
  %i.le = load double, ptr %i.aw, align 8, !tbaa !247
  %i.lf = fdiv double %i.ld, %i.le
  %i.lg = fadd double %i.kt, %i.lf
  %.reass29 = add i32 %invariant.op28, %i.jw
  %i.lh = sext i32 %.reass29 to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !247
  %i.lk = load double, ptr %.sroa.4.0.copyload, align 8, !tbaa !13961
  %.reass31 = add i32 %invariant.op30, %i.jw
  %i.ll = sext i32 %.reass31 to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !247
  %.reass33 = add i32 %invariant.op32, %i.jw
  %i.lo = sext i32 %.reass33 to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.lo
end_hunk_4
