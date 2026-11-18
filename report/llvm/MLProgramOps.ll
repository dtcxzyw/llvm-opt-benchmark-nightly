Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLProgramOps?download=true
inline.NumInlined: 6061
inline.NumDeleted: 1905
begin_hunk_0_@_ZN4mlir10ml_program7TokenOp5printERNS_12OpAsmPrinterE:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir10ml_program7TokenOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program6FuncOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.437, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !102 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.e, align 8
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i.i12 to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i14 to i64
  %i.h = call i8 @_ZN4mlir23function_interface_impl15parseFunctionOpERNS_11OpAsmParserERNS_14OperationStateEbNS_10StringAttrEN4llvm12function_refIFNS_4TypeERNS_7BuilderENS6_8ArrayRefIS8_EESC_NS0_12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i1 noundef zeroext false, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @"_ZN4llvm12function_refIFN4mlir4TypeERNS1_7BuilderENS_8ArrayRefIS2_EES6_NS1_23function_interface_impl12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11callback_fnIZNS1_10ml_program6FuncOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_lS4_S6_S6_S8_SF_", i64 %i.d, i64 %i.f, i64 %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i8 %i.h
}

declare i8 @_ZN4mlir23function_interface_impl15parseFunctionOpERNS_11OpAsmParserERNS_14OperationStateEbNS_10StringAttrEN4llvm12function_refIFNS_4TypeERNS_7BuilderENS6_8ArrayRefIS8_EESC_NS0_12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304), i1 noundef zeroext, ptr, ptr, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir10ml_program6FuncOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_10ml_program6FuncOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.03.0.copyload)
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %i.d, align 8
  store ptr %.sroa.0.0.copyload.i2.i.i, ptr %2, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = load ptr, ptr %0, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i5 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i5, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i6 = load ptr, ptr %i.j, align 8, !tbaa !102 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i7 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i6, i64 16
  %.sroa.0.0.copyload.i2.i.i10 = load ptr, ptr %i.k, align 8
  %i.l = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i7 to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i10 to i64
  call void @_ZN4mlir23function_interface_impl15printFunctionOpERNS_12OpAsmPrinterENS_19FunctionOpInterfaceEbN4llvm9StringRefENS_10StringAttrES6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %.sroa.03.0.copyload, ptr %i.a, i1 noundef zeroext false, ptr %i.f, i64 %i.g, i64 %i.l, i64 %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare void @_ZN4mlir23function_interface_impl15printFunctionOpERNS_12OpAsmPrinterENS_19FunctionOpInterfaceEbN4llvm9StringRefENS_10StringAttrES6_(ptr noundef nonnull align 8 dereferenceable(16), ptr, ptr, i1 noundef zeroext, ptr, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22 ; 2 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation11getParentOpEv.exit8
  %.016 = phi ptr [ %i.v, %_ZN4mlir9Operation11getParentOpEv.exit8 ], [ %i.d, %_ZN4mlir9Operation11getParentOpEv.exit ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.g, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.016, ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !18 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.s = icmp eq ptr %i.r, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.s, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187  ; 2 uses
  %.not.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i7, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit8

_ZN4mlir9Operation11getParentOpEv.exit8:          ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u) #22 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %.lr.ph, !llvm.loop !19

_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %bb.c, %bb.b, %_ZN4mlir9Operation11getParentOpEv.exit8, %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit
  %.sroa.0.2 = phi ptr [ null, %_ZN4mlir9Operation11getParentOpEv.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit8 ], [ %i.o, %bb.b ]
  ret ptr %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program12GlobalLoadOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22 ; 2 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i, %_ZN4mlir9Operation11getParentOpEv.exit8.i
  %.016.i = phi ptr [ %i.v, %_ZN4mlir9Operation11getParentOpEv.exit8.i ], [ %i.d, %_ZN4mlir9Operation11getParentOpEv.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.g, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.016.i, ptr %.sroa.0.0.copyload.i.i.i) #22, !inline_history !314 ; 5 uses
  %.not.i.i.i6.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i6.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.s = icmp eq ptr %i.r, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.s, label %_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.u, null
  br i1 %.not.i7.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit8.i

_ZN4mlir9Operation11getParentOpEv.exit8.i:        ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.loopexit:                                        ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit8.i, %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #22
  %i.y = load ptr, ptr %10, align 8, !tbaa !77
  %.not.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.d

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %.loopexit
  %14 = load ptr, ptr %0, align 8, !tbaa !111
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 44
  %16 = load i32, ptr %15, align 4
  %.not.i.i.i.i456 = icmp ugt i32 %16, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i456)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 3, ptr %9, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.70, ptr %i.aa, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !94 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !94
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre = load ptr, ptr %10, align 8, !tbaa !77
  %i.ak = icmp eq ptr %.pre, null
  %i.al = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not.i.i.i.i4 = icmp ugt i32 %i.an, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  br i1 %i.ak, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ap = lshr i32 %i.an, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i5 = and i32 %i.ap, 1
  %i.aq = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i5 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aq
  %.sroa.0.0.copyload.i.i.i6 = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i6) #22
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !94 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !95
  %.not.i.i.i.i.i8 = icmp ult i32 %i.au, %i.aw
  br i1 %.not.i.i.i.i.i8, label %bb.i, label %bb.h, !prof !96

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = zext i32 %i.au to i64
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !94
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.at, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.bc = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  %i.bd = load ptr, ptr %10, align 8, !tbaa !77
  %.not.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !78, !range !79, !noundef !80
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.be, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bh) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ac

