Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorContractToFMA?download=true
inline.NumInlined: 508
inline.NumDeleted: 341
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.mlir::PatternBenefit" = type { i16 }
%class.anon.157 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::vector::ContractionOp" = type { %"class.mlir::Op.35" }
%"class.mlir::Op.35" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::VectorType" = type { %"class.mlir::detail::StorageUserBase" }
%"class.mlir::detail::StorageUserBase" = type { %"class.mlir::Type" }
%"class.mlir::Type" = type { ptr }
%"class.llvm::SmallVector.57" = type { %"class.llvm::SmallVectorImpl.58", %"struct.llvm::SmallVectorStorage.61" }
%"class.llvm::SmallVectorImpl.58" = type { %"class.llvm::SmallVectorTemplateBase.59" }
%"class.llvm::SmallVectorTemplateBase.59" = type { %"class.llvm::SmallVectorTemplateCommon.60" }
%"class.llvm::SmallVectorTemplateCommon.60" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.61" = type { [48 x i8] }

$_ZN4mlir14RewritePatternD2Ev = comdat any

$_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE = comdat any

$_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector13ContractionOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_119VectorContractToFMAE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_119VectorContractToFMAD0Ev, ptr @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv, ptr @_ZNK12_GLOBAL__N_119VectorContractToFMA15matchAndRewriteEN4mlir6vector13ContractionOpERNS1_15PatternRewriterE] }, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"vector.contract\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Expects add combining kind.\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Only F32 lowering is supported.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Excepts unit dimensions for either LHS or RHS shape.\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Excepts a one non-unit A/B dimension for either LHS or RHS shape.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Accmulator is not a vector type\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Accmulator should be F32 type.\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"A or B dimension should be non-unit.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.13 = private unnamed_addr constant [93 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::VectorContractToFMA]\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3x8635populateVectorContractToFMAPatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %2 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !36
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #13, !noalias !39 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %2, i32 noundef 1) #14, !noalias !39
  %i.c = load i16, ptr %2, align 2, !noalias !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !39
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr nonnull @.str.5, i64 15, i16 %i.c, ptr noundef %i.a, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %1) #14, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !39
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_119VectorContractToFMAE, i64 16), ptr %i.b, align 8, !tbaa !42, !noalias !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !36
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !noalias !36
  %i.e = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.e, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.13, i64 49), ptr %i.f, align 8, !tbaa !46, !noalias !36
  store i64 42, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !noalias !36
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 16) #14
  %.pre8.pre.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !48
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.h, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119VectorContractToFMAEJPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS7_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.g, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.b, ptr %i.q, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !50
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_119VectorContractToFMAEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !55   ; 10 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i5.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i5.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #13 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !52
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ah = add i64 %i.v, -8
  %i.ai = sub i64 %i.ah, %i.w                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.al = add i64 %i.v, -8
  %i.am = sub i64 %i.al, %i.w
  %i.an = and i64 %i.am, -8
  %i.ao = add i64 %i.an, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ao
  %scevgep6 = getelementptr i8, ptr %i.u, i64 %i.ao
  %bound0 = icmp ult ptr %i.af, %scevgep6
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.u, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.at = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !61, !alias.scope !62, !noalias !56
  %wide.load8 = load <2 x i64>, ptr %i.at, align 8, !tbaa !61, !alias.scope !62, !noalias !56
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !61, !alias.scope !65, !noalias !62
  store <2 x i64> %wide.load8, ptr %i.au, align 8, !tbaa !61, !alias.scope !65, !noalias !62
  %i.av = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !61, !alias.scope !62, !noalias !56
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !61, !alias.scope !62, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.i.i.preheader10:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader10 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !59, !noalias !56
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !56, !noalias !59
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !61, !alias.scope !59, !noalias !56
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !71

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119VectorContractToFMAES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %3 = load ptr, ptr %i.r, align 8, !tbaa !51
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %5) #16
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119VectorContractToFMAES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119VectorContractToFMAES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !55
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bb, ptr %i.r, align 8, !tbaa !51
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_119VectorContractToFMAEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_119VectorContractToFMAEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_119VectorContractToFMAES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #14
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119VectorContractToFMAD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #14
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #14
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector13ContractionOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal i8 @_ZNK12_GLOBAL__N_119VectorContractToFMA15matchAndRewriteEN4mlir6vector13ContractionOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.157, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.157, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon.157, align 8            ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %class.anon.157, align 8            ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %class.anon.157, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.157, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::vector::ContractionOp", align 8 ; 18 uses
  %16 = alloca %"class.mlir::VectorType", align 8 ; 7 uses
  %17 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %18 = alloca %"class.llvm::SmallVector.57", align 8 ; 10 uses
  %19 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %20 = alloca %"class.llvm::SmallVector.57", align 8 ; 10 uses
  %21 = alloca %"class.mlir::VectorType", align 8 ; 7 uses
  %22 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %23 = alloca %"class.llvm::SmallVector.57", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %1, ptr %15, align 8
  %i.c = call noundef i32 @_ZN4mlir6vector13ContractionOp7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !73
  store ptr @.str.6, ptr %14, align 8, !tbaa !76
  store i8 3, ptr %i.d, align 8, !tbaa !77
  %i.f = load ptr, ptr %15, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store ptr %14, ptr %13, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #14
  br i1 %i.i, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.k = ptrtoint ptr %13 to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6vector13ContractionOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.k) #14, !inline_history !88
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.o = load ptr, ptr %15, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.v = call ptr @_ZNK4mlir10VectorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #14
  store ptr %i.v, ptr %17, align 8
  %i.w = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !73
  store ptr @.str.7, ptr %12, align 8, !tbaa !76
  store i8 3, ptr %i.x, align 8, !tbaa !77
  %i.z = load ptr, ptr %15, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %12, ptr %11, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 4 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i95, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6vector13ContractionOpEEEN4llvm13LogicalResultEOT_PKc.exit98, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #14
end_hunk_0
