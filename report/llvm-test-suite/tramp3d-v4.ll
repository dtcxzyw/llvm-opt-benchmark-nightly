Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN15KernelEvaluatorI15InlineKernelTagE8evaluateI5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewE8OpAssignS3_I6NoMeshILi3EEd13ExpressionTagI10BinaryNodeI5OpAddSG_I8OpDivide6ScalarIdE9UnaryNodeI5FnExpSG_I10OpMultiplySK_SG_I5FnPowSL_I6FnNormSG_I10OpSubtractS3_ISE_6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMIS8_E16PositionsFunctorEEEESJ_IST_EEESK_EEEESK_EEE8IntervalILi3EEEEvRKT_RKT0_RKT1_RKT2_10WrappedIntILi3EE:bb.a
_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i
  %i.ap = phi ptr [ %.pre32, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ah, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre31, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ai, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit.i ] ; 4 uses
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !399
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.at, ptr %i.au, align 8, !tbaa !400
  %.not7.i.i.i.i.i5.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not7.i.i.i.i.i5.i, label %_ZN9CenteringILi3EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i6.i ], [ %i.ar, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i6.i ], [ %i.aq, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %i.av = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !350
  store double %i.av, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !350
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !350
  store double %i.ay, ptr %i.aw, align 8, !tbaa !350
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !350
  store double %i.bb, ptr %i.az, align 8, !tbaa !350
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.bc, %i.ap
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi3EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !18

_ZN9CenteringILi3EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ %i.ar, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.bd, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.as, align 8, !tbaa !404
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !742
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !742
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !743 ; 2 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !743
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !744 ; 5 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !744
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed9BrickViewELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN9CenteringILi3EEC2ERKS0_.exit
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !433
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !433
  br label %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed9BrickViewELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i

_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed9BrickViewELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i: ; preds = %bb.f, %_ZN9CenteringILi3EEC2ERKS0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load <4 x i32>, ptr %i.bq, align 8, !tbaa !165
  store <4 x i32> %i.br, ptr %i.bp, align 8, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !165
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !165
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !465
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !450 ; 4 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !450
  %.not.i.i8.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i8.i.i, label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewEC2ERKS7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed9BrickViewELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !433
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !433
  br label %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewEC2ERKS7_.exit

_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewEC2ERKS7_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed9BrickViewELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN11FieldEngineI6NoMeshILi3EEd13ExpressionTagI10BinaryNodeI5OpAddS3_I8OpDivide6ScalarIdE9UnaryNodeI5FnExpS3_I10OpMultiplyS7_S3_I5FnPowS8_I6FnNormS3_I10OpSubtract5FieldIS1_6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEES6_ISH_EEES7_EEEES7_EEEC2ERKS13_(ptr noundef nonnull align 8 dereferenceable(232) %5, ptr noundef nonnull align 8 dereferenceable(232) %2)
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !165 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !165 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !165 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.preheader18.lr.ph, label %._crit_edge24.split

.preheader18.lr.ph:                               ; preds = %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewEC2ERKS7_.exit
  %i.cj = icmp slt i32 %i.cf, 1
  %i.ck = icmp slt i32 %i.cd, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 192
  %brmerge = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %brmerge, label %._crit_edge24.split, label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader18.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !782
  %.phi.trans.insert34 = getelementptr inbounds [88 x i8], ptr %.pre33, i64 %i.bj ; 4 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert34, i64 72
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !784
  %i.cs = getelementptr inbounds nuw i8, ptr %.phi.trans.insert34, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %.phi.trans.insert34, i64 28
  %i.cu = getelementptr inbounds nuw i8, ptr %.phi.trans.insert34, i64 32
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %._crit_edge22
  %storemerge23 = phi i32 [ %i.dj, %._crit_edge22 ], [ 0, %.preheader18.preheader ] ; 3 uses
  %i.cv = load ptr, ptr %i.cn, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cm, align 8
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !913, !noalias !4387
  %i.cz = getelementptr inbounds [176 x i8], ptr %i.cy, i64 %i.cx ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 144
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 132
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 136
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 152
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 140
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  br label %.preheader

._crit_edge24.split:                              ; preds = %._crit_edge22, %.preheader18.lr.ph, %_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewEC2ERKS7_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN5FieldI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(176) %i.di) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd9BrickViewED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret void

