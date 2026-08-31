Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUOps?download=true
inline.NumInlined: 37411
inline.NumDeleted: 5924
loop-unroll.NumCompletelyUnrolled: 197
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN4mlir6amdgpu19PackedScaledTruncOp20verifyInvariantsImplEv:bb.a
  br i1 %i.ch, label %.critedge6.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.an, ptr %13, align 8
  %i.ci = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #25 ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1
  %i.cl = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.cj, i64 %i.ck) #25
  %.not.i47 = icmp eq i64 %i.cl, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.not.i47, label %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %bb.r

.critedge.i:                                      ; preds = %bb.o, %bb.n, %"_ZZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_0clES2_.exit.i", %bb.g, %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store i8 5, ptr %i.z, align 8, !tbaa !23
  store i8 1, ptr %i.aa, align 1, !tbaa !19
  store ptr @.str.117, ptr %15, align 8, !tbaa !22
  store i64 7, ptr %i.ab, align 8, !tbaa !22
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %15) #25
  %i.cm = load ptr, ptr %14, align 8, !tbaa !24
  %.not.i.i.i44 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i44, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 3, ptr %7, align 8, !tbaa !72
  store ptr @.str.453, ptr %i.ad, align 8, !tbaa !75
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !62
  %i.cn = load i32, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.co = load i32, ptr %i.af, align 4, !tbaa !50
  %.not.i.i.i.i.i14.i = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.i.i.i.i14.i, label %bb.u, label %bb.t, !prof !13

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.cs = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ae, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !24
  %.not.i.i15.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i15.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 5, ptr %6, align 8, !tbaa !72
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  %i.cu = load i32, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.cv = load i32, ptr %i.af, align 4, !tbaa !50
  %.not.i.i.i.i.i16.i = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i.i.i.i.i16.i, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

bb.x:                                             ; preds = %bb.v
  %i.cw = zext i32 %i.cu to i64
  %i.cx = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.cz = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ae, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pr24.i = load ptr, ptr %14, align 8, !tbaa !24
  %.not.i.i17.i = icmp eq ptr %.pr24.i, null
  br i1 %.not.i.i17.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 3, ptr %5, align 8, !tbaa !72
  store ptr @.str.518, ptr %i.ah, align 8, !tbaa !75
  store i64 95, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i18.i, align 8, !tbaa !62
  %i.db = load i32, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.dc = load i32, ptr %i.af, align 4, !tbaa !50
  %.not.i.i.i.i.i19.i = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i.i.i.i.i19.i, label %bb.aa, label %bb.z, !prof !13

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dd = zext i32 %i.db to i64
  %i.de = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.dg = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.ae, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pr26.pr.i = load ptr, ptr %14, align 8, !tbaa !24
  %.not.i.i20.i = icmp eq ptr %.pr26.pr.i, null
  br i1 %.not.i.i20.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.an) #25
  %i.di = load i32, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.dj = load i32, ptr %i.af, align 4, !tbaa !50
  %.not.i.i.i.i.i21.i = icmp ult i32 %i.di, %i.dj
  br i1 %.not.i.i.i.i.i21.i, label %bb.ad, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dn = load i32, ptr %i.ae, align 8, !tbaa !51
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.ae, align 8, !tbaa !51
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i.i, %_ZNO4mlir18InFlightDiagnosticlsIRA96_KcEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i, %bb.r
  %i.dp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #25
  %i.dq = load ptr, ptr %14, align 8, !tbaa !24
  %.not.i.i45 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i45, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i
  %i.dr = load i8, ptr %i.ai, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ds = trunc nuw i8 %i.dr to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !33
  br i1 %i.ds, label %bb.ag, label %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.aj) #25
  br label %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit

.critedge6.i:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread

_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dt = trunc nuw i8 %i.dp to i1
  br i1 %i.dt, label %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, label %.thread163

_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread: ; preds = %bb.q, %.critedge6.i, %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit
  %i.du = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %.sroa.0.0.copyload.i.i.i58 = load ptr, ptr %i.dx, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i58, i64 8
  %.0.copyload.i.i.i.i.i59 = load i64, ptr %i.dy, align 8
  %i.dz = and i64 %.0.copyload.i.i.i.i.i59, -8
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU26PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.du, ptr %i.ea, ptr nonnull @.str.117, i64 7, i32 noundef 1)
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i60.preheader, label %.thread163

