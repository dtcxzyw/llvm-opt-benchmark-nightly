Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FakeQuantSupport?download=true
inline.NumInlined: 240
inline.NumDeleted: 150
begin_hunk_0
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector", %"class.std::vector", %"class.std::vector.1", %"class.llvm::SmallVector.6" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [96 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<char[]>, std::allocator<std::unique_ptr<char[]>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.1" = type { %"struct.std::_Vector_base.2" }
%"struct.std::_Vector_base.2" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.6" = type { %"class.llvm::SmallVectorImpl" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.35" = type { ptr, i64 }
%"class.llvm::SmallVector.10" = type { %"class.llvm::SmallVectorImpl.11", %"struct.llvm::SmallVectorStorage.14" }
%"class.llvm::SmallVectorImpl.11" = type { %"class.llvm::SmallVectorTemplateBase.12" }
%"class.llvm::SmallVectorTemplateBase.12" = type { %"class.llvm::SmallVectorTemplateCommon.13" }
%"class.llvm::SmallVectorTemplateCommon.13" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.14" = type { [32 x i8] }
%"class.llvm::SmallVector.15" = type { %"class.llvm::SmallVectorImpl.16", %"struct.llvm::SmallVectorStorage.19" }
%"class.llvm::SmallVectorImpl.16" = type { %"class.llvm::SmallVectorTemplateBase.17" }
%"class.llvm::SmallVectorTemplateBase.17" = type { %"class.llvm::SmallVectorTemplateCommon.18" }
%"class.llvm::SmallVectorTemplateCommon.18" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.19" = type { [32 x i8] }

$_ZN4mlir10DiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnINS_15unique_functionIS3_EEEES2_l = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIdLb1EE15growAndPushBackEd = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [39 x i8] c"unsupported FakeQuant number of bits: \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mismatched per-axis min and max size: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5quant20fakeQuantAttrsToTypeENS_8LocationEjddbNS_4TypeEb(ptr %0, i32 noundef %1, double noundef %2, double noundef %3, i1 noundef zeroext %4, ptr %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.llvm::unique_function", align 8 ; 6 uses
  %8 = alloca %"class.llvm::unique_function", align 8 ; 6 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %10 = alloca %"class.mlir::Location", align 8   ; 3 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  store ptr %0, ptr %10, align 8
  store ptr %5, ptr %11, align 8
  %i.a = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #8 ; 3 uses
  %i.b = zext i1 %6 to i32                        ; 2 uses
  %i.c = icmp ult i32 %1, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.a, i32 noundef 8, i32 noundef 0) #8
  %..i = select i1 %6, i64 -128, i64 0
  %.31.i = select i1 %6, i64 127, i64 255
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %1, 17
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.a, i32 noundef 16, i32 noundef 0) #8
  %.32.i = select i1 %6, i64 -32768, i64 0
  %.33.i = select i1 %6, i64 32767, i64 65535
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %1, 33
  br i1 %i.g, label %bb.f, label %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.h = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.a, i32 noundef 32, i32 noundef 0) #8
  %.34.i = select i1 %6, i64 -2147483648, i64 0
  %.35.i = select i1 %6, i64 2147483647, i64 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.f ] ; 2 uses
  %.sink30.i = phi i64 [ %..i, %bb.b ], [ %.32.i, %bb.d ], [ %.34.i, %bb.f ]
  %.sink.i = phi i64 [ %.31.i, %bb.b ], [ %.33.i, %bb.d ], [ %.35.i, %bb.f ] ; 5 uses
  %i.i = zext i1 %4 to i64
  %spec.select = or disjoint i64 %.sink30.i, %i.i ; 6 uses
  %i.j = fsub double %3, %2                       ; 2 uses
  %i.k = call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, f0x3CB0000000000000
  br i1 %i.l, label %bb.m, label %bb.o