_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not.i.i.i.i10 = icmp ugt i32 %i.bj, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.bk = lshr i32 %i.bj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i11 = and i32 %i.bk, 1
  %i.bl = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i11 to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %.sroa.0.0.copyload.i.i.i12 = load ptr, ptr %i.bn, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i12, ptr %7, align 8
  %i.bo = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bp = load ptr, ptr %0, align 8, !tbaa !111
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.br = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 0) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bu = inttoptr i64 %i.bt to ptr
  %.not = icmp eq ptr %i.bo, %i.bu
  br i1 %.not, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.bv, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #22
  %i.bx = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i13, label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 3, ptr %6, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.71, ptr %i.bz, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 30, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i14, align 8, !tbaa !57
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !94 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !95
  %.not.i.i.i.i.i15 = icmp ult i32 %i.cb, %i.cd
  br i1 %.not.i.i.i.i.i15, label %bb.p, label %bb.o, !prof !96

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ce = zext i32 %i.cb to i64
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ch = load i32, ptr %i.ca, align 8, !tbaa !94
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.ca, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit: ; preds = %bb.m, %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.cj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not.i.i.i.i16 = icmp ugt i32 %i.cj, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.ck = lshr i32 %i.cj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i17 = and i32 %i.ck, 1
  %i.cl = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i17 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %.sroa.0.0.copyload.i.i.i18 = load ptr, ptr %i.cn, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i18, ptr %5, align 8
  %i.co = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cp = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i19 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.co) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !94 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !95
  %.not.i.i.i.i.i21 = icmp ult i32 %i.cs, %i.cu
  br i1 %.not.i.i.i.i.i21, label %bb.s, label %bb.r, !prof !96

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cv = zext i32 %i.cs to i64
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !97
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.cy = load i32, ptr %i.cr, align 8, !tbaa !94
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i.i22, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !92
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.72, ptr %i.da, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i23, align 8, !tbaa !57
  %i.db = load i32, ptr %i.cr, align 8, !tbaa !94 ; 2 uses
  %i.dc = load i32, ptr %i.ct, align 4, !tbaa !95
  %.not.i.i.i.i.i24 = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i.i.i.i.i24, label %bb.v, label %bb.u, !prof !96

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dd = zext i32 %i.db to i64
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !97
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.dg = load i32, ptr %i.cr, align 8, !tbaa !94
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.cr, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i
  %i.di = load ptr, ptr %0, align 8, !tbaa !111
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -16
  %i.dk = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 noundef 0) #22
  %i.dl = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i26 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i26, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit30, label %bb.w

bb.w:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i.i.i.i.i25 = load i64, ptr %i.dm, align 8
  %i.dn = and i64 %.0.copyload.i.i.i.i.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.do) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !94 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !95
  %.not.i.i.i.i.i28 = icmp ult i32 %i.dr, %i.dt
  br i1 %.not.i.i.i.i.i28, label %bb.y, label %bb.x, !prof !96

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i29

bb.y:                                             ; preds = %bb.w
  %i.du = zext i32 %i.dr to i64
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.dx = load i32, ptr %i.dq, align 8, !tbaa !94
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dq, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i29

_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i29: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit30

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit30: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i29
  %i.dz = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  %i.ea = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i31 = icmp eq ptr %i.ea, null
  br i1 %.not.i31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit30
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit30
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ab, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit32

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.eb, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ee) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit32

_ZN4mlir18InFlightDiagnosticD2Ev.exit32:          ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit32, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.dz, %_ZN4mlir18InFlightDiagnosticD2Ev.exit32 ], [ %i.bc, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir10ml_program12GlobalLoadOp11getGlobalOpERNS_21SymbolTableCollectionE.exit ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir10ml_program17GlobalLoadConstOp11getGlobalOpERNS_21SymbolTableCollectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !18 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.t, ptr %i.p, ptr null
  br label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit

_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program17GlobalLoadConstOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i.i) #22, !inline_history !315 ; 6 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.t, label %_ZN4mlir10ml_program17GlobalLoadConstOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #22
  %i.w = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.e

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %bb.d
  %18 = load ptr, ptr %0, align 8, !tbaa !111
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 44
  %20 = load i32, ptr %19, align 4
  %.not.i.i.i.i471 = icmp ugt i32 %20, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i471)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i32 3, ptr %11, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.70, ptr %i.y, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !94  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = zext i32 %i.aa to i64
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !94
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre60 = load ptr, ptr %12, align 8, !tbaa !77
  %i.ai = icmp eq ptr %.pre60, null
  %i.aj = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i.i.i4 = icmp ugt i32 %i.al, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  br i1 %i.ai, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.an = lshr i32 %i.al, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i5 = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i5 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i6 = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %.sroa.0.0.copyload.i.i.i6) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95
  %.not.i.i.i.i.i8 = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i.i.i.i8, label %bb.j, label %bb.i, !prof !96

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = zext i32 %i.as to i64
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ar, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  %i.bb = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !78, !range !79, !noundef !80
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.bc, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ao