.lr.ph.i.i60.preheader:                           ; preds = %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread
  %.pre = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre199 = load i32, ptr %.phi.trans.insert, align 4
  %.pre201 = and i32 %.pre199, 8388608
  %.not.i.i.i67 = icmp eq i32 %.pre201, 0
  br i1 %.not.i.i.i67, label %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73.thread, label %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73, !prof !71

_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73: ; preds = %.lr.ph.i.i60.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !14
  %i.eh = zext i32 %i.ee to i64
  %i.ei = add nsw i64 %i.eh, -2                   ; 3 uses
  %i.ej = icmp ugt i64 %i.ei, 1
  br i1 %i.ej, label %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73
  %.not174186 = icmp eq i32 %i.ee, 2
  br i1 %.not174186, label %._crit_edge, label %.lr.ph189

_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73.thread: ; preds = %.lr.ph.i.i60.preheader, %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73
  %i.ek = phi i64 [ %i.ei, %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73 ], [ -2, %.lr.ph.i.i60.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.el = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.em, align 1, !tbaa !19
  store ptr @.str.154, ptr %20, align 8, !tbaa !22
  store i8 3, ptr %i.el, align 8, !tbaa !23
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %20) #25
  %i.en = load ptr, ptr %19, align 8, !tbaa !24
  %.not.i.i74 = icmp eq ptr %i.en, null
  br i1 %.not.i.i74, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 5, ptr %3, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.ep, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 9 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !51 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 36 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !50
  %.not.i.i.i.i.i = icmp ult i32 %i.er, %i.et
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !13

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eu = zext i32 %i.er to i64
  %i.ev = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ex = load i32, ptr %i.eq, align 8, !tbaa !51
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.eq, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pr = load ptr, ptr %19, align 8, !tbaa !24
  %.not.i.i75 = icmp eq ptr %.pr, null
  br i1 %.not.i.i75, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 3, ptr %2, align 8, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.155, ptr %i.ez, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !62
  %i.fa = load i32, ptr %i.eq, align 8, !tbaa !51 ; 2 uses
  %i.fb = load i32, ptr %i.es, align 4, !tbaa !50
  %.not.i.i.i.i.i76 = icmp ult i32 %i.fa, %i.fb
  br i1 %.not.i.i.i.i.i76, label %bb.am, label %bb.al, !prof !13

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.fc = zext i32 %i.fa to i64
  %i.fd = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ff = load i32, ptr %i.eq, align 8, !tbaa !51
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.eq, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr158 = load ptr, ptr %19, align 8, !tbaa !24
  %.not.i.i77 = icmp eq ptr %.pr158, null
  br i1 %.not.i.i77, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i32 5, ptr %1, align 8, !tbaa !72
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ek, ptr %i.fh, align 8, !tbaa !22
  %i.fi = load i32, ptr %i.eq, align 8, !tbaa !51 ; 2 uses
  %i.fj = load i32, ptr %i.es, align 4, !tbaa !50
  %.not.i.i.i.i.i78 = icmp ult i32 %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i78, label %bb.ap, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.fk = zext i32 %i.fi to i64
  %i.fl = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fn = load i32, ptr %i.eq, align 8, !tbaa !51
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.eq, align 8, !tbaa !51
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir6amdgpu19PackedScaledTruncOp14getODSOperandsEj.exit73.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.fp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #25
  %i.fq = load ptr, ptr %19, align 8, !tbaa !24
  %.not.i79 = icmp eq ptr %i.fq, null
  br i1 %.not.i79, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 200 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ft = trunc nuw i8 %i.fs to i1
  store i8 0, ptr %i.fr, align 8, !tbaa !33
  br i1 %i.ft, label %bb.as, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit80

bb.as:                                            ; preds = %bb.ar
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fu) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit80

_ZN4mlir18InFlightDiagnosticD2Ev.exit80:          ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.thread163