_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !10
  store ptr @.str, ptr %13, align 8, !tbaa !11
  store i8 3, ptr %i.m, align 8, !tbaa !12
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, ptr %0, ptr noundef nonnull align 8 dereferenceable(34) %13) #8
  %i.o = load ptr, ptr %12, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store i32 5, ptr %9, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = zext i32 %1 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %.not.i.i.i.i.i = icmp ult i32 %i.t, %i.v
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.j:                                             ; preds = %bb.h
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.z = load i32, ptr %i.s, align 8, !tbaa !27
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %.pr = load ptr, ptr %12, align 8, !tbaa !22
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #8
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread: ; preds = %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit, %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !31, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !31
  br i1 %i.ad, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %bb.s

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @_ZN4mlir6detail26getDefaultDiagnosticEmitFnERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::unique_function") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  %i.af = ptrtoint ptr %8 to i64
  %.sroa.0.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !35
  %i.ag = call ptr @_ZN4mlir5quant20UniformQuantizedType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEEjNS_4TypeES7_dlll(ptr nonnull @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnINS_15unique_functionIS3_EEEES2_l, i64 %i.af, i32 noundef %i.b, ptr %.sroa.0.0, ptr %.sroa.0.0.copyload.i, double noundef 1.000000e+00, i64 noundef %spec.select, i64 noundef %spec.select, i64 noundef %.sink.i) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i7, label %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_dRlSD_SD_EEES3_RKNS_8LocationEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %i.ai(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %8) #8, !inline_history !41
  br label %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_dRlSD_SD_EEES3_RKNS_8LocationEDpOT_.exit

_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_dRlSD_SD_EEES3_RKNS_8LocationEDpOT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.s

bb.o:                                             ; preds = %bb.g
  %i.aj = sitofp i64 %spec.select to double       ; 3 uses
  %i.ak = uitofp nneg i64 %.sink.i to double      ; 3 uses
  %i.al = sub nsw i64 %.sink.i, %spec.select
  %14 = uitofp nneg i64 %i.al to double
  %i.am = fdiv double %i.j, %14                   ; 2 uses
  %i.an = call noundef double @llvm.fabs.f64(double %i.aj)
  %i.ao = insertelement <2 x double> poison, double %2, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %3, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.ap, %i.ar          ; 3 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = fsub double %i.aj, %i.at
  %i.av = extractelement <2 x double> %i.as, i64 1
  %i.aw = fsub double %i.ak, %i.av
  %i.ax = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.ay = insertelement <2 x double> poison, double %i.an, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ak, i64 1
  %i.ba = fadd <2 x double> %i.ax, %i.az          ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  %i.bc = extractelement <2 x double> %i.ba, i64 1
  %i.bd = fcmp olt double %i.bb, %i.bc
  %i.be = select i1 %i.bd, double %i.au, double %i.aw ; 3 uses
  %i.bf = fcmp olt double %i.be, %i.aj
  br i1 %i.bf, label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = fcmp ogt double %i.be, %i.ak
  br i1 %i.bg, label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = call double @llvm.round.f64(double %i.be)
  %i.bi = fptosi double %i.bh to i64
  br label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit

_ZL26getNudgedScaleAndZeroPointllddRdRl.exit:     ; preds = %bb.o, %bb.p, %bb.q
  %.sink.i8 = phi i64 [ %spec.select, %bb.o ], [ %i.bi, %bb.q ], [ %.sink.i, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @_ZN4mlir6detail26getDefaultDiagnosticEmitFnERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::unique_function") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  %i.bj = ptrtoint ptr %7 to i64
  %.sroa.0.0.copyload.i10 = load ptr, ptr %11, align 8, !tbaa !35
  %i.bk = call ptr @_ZN4mlir5quant20UniformQuantizedType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEEjNS_4TypeES7_dlll(ptr nonnull @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnINS_15unique_functionIS3_EEEES2_l, i64 %i.bj, i32 noundef %i.b, ptr %.sroa.0.0, ptr %.sroa.0.0.copyload.i10, double noundef %i.am, i64 noundef %.sink.i8, i64 noundef %spec.select, i64 noundef %.sink.i) #8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !37 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i11, label %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RdRlSE_SE_EEES3_RKNS_8LocationEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit
  call void %i.bm(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %7) #8, !inline_history !42
  br label %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RdRlSE_SE_EEES3_RKNS_8LocationEDpOT_.exit

_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RdRlSE_SE_EEES3_RKNS_8LocationEDpOT_.exit: ; preds = %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.s

bb.s:                                             ; preds = %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RdRlSE_SE_EEES3_RKNS_8LocationEDpOT_.exit, %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_dRlSD_SD_EEES3_RKNS_8LocationEDpOT_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.025.0 = phi ptr [ null, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.ag, %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_dRlSD_SD_EEES3_RKNS_8LocationEDpOT_.exit ], [ %i.bk, %_ZN4mlir6detail15StorageUserBaseINS_5quant20UniformQuantizedTypeENS2_13QuantizedTypeENS2_6detail27UniformQuantizedTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RdRlSE_SE_EEES3_RKNS_8LocationEDpOT_.exit ]
  ret ptr %.sroa.025.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5quant20fakeQuantAttrsToTypeENS_8LocationEjiN4llvm8ArrayRefIdEES4_bNS_4TypeEb(ptr %0, i32 noundef %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %5, i1 noundef zeroext %6, i64 %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %"class.llvm::unique_function", align 8 ; 6 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.35", align 8 ; 5 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %16 = alloca %"class.mlir::Location", align 8   ; 2 uses
  %17 = alloca %"class.mlir::Type", align 8       ; 3 uses
  %18 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::SmallVector.10", align 8 ; 13 uses
  %23 = alloca %"class.llvm::SmallVector.15", align 8 ; 13 uses
  store ptr %0, ptr %16, align 8
  %i.a = inttoptr i64 %7 to ptr
  store ptr %i.a, ptr %17, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq i64 %4, %i.c
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !10
  store ptr @.str.1, ptr %19, align 8, !tbaa !11
  store i8 3, ptr %i.d, align 8, !tbaa !12
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %18, ptr %0, ptr noundef nonnull align 8 dereferenceable(34) %19) #8
  %i.f = load ptr, ptr %18, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  store i32 5, ptr %15, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %4, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 9 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %.not.i.i.i.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %15)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.j to i64
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !27
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %.pr = load ptr, ptr %18, align 8, !tbaa !22
  %.not.i.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i.i13, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  store i32 3, ptr %14, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.2, ptr %i.r, align 8, !tbaa !39
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !49
  %i.s = load i32, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.t = load i32, ptr %i.k, align 4, !tbaa !28
  %.not.i.i.i.i.i14 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i.i.i.i14, label %bb.h, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.x = load i32, ptr %i.i, align 8, !tbaa !27
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.i, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  %.pr49 = load ptr, ptr %18, align 8, !tbaa !22
  %.not.i.i15 = icmp eq ptr %.pr49, null
  br i1 %.not.i.i15, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  store i32 5, ptr %13, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.c, ptr %i.z, align 8, !tbaa !11
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !28
  %.not.i.i.i.i.i16 = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i16, label %bb.k, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.af = load i32, ptr %i.i, align 8, !tbaa !27
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.i, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %.pr51.pr = load ptr, ptr %18, align 8, !tbaa !22
  %.not.i = icmp eq ptr %.pr51.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #8
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRmEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRA6_KcEEOS0_OT_.exit, %bb.l, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !31, !range !32, !noundef !33
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !31
  br i1 %i.aj, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ak) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  br label %bb.aq

bb.n:                                             ; preds = %bb.a
  %i.al = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #8 ; 3 uses
  %i.am = icmp ult i32 %1, 9
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.al, i32 noundef 8, i32 noundef 0) #8
  %..i = select i1 %8, i64 -128, i64 0
  %.31.i = select i1 %8, i64 127, i64 255
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.ao = icmp ult i32 %1, 17
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.al, i32 noundef 16, i32 noundef 0) #8
  %.32.i = select i1 %8, i64 -32768, i64 0
  %.33.i = select i1 %8, i64 32767, i64 65535
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.aq = icmp ult i32 %1, 33
  br i1 %i.aq, label %bb.s, label %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit

bb.s:                                             ; preds = %bb.r
  %i.ar = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.al, i32 noundef 32, i32 noundef 0) #8
  %.34.i = select i1 %8, i64 -2147483648, i64 0
  %.35.i = select i1 %8, i64 2147483647, i64 4294967295
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o
  %.sroa.0.0 = phi ptr [ %i.an, %bb.o ], [ %i.ap, %bb.q ], [ %i.ar, %bb.s ]
  %.sink30.i = phi i64 [ %..i, %bb.o ], [ %.32.i, %bb.q ], [ %.34.i, %bb.s ]
  %.sink.i = phi i64 [ %.31.i, %bb.o ], [ %.33.i, %bb.q ], [ %.35.i, %bb.s ] ; 4 uses
  %i.as = zext i1 %6 to i64
  %spec.select = or disjoint i64 %.sink30.i, %i.as ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.at, ptr %22, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 8 uses
  store i32 0, ptr %i.au, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  store i32 4, ptr %i.av, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.aw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.aw, ptr %23, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 8 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  store i32 4, ptr %i.ay, align 4, !tbaa !28
  %i.az = icmp ugt i64 %4, 4
  br i1 %i.az, label %_ZN4llvm15SmallVectorImplIdE7reserveEm.exit, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit

_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !10
  store ptr @.str, ptr %21, align 8, !tbaa !11
  store i8 3, ptr %i.ba, align 8, !tbaa !12
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %20, ptr %0, ptr noundef nonnull align 8 dereferenceable(34) %21) #8
  %i.bc = load ptr, ptr %20, align 8, !tbaa !22
  %.not.i.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  store i32 5, ptr %12, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bf = zext i32 %1 to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28
  %.not.i.i.i.i.i18 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i.i.i.i.i18, label %bb.w, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %12)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.w:                                             ; preds = %bb.u
  %i.bk = zext i32 %i.bh to i64
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !27
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bg, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %.pr60 = load ptr, ptr %20, align 8, !tbaa !22
  %.not.i19 = icmp eq ptr %.pr60, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %20) #8
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread: ; preds = %_ZL23getDefaultStorageParamsjbbPN4mlir11MLIRContextERNS_4TypeERlS4_.exit, %bb.x, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 200 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !31, !range !32, !noundef !33
  %i.br = trunc nuw i8 %i.bq to i1
  store i8 0, ptr %i.bp, align 8, !tbaa !31
  br i1 %i.br, label %bb.y, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit20

bb.y:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bs) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit20

_ZN4mlir18InFlightDiagnosticD2Ev.exit20:          ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.aq

_ZN4llvm15SmallVectorImplIdE7reserveEm.exit:      ; preds = %bb.t
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %i.at, i64 noundef %4, i64 noundef 8) #8
  %.pre = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.bt = zext i32 %.pre to i64
  %i.bu = icmp ugt i64 %4, %i.bt
  br i1 %i.bu, label %bb.z, label %.lr.ph

