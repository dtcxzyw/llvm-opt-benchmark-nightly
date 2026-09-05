Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVTosaOps?download=true
inline.NumInlined: 1190
inline.NumDeleted: 655
begin_hunk_0_@_ZN4mlir5spirv21TosaTransposeConv2DOp6verifyEv:bb.a
bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i64 %i.cf, -1
  %i.cq = mul nsw i64 %i.cm, %i.cp
  %i.cr = add i64 %i.ck, %i.ap
  %i.cs = add i64 %i.cr, %i.cl
  %i.ct = add i64 %i.cs, %i.cq
  %.not.i35.i = icmp eq i64 %i.cj, %i.ct
  br i1 %.not.i35.i, label %_ZN4mlir5spirv12_GLOBAL__N_132verifyTransposeConv2DOutputShapeEPNS_9OperationENS_20DenseIntElementsAttrES4_NS0_13TensorArmTypeES5_S5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 6, ptr %i.cu, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.cv, align 1, !tbaa !36
  store ptr @.str.28, ptr %11, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 240, ptr %i.cw, align 8, !tbaa !24
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %11) #9
  %i.cx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #9
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %_ZN4mlir5spirv12_GLOBAL__N_132verifyTransposeConv2DOutputShapeEPNS_9OperationENS_20DenseIntElementsAttrES4_NS0_13TensorArmTypeES5_S5_.exit

_ZN4mlir5spirv12_GLOBAL__N_132verifyTransposeConv2DOutputShapeEPNS_9OperationENS_20DenseIntElementsAttrES4_NS0_13TensorArmTypeES5_S5_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit30.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit33.i, %bb.x, %bb.y, %bb.z
  %.sroa.024.2.i = phi i8 [ 1, %bb.a ], [ %i.ag, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ %i.av, %_ZN4mlir18InFlightDiagnosticD2Ev.exit30.i ], [ %i.bw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit33.i ], [ %i.cx, %bb.z ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.x ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i8 %.sroa.024.2.i
}

declare ptr @_ZN4mlir5spirv21TosaTransposeConv2DOp9getOutPadEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir5spirv21TosaTransposeConv2DOp9getStrideEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv12TosaConcatOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %2 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %3 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %4 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %6 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %7 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %8 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 7 uses
  %9 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = tail call { i64, i64 } @_ZN4mlir5spirv12TosaConcatOp14getInput1TypesEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.fr = freeze { i64, i64 } %i.b                 ; 2 uses
  %i.c = extractvalue { i64, i64 } %.fr, 0        ; 9 uses
  %i.d = extractvalue { i64, i64 } %.fr, 1        ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call noundef i32 @_ZN4mlir5spirv12TosaConcatOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.h, ptr %8, align 8
  %i.j = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %.not94.i = icmp eq i64 %i.k, 0
  br i1 %.not94.i, label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ashr i64 %i.d, 2                         ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %bb.f
  %.089.i.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.f ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.15.088.i.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.f ], [ 0, %bb.b ] ; 6 uses
  %i.n = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.15.088.i.i.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %i.n, ptr %7, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = or disjoint i64 %.sroa.15.088.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.r = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %i.q) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.r, ptr %6, align 8
  %i.s = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  %i.t = extractvalue { ptr, i64 } %i.s, 1
  %.not.i.i36.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br i1 %.not.i.i36.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i64 %.sroa.15.088.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.v = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %i.u) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.v, ptr %5, align 8
  %i.w = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %i.x = extractvalue { ptr, i64 } %i.w, 1
  %.not.i.i37.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br i1 %.not.i.i37.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = or disjoint i64 %.sroa.15.088.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.z = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %i.y) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.z, ptr %4, align 8
  %i.aa = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.ab = extractvalue { ptr, i64 } %i.aa, 1
  %.not.i.i38.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br i1 %.not.i.i38.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add nuw nsw i64 %.sroa.15.088.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ad = add nsw i64 %.089.i.i.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.089.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !93

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.b
  %.sroa.15.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.f ] ; 6 uses
  %i.af = sub nsw i64 %i.d, %.sroa.15.0.lcssa.i.i.i.i.i.i.i
  switch i64 %i.af, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ag = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.15.0.lcssa.i.i.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %i.ag, ptr %3, align 8
  %i.ah = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1
  %.not.i.i39.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.not.i.i39.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i64 %.sroa.15.0.lcssa.i.i.i.i.i.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.1.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.15.1.i.i.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.ak, ptr %2, align 8
  %i.al = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.am = extractvalue { ptr, i64 } %i.al, 1
  %.not.i.i40.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.not.i.i40.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.15.2.i.i.i.i.i.i.i = phi i64 [ %i.an, %bb.j ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.15.2.i.i.i.i.i.i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %i.ao, ptr %1, align 8
  %i.ap = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1
  %.not.i.i41.i.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.not.i.i41.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i"

"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i": ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i.i, %bb.k, %bb.i, %bb.g
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.1.i.i.i.i.i.i.i, %bb.i ], [ %.sroa.15.0.lcssa.i.i.i.i.i.i.i, %bb.g ], [ %.sroa.15.2.i.i.i.i.i.i.i, %bb.k ], [ %i.y, %bb.e ], [ %.sroa.15.088.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %bb.c ], [ %i.u, %bb.d ]
  %.not95.i = icmp eq i64 %i.d, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %.not95.i, label %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i", label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit

"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i": ; preds = %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", %bb.k, %._crit_edge.i.i.i.i.i.i.i
  %i.ar = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %i.as = extractvalue { ptr, i64 } %i.ar, 1      ; 3 uses
  %.not43109.i = icmp sgt i64 %i.as, 0
  br i1 %.not43109.i, label %.lr.ph111.i, label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit

.lr.ph111.i:                                      ; preds = %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i"
  %i.at = sext i32 %i.i to i64                    ; 2 uses
  %.not96101.i = icmp eq i64 %i.d, 0
  br i1 %.not96101.i, label %.lr.ph111.split.us.split.us.i, label %.lr.ph111.split.split.i

.lr.ph111.split.us.split.us.i:                    ; preds = %.lr.ph111.i, %.preheader100.us.us.i
  %.037110.us.us.i = phi i64 [ %i.ba, %.preheader100.us.us.i ], [ 0, %.lr.ph111.i ] ; 3 uses
  %i.au = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %i.av = extractvalue { ptr, i64 } %i.au, 0
  %i.aw = and i64 %.037110.us.us.i, 4294967295
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %i.az, label %.preheader100.us.us.i, label %15

15:                                               ; preds = %.lr.ph111.split.us.split.us.i
  %.not.us.us.i = icmp ne i64 %.037110.us.us.i, %i.at
  %.not41.us.us.i = icmp eq i64 %i.ay, 0
  %or.cond125.i = or i1 %.not.us.us.i, %.not41.us.us.i
  br i1 %or.cond125.i, label %.preheader100.us.us.i, label %.split113.us.i

.preheader100.us.us.i:                            ; preds = %15, %.lr.ph111.split.us.split.us.i
  %i.ba = add nuw nsw i64 %.037110.us.us.i, 1     ; 2 uses
  %exitcond139.not.i = icmp eq i64 %i.ba, %i.as
  br i1 %exitcond139.not.i, label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit, label %.lr.ph111.split.us.split.us.i, !llvm.loop !94

.lr.ph111.split.split.i:                          ; preds = %.lr.ph111.i, %..loopexit_crit_edge.i
  %.037110.i = phi i64 [ %i.cn, %..loopexit_crit_edge.i ], [ 0, %.lr.ph111.i ] ; 3 uses
  %i.bb = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = and i64 %.037110.i, 4294967295          ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %..loopexit_crit_edge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph111.split.split.i
  %.not.i = icmp eq i64 %.037110.i, %i.at
  br i1 %.not.i, label %.preheader.i, label %.preheader100.i

bb.m:                                             ; preds = %.preheader100.i
  %i.bh = add nuw nsw i64 %.sroa.471.0102.i, 1    ; 2 uses
  %.not96.i = icmp eq i64 %i.bh, %i.d
  br i1 %.not96.i, label %..loopexit_crit_edge.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %bb.l, %bb.m
  %.sroa.471.0102.i = phi i64 [ %i.bh, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bi = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.471.0102.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store ptr %i.bi, ptr %9, align 8
  %i.bj = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bd
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.not97.i = icmp eq i64 %i.bm, -9223372036854775808
  %.not42.i = icmp eq i64 %i.bm, %i.bf
  %or.cond.i = or i1 %.not97.i, %.not42.i
  br i1 %or.cond.i, label %bb.m, label %.split.us.i

.split.us.i:                                      ; preds = %.preheader100.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 6, ptr %i.bn, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !36
  store ptr @.str.31, ptr %11, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 87, ptr %i.bp, align 8, !tbaa !24
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %11) #9
  %i.bq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #9
  %i.br = load ptr, ptr %10, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split.us.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.us.i
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !45, !range !46, !noundef !47
  %i.bu = trunc nuw i8 %i.bt to i1
  store i8 0, ptr %i.bs, align 8, !tbaa !45
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bv) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit

.preheader.i:                                     ; preds = %bb.l, %bb.r
  %.0105.i = phi i64 [ %i.cc, %bb.r ], [ 0, %bb.l ]
  %.sroa.4.0104.i = phi i64 [ %i.cd, %bb.r ], [ 0, %bb.l ] ; 2 uses
  %i.bw = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %i.c, i64 noundef %.sroa.4.0104.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store ptr %i.bw, ptr %12, align 8
  %i.bx = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bd
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.cb = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %i.cb, label %..loopexit_crit_edge.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.cc = add nsw i64 %i.ca, %.0105.i             ; 3 uses
  %i.cd = add nuw nsw i64 %.sroa.4.0104.i, 1      ; 2 uses
  %.not98.i = icmp eq i64 %i.cd, %i.d
  br i1 %.not98.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.r
  %.not99.i = icmp eq i64 %i.cc, -9223372036854775808
  %.not41.i = icmp eq i64 %i.cc, %i.bf
  %or.cond46.i = or i1 %.not99.i, %.not41.i
  br i1 %or.cond46.i, label %..loopexit_crit_edge.i, label %.split113.us.i

.split113.us.i:                                   ; preds = %._crit_edge.i, %15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 6, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !36
  store ptr @.str.31, ptr %14, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 87, ptr %i.cg, align 8, !tbaa !24
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %14) #9
  %i.ch = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #9
  %i.ci = load ptr, ptr %13, align 8, !tbaa !44
  %.not.i61.i = icmp eq ptr %i.ci, null
  br i1 %.not.i61.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split113.us.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split113.us.i
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !45, !range !46, !noundef !47
  %i.cl = trunc nuw i8 %i.ck to i1
  store i8 0, ptr %i.cj, align 8, !tbaa !45
  br i1 %i.cl, label %bb.u, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit62.i

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cm) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit62.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit62.i:        ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit

..loopexit_crit_edge.i:                           ; preds = %bb.m, %.preheader.i, %._crit_edge.i, %.lr.ph111.split.split.i
  %i.cn = add nuw nsw i64 %.037110.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %i.as
  br i1 %exitcond.not.i, label %_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit, label %.lr.ph111.split.split.i, !llvm.loop !94

_ZN4mlir5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS_9OperationENS_9TypeRangeENS0_13TensorArmTypeEi.exit: ; preds = %..loopexit_crit_edge.i, %.preheader100.us.us.i, %bb.a, %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i", %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i", %bb.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit62.i
  %.sroa.0.7.i = phi i8 [ 1, %bb.a ], [ %i.ch, %_ZN4mlir18InFlightDiagnosticD2Ev.exit62.i ], [ 1, %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.i" ], [ %i.bq, %bb.q ], [ 1, %.preheader100.us.us.i ], [ 1, %"_ZN4llvm6any_ofIRN4mlir9TypeRangeEZNS1_5spirv12_GLOBAL__N_123verifyConcatOutputShapeEPNS1_9OperationES2_NS4_13TensorArmTypeEiE3$_0EEbOT_T0_.exit.thread.i" ], [ 1, %..loopexit_crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret i8 %.sroa.0.7.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN4mlir5spirv12TosaConcatOp14getInput1TypesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %2 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %3 = alloca %"class.mlir::ValueTypeRange", align 8 ; 4 uses
  %4 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = tail call i64 @_ZN4mlir5spirv12TosaConcatOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #9 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5spirv12TosaConcatOp9getInput1Ev.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  br label %_ZN4mlir5spirv12TosaConcatOp9getInput1Ev.exit

_ZN4mlir5spirv12TosaConcatOp9getInput1Ev.exit:    ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.h = and i64 %i.a, 4294967295                 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.a, 32
  %i.i = add i64 %.sroa.5.0.extract.shift.i.i, %i.a
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.h
  %i.l = sub nsw i64 %i.j, %i.h
  store ptr %i.k, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8
  %i.n = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.4.0.copyload
  %i.o = sub nsw i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.n, i64 %i.o) #9
  %i.p = load i64, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8
  call void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.p, i64 %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN4mlir5spirv12TosaConcatOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv12TosaSelectOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
.lr.ph.i.i.i.i.i.i:
  %1 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %2 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %3 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %4 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %6 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %7 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %8 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %i.a = alloca [4 x i64], align 8                ; 8 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.b = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store ptr %i.h, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i30, i64 8
  %.0.copyload.i.i.i.i.i.i.i31 = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i31, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  store ptr %i.l, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i33 = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i33, i64 8
  %.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i34, -8
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  store ptr %i.s, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.h, ptr %4, align 8
  %i.t = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread97, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.l, ptr %3, align 8
  %i.v = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %.not.i.i33.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not.i.i33.i.i.i.i.i.i, label %.thread97, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.p, ptr %2, align 8
  %i.x = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %.not.i.i34.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i.i34.i.i.i.i.i.i, label %.thread97, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.s, ptr %1, align 8
  %i.z = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %i.aa = extractvalue { ptr, i64 } %i.z, 1
  %.not.i.i35.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %.not.i.i35.i.i.i.i.i.i, label %.thread97, label %"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.c
  %i.ab = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 3 uses
  %i.ad = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #9 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  %i.af = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #9 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !18
end_hunk_0