_ZN4mlir10ml_program17GlobalLoadConstOp11getGlobalOpERNS_21SymbolTableCollectionE.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i32 %i.bh, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bj = lshr i32 %i.bh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i10 = and i32 %i.bj, 1
  %i.bk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i10 to i64 ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir10ml_program17GlobalLoadConstOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.bn, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #22
  %i.bp = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i.i11 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i11, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.o

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.n
  %21 = load ptr, ptr %0, align 8, !tbaa !111
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 44
  %23 = load i32, ptr %22, align 4
  %.not.i.i.i.i1473 = icmp ugt i32 %23, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i1473)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 3, ptr %9, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.73, ptr %i.br, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i12, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !94 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !95
  %.not.i.i.i.i.i13 = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i.i.i.i.i13, label %bb.q, label %bb.p, !prof !96

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !94
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre = load ptr, ptr %14, align 8, !tbaa !77
  %i.cb = icmp eq ptr %.pre, null
  %i.cc = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %.not.i.i.i.i14 = icmp ugt i32 %i.ce, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  br i1 %i.cb, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cg = lshr i32 %i.ce, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i15 = and i32 %i.cg, 1
  %i.ch = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i15 to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ch
  %.sroa.0.0.copyload.i.i.i16 = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i16) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !94 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !95
  %.not.i.i.i.i.i19 = icmp ult i32 %i.cl, %i.cn
  br i1 %.not.i.i.i.i.i19, label %bb.t, label %bb.s, !prof !96

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20

bb.t:                                             ; preds = %bb.r
  %i.co = zext i32 %i.cl to i64
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !94
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20
  %i.ct = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  %i.cu = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i22 = icmp eq ptr %i.cu, null
  br i1 %.not.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !78, !range !79, !noundef !80
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.w, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.cv, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cy) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

_ZN4mlir18InFlightDiagnosticD2Ev.exit23:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ao

bb.x:                                             ; preds = %_ZN4mlir10ml_program17GlobalLoadConstOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bk
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %.sroa.0.0.copyload.i.i.i26 = load ptr, ptr %i.da, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i26, ptr %7, align 8
  %i.db = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dc = load ptr, ptr %0, align 8, !tbaa !111
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -16
  %i.de = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 noundef 0) #22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.df, align 8
  %i.dg = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.dh = inttoptr i64 %i.dg to ptr
  %.not59 = icmp eq ptr %i.db, %i.dh
  br i1 %.not59, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 1, ptr %i.di, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.dj, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %17) #22
  %i.dk = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i27 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i27, label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 3, ptr %6, align 8, !tbaa !92
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.71, ptr %i.dm, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 30, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i28, align 8, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !94 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !95
  %.not.i.i.i.i.i29 = icmp ult i32 %i.do, %i.dq
  br i1 %.not.i.i.i.i.i29, label %bb.ab, label %bb.aa, !prof !96

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.dr = zext i32 %i.do to i64
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !97
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.du = load i32, ptr %i.dn, align 8, !tbaa !94
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dn, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit: ; preds = %bb.y, %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dw = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i30 = icmp ugt i32 %i.dw, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.dx = lshr i32 %i.dw, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i31 = and i32 %i.dx, 1
  %i.dy = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i31 to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  %.sroa.0.0.copyload.i.i.i32 = load ptr, ptr %i.ea, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i32, ptr %5, align 8
  %i.eb = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ec = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i33 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i33, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.eb) #22
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !94 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !95
  %.not.i.i.i.i.i35 = icmp ult i32 %i.ef, %i.eh
  br i1 %.not.i.i.i.i.i35, label %bb.ae, label %bb.ad, !prof !96

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ei = zext i32 %i.ef to i64
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !97
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.el = load i32, ptr %i.ee, align 8, !tbaa !94
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ee, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i36 = icmp eq ptr %.pr, null
  br i1 %.not.i.i36, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !92
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.72, ptr %i.en, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i37, align 8, !tbaa !57
  %i.eo = load i32, ptr %i.ee, align 8, !tbaa !94 ; 2 uses
  %i.ep = load i32, ptr %i.eg, align 4, !tbaa !95
  %.not.i.i.i.i.i38 = icmp ult i32 %i.eo, %i.ep
  br i1 %.not.i.i.i.i.i38, label %bb.ah, label %bb.ag, !prof !96

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.eq = zext i32 %i.eo to i64
  %i.er = load ptr, ptr %i.ed, align 8, !tbaa !97
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.et = load i32, ptr %i.ee, align 8, !tbaa !94
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.ee, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i
  %i.ev = load ptr, ptr %0, align 8, !tbaa !111
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -16
  %i.ex = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 noundef 0) #22
  %i.ey = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i40 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i40, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit44, label %bb.ai

bb.ai:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.0.copyload.i.i.i.i.i39 = load i64, ptr %i.ez, align 8
  %i.fa = and i64 %.0.copyload.i.i.i.i.i39, -8
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fb) #22
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !94 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !95
  %.not.i.i.i.i.i42 = icmp ult i32 %i.fe, %i.fg
  br i1 %.not.i.i.i.i.i42, label %bb.ak, label %bb.aj, !prof !96

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i43

bb.ak:                                            ; preds = %bb.ai
  %i.fh = zext i32 %i.fe to i64
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !97
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fk = load i32, ptr %i.fd, align 8, !tbaa !94
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fd, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i43