.preheader:                                       ; preds = %.preheader18, %._crit_edge
  %storemerge821 = phi i32 [ 0, %.preheader18 ], [ %i.dk, %._crit_edge ] ; 3 uses
  br label %bb.h

._crit_edge22:                                    ; preds = %._crit_edge
  %i.dj = add nuw nsw i32 %storemerge23, 1        ; 2 uses
  %exitcond29.not = icmp eq i32 %i.dj, %i.ch
  br i1 %exitcond29.not, label %._crit_edge24.split, label %.preheader18, !llvm.loop !4368

._crit_edge:                                      ; preds = %bb.h
  %i.dk = add nuw nsw i32 %storemerge821, 1       ; 2 uses
  %exitcond28.not = icmp eq i32 %i.dk, %i.cf
  br i1 %exitcond28.not, label %._crit_edge22, label %.preheader, !llvm.loop !4369

bb.h:                                             ; preds = %.preheader, %bb.h
  %storemerge920 = phi i32 [ 0, %.preheader ], [ %i.fl, %bb.h ] ; 3 uses
  %i.dl = load i32, ptr %i.cs, align 8, !tbaa !165
  %i.dm = mul nsw i32 %i.dl, %storemerge920
  %i.dn = load i32, ptr %i.ct, align 4, !tbaa !165
  %i.do = mul nsw i32 %i.dn, %storemerge821
  %i.dp = add nsw i32 %i.do, %i.dm
  %i.dq = load i32, ptr %i.cu, align 8, !tbaa !165
  %i.dr = mul nsw i32 %i.dq, %storemerge23
  %i.ds = add nsw i32 %i.dp, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %.pre36, i64 %i.dt
  %i.dv = load double, ptr %5, align 8, !tbaa !350
  %i.dw = load double, ptr %i.cl, align 8, !tbaa !350
  %i.dx = load i32, ptr %i.dd, align 4, !tbaa !165, !noalias !4388
  %i.dy = load i32, ptr %i.de, align 4, !tbaa !165, !noalias !4388
  %i.dz = mul nsw i32 %i.dy, %storemerge23
  %i.ea = add nsw i32 %i.dz, %i.dx
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = load double, ptr %i.dg, align 8, !tbaa !350, !noalias !4389
  %i.ed = fmul double %i.ec, %i.eb
  %i.ee = load double, ptr %i.dh, align 8, !tbaa !350, !noalias !4390
  %i.ef = fadd double %i.ed, %i.ee
  %i.eg = load double, ptr %i.cp, align 8, !tbaa !350, !noalias !4391
  %i.eh = fsub double %i.ef, %i.eg                ; 2 uses
  %i.ei = load i32, ptr %i.db, align 4, !tbaa !165, !noalias !4388
  %i.ej = mul nsw i32 %i.ei, %storemerge920
  %i.ek = load <2 x i32>, ptr %i.da, align 8, !tbaa !165, !noalias !4388
  %i.el = load i32, ptr %i.dc, align 8, !tbaa !165, !noalias !4388
  %i.em = mul nsw i32 %i.el, %storemerge821
  %i.en = insertelement <2 x i32> poison, i32 %i.ej, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %i.em, i64 1
  %i.ep = add nsw <2 x i32> %i.eo, %i.ek
  %i.eq = sitofp <2 x i32> %i.ep to <2 x double>
  %i.er = load <2 x double>, ptr %i.df, align 8, !tbaa !350, !noalias !4389
  %i.es = fmul <2 x double> %i.er, %i.eq
  %i.et = load <2 x double>, ptr %i.cz, align 8, !tbaa !350, !noalias !4390
  %i.eu = fadd <2 x double> %i.es, %i.et
  %i.ev = load <2 x double>, ptr %i.co, align 8, !tbaa !350, !noalias !4391
  %i.ew = fsub <2 x double> %i.eu, %i.ev          ; 2 uses
  %i.ex = fmul <2 x double> %i.ew, %i.ew          ; 2 uses
  %i.ey = fmul double %i.eh, %i.eh
  %i.ez = extractelement <2 x double> %i.ex, i64 1
  %i.fa = fadd double %i.ez, %i.ey
  %i.fb = extractelement <2 x double> %i.ex, i64 0
  %i.fc = fadd double %i.fb, %i.fa
  %i.fd = call noundef double @llvm.sqrt.f64(double %i.fc)
  %i.fe = load double, ptr %i.cq, align 8, !tbaa !350
  %i.ff = call noundef double @pow(double noundef %i.fd, double noundef %i.fe) #47, !tbaa !165
  %i.fg = fmul double %i.dw, %i.ff
  %i.fh = call noundef double @exp(double noundef %i.fg) #47, !tbaa !165
  %i.fi = fdiv double %i.dv, %i.fh
  %i.fj = load double, ptr %i.cr, align 8, !tbaa !350
  %i.fk = fadd double %i.fi, %i.fj
  store double %i.fk, ptr %i.du, align 8, !tbaa !350
  %i.fl = add nuw nsw i32 %storemerge920, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.fl, %i.cd
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !4386
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEEC2IS1_S4_SF_10RemoteViewEERKS_IT_T0_T1_ERK10EngineViewIT2_E(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !909
  store i32 %i.a, ptr %0, align 8, !tbaa !909
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !403
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !401
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 12
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %i.d, align 8, !tbaa !910
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !165
  store i32 %i.q, ptr %i.o, align 8, !tbaa !165
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !165
  store i32 %i.w, ptr %i.u, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !165
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !165
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !165
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !165
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !465
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !511 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !511
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN6NoMeshILi3EEC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !433
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !433
  br label %_ZN6NoMeshILi3EEC2ERKS0_.exit

_ZN6NoMeshILi3EEC2ERKS0_.exit:                    ; preds = %bb.a, %bb.b
  %i.an = load i32, ptr %0, align 8, !tbaa !909
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !403
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !401
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 12
  %i.aw = trunc i64 %i.av to i32
  %i.ax = mul nsw i32 %i.an, %i.aw                ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEELb0E18RefBlockControllerISF_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !538 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !913 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ay, 176
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !914
  %.not.i.i.i.not.i = icmp ugt ptr %i.bd, %i.bf
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6NoMeshILi3EEC2ERKS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !915
  %.not6.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.bc, %bb.c ] ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.07.i.i.i, i8 0, i64 104, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.bh, align 8, !tbaa !165
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 120
  store i32 0, ptr %i.bi, align 8, !tbaa !165
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 124
  store i32 0, ptr %i.bj, align 4, !tbaa !165
  %i.bk = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 128
  store i32 1, ptr %i.bk, align 8, !tbaa !165
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 156
  store i32 0, ptr %i.bl, align 4, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 160
  store i32 0, ptr %i.bm, align 8, !tbaa !165
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 164
  store i32 0, ptr %i.bn, align 4, !tbaa !165
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 168
  %i.bp = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !528
  store i32 1, ptr %i.bp, align 8, !tbaa !433
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 176 ; 2 uses
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !915
  %.not.i.i.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !99

