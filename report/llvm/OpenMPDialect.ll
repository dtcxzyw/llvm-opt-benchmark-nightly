Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPDialect?download=true
inline.NumInlined: 86000
inline.NumDeleted: 22767
loop-unroll.NumCompletelyUnrolled: 325
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 331
begin_hunk_0_@_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nsw i64 %2, %i.d                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 8) #32
  %.pre8.pre.i = load i32, ptr %i.b, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre8.i = phi i32 [ %i.c, %bb.a ], [ %.pre8.pre.i, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.l = zext i32 %.pre8.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 8 %1, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i, %bb.c
  %i.n = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i ], [ %.pre.i, %bb.c ]
  %i.o = trunc i64 %2 to i32
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %i.b, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.mlir::IntegerAttr", align 8 ; 5 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.mlir::Value", align 8      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.llvm::TypeSwitch", align 8 ; 20 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.c, ptr %10, align 8, !noalias !774
  %.not22.i = icmp eq ptr %i.c, null
  br i1 %.not22.i, label %_ZN4mlir3omp9decodeCliENS_5ValueE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #32, !noalias !774 ; 0 uses
  %i.e = load ptr, ptr %10, align 8, !tbaa !324, !noalias !774
  %.sroa.011.024.i = load ptr, ptr %i.e, align 8, !tbaa !413, !noalias !774 ; 2 uses
  %.not2325.i = icmp eq ptr %.sroa.011.024.i, null
  br i1 %.not2325.i, label %_ZN4mlir3omp9decodeCliENS_5ValueE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.011.028.i = phi ptr [ %.sroa.011.0.i, %bb.e ], [ %.sroa.011.024.i, %bb.b ] ; 4 uses
  %.02026.i = phi ptr [ %.121.i, %bb.e ], [ null, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.011.028.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415, !noalias !774 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp27LoopTransformationInterfaceENS1_6detail42LoopTransformationInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.g), !noalias !774
  br label %_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.i = phi ptr [ %i.h, %bb.c ], [ null, %.lr.ph.i ] ; 4 uses
  %i.j = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.028.i) #32, !noalias !774 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169, !noalias !774
  %i.m = call noundef i32 %i.l(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.j) #32, !noalias !774, !inline_history !777
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168, !noalias !774
  %i.p = call noundef i32 %i.o(ptr noundef nonnull %i.i, ptr noundef %i.g, i32 noundef %i.j) #32, !noalias !774, !inline_history !778 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %.121.i = phi ptr [ %.02026.i, %bb.d ], [ %.sroa.011.028.i, %_ZN4llvm4castIN4mlir3omp27LoopTransformationInterfaceENS1_9OperationEEEDcPT0_.exit.i ] ; 5 uses
  %.sroa.011.0.i = load ptr, ptr %.sroa.011.028.i, align 8, !tbaa !413, !noalias !774 ; 2 uses
  %.not23.i = icmp eq ptr %.sroa.011.0.i, null
  br i1 %.not23.i, label %_ZN4mlir3omp9decodeCliENS_5ValueE.exit, label %.lr.ph.i

_ZN4mlir3omp9decodeCliENS_5ValueE.exit.thread:    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.q, ptr %11, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.178, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.r, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !65
  br label %bb.x