_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i43: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit44

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit44: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i43
  %i.fm = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  %i.fn = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i45 = icmp eq ptr %i.fn, null
  br i1 %.not.i45, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit44
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit44
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !78, !range !79, !noundef !80
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.an, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit46

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.fo, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fr) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit46

_ZN4mlir18InFlightDiagnosticD2Ev.exit46:          ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.x, %_ZN4mlir18InFlightDiagnosticD2Ev.exit46, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.ct, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23 ], [ %i.fm, %_ZN4mlir18InFlightDiagnosticD2Ev.exit46 ], [ %i.ba, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.x ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !18 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.t, ptr %i.p, ptr null
  br label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit

_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program17GlobalLoadGraphOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i.i) #22, !inline_history !316 ; 5 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.t, label %_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #22
  %i.w = load ptr, ptr %10, align 8, !tbaa !77
  %.not.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.e

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %bb.d
  %14 = load ptr, ptr %0, align 8, !tbaa !111
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 44
  %16 = load i32, ptr %15, align 4
  %.not.i.i.i.i450 = icmp ugt i32 %16, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i450)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 3, ptr %9, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.70, ptr %i.y, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !94  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = zext i32 %i.aa to i64
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !94
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre = load ptr, ptr %10, align 8, !tbaa !77
  %i.ai = icmp eq ptr %.pre, null
  %i.aj = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i.i.i4 = icmp ugt i32 %i.al, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  br i1 %i.ai, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.an = lshr i32 %i.al, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i5 = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i5 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i6 = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i6) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95
  %.not.i.i.i.i.i8 = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i.i.i.i8, label %bb.j, label %bb.i, !prof !96

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = zext i32 %i.as to i64
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ar, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  %i.bb = load ptr, ptr %10, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !78, !range !79, !noundef !80
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.bc, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ad

_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i32 %i.bh, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.bi = lshr i32 %i.bh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i10 = and i32 %i.bi, 1
  %i.bj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i10 to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %.sroa.0.0.copyload.i.i.i11 = load ptr, ptr %i.bl, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i11, ptr %7, align 8
  %i.bm = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bn = load ptr, ptr %0, align 8, !tbaa !111
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bp = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 noundef 0) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.bs = inttoptr i64 %i.br to ptr
  %.not = icmp eq ptr %i.bm, %i.bs
  br i1 %.not, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.bt, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bu, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #22
  %i.bv = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 3, ptr %6, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.71, ptr %i.bx, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 30, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i13, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !94 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !95
  %.not.i.i.i.i.i14 = icmp ult i32 %i.bz, %i.cb
  br i1 %.not.i.i.i.i.i14, label %bb.q, label %bb.p, !prof !96

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = zext i32 %i.bz to i64
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.cf = load i32, ptr %i.by, align 8, !tbaa !94
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.by, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit: ; preds = %bb.n, %_ZN4mlir10Diagnostic6appendIRA31_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ch = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i15 = icmp ugt i32 %i.ch, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i15)
  %i.ci = lshr i32 %i.ch, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i16 = and i32 %i.ci, 1
  %i.cj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i16 to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.cl, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i17, ptr %5, align 8
  %i.cm = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cn = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i18 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i18, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cm) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 6 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !94 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !95
  %.not.i.i.i.i.i20 = icmp ult i32 %i.cq, %i.cs
  br i1 %.not.i.i.i.i.i20, label %bb.t, label %bb.s, !prof !96

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.t:                                             ; preds = %bb.r
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !94
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cp, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i21, label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !92
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.72, ptr %i.cy, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i22, align 8, !tbaa !57
  %i.cz = load i32, ptr %i.cp, align 8, !tbaa !94 ; 2 uses
  %i.da = load i32, ptr %i.cr, align 4, !tbaa !95
  %.not.i.i.i.i.i23 = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i.i.i.i.i23, label %bb.w, label %bb.v, !prof !96

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.db = zext i32 %i.cz to i64
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !97
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.de = load i32, ptr %i.cp, align 8, !tbaa !94
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.cp, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA31_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA5_KcEERS0_OT_.exit.i.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !111
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16
  %i.di = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 noundef 0) #22
  %i.dj = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i25 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i25, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit29, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.copyload.i.i.i.i.i24 = load i64, ptr %i.dk, align 8
  %i.dl = and i64 %.0.copyload.i.i.i.i.i24, -8
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dm) #22
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !94 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !95
  %.not.i.i.i.i.i27 = icmp ult i32 %i.dp, %i.dr
  br i1 %.not.i.i.i.i.i27, label %bb.z, label %bb.y, !prof !96

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i28

bb.z:                                             ; preds = %bb.x
  %i.ds = zext i32 %i.dp to i64
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !97
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.dv = load i32, ptr %i.do, align 8, !tbaa !94
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.do, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i28

_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i28: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit29

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit29: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA5_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i28
  %i.dx = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  %i.dy = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i30 = icmp eq ptr %i.dy, null
  br i1 %.not.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit29
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit29
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !78, !range !79, !noundef !80
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.ac, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit31

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.dz, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ec) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit31

