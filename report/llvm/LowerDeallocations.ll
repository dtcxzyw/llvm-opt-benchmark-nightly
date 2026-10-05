Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerDeallocations?download=true
inline.NumInlined: 2380
inline.NumDeleted: 1525
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir4PassD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !261
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #18
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #18
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !265
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !123, !range !124, !noundef !125
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !123
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !124
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !267
  tail call void @free(ptr noundef %i.ao) #18
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122LowerDeallocationsPassD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir13bufferization4impl26LowerDeallocationsPassBaseIN12_GLOBAL__N_122LowerDeallocationsPassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 22 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir13bufferization4impl26LowerDeallocationsPassBaseIN12_GLOBAL__N_122LowerDeallocationsPassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 8 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::function", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5arith12ArithDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !127
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_5arith12ArithDialectEvE2idE, ptr nonnull @.str.8, i64 5, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #18, !inline_history !268 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6memref13MemRefDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.f, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_6memref13MemRefDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.e, align 8, !tbaa !127
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6memref13MemRefDialectEvE2idE, ptr nonnull @.str.9, i64 6, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !127  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i.i4, label %_ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #18, !inline_history !269 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvv.exit: ; preds = %_ZN4mlir15DialectRegistry6insertINS_5arith12ArithDialectEEEvv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.j, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3scf10SCFDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.i, align 8, !tbaa !127
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3scf10SCFDialectEvE2idE, ptr nonnull @.str.10, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i5, label %_ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvv.exit
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #18, !inline_history !270 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvv.exit: ; preds = %_ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvv.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.n, align 8, !tbaa !273
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.m, align 8, !tbaa !127
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4func11FuncDialectEvE2idE, ptr nonnull @.str.11, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i6, label %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvv.exit
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #18, !inline_history !271 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit: ; preds = %_ZN4mlir15DialectRegistry6insertINS_3scf10SCFDialectEEEvv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir13bufferization4impl26LowerDeallocationsPassBaseIN12_GLOBAL__N_122LowerDeallocationsPassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.12, i64 33 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir13bufferization4impl26LowerDeallocationsPassBaseIN12_GLOBAL__N_122LowerDeallocationsPassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.13, i64 71 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::OperationName", align 8 ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.506", align 8 ; 9 uses
  %3 = alloca %class.anon.469, align 8            ; 4 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::DenseMap.238", align 8 ; 7 uses
  %7 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %8 = alloca %class.anon.414, align 8            ; 6 uses
  %9 = alloca %"class.mlir::RewritePatternSet", align 8 ; 17 uses
  %10 = alloca %"class.mlir::ConversionTarget", align 8 ; 16 uses
  %11 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %12 = alloca %"struct.mlir::ConversionConfig", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.g, label %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.c)
  %.not = icmp eq ptr %i.h, null
  %.0.copyload.i.i.i.i4.pre = load i64, ptr %i.a, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i4.pre, -8    ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not, label %bb.b, label %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread

bb.b:                                             ; preds = %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !131
  store ptr @.str.14, ptr %5, align 8, !tbaa !132
  store i8 3, ptr %i.l, align 8, !tbaa !133
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(34) %5) #18
  %i.n = load ptr, ptr %4, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !142, !range !124, !noundef !125
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !142
  br i1 %i.q, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #18
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.0.copyload.i.i.i.i3 = load i64, ptr %i.a, align 8
  %i.s = or i64 %.0.copyload.i.i.i.i3, 4
  store i64 %i.s, ptr %i.a, align 8
  br label %bb.m