_ZN4mlir3omp9decodeCliENS_5ValueE.exit:           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  store ptr %i.t, ptr %11, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.178, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 3, ptr %i.u, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.v, align 1, !tbaa !65
  %.not = icmp eq ptr %.121.i, null
  br i1 %.not, label %bb.x, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir3omp9decodeCliENS_5ValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.w = getelementptr inbounds nuw i8, ptr %.121.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !415  ; 4 uses
  store ptr %i.x, ptr %13, align 8, !tbaa !779
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 12 uses
  store i8 0, ptr %i.y, align 8, !tbaa !781
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !221
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !301
  %i.ad = icmp eq ptr %i.ac, @_ZN4mlir6detail14TypeIDResolverINS_3omp15CanonicalLoopOpEvE2idE
  %.not1.i.i = icmp ne ptr %i.x, null
  %.not.i.i.not = and i1 %.not1.i.i, %i.ad
  br i1 %.not.i.i.not, label %bb.g, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call fastcc void @_ZL23generateLoopNestingNameB5cxx11N4llvm9StringRefEN4mlir3omp15CanonicalLoopOpE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr nonnull @.str.1346, i64 9, ptr nonnull %i.x)
  %i.ae = load i8, ptr %i.y, align 8, !tbaa !781, !range !311, !noundef !54
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.y, align 8, !tbaa !781
  br i1 %i.af, label %bb.h, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !197 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #35
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.z, align 8, !tbaa !75
  %i.am = load ptr, ptr %9, align 8, !tbaa !197   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit.thread"

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i
  store ptr %i.am, ptr %i.z, align 8, !tbaa !197
  %i.at = load i64, ptr %i.an, align 8, !tbaa !65
  store i64 %i.at, ptr %i.al, align 8, !tbaa !65
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !77
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit.thread"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit.thread": ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !77
  store i8 1, ptr %i.y, align 8, !tbaa !781
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_3EERSC_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit": ; preds = %bb.f
  %i.aw = load ptr, ptr %13, align 8, !tbaa !783  ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i8 = load ptr, ptr %i.ax, align 8, !tbaa !221
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i8, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !301
  %.not1.i.i9 = icmp eq ptr %i.aw, null
  %.sink16.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %8, i64 21
  %.sink16.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %8, i64 30
  %i.ba = icmp ne ptr %i.az, @_ZN4mlir6detail14TypeIDResolverINS_3omp6FuseOpEvE2idE
  %.not.i.i12 = or i1 %.not1.i.i9, %i.ba
  br i1 %.not.i.i12, label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_2EERSC_OT_.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bb = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.121.i) #32, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !784
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 44 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !784 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i32 %i.bd, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.be = lshr i32 %i.bd, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.be, 1
  %i.bf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !298, !noalias !784 ; 2 uses
  store ptr %i.bi, ptr %7, align 8, !noalias !784
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #32, !noalias !784 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !784
  %i.bk = load i32, ptr %i.bc, align 4, !noalias !784 ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp ugt i32 %i.bk, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i1.i.i.i)
  %i.bl = lshr i32 %i.bk, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i2.i.i.i = and i32 %i.bl, 1
  %i.bm = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i2.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !298, !noalias !784 ; 2 uses
  store ptr %i.bp, ptr %6, align 8, !noalias !784
  %.not.i3.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i3.i.i.i, label %bb.l, label %_ZNOSt8optionalImE5valueEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !784
  call void @_ZSt27__throw_bad_optional_accessv() #37, !noalias !784
  unreachable

_ZNOSt8optionalImE5valueEv.exit.i.i.i:            ; preds = %bb.k
  %i.bq = zext i32 %i.bb to i64
  %i.br = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32, !noalias !784 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !608, !noalias !784
  %i.bu = icmp ult i32 %i.bt, 65
  %i.bv = load ptr, ptr %i.br, align 8, !noalias !784
  %spec.select.i.i4.i.i.i = select i1 %i.bu, ptr %i.br, ptr %i.bv
  %.0.i.i5.i.i.i = load i64, ptr %spec.select.i.i4.i.i.i, align 8, !tbaa !65, !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !784
  %.not.i.i.i = icmp eq i64 %.0.i.i5.i.i.i, %i.bq
  br i1 %.not.i.i.i, label %._crit_edge.i.i11.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNOSt8optionalImE5valueEv.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bw, ptr %8, align 8, !tbaa !75, !alias.scope !784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bw, ptr noundef nonnull align 1 dereferenceable(14) @.str.1347, i64 14, i1 false)
  br label %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i"

.critedge.i.i.i:                                  ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !784
  br label %._crit_edge.i.i11.i.i.i

._crit_edge.i.i11.i.i.i:                          ; preds = %.critedge.i.i.i, %_ZNOSt8optionalImE5valueEv.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bx, ptr %8, align 8, !tbaa !75, !alias.scope !784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bx, ptr noundef nonnull align 1 dereferenceable(5) @.str.1348, i64 5, i1 false)
  br label %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i"