_ZN4mlir18InFlightDiagnosticD2Ev.exit31:          ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit31, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.dx, %_ZN4mlir18InFlightDiagnosticD2Ev.exit31 ], [ %i.ba, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir10ml_program17GlobalLoadGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir10ml_program13GlobalStoreOp11getGlobalOpERNS_21SymbolTableCollectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22 ; 2 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation11getParentOpEv.exit8
  %.016 = phi ptr [ %i.v, %_ZN4mlir9Operation11getParentOpEv.exit8 ], [ %i.d, %_ZN4mlir9Operation11getParentOpEv.exit ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.g, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.016, ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !18 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.s = icmp eq ptr %i.r, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.s, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187  ; 2 uses
  %.not.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i7, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %_ZN4mlir9Operation11getParentOpEv.exit8

_ZN4mlir9Operation11getParentOpEv.exit8:          ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u) #22 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %.lr.ph, !llvm.loop !20

_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %bb.c, %bb.b, %_ZN4mlir9Operation11getParentOpEv.exit8, %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit
  %.sroa.0.2 = phi ptr [ null, %_ZN4mlir9Operation11getParentOpEv.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit8 ], [ %i.o, %bb.b ]
  ret ptr %.sroa.0.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program13GlobalStoreOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22 ; 2 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i, %_ZN4mlir9Operation11getParentOpEv.exit8.i
  %.016.i = phi ptr [ %i.v, %_ZN4mlir9Operation11getParentOpEv.exit8.i ], [ %i.d, %_ZN4mlir9Operation11getParentOpEv.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.g, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.016.i, ptr %.sroa.0.0.copyload.i.i.i) #22, !inline_history !317 ; 6 uses
  %.not.i.i.i6.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i6.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.s = icmp eq ptr %i.r, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.s, label %_ZN4mlir10ml_program13GlobalStoreOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.u, null
  br i1 %.not.i7.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit8.i

_ZN4mlir9Operation11getParentOpEv.exit8.i:        ; preds = %bb.c
  %i.v = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !20

.loopexit:                                        ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit8.i, %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #22
  %i.y = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.d

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %.loopexit
  %18 = load ptr, ptr %0, align 8, !tbaa !111
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 44
  %20 = load i32, ptr %19, align 4
  %.not.i.i.i.i482 = icmp ugt i32 %20, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i482)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.d:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i32 3, ptr %11, align 8, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.70, ptr %i.aa, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !94 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !94
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre68 = load ptr, ptr %12, align 8, !tbaa !77
  %i.ak = icmp eq ptr %.pre68, null
  %i.al = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not.i.i.i.i4 = icmp ugt i32 %i.an, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  br i1 %i.ak, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ap = lshr i32 %i.an, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i5 = and i32 %i.ap, 1
  %i.aq = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i5 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.aq
  %.sroa.0.0.copyload.i.i.i6 = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %.sroa.0.0.copyload.i.i.i6) #22
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !94 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !95
  %.not.i.i.i.i.i8 = icmp ult i32 %i.au, %i.aw
  br i1 %.not.i.i.i.i.i8, label %bb.i, label %bb.h, !prof !96

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ax = zext i32 %i.au to i64
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !94
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.at, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.bc = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  %i.bd = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !78, !range !79, !noundef !80
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.be, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bh) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.an

_ZN4mlir10ml_program13GlobalStoreOp11getGlobalOpERNS_21SymbolTableCollectionE.exit: ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not.i.i.i.i10 = icmp ugt i32 %i.bj, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.bl = lshr i32 %i.bj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i11 = and i32 %i.bl, 1
  %i.bm = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i11 to i64 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %bb.m, label %bb.w

bb.m:                                             ; preds = %_ZN4mlir10ml_program13GlobalStoreOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.bp, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bq, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #22
  %i.br = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i.i12 = icmp eq ptr %i.br, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread, label %bb.n

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread: ; preds = %bb.m
  %21 = load ptr, ptr %0, align 8, !tbaa !111
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 44
  %23 = load i32, ptr %22, align 4
  %.not.i.i.i.i1584 = icmp ugt i32 %23, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i1584)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 3, ptr %9, align 8, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.74, ptr %i.bt, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i13, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !94 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !95
  %.not.i.i.i.i.i14 = icmp ult i32 %i.bv, %i.bx
  br i1 %.not.i.i.i.i.i14, label %bb.p, label %bb.o, !prof !96

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.p:                                             ; preds = %bb.n
  %i.by = zext i32 %i.bv to i64
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !94
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bu, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre67 = load ptr, ptr %14, align 8, !tbaa !77
  %i.cd = icmp eq ptr %.pre67, null
  %i.ce = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %.not.i.i.i.i15 = icmp ugt i32 %i.cg, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i15)
  br i1 %i.cd, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22, label %bb.q

bb.q:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.ci = lshr i32 %i.cg, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i16 = and i32 %i.ci, 1
  %i.cj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i16 to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cj
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.ck, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i17) #22
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !94 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !95
  %.not.i.i.i.i.i20 = icmp ult i32 %i.cn, %i.cp
  br i1 %.not.i.i.i.i.i20, label %bb.s, label %bb.r, !prof !96

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i21

bb.s:                                             ; preds = %bb.q
  %i.cq = zext i32 %i.cn to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !97
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !94
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i21

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i21: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i21
  %i.cv = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  %i.cw = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i23 = icmp eq ptr %i.cw, null
  br i1 %.not.i23, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit22
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !78, !range !79, !noundef !80
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.v, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit24

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.cx, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.da) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit24