.lr.ph189:                                        ; preds = %.preheader, %29
  %.4188 = phi i32 [ %30, %29 ], [ 2, %.preheader ] ; 2 uses
  %.sroa.4107.0187 = phi i64 [ %31, %29 ], [ 0, %.preheader ] ; 2 uses
  %21 = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %.sroa.4107.0187
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 88
  %.sroa.0.0.copyload.i.i.i85 = load ptr, ptr %22, align 8, !tbaa !17
  %23 = load ptr, ptr %0, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i85, i64 8
  %.0.copyload.i.i.i.i.i86 = load i64, ptr %24, align 8
  %25 = and i64 %.0.copyload.i.i.i.i.i86, -8
  %26 = inttoptr i64 %25 to ptr
  %27 = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU27PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %23, ptr %26, ptr nonnull @.str.117, i64 7, i32 noundef %.4188)
  %28 = trunc nuw i8 %27 to i1
  br i1 %28, label %29, label %.thread163

29:                                               ; preds = %.lr.ph189
  %30 = add i32 %.4188, 1
  %31 = add nuw nsw i64 %.sroa.4107.0187, 1       ; 2 uses
  %.not174 = icmp eq i64 %31, %i.ei
  br i1 %.not174, label %._crit_edge.loopexit, label %.lr.ph189

._crit_edge.loopexit:                             ; preds = %29
  %.pre200 = load ptr, ptr %0, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.fv = phi ptr [ %.pre200, %._crit_edge.loopexit ], [ %.pre, %.preheader ]
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -16
  %i.fx = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i64 noundef 0) #25
  %i.fy = load ptr, ptr %0, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.0.copyload.i.i.i.i.i93 = load i64, ptr %i.fz, align 8
  %i.ga = and i64 %.0.copyload.i.i.i.i.i93, -8
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU27PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.fy, ptr %i.gb, ptr nonnull @.str.118, i64 6, i32 noundef 0)
  br label %.thread163

.thread163:                                       ; preds = %.lr.ph189, %._crit_edge, %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit, %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread, %_ZN4mlir18InFlightDiagnosticD2Ev.exit80, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.038.15 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread ], [ %i.gc, %._crit_edge ], [ 0, %_ZL41__mlir_ods_local_type_constraint_AMDGPU25PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit ], [ 0, %bb.f ], [ %i.fp, %_ZN4mlir18InFlightDiagnosticD2Ev.exit80 ], [ 0, %.lr.ph189 ]
  ret i8 %.sroa.038.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU26PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 3 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  store ptr %1, ptr %9, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !19
  store ptr %2, ptr %11, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !22
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #25
  %i.e = load ptr, ptr %10, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 3, ptr %8, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.453, ptr %i.g, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 12 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !51
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pr = load ptr, ptr %10, align 8, !tbaa !24
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 5, ptr %7, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = zext i32 %4 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = load i32, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.t = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i.i5 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.x = load i32, ptr %i.h, align 8, !tbaa !51
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pr12 = load ptr, ptr %10, align 8, !tbaa !24
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 3, ptr %6, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.519, ptr %i.z, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !62
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i.i8 = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i8, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.af = load i32, ptr %i.h, align 8, !tbaa !51
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.h, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pr14.pr = load ptr, ptr %10, align 8, !tbaa !24
  %.not.i.i9 = icmp eq ptr %.pr14.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !69
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %.sroa.0.0.copyload.i.i.i.i) #25
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !50
  %.not.i.i.i.i.i10 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i10, label %bb.n, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.am = load i32, ptr %i.h, align 8, !tbaa !51
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.h, align 8, !tbaa !51
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.ao = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  %i.ap = load ptr, ptr %10, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !33, !range !34, !noundef !35
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !33
  br i1 %i.as, label %bb.q, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.at) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.ao, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU27PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %12 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir6amdgpu21PackedStochRoundFp8Op5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !51
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #25
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !51 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #25
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !69
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !492

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !51
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6amdgpu21PackedStochRoundFp8Op6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.1033") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.521, i64 29) #25
  call void @_ZN4mlir6amdgpu21PackedStochRoundFp8Op5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1033") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !360
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6amdgpu21PackedStochRoundFp8OpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir6amdgpu21PackedStochRoundFp8Op6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.1033") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.521, i64 29) #25
  call void @_ZN4mlir6amdgpu21PackedStochRoundFp8Op5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1033") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !360
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_6amdgpu21PackedStochRoundFp8OpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir6amdgpu21PackedStochRoundFp8Op20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %class.anon.1777, align 8           ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !19
  store ptr @.str.285, ptr %6, align 8, !tbaa !22
  store i8 3, ptr %i.j, align 8, !tbaa !23
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #25
  %i.l = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  %i.m = load ptr, ptr %5, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !33, !range !34, !noundef !35
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !33
  br i1 %i.p, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.thread156

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.a, ptr %4, align 8, !tbaa !589
  %i.s = ptrtoint ptr %4 to i64
  %i.t = call fastcc i8 @_ZL40__mlir_ods_local_attr_constraint_AMDGPU6N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.r, ptr nonnull @.str.283, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL40__mlir_ods_local_attr_constraint_AMDGPU6PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit, label %.thread156