_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN6NoMeshILi3EEC2ERKS0_.exit, %bb.c
  %i.bt = load i32, ptr %0, align 8, !tbaa !909   ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader.lr.ph, label %._crit_edge29

.preheader.lr.ph:                                 ; preds = %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load ptr, ptr %i.ap, align 8, !tbaa !403
  %.pre33 = load ptr, ptr %i.ao, align 8, !tbaa !401
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.by = phi i32 [ %i.bt, %.preheader.lr.ph ], [ %i.ch, %._crit_edge ]
  %i.bz = phi ptr [ %.pre33, %.preheader.lr.ph ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.ca = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.cj, %._crit_edge ] ; 2 uses
  %.01928 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ck, %._crit_edge ] ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 12
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

._crit_edge29:                                    ; preds = %._crit_edge, %_ZN11FieldEngineI6NoMeshILi3EE6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEE12addSubFieldsEv.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit
  %.pre34 = load i32, ptr %0, align 8, !tbaa !909
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ch = phi i32 [ %.pre34, %._crit_edge.loopexit ], [ %i.by, %.preheader ] ; 2 uses
  %i.ci = phi ptr [ %i.gz, %._crit_edge.loopexit ], [ %i.bz, %.preheader ]
  %i.cj = phi ptr [ %i.gy, %._crit_edge.loopexit ], [ %i.ca, %.preheader ]
  %i.ck = add nuw nsw i32 %.01928, 1              ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %i.ch
  br i1 %i.cl, label %.preheader, label %._crit_edge29, !llvm.loop !4392