_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit, %bb.a
  %.pre-phi22 = phi ptr [ %i.c, %bb.a ], [ %i.j, %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit ] ; 5 uses
  %.pre-phi20 = phi i64 [ %i.b, %bb.a ], [ %i.i, %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = icmp ne ptr %i.v, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %.not1314 = icmp eq i64 %.pre-phi20, 0
  %.not13 = or i1 %.not1314, %i.w
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.x = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 44
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = and i32 %i.y, 8388607
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = lshr i32 %i.y, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ab, 1
  %i.ac = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.pre-phi22, i64 %i.ac
  %i.ae = lshr i32 %i.y, 21
  %i.af = and i32 %i.ae, 2040
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre-phi22, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !42
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43, !noalias !278
  %i.ar = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ao) #18, !noalias !278
  %i.as = tail call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ar) #18, !noalias !278
  store ptr %i.as, ptr %7, align 8, !tbaa !279, !alias.scope !278
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !143, !alias.scope !278
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !53, !alias.scope !278
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.aq, ptr %i.av, align 8, !alias.scope !278
  %.0.copyload.i.i.i.i5 = load i64, ptr %i.a, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i5, -8
  %i.ax = inttoptr i64 %i.aw to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %6, ptr %8, align 8, !tbaa !115
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.ay, align 8, !tbaa !280
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %0, ptr %i.az, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %8, ptr %3, align 8, !tbaa !148
  %i.ba = ptrtoint ptr %3 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvEUlNS1_13bufferization9DeallocOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, i64 %i.ba, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.0.copyload.i.i.i.i.i.pre = load i64, ptr %i.a, align 8
  %.pre = and i64 %.0.copyload.i.i.i.i.i.pre, -8
  %.pre17 = inttoptr i64 %.pre to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread
  %.pre-phi18 = phi ptr [ %.pre17, %bb.f ], [ %.pre-phi22, %_ZN4llvm3isaIJN4mlir8ModuleOpENS1_19FunctionOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre-phi18, i64 24
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #18
  store ptr %i.bc, ptr %9, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 0, ptr %i.bg, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 6, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.bj, align 8, !tbaa !281
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bk, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.bl, align 8, !tbaa !281
  call void @_ZN4mlir13bufferization43populateBufferizationDeallocLoweringPatternERNS_17RewritePatternSetERKN4llvm8DenseMapIPNS_9OperationENS_4func6FuncOpENS3_12DenseMapInfoIS6_vEENS3_6detail12DenseMapPairIS6_S8_EEEE(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %.0.copyload.i.i.i.i.i6 = load i64, ptr %i.a, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i6, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir16ConversionTargetE, i64 16), ptr %10, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i8 0, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false)
  store i32 16, ptr %i.bu, align 8, !tbaa !281
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.bw, align 8, !tbaa !281
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i8 0, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 2 uses
  store ptr %i.bp, ptr %i.by, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bz, ptr %2, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.cb, align 4, !tbaa !16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.bz, i64 noundef 4, i64 noundef 16) #18
  %.pre8.pre.i.i.i.i = load i32, ptr %i.ca, align 8, !tbaa !24 ; 2 uses
  %i.cc = zext i32 %.pre8.pre.i.i.i.i to i64
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !15 ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cd, ptr noundef nonnull align 8 dereferenceable(64) @constinit, i64 64, i1 false)
  %i.ce = add i32 %.pre8.pre.i.i.i.i, 4           ; 2 uses
  store i32 %i.ce, ptr %i.ca, align 8, !tbaa !24
  %i.cf = zext i32 %i.ce to i64
  call void @_ZN4mlir16ConversionTarget16setDialectActionEN4llvm8ArrayRefINS1_9StringRefEEENS0_18LegalizationActionE(ptr noundef nonnull align 8 dereferenceable(160) %10, ptr %.pre.i.i, i64 %i.cf, i32 noundef 0) #18
  %i.cg = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bz
  br i1 %i.ch, label %_ZN4mlir16ConversionTarget15addLegalDialectIJNS_6memref13MemRefDialectENS_5arith12ArithDialectENS_3scf10SCFDialectENS_4func11FuncDialectEEEEvv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.cg) #18
  br label %_ZN4mlir16ConversionTarget15addLegalDialectIJNS_6memref13MemRefDialectENS_5arith12ArithDialectENS_3scf10SCFDialectENS_4func11FuncDialectEEEEvv.exit

_ZN4mlir16ConversionTarget15addLegalDialectIJNS_6memref13MemRefDialectENS_5arith12ArithDialectENS_3scf10SCFDialectENS_4func11FuncDialectEEEEvv.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !291, !nonnull !125, !align !154
  call void @_ZN4mlir13OperationNameC1EN4llvm9StringRefEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull @.str.17, i64 21, ptr noundef nonnull %i.ci) #18
  %i.cj = load ptr, ptr %1, align 8
  call void @_ZN4mlir16ConversionTarget11setOpActionENS_13OperationNameENS0_18LegalizationActionE(ptr noundef nonnull align 8 dereferenceable(160) %10, ptr %i.cj, i32 noundef 2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.0.copyload.i.i.i.i7 = load i64, ptr %i.a, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i7, -8
  %i.cl = inttoptr i64 %i.ck to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(176) %9, ptr null, i64 0, ptr null, i64 0) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 56, i1 false)
  store i8 1, ptr %i.cm, align 8, !tbaa !297
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 41
  store i8 1, ptr %i.cn, align 1, !tbaa !298
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.co, align 4, !tbaa !299
  %i.cp = call i8 @_ZN4mlir22applyPartialConversionEPNS_9OperationERKNS_16ConversionTargetERKNS_23FrozenRewritePatternSetENS_16ConversionConfigE(ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(160) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull byval(%"struct.mlir::ConversionConfig") align 8 %12) #18
  %i.cq = trunc nuw i8 %i.cp to i1
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.cq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir16ConversionTarget15addLegalDialectIJNS_6memref13MemRefDialectENS_5arith12ArithDialectENS_3scf10SCFDialectENS_4func11FuncDialectEEEEvv.exit
  %.0.copyload.i.i.i.i8 = load i64, ptr %i.a, align 8
  %i.cr = or i64 %.0.copyload.i.i.i.i8, 4
  store i64 %i.cr, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4mlir16ConversionTarget15addLegalDialectIJNS_6memref13MemRefDialectENS_5arith12ArithDialectENS_3scf10SCFDialectENS_4func11FuncDialectEEEEvv.exit
  call void @_ZN4mlir16ConversionTargetD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.cs) #18
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !120 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !117 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ct, %bb.j ] ; 2 uses
  %i.cw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(96) %i.cw) #18, !inline_history !276
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !277

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bd, align 8, !tbaa !120
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %bb.j
  %i.db = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ct, %bb.j ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i.i, label %_ZN4mlir17RewritePatternSetD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN4mlir10DiagnosticD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #18
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !347  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !348  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !350 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #18, !inline_history !342
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #20, !inline_history !342
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !350
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !343

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !347
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !351
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !354  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !355  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !116 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !344

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !356
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #20
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #18
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #18, !inline_history !357
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #18 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !43 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !43 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #18
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #18, !inline_history !357
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvEUlNS1_13bufferization9DeallocOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::bufferization::DeallocOp", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.mlir::SymbolTable", align 8 ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = icmp ne ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization9DeallocOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.f
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvEUlNS_13bufferization9DeallocOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i, %bb.b
  %.0.i.i.i = phi ptr [ %1, %bb.b ], [ %i.k, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i

_ZN4mlir9Operation11getParentOpEv.exit.i.i.i:     ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.j) #18 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i
  %i.l = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i, !prof !59

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 33) #18
  store ptr %i.o, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !179  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i) #18, !inline_history !358
  br i1 %i.u, label %_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i, label %bb.c, !llvm.loop !1