bb.z:                                             ; preds = %_ZN4llvm15SmallVectorImplIdE7reserveEm.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.aw, i64 noundef %4, i64 noundef 8) #8
  br label %.lr.ph

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit:      ; preds = %bb.t
  %.not1265 = icmp eq i64 %4, 0
  br i1 %.not1265, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %_ZN4llvm15SmallVectorImplIdE7reserveEm.exit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %i.bv = load ptr, ptr %5, align 8, !tbaa !50
  %i.bw = sitofp i64 %spec.select to double       ; 3 uses
  %i.bx = uitofp nneg i64 %.sink.i to double      ; 3 uses
  %i.by = sub nsw i64 %.sink.i, %spec.select
  %24 = uitofp nneg i64 %i.by to double
  %i.bz = call double @llvm.fabs.f64(double %i.bw)
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bx, i64 1
  %i.cc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bx, i64 1
  br label %bb.ad

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit
  %i.ce = zext i1 %8 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @_ZN4mlir6detail26getDefaultDiagnosticEmitFnERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::unique_function") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  %i.cf = ptrtoint ptr %9 to i64
  %.sroa.0.0.copyload.i = load ptr, ptr %17, align 8, !tbaa !35
  %i.cg = load ptr, ptr %22, align 8, !tbaa !30
  store ptr %i.cg, ptr %10, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ci = load i32, ptr %i.au, align 8, !tbaa !27
  %i.cj = zext i32 %i.ci to i64
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !48
  %i.ck = load ptr, ptr %23, align 8, !tbaa !30
  store ptr %i.ck, ptr %11, align 8, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cm = load i32, ptr %i.ax, align 8, !tbaa !27
  %i.cn = zext i32 %i.cm to i64
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !54
  %i.co = call ptr @_ZN4mlir5quant27UniformQuantizedPerAxisType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEEjNS_4TypeES7_NS2_8ArrayRefIdEENS8_IlEEill(ptr nonnull @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnINS_15unique_functionIS3_EEEES2_l, i64 %i.cf, i32 noundef %i.ce, ptr %.sroa.0.0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.35") align 8 %11, i32 noundef %2, i64 noundef %spec.select, i64 noundef %.sink.i) #8
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i21, label %_ZN4mlir6detail15StorageUserBaseINS_5quant27UniformQuantizedPerAxisTypeENS2_13QuantizedTypeENS2_6detail34UniformQuantizedPerAxisTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RN4llvm11SmallVectorIdLj4EEERNSE_IlLj4EEERiRlSK_EEES3_RKNS_8LocationEDpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  call void %i.cq(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %9) #8, !inline_history !43
  br label %_ZN4mlir6detail15StorageUserBaseINS_5quant27UniformQuantizedPerAxisTypeENS2_13QuantizedTypeENS2_6detail34UniformQuantizedPerAxisTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RN4llvm11SmallVectorIdLj4EEERNSE_IlLj4EEERiRlSK_EEES3_RKNS_8LocationEDpOT_.exit

_ZN4mlir6detail15StorageUserBaseINS_5quant27UniformQuantizedPerAxisTypeENS2_13QuantizedTypeENS2_6detail34UniformQuantizedPerAxisTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RN4llvm11SmallVectorIdLj4EEERNSE_IlLj4EEERiRlSK_EEES3_RKNS_8LocationEDpOT_.exit: ; preds = %._crit_edge, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.cr = load ptr, ptr %23, align 8, !tbaa !30   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.aw
  br i1 %i.cs, label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4mlir6detail15StorageUserBaseINS_5quant27UniformQuantizedPerAxisTypeENS2_13QuantizedTypeENS2_6detail34UniformQuantizedPerAxisTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RN4llvm11SmallVectorIdLj4EEERNSE_IlLj4EEERiRlSK_EEES3_RKNS_8LocationEDpOT_.exit
  call void @free(ptr noundef %i.cr) #8
  br label %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit

_ZN4llvm11SmallVectorIlLj4EED2Ev.exit:            ; preds = %_ZN4mlir6detail15StorageUserBaseINS_5quant27UniformQuantizedPerAxisTypeENS2_13QuantizedTypeENS2_6detail34UniformQuantizedPerAxisTypeStorageENS0_11TypeUniquerEJEE10getCheckedIJRjRNS_4TypeESC_RN4llvm11SmallVectorIdLj4EEERNSE_IlLj4EEERiRlSK_EEES3_RKNS_8LocationEDpOT_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #8
  %i.ct = load ptr, ptr %22, align 8, !tbaa !30   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.at
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIdLj4EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit
  call void @free(ptr noundef %i.ct) #8
  br label %_ZN4llvm11SmallVectorIdLj4EED2Ev.exit

_ZN4llvm11SmallVectorIdLj4EED2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br label %bb.aq

bb.ad:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit
  %.066 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.066
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !56 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.066
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !56 ; 2 uses
  %i.cz = fsub double %i.cy, %i.cw                ; 2 uses
  %i.da = call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp olt double %i.da, f0x3CB0000000000000
  br i1 %i.db, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.dd = load i32, ptr %i.av, align 4, !tbaa !28
  %.not.i22 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not.i22, label %bb.ag, label %bb.af, !prof !29

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIdLb1EE15growAndPushBackEd(ptr noundef nonnull align 8 dereferenceable(16) %22, double noundef 1.000000e+00)
  br label %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit

bb.ag:                                            ; preds = %bb.ae
  %i.de = zext i32 %i.dc to i64
  %i.df = load ptr, ptr %22, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.de
  store double 1.000000e+00, ptr %i.dg, align 1
  %i.dh = load i32, ptr %i.au, align 8, !tbaa !27
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.au, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit

_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit: ; preds = %bb.af, %bb.ag
  %i.dj = load i32, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.dk = load i32, ptr %i.ay, align 4, !tbaa !28
  %.not.i23 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i23, label %bb.ai, label %bb.ah, !prof !29

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %23, i64 noundef %spec.select)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit
  %i.dl = zext i32 %i.dj to i64
  %i.dm = load ptr, ptr %23, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  store i64 %spec.select, ptr %i.dn, align 1
  %i.do = load i32, ptr %i.ax, align 8, !tbaa !27
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.ax, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.aj:                                            ; preds = %bb.ad
  %i.dq = fdiv double %i.cz, %24                  ; 3 uses
  %i.dr = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.cy, i64 1
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x double> %i.ds, %i.du          ; 2 uses
  %i.dw = fsub <2 x double> %i.cd, %i.dv          ; 2 uses
  %i.dx = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dv)
  %i.dy = fadd <2 x double> %i.cb, %i.dx          ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dy, i64 1
  %i.eb = fcmp olt double %i.dz, %i.ea
  %i.ec = extractelement <2 x double> %i.dw, i64 0
  %i.ed = extractelement <2 x double> %i.dw, i64 1
  %i.ee = select i1 %i.eb, double %i.ec, double %i.ed ; 3 uses
  %i.ef = fcmp olt double %i.ee, %i.bw
  br i1 %i.ef, label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = fcmp ogt double %i.ee, %i.bx
  br i1 %i.eg, label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = call double @llvm.round.f64(double %i.ee)
  %i.ei = fptosi double %i.eh to i64
  br label %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit

_ZL26getNudgedScaleAndZeroPointllddRdRl.exit:     ; preds = %bb.aj, %bb.ak, %bb.al
  %.sink.i24 = phi i64 [ %spec.select, %bb.aj ], [ %i.ei, %bb.al ], [ %.sink.i, %bb.ak ] ; 2 uses
  %i.ej = load i32, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.ek = load i32, ptr %i.av, align 4, !tbaa !28
  %.not.i25 = icmp ult i32 %i.ej, %i.ek
  br i1 %.not.i25, label %bb.an, label %bb.am, !prof !29

bb.am:                                            ; preds = %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIdLb1EE15growAndPushBackEd(ptr noundef nonnull align 8 dereferenceable(16) %22, double noundef %i.dq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit26

bb.an:                                            ; preds = %_ZL26getNudgedScaleAndZeroPointllddRdRl.exit
  %i.el = zext i32 %i.ej to i64
  %i.em = load ptr, ptr %22, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  store double %i.dq, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.au, align 8, !tbaa !27
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.au, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit26

_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit26: ; preds = %bb.am, %bb.an
  %i.eq = load i32, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.er = load i32, ptr %i.ay, align 4, !tbaa !28
  %.not.i27 = icmp ult i32 %i.eq, %i.er
  br i1 %.not.i27, label %bb.ap, label %bb.ao, !prof !29

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit26
  call void @_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl(ptr noundef nonnull align 8 dereferenceable(16) %23, i64 noundef %.sink.i24)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIdLb1EE9push_backEd.exit26
  %i.es = zext i32 %i.eq to i64
  %i.et = load ptr, ptr %23, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.es
  store i64 %.sink.i24, ptr %i.eu, align 1
  %i.ev = load i32, ptr %i.ax, align 8, !tbaa !27
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.ax, align 8, !tbaa !27
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE9push_backEl.exit: ; preds = %bb.ap, %bb.ao, %bb.ai, %bb.ah
  %i.ex = add nuw i64 %.066, 1                    ; 2 uses
  %.not12 = icmp eq i64 %i.ex, %4
  br i1 %.not12, label %._crit_edge, label %bb.ad, !llvm.loop !44

bb.aq:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit20, %_ZN4llvm11SmallVectorIdLj4EED2Ev.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.045.1 = phi ptr [ null, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ null, %_ZN4mlir18InFlightDiagnosticD2Ev.exit20 ], [ %i.co, %_ZN4llvm11SmallVectorIdLj4EED2Ev.exit ]
  ret ptr %.sroa.045.1
}

declare ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
end_hunk_0