_ZN4mlir18InFlightDiagnosticD2Ev.exit24:          ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.an

bb.w:                                             ; preds = %_ZN4mlir10ml_program13GlobalStoreOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bm
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  %.sroa.0.0.copyload.i.i.i27 = load ptr, ptr %i.dc, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i27, ptr %7, align 8
  %i.dd = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.de = load ptr, ptr %0, align 8, !tbaa !111
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.0.0.copyload.i.i.i.i29 = load ptr, ptr %i.dh, align 8, !tbaa !150
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i29, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.dk = inttoptr i64 %i.dj to ptr
  %.not64 = icmp eq ptr %i.dd, %i.dk
  br i1 %.not64, label %bb.an, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 1, ptr %i.dl, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.dm, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %17) #22
  %i.dn = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i30 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i30, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 3, ptr %6, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.75, ptr %i.dp, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i31, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !94 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !95
  %.not.i.i.i.i.i32 = icmp ult i32 %i.dr, %i.dt
  br i1 %.not.i.i.i.i.i32, label %bb.aa, label %bb.z, !prof !96

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.du = zext i32 %i.dr to i64
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dx = load i32, ptr %i.dq, align 8, !tbaa !94
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dq, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit: ; preds = %bb.x, %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dz = load i32, ptr %i.bi, align 4            ; 2 uses
  %.not.i.i.i.i33 = icmp ugt i32 %i.dz, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i33)
  %i.ea = lshr i32 %i.dz, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i34 = and i32 %i.ea, 1
  %i.eb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i34 to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  %.sroa.0.0.copyload.i.i.i35 = load ptr, ptr %i.ed, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i35, ptr %5, align 8
  %i.ee = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ef = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i36 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i36, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ee) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !94 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !95
  %.not.i.i.i.i.i38 = icmp ult i32 %i.ei, %i.ek
  br i1 %.not.i.i.i.i.i38, label %bb.ad, label %bb.ac, !prof !96

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.el = zext i32 %i.ei to i64
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !97
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.eo = load i32, ptr %i.eh, align 8, !tbaa !94
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.eh, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i39 = icmp eq ptr %.pr, null
  br i1 %.not.i.i39, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.76, ptr %i.eq, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 6, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i40, align 8, !tbaa !57
  %i.er = load i32, ptr %i.eh, align 8, !tbaa !94 ; 2 uses
  %i.es = load i32, ptr %i.ej, align 4, !tbaa !95
  %.not.i.i.i.i.i41 = icmp ult i32 %i.er, %i.es
  br i1 %.not.i.i.i.i.i41, label %bb.ag, label %bb.af, !prof !96

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.et = zext i32 %i.er to i64
  %i.eu = load ptr, ptr %i.eg, align 8, !tbaa !97
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !94
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.eh, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  %24 = load ptr, ptr %0, align 8, !tbaa !111
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 44
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8388608
  %.not.i.i.i.i.i4286 = icmp ne i32 %27, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i4286)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49

_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre = load ptr, ptr %16, align 8, !tbaa !77
  %i.ey = icmp eq ptr %.pre, null
  br i1 %i.ey, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49, label %bb.ah

bb.ah:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit
  %i.ez = load ptr, ptr %0, align 8, !tbaa !111
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !63
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %.sroa.0.0.copyload.i.i.i.i43 = load ptr, ptr %i.fc, align 8, !tbaa !150
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i43, i64 8
  %.0.copyload.i.i.i.i.i44 = load i64, ptr %i.fd, align 8
  %i.fe = and i64 %.0.copyload.i.i.i.i.i44, -8
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ff) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !94 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !95
  %.not.i.i.i.i.i47 = icmp ult i32 %i.fi, %i.fk
  br i1 %.not.i.i.i.i.i47, label %bb.aj, label %bb.ai, !prof !96

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i48

bb.aj:                                            ; preds = %bb.ah
  %i.fl = zext i32 %i.fi to i64
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !97
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fo = load i32, ptr %i.fh, align 8, !tbaa !94
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fh, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i48

_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i48: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i48
  %i.fq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  %i.fr = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i50 = icmp eq ptr %i.fr, null
  br i1 %.not.i50, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit49
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !78, !range !79, !noundef !80
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.am, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit51

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.fs, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fv) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit51