_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i, %bb.c
  %i.v = phi ptr [ %i.k, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit.i.i.i ], [ null, %_ZN4mlir9Operation11getParentOpEv.exit.i.i.i ], [ null, %bb.c ] ; 4 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !180
  %i.w = call i64 @_ZN4mlir13bufferization9DeallocOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #18 ; 3 uses
  %i.x = and i64 %i.w, 4294967295
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.w, 32
  %i.y = add i64 %.sroa.5.0.extract.shift.i.i.i.i, %i.w
  %i.z = and i64 %i.y, 4294967295
  %i.aa = sub nsw i64 %i.z, %i.x
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %_ZZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvENKUlN4mlir13bufferization9DeallocOpEE_clES3_.exit.i

bb.g:                                             ; preds = %_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i
  %i.ac = load ptr, ptr %.val, align 8, !tbaa !363, !nonnull !125, !align !154 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !158, !noalias !364
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !181, !noalias !364 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !157, !noalias !364 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.v to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.aj, %i.ao                    ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !177
  %i.au = and i32 %i.ap, 31
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !182

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.i
  %i.ax = phi i64 [ %i.bd, %bb.i ], [ %i.aq, %bb.h ]
  %.017.i.i.i.i = phi i32 [ %i.bc, %bb.i ], [ %i.ap, %bb.h ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !180
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvENKUlN4mlir13bufferization9DeallocOpEE_clES3_.exit.i, label %bb.i, !prof !183

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bb = add nuw i32 %.017.i.i.i.i, 1
  %i.bc = and i32 %i.bb, %i.aj                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !177
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !184

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN4mlir11SymbolTableC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %i.v) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !365, !nonnull !125, !align !154
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bm, align 8
  %i.bn = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bp, align 8
  %i.bq = call ptr @_ZN4mlir13bufferization32buildDeallocationLibraryFunctionERNS_9OpBuilderENS_8LocationERNS_11SymbolTableE(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.br = load ptr, ptr %.val, align 8, !tbaa !363, !nonnull !125, !align !154
  %i.bs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS2_4func6FuncOpENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store ptr %i.bq, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !368 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4mlir11SymbolTableD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.loopexit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !369
  %i.bz = zext i32 %i.bv to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #18
  br label %_ZN4mlir11SymbolTableD2Ev.exit.i.i

_ZN4mlir11SymbolTableD2Ev.exit.i.i:               ; preds = %bb.j, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvENKUlN4mlir13bufferization9DeallocOpEE_clES3_.exit.i

_ZZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvENKUlN4mlir13bufferization9DeallocOpEE_clES3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4mlir11SymbolTableD2Ev.exit.i.i, %_ZN4mlir9Operation18getParentWithTraitINS_7OpTrait11SymbolTableEEEPS0_v.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvEUlNS_13bufferization9DeallocOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvEUlNS_13bufferization9DeallocOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_122LowerDeallocationsPass14runOnOperationEvENKUlN4mlir13bufferization9DeallocOpEE_clES3_.exit.i
  ret void
}

declare void @_ZN4mlir11SymbolTableC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare i64 @_ZN4mlir13bufferization9DeallocOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS2_4func6FuncOpENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !158, !noalias !374 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181, !noalias !374 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !157, !noalias !374 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !177
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !182

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !180
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS2_4func6FuncOpENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !183

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
end_hunk_1