.lr.ph:                                           ; preds = %.preheader, %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit
  %.027 = phi i32 [ %i.gx, %_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE10ViewEngineILi3E13IndexFunctionIN10GenericURMI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE16PositionsFunctorEEEED2Ev.exit ], [ 0, %.preheader ] ; 3 uses
  %i.cm = load i32, ptr %i.bw, align 8, !tbaa !910
  %i.cn = mul nsw i32 %i.cm, %.01928
  %i.co = add nsw i32 %i.cn, %.027
  %i.cp = sext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.bx, align 8, !tbaa !538
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !913
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !916
  %i.cu = getelementptr inbounds [176 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds [176 x i8], ptr %i.cu, i64 %i.cp ; 12 uses
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !350, !noalias !4398
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !350, !noalias !4398
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.da = load <2 x double>, ptr %i.cz, align 8, !tbaa !350, !noalias !4398
end_hunk_0
begin_hunk_1_@_ZN11LeafFunctorI9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd6RemoteI10BrickViewUEEE10EngineViewI10RemoteViewEE5applyERKSC_RKSF_:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = load <2 x i32>, ptr %i.bt, align 8, !tbaa !165
  store <2 x i32> %i.bu, ptr %i.bs, align 8, !tbaa !165
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !tbaa.struct !465
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !450 ; 4 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !450
  %.not.i.i8.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i8.i.i.i, label %_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !433
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !433
  br label %_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit

_ZN9MultiArg1I5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUEEC2ERKS8_.exit: ; preds = %_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed10BrickViewUELb0E18RefBlockControllerIS2_EEC2ERKS5_.exit.i.i.i, %bb.g
  call void @_ZN5FieldI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd10BrickViewUED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_tramp3d_v4.cpp() #41 section ".text.startup" {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 16), ptr @_ZN5Pooma5pinfoE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 16), align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pinfoE, i64 80), i8 0, i64 28, i1 false)
  %i.a = tail call noundef i32 @_ZN6Inform4openEi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pinfoE, i32 noundef 0) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pinfoE, ptr noundef nonnull @.str)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma5pinfoE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 16), ptr @_ZN5Pooma5pwarnE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma5pwarnE, i64 80), i8 0, i64 28, i1 false)
  %i.c = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pwarnE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma5pwarnE, ptr noundef nonnull @.str.5)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma5pwarnE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 16), ptr @_ZN5Pooma4perrE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma4perrE, i64 80), i8 0, i64 28, i1 false)
  %i.e = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma4perrE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma4perrE, ptr noundef nonnull @.str.7)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma4perrE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 16), ptr @_ZN5Pooma6pdebugE, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 16), align 8, !tbaa !174
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 32), align 8, !tbaa !288
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 36), align 4, !tbaa !284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), align 8, !tbaa !289
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 56), align 8, !tbaa !222
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 64), align 8, !tbaa !206
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 72), align 8, !tbaa !290
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma6pdebugE, i64 80), i8 0, i64 28, i1 false)
  %i.g = tail call noundef i32 @_ZN6Inform4openERSoi(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma6pdebugE, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef -1) ; 0 uses
  tail call void @_ZN6Inform5setupEPKc(ptr noundef nonnull align 8 dereferenceable(109) @_ZN5Pooma6pdebugE, ptr noundef nonnull @.str.9)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6InformD2Ev, ptr nonnull @_ZN5Pooma6pdebugE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 8), align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 16), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 24), align 8, !tbaa !174
  store i32 1, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, align 8, !tbaa !192
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 4), align 4, !tbaa !193
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 5), align 1, !tbaa !194
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 6), align 2, !tbaa !195
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 8), i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.44, i64 noundef 0) #47 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 40), align 8, !tbaa !196
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 44), align 4, !tbaa !197
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 48), align 8, !tbaa !198
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 52), align 4, !tbaa !199
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Pooma12_GLOBAL__N_19options_sE, i64 53), align 1, !tbaa !200
  %i.j = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Pooma7OptionsD2Ev, ptr nonnull @_ZN5Pooma12_GLOBAL__N_19options_sE, ptr nonnull @__dso_handle) #47 ; 0 uses
  store i32 0, ptr @_ZN5Pooma12_GLOBAL__N_115mainScheduler_sE, align 4, !tbaa !714
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, i8 0, i64 24, i1 false)
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Pooma10StatisticsD2Ev, ptr nonnull @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr nonnull @__dso_handle) #47 ; 0 uses
  %i.l = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.14, i64 noundef 0)
  store ptr %i.l, ptr @_ZN5Pooma12_GLOBAL__N_120statNumExpressions_sE, align 8, !tbaa !183
  %i.m = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.16, i64 noundef 0)
  store ptr %i.m, ptr @_ZN5Pooma12_GLOBAL__N_122statNumZBExpressions_sE, align 8, !tbaa !183
  %i.n = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.18, i64 noundef 0)
  store ptr %i.n, ptr @_ZN5Pooma12_GLOBAL__N_130statNumMultiPatchExpressions_sE, align 8, !tbaa !183
  %i.o = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.20, i64 noundef 0)
  store ptr %i.o, ptr @_ZN5Pooma12_GLOBAL__N_126statNumCompressedAssigns_sE, align 8, !tbaa !183
  %i.p = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.22, i64 noundef 0)
  store ptr %i.p, ptr @_ZN5Pooma12_GLOBAL__N_138statNumAssignsRequiringUnCompression_sE, align 8, !tbaa !183
  %i.q = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.24, i64 noundef 0)
  store ptr %i.q, ptr @_ZN5Pooma12_GLOBAL__N_126statNumInlineEvaluations_sE, align 8, !tbaa !183
  %i.r = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.26, i64 noundef 0)
  store ptr %i.r, ptr @_ZN5Pooma12_GLOBAL__N_130statNumLocalPatchesEvaluated_sE, align 8, !tbaa !183
  %i.s = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.28, i64 noundef 0)
  store ptr %i.s, ptr @_ZN5Pooma12_GLOBAL__N_119statNumReductions_sE, align 8, !tbaa !183
  %i.t = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.30, i64 noundef 0)
  store ptr %i.t, ptr @_ZN5Pooma12_GLOBAL__N_121statNumUnCompresses_sE, align 8, !tbaa !183
  %i.u = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.32, i64 noundef 0)
  store ptr %i.u, ptr @_ZN5Pooma12_GLOBAL__N_134statNumUnsuccessfulTryCompresses_sE, align 8, !tbaa !183
  %i.v = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.34, i64 noundef 0)
  store ptr %i.v, ptr @_ZN5Pooma12_GLOBAL__N_132statNumSuccessfulTryCompresses_sE, align 8, !tbaa !183
  %i.w = tail call noundef ptr @_ZN5Pooma10Statistics3addEPKcl(ptr noundef nonnull align 8 dereferenceable(24) @_ZN5Pooma12_GLOBAL__N_112statistics_sE, ptr noundef nonnull @.str.36, i64 noundef 0)
  store ptr %i.w, ptr @_ZN5Pooma12_GLOBAL__N_114statNumPolls_sE, align 8, !tbaa !183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @tagGenerator_g, i8 0, i64 24, i1 false)
  %i.x = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45 ; 3 uses
  store ptr %i.x, ptr @tagGenerator_g, align 8, !tbaa !279
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 16), align 8, !tbaa !280
  store i32 0, ptr %i.x, align 4, !tbaa !165
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 8), align 8, !tbaa !281
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), i8 0, i64 24, i1 false)
  %i.z = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45 ; 3 uses
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 24), align 8, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 40), align 8, !tbaa !280
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @tagGenerator_g, i64 32), align 8, !tbaa !281
  %i.ab = load ptr, ptr @tagGenerator_g, align 8, !tbaa !279
  store i32 0, ptr %i.ab, align 4, !tbaa !165
  store i32 0, ptr %i.z, align 4, !tbaa !165
  %i.ac = tail call i32 @__cxa_atexit(ptr nonnull @_ZN12TagGeneratorD2Ev, ptr nonnull @tagGenerator_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi1EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringOne_g) #47
  %i.ad = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi1EED1Ev, ptr nonnull @canonicalCenteringOne_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi2EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringTwo_g) #47
  %i.ae = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi2EED1Ev, ptr nonnull @canonicalCenteringTwo_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @_ZN18CanonicalCenteringILi3EEC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @canonicalCenteringThree_g) #47
  %i.af = tail call i32 @__cxa_atexit(ptr @_ZN18CanonicalCenteringILi3EED1Ev, ptr nonnull @canonicalCenteringThree_g, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @corr_v, i8 0, i64 72, i1 false), !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @vertexDomain, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @origin, i8 0, i64 24, i1 false), !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @spacings, i8 0, i64 24, i1 false), !tbaa !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @smooth, i8 0, i64 16, i1 false), !tbaa !350
  store ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 16), ptr @_Z11commandlineB5cxx11, align 8, !tbaa !169
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 8), align 8, !tbaa !175
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_Z11commandlineB5cxx11, i64 16), align 8, !tbaa !174
  %i.ag = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_Z11commandlineB5cxx11, ptr nonnull @__dso_handle) #47 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @periodicity, i8 0, i64 12, i1 false), !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @dump_points, i8 0, i64 24, i1 false)
  %i.ah = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev, ptr nonnull @dump_points, ptr nonnull @__dso_handle) #47 ; 0 uses
  store i32 0, ptr @a_blocks, align 8, !tbaa !165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a_blocks, i64 4), align 4, !tbaa !165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a_blocks, i64 8), align 8, !tbaa !165
  store i32 64, ptr @vdom, align 4, !tbaa !165
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @vdom, i64 4), align 4, !tbaa !165
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @vdom, i64 8), align 4, !tbaa !165
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #34

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #37 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #41 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { builtin nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind }
attributes #48 = { builtin nounwind }
attributes #49 = { noreturn }
attributes #50 = { nounwind willreturn memory(read) }
attributes #51 = { cold nounwind }

