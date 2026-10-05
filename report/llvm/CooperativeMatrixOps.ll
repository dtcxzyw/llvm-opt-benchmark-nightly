Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CooperativeMatrixOps?download=true
inline.NumInlined: 491
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::DiagnosticArgument" = type { i32, %union.anon }
%union.anon = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.mlir::spirv::MemoryAccessAttr" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::spirv::PointerType" = type { %"class.mlir::detail::StorageUserBase.87" }
%"class.mlir::detail::StorageUserBase.87" = type { %"class.mlir::spirv::SPIRVType" }
%"class.mlir::spirv::SPIRVType" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.mlir::InFlightDiagnostic" = type { ptr, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<mlir::Diagnostic>::_Storage" = type { %"class.mlir::Diagnostic" }
%"class.mlir::Diagnostic" = type { %"class.mlir::Location", i32, %"class.llvm::SmallVector", %"class.std::vector", %"class.std::vector.71", %"class.llvm::SmallVector.76" }
%"class.mlir::Location" = type { %"class.mlir::LocationAttr" }
%"class.mlir::LocationAttr" = type { %"class.mlir::Attribute" }
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
%"class.std::vector.71" = type { %"struct.std::_Vector_base.72" }
%"struct.std::_Vector_base.72" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<mlir::Diagnostic>, std::allocator<std::unique_ptr<mlir::Diagnostic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.76" = type { %"class.llvm::SmallVectorImpl" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::spirv::CooperativeMatrixType" = type { %"class.mlir::detail::StorageUserBase.38" }
%"class.mlir::detail::StorageUserBase.38" = type { %"class.mlir::spirv::CompositeType" }
%"class.mlir::spirv::CompositeType" = type { %"class.mlir::spirv::SPIRVType" }

$_ZN4mlir18InFlightDiagnosticD2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_ = comdat any

$_ZN4mlir10DiagnosticD2Ev = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [36 x i8] c"operand #0 must be of use 'MatrixA'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"operand #1 must be of use 'MatrixB'\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"operand #2 must be of use 'MatrixAcc'\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"matrix scope mismatch\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"matrix size mismatch on dimension 'M'\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"matrix size mismatch on dimension 'N'\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"matrix size mismatch on dimension 'K'\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Matrix Operands require all matrix element types to be Integer Types\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"Pointer must point to a scalar or vector type but provided \00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"not compatible with memory operand 'MakePointerAvailable'\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"not compatible with memory operand 'MakePointerVisible'\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"missing value for the 'Aligned' memory operand\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"found alignment attribute for non-'Aligned' memory operand\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5spirv26KHRCooperativeMatrixLoadOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_5spirv27KHRCooperativeMatrixStoreOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv26KHRCooperativeMatrixLoadOp6verifyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.i = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0) #8 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.l, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.m = lshr i32 %i.l, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.m, 1
  %i.n = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = tail call fastcc i8 @_ZN4mlir5spirvL22verifyCoopMatrixAccessEPNS_9OperationENS_4TypeES3_NS0_16MemoryAccessAttrENS_11IntegerAttrE(ptr noundef %i.a, ptr %i.g, ptr %i.q, ptr %i.t)
  ret i8 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZN4mlir5spirvL22verifyCoopMatrixAccessEPNS_9OperationENS_4TypeES3_NS0_16MemoryAccessAttrENS_11IntegerAttrE(ptr noundef %0, ptr %1, ptr %2, ptr nofree readnone captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::spirv::MemoryAccessAttr", align 8 ; 2 uses
  %6 = alloca %"class.mlir::spirv::PointerType", align 8 ; 4 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %1, ptr %6, align 8
  %i.a = call ptr @_ZNK4mlir5spirv11PointerType14getPointeeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #8 ; 3 uses
  %i.b = call noundef zeroext i1 @_ZN4mlir5spirv10ScalarType7classofENS_4TypeE(ptr %i.a) #8
  br i1 %i.b, label %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.e, label %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !27
  store ptr @.str.8, ptr %8, align 8, !tbaa !28
  store i8 3, ptr %i.f, align 8, !tbaa !29
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #8
  %i.h = load ptr, ptr %7, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.a) #8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !40
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !40
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %bb.b, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.s = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #8
  %i.t = load ptr, ptr %7, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42, !range !43, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.u, align 8, !tbaa !42
  br i1 %i.w, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.x) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %.thread10

_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %bb.a, %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread10, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread
  %i.y = call noundef i32 @_ZNK4mlir5spirv16MemoryAccessAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, @_ZN4mlir6detail14TypeIDResolverINS_5spirv26KHRCooperativeMatrixLoadOpEvE2idE
  br i1 %i.ac, label %17, label %bb.n

17:                                               ; preds = %bb.i
  %18 = and i32 %i.y, 8
  %.not15 = icmp eq i32 %18, 0
  br i1 %.not15, label %.thread.a, label %bb.j

bb.j:                                             ; preds = %17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !27
  store ptr @.str.9, ptr %10, align 8, !tbaa !28
  store i8 3, ptr %i.ad, align 8, !tbaa !29
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #8
  %i.af = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #8
  %i.ag = load ptr, ptr %9, align 8, !tbaa !38
  %.not.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !42, !range !43, !noundef !44
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !42
  br i1 %i.aj, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit8

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ak) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit8