_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit: ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU26PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.v, ptr %i.ab, ptr nonnull @.str.117, i64 7, i32 noundef 0)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i.preheader, label %.thread156

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.0.0.copyload.i.i.i54 = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i54, i64 8
  %.0.copyload.i.i.i.i.i55 = load i64, ptr %i.ai, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i55, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = call fastcc i8 @_ZL40__mlir_ods_local_type_constraint_AMDGPU9PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.ae, ptr %i.ak, ptr nonnull @.str.117, i64 7, i32 noundef 1)
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i56.preheader, label %.thread156

.lr.ph.i.i56.preheader:                           ; preds = %.lr.ph.i.i.preheader
  %.pre = load ptr, ptr %0, align 8, !tbaa !8     ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4
  %.pre193 = and i32 %.pre191, 8388608
  %.not.i.i.i63 = icmp eq i32 %.pre193, 0
  br i1 %.not.i.i.i63, label %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69.thread, label %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69, !prof !71

_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69: ; preds = %.lr.ph.i.i56.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.ar = zext i32 %i.ao to i64
  %i.as = add nsw i64 %i.ar, -2                   ; 3 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69
  %.not167179 = icmp eq i32 %i.ao, 2
  br i1 %.not167179, label %._crit_edge, label %.lr.ph182

_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69.thread: ; preds = %.lr.ph.i.i56.preheader, %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69
  %i.au = phi i64 [ %i.as, %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69 ], [ -2, %.lr.ph.i.i56.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.aw, align 1, !tbaa !19
  store ptr @.str.154, ptr %8, align 8, !tbaa !22
  store i8 3, ptr %i.av, align 8, !tbaa !23
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #25
  %i.ax = load ptr, ptr %7, align 8, !tbaa !24
  %.not.i.i70 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i70, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 5, ptr %3, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 9 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !50
  %.not.i.i.i.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.i:                                             ; preds = %bb.g
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pr = load ptr, ptr %7, align 8, !tbaa !24
  %.not.i.i71 = icmp eq ptr %.pr, null
  br i1 %.not.i.i71, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 3, ptr %2, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.155, ptr %i.bj, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !62
  %i.bk = load i32, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !50
  %.not.i.i.i.i.i72 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i72, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bp = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.ba, align 8, !tbaa !51
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr152 = load ptr, ptr %7, align 8, !tbaa !24
  %.not.i.i73 = icmp eq ptr %.pr152, null
  br i1 %.not.i.i73, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i32 5, ptr %1, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.au, ptr %i.br, align 8, !tbaa !22
  %i.bs = load i32, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bt = load i32, ptr %i.bc, align 4, !tbaa !50
  %.not.i.i.i.i.i74 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.i.i.i.i74, label %bb.o, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bu = zext i32 %i.bs to i64
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bx = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.ba, align 8, !tbaa !51
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit69.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bz = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #25
  %i.ca = load ptr, ptr %7, align 8, !tbaa !24
  %.not.i75 = icmp eq ptr %i.ca, null
  br i1 %.not.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !33, !range !34, !noundef !35
  %i.cd = trunc nuw i8 %i.cc to i1
  store i8 0, ptr %i.cb, align 8, !tbaa !33
  br i1 %i.cd, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ce) #25
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit76

_ZN4mlir18InFlightDiagnosticD2Ev.exit76:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.thread156