"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i": ; preds = %._crit_edge.i.i11.i.i.i, %._crit_edge.i.i.i.i.i
  %i.by = phi ptr [ %i.bx, %._crit_edge.i.i11.i.i.i ], [ %i.bw, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i64 [ 5, %._crit_edge.i.i11.i.i.i ], [ 14, %._crit_edge.i.i.i.i.i ]
  %.sink16.i.sroa.phi.i.i = phi ptr [ %.sink16.i.sroa.gep.i.i, %._crit_edge.i.i11.i.i.i ], [ %.sink16.i.sroa.gep1.i.i, %._crit_edge.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %.sink.i.i.i, ptr %i.bz, align 8, !tbaa !77, !alias.scope !784
  store i8 0, ptr %.sink16.i.sroa.phi.i.i, align 1, !tbaa !65, !alias.scope !784
  %i.ca = load i8, ptr %i.y, align 8, !tbaa !781, !range !311, !noundef !54
  %i.cb = trunc nuw i8 %i.ca to i1
  store i8 0, ptr %i.y, align 8, !tbaa !781
  br i1 %i.cb, label %bb.m, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13

bb.m:                                             ; preds = %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i"
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !197 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16: ; preds = %bb.m
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !65
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #35
  %.pre.i.i17 = load ptr, ptr %8, align 8, !tbaa !197
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16, %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i"
  %i.ch = phi ptr [ %.pre.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16 ], [ %i.by, %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_2clB5cxx11ENS0_6FuseOpE.exit.i.i" ], [ %i.by, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.ci, ptr %i.z, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ck = icmp eq ptr %i.ch, %i.cj
  br i1 %i.ck, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

bb.n:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13
  %i.cl = load i64, ptr %i.bz, align 8, !tbaa !77 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.cn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i13
  store ptr %i.ch, ptr %i.z, align 8, !tbaa !197
  %i.co = load i64, ptr %i.cj, align 8, !tbaa !65
  store i64 %i.co, ptr %i.ci, align 8, !tbaa !65
  %.pre3.i.i = load i64, ptr %i.bz, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14, %bb.n
  %i.cp = phi i64 [ %i.cl, %bb.n ], [ %.pre3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !77
  store i8 1, ptr %i.y, align 8, !tbaa !781
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_3EERSC_OT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_2EERSC_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_0EERSC_OT_.exit"
  %i.cr = load ptr, ptr %13, align 8, !tbaa !783, !nonnull !54, !noundef !54 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i19 = load ptr, ptr %i.cs, align 8, !tbaa !221
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i19, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !301
  %i.cv = icmp eq ptr %i.cu, @_ZN4mlir6detail14TypeIDResolverINS_3omp6TileOpEvE2idE
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !787 ; 2 uses
  %.not.i.i.i.i.i.i.i23 = icmp ugt i32 %i.cx, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i23)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cz = lshr i32 %i.cx, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i24 = and i32 %i.cz, 1
  %i.da = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i24 to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !312, !noalias !787 ; 2 uses
  %i.dd = lshr i32 %i.dc, 1                       ; 2 uses
  %i.de = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.121.i) #32, !noalias !787 ; 4 uses
  %i.df = icmp ult i32 %i.de, %i.dd
  br i1 %i.df, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit34.i.i.i

_ZN4llvmplERKNS_5TwineES2_.exit.i.i.i:            ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_2EERSC_OT_.exit"
  %i.dg = add nuw nsw i32 %i.de, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !787
  %.sroa.08.0.insert.ext.i.i.i = zext nneg i32 %i.dg to i64
  %i.dh = inttoptr i64 %.sroa.08.0.insert.ext.i.i.i to ptr
  store ptr @.str.1349, ptr %3, align 8, !alias.scope !790, !noalias !787
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !790, !noalias !787
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.dj, align 8, !tbaa !58, !alias.scope !790, !noalias !787
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 9, ptr %i.dk, align 1, !tbaa !64, !alias.scope !790, !noalias !787
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !787
  br label %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_3clB5cxx11ENS0_6TileOpE.exit.i.i"

_ZN4llvmplERKNS_5TwineES2_.exit34.i.i.i:          ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_E4CaseIZNS3_3omp8NewCliOp17getAsmResultNamesENS_12function_refIFvNS3_5ValueENS_9StringRefEEEEE3$_2EERSC_OT_.exit"
  %i.dl = icmp ult i32 %i.de, %i.dc
  call void @llvm.assume(i1 %i.dl)
  %reass.sub = sub nuw i32 %i.de, %i.dd
  %i.dm = add nuw i32 %reass.sub, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !787
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.dm to i64
  %i.dn = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i to ptr
  store ptr @.str.1350, ptr %4, align 8, !alias.scope !795, !noalias !787
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !795, !noalias !787
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.dp, align 8, !tbaa !58, !alias.scope !795, !noalias !787
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 9, ptr %i.dq, align 1, !tbaa !64, !alias.scope !795, !noalias !787
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !787
  br label %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_3clB5cxx11ENS0_6TileOpE.exit.i.i"

"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_3clB5cxx11ENS0_6TileOpE.exit.i.i": ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit34.i.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit.i.i.i
  %i.dr = load i8, ptr %i.y, align 8, !tbaa !781, !range !311, !noundef !54
  %i.ds = trunc nuw i8 %i.dr to i1
  store i8 0, ptr %i.y, align 8, !tbaa !781
  br i1 %i.ds, label %bb.o, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit.i.i.i25

bb.o:                                             ; preds = %"_ZZN4mlir3omp8NewCliOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEEENK3$_3clB5cxx11ENS0_6TileOpE.exit.i.i"
  %i.dt = load ptr, ptr %i.z, align 8, !tbaa !197 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
end_hunk_0