_ZN4mlir18InFlightDiagnosticD2Ev.exit51:          ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.w, %_ZN4mlir18InFlightDiagnosticD2Ev.exit51, %_ZN4mlir18InFlightDiagnosticD2Ev.exit24, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.fq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit51 ], [ %i.bc, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.cv, %_ZN4mlir18InFlightDiagnosticD2Ev.exit24 ], [ 1, %bb.w ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir10ml_program18GlobalStoreGraphOp11getGlobalOpERNS_21SymbolTableCollectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !18 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  %spec.select.i.i.i.i = select i1 %i.t, ptr %i.p, ptr null
  br label %_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit

_ZN4mlir21SymbolTableCollection23lookupNearestSymbolFromINS_10ml_program8GlobalOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit ]
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program18GlobalStoreGraphOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::TypeAttr", align 8    ; 4 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #22
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.m = load ptr, ptr %1, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr %.sroa.0.0.copyload.i.i.i) #22, !inline_history !318 ; 6 uses
  %.not.i.i.i3.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.s, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8GlobalOpEvE2idE
  br i1 %i.t, label %_ZN4mlir10ml_program18GlobalStoreGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir9Operation11getParentOpEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 1, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #22
  %i.w = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.e

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %bb.d
  %18 = load ptr, ptr %0, align 8, !tbaa !111
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 44
  %20 = load i32, ptr %19, align 4
  %.not.i.i.i.i476 = icmp ugt i32 %20, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i476)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i32 3, ptr %11, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.70, ptr %i.y, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !94  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = zext i32 %i.aa to i64
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !94
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.z, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre65 = load ptr, ptr %12, align 8, !tbaa !77
  %i.ai = icmp eq ptr %.pre65, null
  %i.aj = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i.i.i4 = icmp ugt i32 %i.al, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  br i1 %i.ai, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.an = lshr i32 %i.al, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i5 = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i5 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i6 = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %.sroa.0.0.copyload.i.i.i6) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !95
  %.not.i.i.i.i.i8 = icmp ult i32 %i.as, %i.au
  br i1 %.not.i.i.i.i.i8, label %bb.j, label %bb.i, !prof !96

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = zext i32 %i.as to i64
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !94
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ar, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.ba = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  %i.bb = load ptr, ptr %12, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !78, !range !79, !noundef !80
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.bc, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bf) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ao

_ZN4mlir10ml_program18GlobalStoreGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i32 %i.bh, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bj = lshr i32 %i.bh, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i10 = and i32 %i.bj, 1
  %i.bk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i10 to i64 ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.n, label %bb.x

bb.n:                                             ; preds = %_ZN4mlir10ml_program18GlobalStoreGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.bn, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #22
  %i.bp = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i.i11 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i11, label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread, label %bb.o

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread: ; preds = %bb.n
  %21 = load ptr, ptr %0, align 8, !tbaa !111
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 44
  %23 = load i32, ptr %22, align 4
  %.not.i.i.i.i1478 = icmp ugt i32 %23, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i1478)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i32 3, ptr %9, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.74, ptr %i.br, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i12, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !94 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !95
  %.not.i.i.i.i.i13 = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i.i.i.i.i13, label %bb.q, label %bb.p, !prof !96

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !94
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.pre64 = load ptr, ptr %14, align 8, !tbaa !77
  %i.cb = icmp eq ptr %.pre64, null
  %i.cc = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %.not.i.i.i.i14 = icmp ugt i32 %i.ce, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i14)
  br i1 %i.cb, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cg = lshr i32 %i.ce, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i15 = and i32 %i.cg, 1
  %i.ch = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i15 to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ch
  %.sroa.0.0.copyload.i.i.i16 = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i16) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !94 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !95
  %.not.i.i.i.i.i19 = icmp ult i32 %i.cl, %i.cn
  br i1 %.not.i.i.i.i.i19, label %bb.t, label %bb.s, !prof !96

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20

bb.t:                                             ; preds = %bb.r
  %i.co = zext i32 %i.cl to i64
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !94
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i20
  %i.ct = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  %i.cu = load ptr, ptr %14, align 8, !tbaa !77
  %.not.i22 = icmp eq ptr %i.cu, null
  br i1 %.not.i22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit21
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !78, !range !79, !noundef !80
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.w, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.cv, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cy) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit23

_ZN4mlir18InFlightDiagnosticD2Ev.exit23:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ao

bb.x:                                             ; preds = %_ZN4mlir10ml_program18GlobalStoreGraphOp11getGlobalOpERNS_21SymbolTableCollectionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bk
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %.sroa.0.0.copyload.i.i.i26 = load ptr, ptr %i.da, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i26, ptr %7, align 8
  %i.db = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dc = load ptr, ptr %0, align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.df, align 8, !tbaa !150
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i28, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.dg, align 8
  %i.dh = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.di = inttoptr i64 %i.dh to ptr
  %.not63 = icmp eq ptr %i.db, %i.di
  br i1 %.not63, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 1, ptr %i.dj, align 8, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.dk, align 1, !tbaa !67
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %17) #22
  %i.dl = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i29 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i29, label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 3, ptr %6, align 8, !tbaa !92
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.75, ptr %i.dn, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 31, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i30, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !94 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !95
  %.not.i.i.i.i.i31 = icmp ult i32 %i.dp, %i.dr
  br i1 %.not.i.i.i.i.i31, label %bb.ab, label %bb.aa, !prof !96