!llvm.module.flags = !{!158, !159, !160}
!llvm.ident = !{!161}
!llvm.errno.tbaa = !{!165}

!0 = distinct !{!0, !213}
!1 = distinct !{!1, !213}
!2 = distinct !{!2, !213}
!3 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !213}
!6 = distinct !{!6, !213}
!7 = distinct !{!7, !213}
!8 = distinct !{!8, !213}
!9 = distinct !{!9, !213}
!10 = distinct !{!10, !213}
!11 = distinct !{!11, !213}
!12 = distinct !{!12, !213}
!13 = distinct !{!13, !213}
!14 = distinct !{!14, !213}
!15 = distinct !{!15, !213}
!16 = distinct !{!16, !213}
!17 = distinct !{!17, !213}
!18 = distinct !{!18, !213}
!19 = distinct !{!19, !213}
!20 = distinct !{!20, !213}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{!24, !213}
!25 = distinct !{!25, !213}
!26 = distinct !{ptr @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed10MultiPatchI7GridTag6RemoteI5BrickEEEE13deleteStorageEv, null, null, null, null, null, null}
!27 = distinct !{!27, !213}
!28 = distinct !{null}
!29 = distinct !{ptr @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEE13deleteStorageEv, null, null, null, null, null, null}
!30 = distinct !{!30, !213}
!31 = distinct !{!31, !213}
!32 = distinct !{!32, !213}
!33 = distinct !{null, null, null}
!34 = distinct !{!34, !213}
!35 = distinct !{!35, !213}
!36 = distinct !{!36, !213}
!37 = distinct !{!37, !213}
!38 = distinct !{null}
!39 = distinct !{!39, !213}
!40 = distinct !{!40, !213}
!41 = distinct !{!41, !213}
!42 = distinct !{!42, !213}
!43 = distinct !{!43, !213}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = distinct !{!46, !213}
!47 = distinct !{!47, !213}
!48 = distinct !{!48, !213}
!49 = distinct !{ptr @_ZN6Smarts8Runnable7executeEv, null, null}
!50 = distinct !{null, null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null, null, null, null}
!53 = distinct !{!53, !213}
!54 = distinct !{!54, !213}
!55 = distinct !{ptr @_ZN10GridLayoutILi3EED2Ev, null, null, null}
!56 = distinct !{null, null, null, null}
!57 = distinct !{ptr @_ZN19FieldEngineBaseDataILi3Ed14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev, null, null, null, null}
!58 = distinct !{null, null, null, null}
!59 = distinct !{!59, !213}
!60 = distinct !{!60, !213}
!61 = distinct !{null, null}
!62 = distinct !{!62, !213}
!63 = distinct !{!63, !213}
!64 = distinct !{!64, !213}
!65 = distinct !{!65, !213}
!66 = distinct !{!66, !213}
!67 = distinct !{!67, !213}
!68 = distinct !{null, null, null, null, null, null}
!69 = distinct !{!69, !213}
!70 = distinct !{!70, !213}
!71 = distinct !{null, null, null, null, null, null}
!72 = distinct !{null, null, null, null, null}
!73 = distinct !{ptr @_ZN12DataBlockPtrIdLb0EED2Ev, null, null, null}
!74 = distinct !{ptr @_ZN12DataBlockPtrIdLb0EED2Ev, null, null, null, null, null, null, null}
!75 = distinct !{null, null, null, null, null}
!76 = distinct !{null, null, null, null, null}
!77 = distinct !{!77, !213}
!78 = distinct !{!78, !213}
!79 = distinct !{!79, !213}
!80 = distinct !{null, null, null}
!81 = distinct !{null, null, null, null, null}
!82 = distinct !{!82, !213}
!83 = distinct !{null, null, null, null}
!84 = distinct !{ptr @_ZN19FieldEngineBaseDataILi3E6VectorILi3Ed4FullE14MultiPatchViewI7GridTag6RemoteI5BrickELi3EEED2Ev, null, null, null, null}
!85 = distinct !{!85, !213}
!86 = distinct !{null, null, null, null, null, null}
!87 = distinct !{null, null, null, null, null, null}
!88 = distinct !{null, null, null, null, null}
!89 = distinct !{ptr @_ZN12DataBlockPtrI6VectorILi3Ed4FullELb0EED2Ev, null, null, null}
!90 = distinct !{ptr @_ZN12DataBlockPtrI6VectorILi3Ed4FullELb0EED2Ev, null, null, null, null, null, null, null}
!91 = distinct !{null, null, null, null, null}
!92 = distinct !{!92, !213}
!93 = distinct !{!93, !213}
!94 = distinct !{null, null, null, null}
!95 = distinct !{null, null, null, null, null}
!96 = distinct !{!96, !213}
!97 = distinct !{null, null, null, null}
!98 = distinct !{null, null, null, null, null}
!99 = distinct !{!99, !213}
!100 = distinct !{null, null, null, null}
!101 = distinct !{null, null, null, null, null}
!102 = distinct !{!102, !213}
!103 = distinct !{!103, !213}
!104 = distinct !{null}
!105 = distinct !{null}
!106 = distinct !{!106, !213}
!107 = distinct !{null, null, null, null, null}
!108 = distinct !{!108, !213}
!109 = distinct !{!109, !213}
!110 = distinct !{null, null, null, null, null}
!111 = distinct !{!111, !213}
!112 = distinct !{null, null}
!113 = distinct !{!113, !213}
!114 = distinct !{!114, !213}
!115 = distinct !{null, null, null, null, null, null}
!116 = distinct !{null, null, null, null, null, null}
!117 = distinct !{!117, !213}
!118 = distinct !{null, null, null, null}
!119 = distinct !{!119, !213}
!120 = distinct !{!120, !213}
!121 = distinct !{null, null, null, null}
!122 = distinct !{!122, !213}
!123 = distinct !{!123, !213}
!124 = distinct !{!124, !213}
!125 = distinct !{!125, !213}
!126 = distinct !{!126, !213}
!127 = distinct !{!127, !213}
!128 = distinct !{!128, !213}
!129 = distinct !{!129, !213}
!130 = distinct !{null, null, null, null}
!131 = distinct !{null, null, null, null, null}
!132 = distinct !{null, null, null, null, null}
!133 = distinct !{!133, !213}
!134 = distinct !{!134, !213}
!135 = distinct !{null, null, null, null, null, null}
!136 = distinct !{!136, !213}
!137 = distinct !{!137, !213}
end_hunk_1