_ZN4mlir18InFlightDiagnosticD2Ev.exit8:           ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.thread10

bb.n:                                             ; preds = %bb.i
  %i.al = icmp eq ptr %i.ab, @_ZN4mlir6detail14TypeIDResolverINS_5spirv27KHRCooperativeMatrixStoreOpEvE2idE
  %i.am = and i32 %i.y, 16
  %i.an = icmp ne i32 %i.am, 0
  %or.cond.a = and i1 %i.an, %i.al
  br i1 %or.cond.a, label %bb.o, label %.thread.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ap, align 1, !tbaa !27
  store ptr @.str.10, ptr %12, align 8, !tbaa !28
  store i8 3, ptr %i.ao, align 8, !tbaa !29
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #8
  %i.aq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #8
  %i.ar = load ptr, ptr %11, align 8, !tbaa !38
  %.not.i10 = icmp eq ptr %i.ar, null
  br i1 %.not.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !42, !range !43, !noundef !44
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !42
  br i1 %i.au, label %bb.r, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %.thread10

.thread.a:                                        ; preds = %17, %bb.n
  %i.aw = and i32 %i.y, 2
  %.not16 = icmp eq i32 %i.aw, 0
  %.not17 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not16, label %bb.x, label %bb.s

bb.s:                                             ; preds = %.thread.a
  br i1 %.not17, label %bb.t, label %.thread10

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !27
  store ptr @.str.11, ptr %14, align 8, !tbaa !28
  store i8 3, ptr %i.ax, align 8, !tbaa !29
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %14) #8
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #8
  %i.ba = load ptr, ptr %13, align 8, !tbaa !38
  %.not.i12 = icmp eq ptr %i.ba, null
  br i1 %.not.i12, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !42, !range !43, !noundef !44
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.bb, align 8, !tbaa !42
  br i1 %i.bd, label %bb.w, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.be) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

_ZN4mlir18InFlightDiagnosticD2Ev.exit13:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %.thread10

bb.x:                                             ; preds = %.thread.a
  br i1 %.not17, label %.thread10, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.bg, align 1, !tbaa !27
  store ptr @.str.12, ptr %16, align 8, !tbaa !28
  store i8 3, ptr %i.bf, align 8, !tbaa !29
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %16) #8
  %i.bh = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %15) #8
  %i.bi = load ptr, ptr %15, align 8, !tbaa !38
  %.not.i14 = icmp eq ptr %i.bi, null
  br i1 %.not.i14, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %15) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 200 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !42, !range !43, !noundef !44
  %i.bl = trunc nuw i8 %i.bk to i1
  store i8 0, ptr %i.bj, align 8, !tbaa !42
  br i1 %i.bl, label %bb.ab, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit15

bb.ab:                                            ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bm) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit15

_ZN4mlir18InFlightDiagnosticD2Ev.exit15:          ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %.thread10

.thread10:                                        ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit15, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11, %_ZN4mlir18InFlightDiagnosticD2Ev.exit8, %bb.s, %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread, %bb.x, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.05.1 = phi i8 [ %i.s, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.s ], [ 1, %bb.x ], [ 1, %_ZN4llvm3isaIJN4mlir5spirv10ScalarTypeENS1_10VectorTypeEENS1_4TypeEEEbRKT0_.exit.thread ], [ %i.bh, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15 ], [ %i.az, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13 ], [ %i.aq, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ %i.af, %_ZN4mlir18InFlightDiagnosticD2Ev.exit8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i8 %.sroa.05.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv27KHRCooperativeMatrixStoreOp6verifyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call fastcc i8 @_ZN4mlir5spirvL22verifyCoopMatrixAccessEPNS_9OperationENS_4TypeES3_NS0_16MemoryAccessAttrENS_11IntegerAttrE(ptr noundef %i.a, ptr %i.g, ptr %i.i, ptr %i.k)
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv28KHRCooperativeMatrixMulAddOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::spirv::CooperativeMatrixType", align 8 ; 8 uses
  %2 = alloca %"class.mlir::spirv::CooperativeMatrixType", align 8 ; 8 uses
  %3 = alloca %"class.mlir::spirv::CooperativeMatrixType", align 8 ; 8 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.0.0.copyload.i.i.i.i8 = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8, i64 8
  %.0.copyload.i.i.i.i.i9 = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i9, -8
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.0.0.copyload.i.i.i.i12 = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i12, i64 8
  %.0.copyload.i.i.i.i.i13 = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i13, -8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %3, align 8
  %i.p = call noundef i32 @_ZNK4mlir5spirv21CooperativeMatrixType6getUseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !27
  store ptr @.str, ptr %5, align 8, !tbaa !28
  store i8 3, ptr %i.q, align 8, !tbaa !29
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #8
  %i.s = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #8
  %i.t = load ptr, ptr %4, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42, !range !43, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.u, align 8, !tbaa !42
  br i1 %i.w, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.x) #8
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.thread
end_hunk_0