bb.aa:                                            ; preds = %bb.z
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ds = zext i32 %i.dp to i64
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !97
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dv = load i32, ptr %i.do, align 8, !tbaa !94
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.do, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit: ; preds = %bb.y, %_ZN4mlir10Diagnostic6appendIRA32_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dx = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not.i.i.i.i32 = icmp ugt i32 %i.dx, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.dy = lshr i32 %i.dx, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i33 = and i32 %i.dy, 1
  %i.dz = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i33 to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %.sroa.0.0.copyload.i.i.i34 = load ptr, ptr %i.eb, align 8, !tbaa !52
  store ptr %.sroa.0.0.copyload.i.i.i34, ptr %5, align 8
  %i.ec = call ptr @_ZNK4mlir8TypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ed = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i35 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i35, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ec) #22
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 6 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !94 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !95
  %.not.i.i.i.i.i37 = icmp ult i32 %i.eg, %i.ei
  br i1 %.not.i.i.i.i.i37, label %bb.ae, label %bb.ad, !prof !96

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ej = zext i32 %i.eg to i64
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !97
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.em = load i32, ptr %i.ef, align 8, !tbaa !94
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ef, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i.i38, label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !92
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.76, ptr %i.eo, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i.i39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 6, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i39, align 8, !tbaa !57
  %i.ep = load i32, ptr %i.ef, align 8, !tbaa !94 ; 2 uses
  %i.eq = load i32, ptr %i.eh, align 4, !tbaa !95
  %.not.i.i.i.i.i40 = icmp ult i32 %i.ep, %i.eq
  br i1 %.not.i.i.i.i.i40, label %bb.ah, label %bb.ag, !prof !96

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = zext i32 %i.ep to i64
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !97
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.eu = load i32, ptr %i.ef, align 8, !tbaa !94
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.ef, align 8, !tbaa !94
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA32_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit
  %24 = load ptr, ptr %0, align 8, !tbaa !111
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 44
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8388608
  %.not.i.i.i.i4180 = icmp ne i32 %27, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4180)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48

_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.pre = load ptr, ptr %16, align 8, !tbaa !77
  %i.ew = icmp eq ptr %.pre, null
  br i1 %i.ew, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48, label %bb.ai

bb.ai:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit
  %i.ex = load ptr, ptr %0, align 8, !tbaa !111
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %i.fa, align 8, !tbaa !150
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i42, i64 8
  %.0.copyload.i.i.i.i.i43 = load i64, ptr %i.fb, align 8
  %i.fc = and i64 %.0.copyload.i.i.i.i.i43, -8
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fd) #22
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !94 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !95
  %.not.i.i.i.i.i46 = icmp ult i32 %i.fg, %i.fi
  br i1 %.not.i.i.i.i.i46, label %bb.ak, label %bb.aj, !prof !96

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i47

bb.ak:                                            ; preds = %bb.ai
  %i.fj = zext i32 %i.fg to i64
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !97
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.fm = load i32, ptr %i.ff, align 8, !tbaa !94
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ff, align 8, !tbaa !94
  br label %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i47

_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i47: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48

_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA7_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_4TypeEEERS0_OT_.exit.i.i47
  %i.fo = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  %i.fp = load ptr, ptr %16, align 8, !tbaa !77
  %.not.i49 = icmp eq ptr %i.fp, null
  br i1 %.not.i49, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit48
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !78, !range !79, !noundef !80
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.an, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit50

bb.an:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.fq, align 8, !tbaa !78
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ft) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit50

_ZN4mlir18InFlightDiagnosticD2Ev.exit50:          ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.x, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.fo, %_ZN4mlir18InFlightDiagnosticD2Ev.exit50 ], [ %i.ba, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.ct, %_ZN4mlir18InFlightDiagnosticD2Ev.exit23 ], [ 1, %bb.x ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir10ml_program10SubgraphOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.443, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !102 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %2 to i64
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.e, align 8
  %i.f = ptrtoint ptr %.sroa.0.0.copyload.i.i12 to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i.i14 to i64
  %i.h = call i8 @_ZN4mlir23function_interface_impl15parseFunctionOpERNS_11OpAsmParserERNS_14OperationStateEbNS_10StringAttrEN4llvm12function_refIFNS_4TypeERNS_7BuilderENS6_8ArrayRefIS8_EESC_NS0_12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i1 noundef zeroext false, ptr %.sroa.0.0.copyload.i.i, ptr nonnull @"_ZN4llvm12function_refIFN4mlir4TypeERNS1_7BuilderENS_8ArrayRefIS2_EES6_NS1_23function_interface_impl12VariadicFlagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11callback_fnIZNS1_10ml_program10SubgraphOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_lS4_S6_S6_S8_SF_", i64 %i.d, i64 %i.f, i64 %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i8 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir10ml_program10SubgraphOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
_ZN4mlir19FunctionOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_10ml_program10SubgraphOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.03.0.copyload)
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %i.d, align 8
  store ptr %.sroa.0.0.copyload.i2.i.i, ptr %2, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = load ptr, ptr %0, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i5 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i5, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i6 = load ptr, ptr %i.j, align 8, !tbaa !102 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i7 = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i6, i64 16
  %.sroa.0.0.copyload.i2.i.i10 = load ptr, ptr %i.k, align 8
  %i.l = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i7 to i64
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i10 to i64
  call void @_ZN4mlir23function_interface_impl15printFunctionOpERNS_12OpAsmPrinterENS_19FunctionOpInterfaceEbN4llvm9StringRefENS_10StringAttrES6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %.sroa.03.0.copyload, ptr %i.a, i1 noundef zeroext false, ptr %i.f, i64 %i.g, i64 %i.l, i64 %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir11SideEffects8Resource13isAddressableEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #22
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !322  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !323  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !325 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #22, !inline_history !319
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #25, !inline_history !319
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !325
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !320

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !322
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !190
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !326  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !327  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #25
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !321

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !326
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
end_hunk_0