.lr.ph182:                                        ; preds = %.preheader, %17
  %.4181 = phi i32 [ %18, %17 ], [ 2, %.preheader ] ; 2 uses
  %.sroa.4103.0180 = phi i64 [ %19, %17 ], [ 0, %.preheader ] ; 2 uses
  %9 = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.4103.0180
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.sroa.0.0.copyload.i.i.i81 = load ptr, ptr %10, align 8, !tbaa !17
  %11 = load ptr, ptr %0, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i81, i64 8
  %.0.copyload.i.i.i.i.i82 = load i64, ptr %12, align 8
  %13 = and i64 %.0.copyload.i.i.i.i.i82, -8
  %14 = inttoptr i64 %13 to ptr
  %15 = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU28PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %11, ptr %14, ptr nonnull @.str.117, i64 7, i32 noundef %.4181)
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %17, label %.thread156

17:                                               ; preds = %.lr.ph182
  %18 = add i32 %.4181, 1
  %19 = add nuw nsw i64 %.sroa.4103.0180, 1       ; 2 uses
  %.not167 = icmp eq i64 %19, %i.as
  br i1 %.not167, label %._crit_edge.loopexit, label %.lr.ph182

._crit_edge.loopexit:                             ; preds = %17
  %.pre192 = load ptr, ptr %0, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cf = phi ptr [ %.pre192, %._crit_edge.loopexit ], [ %.pre, %.preheader ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ch = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 noundef 0) #25
  %i.ci = load ptr, ptr %0, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.0.copyload.i.i.i.i.i89 = load i64, ptr %i.cj, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i89, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU28PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ci, ptr %i.cl, ptr nonnull @.str.118, i64 6, i32 noundef 0)
  br label %.thread156

.thread156:                                       ; preds = %.lr.ph182, %._crit_edge, %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit, %.lr.ph.i.i.preheader, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.038.15 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %.lr.ph.i.i.preheader ], [ %i.cm, %._crit_edge ], [ 0, %_ZN4mlir6amdgpu21PackedStochRoundFp8Op14getODSOperandsEj.exit ], [ 0, %bb.f ], [ %i.bz, %_ZN4mlir18InFlightDiagnosticD2Ev.exit76 ], [ 0, %.lr.ph182 ]
  ret i8 %.sroa.038.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL41__mlir_ods_local_type_constraint_AMDGPU28PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %12 = alloca %"class.mlir::VectorType", align 8 ; 7 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i.i.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i, ptr %10, align 8
  %i.d = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %i.d, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.b

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #25 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 4 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ashr i64 %i.g, 2                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.l = and i64 %i.g, -4
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.g ] ; 9 uses
  %i.m = load i8, ptr %.02946.i.i.i.i.i.i.i.i, align 1, !tbaa !505, !range !34, !noundef !35
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !505, !range !34, !noundef !35
  %.not4.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not4.i.i.i.i, label %bb.e, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit93

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !505, !range !34, !noundef !35
  %.not5.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not5.i.i.i.i, label %bb.f, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit91

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !505, !range !34, !noundef !35
  %.not6.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not6.i.i.i.i, label %bb.g, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 4
  %i.u = add nsw i64 %.047.i.i.i.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !506

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.b
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %scevgep.i.i.i.i.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i to i64
  %i.w = sub i64 %i.i, %.pre-phi.i.i.i.i.i.i.i.i
  switch i64 %i.w, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread46 [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !505, !range !34, !noundef !35
  %.not7.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not7.i.i.i.i, label %bb.i, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i:           ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = load i8, ptr %.1.i.i.i.i.i.i.i.i, align 1, !tbaa !505, !range !34, !noundef !35
  %.not8.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not8.i.i.i.i, label %bb.j, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i:         ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.2.i.i.i.i.i.i.i.i, align 1, !tbaa !505, !range !34, !noundef !35
  %.not9.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not9.i.i.i.i, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread46, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread46: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  br label %bb.k

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 3
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit91: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit93: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.c, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit91, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit93, %bb.h, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit93 ], [ %i.ad, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit91 ], [ %i.ac, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i.i.i, %bb.c ]
  %.not.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  br i1 %.not.i.i.i, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread46
  %i.af = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #25
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.455, i64 49), i64 16) #25
  store ptr %i.ak, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #25
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !43 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ap = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.ar = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = xor i64 %i.ap, -1
  %i.au = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.at
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ar, ptr %i.as, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ar, i64 %i.au, i64 %i.ap ; 2 uses
  %i.av = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !56

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ao, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !58
  %i.ay = icmp eq ptr %i.ax, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ay, label %bb.o, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !60
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
end_hunk_1
