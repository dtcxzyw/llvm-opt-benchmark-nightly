Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Interchange?download=true
inline.NumInlined: 862
inline.NumDeleted: 636
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.mlir::ValueRange" = type { %"class.llvm::detail::indexed_accessor_range_base" }
%"class.llvm::detail::indexed_accessor_range_base" = type { %"class.llvm::PointerUnion", i64 }
%"class.llvm::PointerUnion" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers" }
%"class.llvm::pointer_union_detail::PointerUnionMembers" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.227" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.227" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.228" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.228" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.229" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.229" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.230" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.230" = type { %"struct.llvm::detail::PunnedPointer.231" }
%"struct.llvm::detail::PunnedPointer.231" = type { [8 x i8] }
%"class.llvm::SmallVector.138" = type { %"class.llvm::SmallVectorImpl.139", %"struct.llvm::SmallVectorStorage.142" }
%"class.llvm::SmallVectorImpl.139" = type { %"class.llvm::SmallVectorTemplateBase.140" }
%"class.llvm::SmallVectorTemplateBase.140" = type { %"class.llvm::SmallVectorTemplateCommon.141" }
%"class.llvm::SmallVectorTemplateCommon.141" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.142" = type { [48 x i8] }
%"class.mlir::AffineMapAttr" = type { %"class.mlir::detail::StorageUserBase.205" }
%"class.mlir::detail::StorageUserBase.205" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::ArrayAttr" = type { %"class.mlir::detail::StorageUserBase.22" }
%"class.mlir::detail::StorageUserBase.22" = type { %"class.mlir::Attribute" }
%"class.llvm::SmallVector.25" = type { %"class.llvm::SmallVectorImpl.26", %"struct.llvm::SmallVectorStorage.29" }
%"class.llvm::SmallVectorImpl.26" = type { %"class.llvm::SmallVectorTemplateBase.27" }
%"class.llvm::SmallVectorTemplateBase.27" = type { %"class.llvm::SmallVectorTemplateCommon.28" }
%"class.llvm::SmallVectorTemplateCommon.28" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.29" = type { [48 x i8] }
%class.anon.163 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::linalg::GenericOp" = type { %"class.mlir::Op" }
%"class.mlir::Op" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"class.mlir::AffineMap" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.llvm::SmallVector.30" = type { %"class.llvm::SmallVectorImpl.31", %"struct.llvm::SmallVectorStorage.34" }
%"class.llvm::SmallVectorImpl.31" = type { %"class.llvm::SmallVectorTemplateBase.32" }
%"class.llvm::SmallVectorTemplateBase.32" = type { %"class.llvm::SmallVectorTemplateCommon.33" }
%"class.llvm::SmallVectorTemplateCommon.33" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.34" = type { [48 x i8] }
%"class.mlir::linalg::IndexOp" = type { %"class.mlir::Op.45" }
%"class.mlir::Op.45" = type { %"class.mlir::OpState" }
%"class.llvm::SmallVector.68" = type { %"class.llvm::SmallVectorImpl.69", %"struct.llvm::SmallVectorStorage.72" }
%"class.llvm::SmallVectorImpl.69" = type { %"class.llvm::SmallVectorTemplateBase.70" }
%"class.llvm::SmallVectorTemplateBase.70" = type { %"class.llvm::SmallVectorTemplateCommon.71" }
%"class.llvm::SmallVectorTemplateCommon.71" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.72" = type { [48 x i8] }
%"class.mlir::linalg::IteratorTypeAttr" = type { %"class.mlir::detail::StorageUserBase.162" }
%"class.mlir::detail::StorageUserBase.162" = type { %"class.mlir::Attribute" }

$_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv = comdat any

$_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE6insertIPKS2_vEEPS2_S7_T_S8_ = comdat any

$_ZN4llvm15SmallVectorImplIN4mlir9AttributeEEaSEOS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [22 x i8] c"preconditions not met\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir6linalg20interchangeGenericOpERNS_12RewriterBaseENS0_9GenericOpEN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.138", align 8 ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.138", align 8 ; 6 uses
  %7 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.25", align 8 ; 10 uses
  %10 = alloca %class.anon.163, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::SmallVector.138", align 8 ; 6 uses
  %13 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 6 uses
  %14 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 15 uses
  %15 = alloca %"class.mlir::AffineMap", align 8  ; 6 uses
  %16 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %17 = alloca %"class.mlir::AffineMap", align 8  ; 6 uses
  %18 = alloca %"class.mlir::ArrayAttr", align 8  ; 4 uses
  %19 = alloca %"class.llvm::SmallVector.25", align 8 ; 11 uses
  %20 = alloca %"class.llvm::SmallVector.30", align 8 ; 9 uses
  %21 = alloca %"class.mlir::linalg::IndexOp", align 8 ; 6 uses
  %22 = alloca %"class.llvm::SmallVector.68", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr %1, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %1, ptr %13, align 8
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.138") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %i.e = load ptr, ptr %12, align 8, !tbaa !11    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.e) #8
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.h = zext i32 %i.d to i64
  %.not.i = icmp eq i64 %3, %i.h
  br i1 %.not.i, label %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i._ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread_crit_edge

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i._ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread_crit_edge: ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i
  %.pre113.pre = load ptr, ptr %14, align 8, !tbaa !49
  br label %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread

_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread: ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i._ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread_crit_edge, %bb.a
  %.pre113 = phi ptr [ %.pre113.pre, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i._ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread_crit_edge ], [ %1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.d

_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit: ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit.i
  %i.i = load ptr, ptr %13, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #8
  %i.l = call ptr @_ZN4mlir9AffineMap17getPermutationMapEN4llvm8ArrayRefIjEEPNS_11MLIRContextE(ptr %2, i64 %3, ptr noundef %i.k) #8
  %i.m = call ptr @_ZN4mlir18inversePermutationENS_9AffineMapE(ptr %i.l) #8
  %.not6.i.not = icmp eq ptr %i.m, null
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.pre114 = load ptr, ptr %14, align 8, !tbaa !49 ; 2 uses
  br i1 %.not6.i.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread, %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit
  %i.n = phi ptr [ %.pre113, %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit.thread ], [ %.pre114, %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !52
  store ptr @.str, ptr %11, align 8, !tbaa !53
  store i8 3, ptr %i.o, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store ptr %11, ptr %10, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.r) #8
  br i1 %i.s, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = ptrtoint ptr %10 to i64
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.u) #8, !inline_history !23
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.d, %bb.e, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.ae

bb.f:                                             ; preds = %_ZL32interchangeGenericOpPreconditionN4mlir6linalg9GenericOpEN4llvm8ArrayRefIjEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.pre114, i64 24
  %i.z = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  %i.aa = call ptr @_ZN4mlir9AffineMap17getPermutationMapEN4llvm8ArrayRefIjEEPNS_11MLIRContextE(ptr %2, i64 %3, ptr noundef %i.z) #8
  %i.ab = call ptr @_ZN4mlir18inversePermutationENS_9AffineMapE(ptr %i.aa) #8
  store ptr %i.ab, ptr %15, align 8
  %i.ac = load ptr, ptr %14, align 8, !tbaa !49
  %i.ad = load ptr, ptr %0, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ac) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ag, ptr %16, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 6, ptr %i.ai, align 4, !tbaa !13
  %i.aj = load ptr, ptr %14, align 8, !tbaa !49   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 8388608
  %.not.i41 = icmp eq i32 %i.am, 0
  br i1 %.not.i41, label %._crit_edge, label %_ZN4mlir9Operation13getOpOperandsEv.exit, !prof !14

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !69 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %.not103.a = icmp eq i32 %i.aq, 0
  br i1 %.not103.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit
  %.pre = load ptr, ptr %16, align 8, !tbaa !11
  %.pre111 = load i32, ptr %i.ah, align 8, !tbaa !10
  %i.au = zext i32 %.pre111 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit, %_ZN4mlir9Operation13getOpOperandsEv.exit
  %i.av = phi i64 [ %i.au, %._crit_edge.loopexit ], [ 0, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ 0, %bb.f ]
  %i.aw = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ag, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ %i.ag, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = call ptr @_ZN4mlir7Builder21getAffineMapArrayAttrEN4llvm8ArrayRefINS_9AffineMapEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr %i.aw, i64 %i.av) #8
  %i.az = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.bb, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = lshr i32 %i.bb, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.bc, 1
  %i.bd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store ptr %i.ay, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  %i.bg = call ptr @_ZN4mlir6linalg9GenericOp16getIteratorTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  store ptr %i.bg, ptr %18, align 8
  %i.bh = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #8 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.bk, ptr %19, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 6, ptr %i.bm, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bo = call noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull %i.bk, ptr noundef %i.bi, ptr noundef %i.bn) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  store ptr %i.bp, ptr %20, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 6, ptr %i.br, align 4, !tbaa !13
  %i.bs = icmp ugt i64 %3, 6
  br i1 %i.bs, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

bb.g:                                             ; preds = %._crit_edge
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull %i.bp, i64 noundef %3, i64 noundef 8) #8
  %.pre.i.i = load i32, ptr %i.bq, align 8, !tbaa !10 ; 2 uses
  %.pre8.i.i = zext i32 %.pre.i.i to i64
  %.pre112.pre = load ptr, ptr %20, align 8, !tbaa !11
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %._crit_edge, %bb.g
  %.pre112 = phi ptr [ %i.bp, %._crit_edge ], [ %.pre112.pre, %bb.g ] ; 6 uses
  %.pre-phi.i.i = phi i64 [ 0, %._crit_edge ], [ %.pre8.i.i, %bb.g ]
end_hunk_0
begin_hunk_1_@_ZN4mlir6linalg20interchangeGenericOpERNS_12RewriterBaseENS0_9GenericOpEN4llvm8ArrayRefIjEE:bb.a
  %i.cd = zext <2 x i32> %wide.load to <2 x i64>
  %i.ce = zext <2 x i32> %wide.load181 to <2 x i64>
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.cd, ptr %next.gep, align 8, !tbaa !71
  store <2 x i64> %i.ce, ptr %i.cf, align 8, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %i.bv, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %i.bx, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %i.bz, %middle.block ] ; 3 uses
  %i.ch = load i32, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !15
  %i.ci = zext i32 %i.ch to i64
  store i64 %i.ci, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !71
  %i.cj = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !15
  %i.cn = zext i32 %i.cm to i64
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !71
  %i.co = icmp eq i64 %.012.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15
  %i.cs = zext i32 %i.cr to i64
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !71
  br label %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %middle.block
  %i.ct = trunc nuw i64 %3 to i32
  %i.cu = add i32 %i.bt, %i.ct
  store i32 %i.cu, ptr %i.bq, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.cv = load ptr, ptr %19, align 8, !tbaa !11, !noalias !72 ; 5 uses
  %i.cw = load i32, ptr %i.bl, align 8, !tbaa !10, !noalias !72 ; 5 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.cy, ptr %9, align 8, !tbaa !11, !alias.scope !74
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !10, !alias.scope !74
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.da, align 4, !tbaa !13, !alias.scope !74
  %i.db = icmp ugt i32 %i.cw, 6
  br i1 %i.db, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.thread.i.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.cy, i64 noundef %i.cx, i64 noundef 8) #8
  %.pre.i.i.i.i.i.i = load i32, ptr %i.cz, align 8, !tbaa !10, !alias.scope !74
  %.pre.i.i43 = load ptr, ptr %9, align 8, !tbaa !11, !alias.scope !74
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i42

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2IjvEENS_8ArrayRefIT_EE.exit
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i.i.i42:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.thread.i.i.i
  %i.dc = phi ptr [ %.pre.i.i43, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ %i.cy, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i ]
  %i.dd = phi i32 [ %.pre.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i ] ; 3 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de ; 2 uses
  %xtraiter = and i64 %i.cx, 3                    ; 3 uses
  %i.dg = add i32 %i.cw, -1
  %i.dh = icmp ult i32 %i.dg, 3
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i42.new

.lr.ph.i.i.i.i.i.i.i.i.i.i42.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i42
  %unroll_iter = and i64 %i.cx, 4294967292
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i42.new
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i42.new ], [ %i.eg, %bb.h ] ; 5 uses
  %i.di = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i42.new ], [ %i.ef, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i42.new ], [ %niter.next.3, %bb.h ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !71, !noalias !75
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dk
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !20, !noalias !73
  %i.dm = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  store i64 %i.dm, ptr %.05.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %i.di
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !71, !noalias !75
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.dr, align 8, !tbaa !20, !noalias !73
  %i.ds = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 to i64
  store i64 %i.ds, ptr %i.dn, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %i.di
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !71, !noalias !75
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dw
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.dx, align 8, !tbaa !20, !noalias !73
  %i.dy = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 to i64
  store i64 %i.dy, ptr %i.dt, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %i.di
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !71, !noalias !75
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ec
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ed, align 8, !tbaa !20, !noalias !73
  %i.ee = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 to i64
  store i64 %i.ee, ptr %i.dz, align 8, !tbaa !20
  %i.ef = add nuw nsw i64 %i.di, 4                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !31

_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i42
  %.05.i.i.i.i.i.i.i.i.i.i.epil.init = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i42 ], [ %i.eg, %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i42 ], [ %i.ef, %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.epil = phi ptr [ %.05.i.i.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.en, %bb.i ] ; 2 uses
  %i.eh = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.em, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !71, !noalias !75
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ej
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.ek, align 8, !tbaa !20, !noalias !73
  %i.el = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil to i64
  store i64 %i.el, ptr %.05.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !20
  %i.em = add nuw nsw i64 %i.eh, 1
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i, label %bb.i, !llvm.loop !32

_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i: ; preds = %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa, %bb.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i
  %i.eo = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i.i.i ], [ %i.dd, %bb.i ], [ %i.dd, %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i.loopexit.unr-lcssa ]
  %i.ep = add i32 %i.eo, %i.cw
  store i32 %i.ep, ptr %i.cz, align 8, !tbaa !10, !alias.scope !74
  %i.eq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir9AttributeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %9) ; 0 uses
  %i.er = load ptr, ptr %9, align 8, !tbaa !11    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.cy
  br i1 %i.es, label %_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i
  call void @free(ptr noundef %i.er) #8
  br label %_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit

_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit: ; preds = %_ZN4mlir16applyPermutationINS_9AttributeEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEERKNS2_15SmallVectorImplIS4_EENS2_8ArrayRefIlEE.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.et = load ptr, ptr %19, align 8, !tbaa !11
  %i.eu = load i32, ptr %i.bl, align 8, !tbaa !10
  %i.ev = zext i32 %i.eu to i64
  %i.ew = call ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr %i.et, i64 %i.ev) #8
  %i.ex = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 44
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %.not.i.i.i44 = icmp ugt i32 %i.ez, 16777215
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.fa = lshr i32 %i.ez, 23
  %.lobit.i.i.i.i.i.i.i.i.i45 = and i32 %i.fa, 1
  %i.fb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i45 to i64
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  store ptr %i.ew, ptr %i.fd, align 8
  %i.fe = load ptr, ptr %14, align 8, !tbaa !49   ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 44
  %i.fg = load i32, ptr %i.ff, align 4            ; 3 uses
  %i.fh = and i32 %i.fg, 8388607
  %i.fi = icmp ne i32 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = lshr i32 %i.fg, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.fj, 1
  %i.fk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fk
  %i.fm = lshr i32 %i.fg, 21
  %i.fn = and i32 %i.fm, 2040
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !91
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !92, !noalias !93 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.fy, %i.fw
  br i1 %.not1.i.i.i.i.i.i, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit, %bb.k
  %.sroa.010.0.i.i = phi ptr [ %i.gf, %bb.k ], [ %i.fy, %_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit ] ; 3 uses
  %i.fz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i.i) #8, !noalias !93
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !tbaa !94, !noalias !93
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !97, !noalias !93
  %i.gd = icmp eq ptr %i.gc, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE
  br i1 %i.gd, label %_ZN4mlir6linalg9GenericOp17hasIndexSemanticsEv.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !92, !noalias !93 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.fw
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !35

_ZN4mlir6linalg9GenericOp17hasIndexSemanticsEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not100 = icmp eq ptr %.sroa.010.0.i.i, %i.fw
  br i1 %.not100, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, label %bb.p

.lr.ph:                                           ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit
  %.0104 = phi ptr [ %i.gx, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit ], [ %i.ao, %_ZN4mlir9Operation13getOpOperandsEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.gg = call ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  store ptr %i.gg, ptr %8, align 8
  %i.gh = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8, !noalias !98
  %i.gi = extractvalue { ptr, i64 } %i.gh, 0
  %i.gj = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8, !noalias !98 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.gk = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.0104) #8
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl
  %.sroa.0.0.copyload.i.i.i.i46 = load ptr, ptr %i.gm, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0.0.copyload.i.i.i.i46, ptr %7, align 8
  %i.gn = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.gn, ptr %17, align 8
  %i.go = call noundef zeroext i1 @_ZNK4mlir9AffineMap7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  br i1 %i.go, label %.lr.ph._crit_edge, label %bb.l

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.sroa.09.0.copyload.pre = load ptr, ptr %17, align 8, !tbaa !100
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %.sroa.010.0.copyload = load ptr, ptr %15, align 8, !tbaa !100
  %i.gp = call ptr @_ZNK4mlir9AffineMap7composeES0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr %.sroa.010.0.copyload) #8 ; 2 uses
  store ptr %i.gp, ptr %17, align 8, !tbaa !100
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph._crit_edge, %bb.l
  %.sroa.09.0.copyload = phi ptr [ %.sroa.09.0.copyload.pre, %.lr.ph._crit_edge ], [ %i.gp, %bb.l ] ; 2 uses
  %i.gq = load i32, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.gr = load i32, ptr %i.ai, align 4, !tbaa !13
  %.not.i47 = icmp ult i32 %i.gq, %i.gr
  br i1 %.not.i47, label %bb.o, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %.sroa.09.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit

bb.o:                                             ; preds = %bb.m
  %i.gs = zext i32 %i.gq to i64
  %i.gt = load ptr, ptr %16, align 8, !tbaa !11
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  store ptr %.sroa.09.0.copyload, ptr %i.gu, align 1
  %i.gv = load i32, ptr %i.ah, align 8, !tbaa !10
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.ah, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  %i.gx = getelementptr inbounds nuw i8, ptr %.0104, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gx, %i.at
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.p:                                             ; preds = %_ZN4mlir6linalg9GenericOp17hasIndexSemanticsEv.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ha = load <2 x ptr>, ptr %i.gy, align 8
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !101
  %i.hc = load ptr, ptr %14, align 8, !tbaa !49   ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 44
  %i.he = load i32, ptr %i.hd, align 4            ; 3 uses
  %i.hf = and i32 %i.he, 8388607
  %i.hg = icmp ne i32 %i.hf, 0
  call void @llvm.assume(i1 %i.hg)
  %i.hh = lshr i32 %i.he, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.hh, 1
  %i.hi = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hc, i64 %i.hi
  %i.hk = lshr i32 %i.he, 21
  %i.hl = and i32 %i.hk, 2040
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !91
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !92 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !92, !noalias !102 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.hw, %i.hu
  br i1 %.not1.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.sroa.010.0.i = phi ptr [ %i.id, %bb.q ], [ %i.hw, %bb.p ] ; 3 uses
  %i.hx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i) #8, !noalias !102
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.hy, align 8, !tbaa !94, !noalias !102
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !97, !noalias !102
  %i.ib = icmp eq ptr %i.ia, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE
  br i1 %i.ib, label %_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !92, !noalias !102 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.id, %i.hu
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.q, %bb.p
  %.sroa.010.1.i = phi ptr [ %i.hw, %bb.p ], [ %.sroa.010.0.i, %.lr.ph.i.i.i.i.i ], [ %i.id, %bb.q ] ; 2 uses
  %.not101105 = icmp eq ptr %.sroa.010.1.i, %i.hu
  br i1 %.not101105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.t

._crit_edge108:                                   ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, %_ZN4mlir5Block6getOpsINS_6linalg7IndexOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit
  %.not.i.i.a = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.a, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge108
  store <2 x ptr> %i.ha, ptr %i.gy, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.s:                                             ; preds = %._crit_edge108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.t:                                             ; preds = %.lr.ph107, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit
  %.sroa.062.0106 = phi ptr [ %.sroa.010.1.i, %.lr.ph107 ], [ %.sroa.062.2, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.062.0106, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !92, !noalias !103 ; 3 uses
  %.not1.i.i.i.i.i50 = icmp eq ptr %i.in, %i.hu
  br i1 %.not1.i.i.i.i.i50, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit, label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %bb.t, %bb.u
  %.sroa.062.1 = phi ptr [ %i.iu, %bb.u ], [ %i.in, %bb.t ] ; 3 uses
  %i.io = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.062.1) #8, !noalias !103
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ip, align 8, !tbaa !94, !noalias !103
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !97, !noalias !103
  %i.is = icmp eq ptr %i.ir, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7IndexOpEvE2idE
  br i1 %i.is, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.062.1, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !92, !noalias !103 ; 3 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.iu, %i.hu
  br i1 %.not.i.i.i.i.i52, label %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit, label %.lr.ph.i.i.i.i.i51, !llvm.loop !35

_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit: ; preds = %.lr.ph.i.i.i.i.i51, %bb.u, %bb.t
  %.sroa.062.2 = phi ptr [ %i.in, %bb.t ], [ %.sroa.062.1, %.lr.ph.i.i.i.i.i51 ], [ %i.iu, %bb.u ] ; 2 uses
  %i.iv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.062.0106) #8 ; 3 uses
  store ptr %i.iv, ptr %21, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !104
  %i.iy = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.iv) #8
  store ptr %i.ix, ptr %i.gy, align 8, !tbaa !101
  store ptr %i.iy, ptr %i.gz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  store ptr %i.ie, ptr %22, align 8, !tbaa !11
  store i32 0, ptr %i.if, align 8, !tbaa !10
  store i32 6, ptr %i.ig, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.138") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %i.iz = load i32, ptr %i.ih, align 8, !tbaa !10 ; 2 uses
  %i.ja = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ii
  br i1 %i.jb, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit
  call void @free(ptr noundef %i.ja) #8
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit: ; preds = %_ZN4llvm23early_inc_iterator_implIN4mlir6detail11op_iteratorINS1_6linalg7IndexOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS1_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEdeEv.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.jc = load i32, ptr %i.ig, align 4, !tbaa !13
  %i.jd = icmp ugt i32 %i.iz, %i.jc
  br i1 %i.jd, label %bb.w, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.w:                                             ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit
  %i.je = zext i32 %i.iz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %i.ie, i64 noundef %i.je, i64 noundef 8) #8
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.138") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %i.jf = load i32, ptr %i.ij, align 8, !tbaa !10 ; 2 uses
  %i.jg = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ik
  br i1 %i.jh, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  call void @free(ptr noundef %i.jg) #8
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.ji = zext i32 %i.jf to i64
  %.not9.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not9.i.i, label %"_ZN4llvm9transformINS_10iota_rangeImEESt20back_insert_iteratorINS_11SmallVectorIN4mlir5ValueELj6EEEEZNS5_6linalg20interchangeGenericOpERNS5_12RewriterBaseENS9_9GenericOpENS_8ArrayRefIjEEE3$_1EET0_OT_SG_T1_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i
  %.sroa.06.010.i.i = phi i64 [ %i.jt, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i ], [ 0, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53 ] ; 2 uses
  %.val1.val.i.i = load ptr, ptr %21, align 8, !tbaa !49
  %i.jj = getelementptr i8, ptr %.val1.val.i.i, i64 24
  %.val1.val.val.i.i = load ptr, ptr %i.jj, align 8
  %i.jk = call ptr @_ZN4mlir6linalg7IndexOp6createERNS_9OpBuilderENS_8LocationEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %.val1.val.val.i.i, i64 noundef %.sroa.06.010.i.i) #8
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -16 ; 2 uses
  %i.jm = load i32, ptr %i.if, align 8, !tbaa !10 ; 2 uses
  %i.jn = load i32, ptr %i.ig, align 4, !tbaa !13
  %.not.i.i.i.i55 = icmp ult i32 %i.jm, %i.jn
  br i1 %.not.i.i.i.i55, label %bb.z, label %bb.y, !prof !22

bb.y:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr nonnull %i.jl)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.jo = zext i32 %i.jm to i64
  %i.jp = load ptr, ptr %22, align 8, !tbaa !11
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jo
  store ptr %i.jl, ptr %i.jq, align 1
  %i.jr = load i32, ptr %i.if, align 8, !tbaa !10
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.if, align 8, !tbaa !10
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i: ; preds = %bb.z, %bb.y
  %i.jt = add nuw nsw i64 %.sroa.06.010.i.i, 1    ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.jt, %i.ji
  br i1 %.not.i.i56, label %"_ZN4llvm9transformINS_10iota_rangeImEESt20back_insert_iteratorINS_11SmallVectorIN4mlir5ValueELj6EEEEZNS5_6linalg20interchangeGenericOpERNS5_12RewriterBaseENS9_9GenericOpENS_8ArrayRefIjEEE3$_1EET0_OT_SG_T1_.exit", label %.lr.ph.i.i, !llvm.loop !44

"_ZN4llvm9transformINS_10iota_rangeImEESt20back_insert_iteratorINS_11SmallVectorIN4mlir5ValueELj6EEEEZNS5_6linalg20interchangeGenericOpERNS5_12RewriterBaseENS9_9GenericOpENS_8ArrayRefIjEEE3$_1EET0_OT_SG_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN4mlir5ValueELj6EEEEaSEOS3_.exit.i.i, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE11getNumLoopsEv.exit53
  %i.ju = load ptr, ptr %21, align 8, !tbaa !49   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.jv = call noundef i64 @_ZN4mlir6linalg7IndexOp6getDimEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #8
  %i.jw = trunc i64 %i.jv to i32
  store i32 %i.jw, ptr %i.a, align 4, !tbaa !15
  %i.jx = call ptr @_ZNK4mlir9AffineMap9getSubMapEN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr nonnull %i.a, i64 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.jy, align 8
  %i.jz = load ptr, ptr %22, align 8, !tbaa !11
  %i.ka = load i32, ptr %i.if, align 8, !tbaa !10
  %i.kb = zext i32 %i.ka to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.jz, i64 %i.kb) #8
  %i.kc = load i64, ptr %4, align 8
  %i.kd = load i64, ptr %i.il, align 8
  %i.ke = call ptr @_ZN4mlir6affine13AffineApplyOp6createERNS_9OpBuilderENS_8LocationENS_9AffineMapENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %.sroa.0.0.copyload.i.i, ptr %i.jx, i64 %i.kc, i64 %i.kd) #8
  %i.kf = load ptr, ptr %0, align 8, !tbaa !65
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.ju, ptr noundef %i.ke) #8, !inline_history !45
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ki = load ptr, ptr %22, align 8, !tbaa !11   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ie
  br i1 %i.kj, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %"_ZN4llvm9transformINS_10iota_rangeImEESt20back_insert_iteratorINS_11SmallVectorIN4mlir5ValueELj6EEEEZNS5_6linalg20interchangeGenericOpERNS5_12RewriterBaseENS9_9GenericOpENS_8ArrayRefIjEEE3$_1EET0_OT_SG_T1_.exit"
  call void @free(ptr noundef %i.ki) #8
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %"_ZN4llvm9transformINS_10iota_rangeImEESt20back_insert_iteratorINS_11SmallVectorIN4mlir5ValueELj6EEEEZNS5_6linalg20interchangeGenericOpERNS5_12RewriterBaseENS9_9GenericOpENS_8ArrayRefIjEEE3$_1EET0_OT_SG_T1_.exit", %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  %.not101 = icmp eq ptr %.sroa.062.2, %i.hu
  br i1 %.not101, label %._crit_edge108, label %bb.t

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.k, %_ZN4mlir24applyPermutationToVectorINS_9AttributeELj6EEEvRN4llvm11SmallVectorIT_XT0_EEENS2_8ArrayRefIlEE.exit, %bb.s, %bb.r, %_ZN4mlir6linalg9GenericOp17hasIndexSemanticsEv.exit
  %i.kk = load i64, ptr %14, align 8
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = load ptr, ptr %20, align 8, !tbaa !11   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.bp
  br i1 %i.kn, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit
  call void @free(ptr noundef %i.km) #8
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  %i.ko = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.bk
  br i1 %i.kp, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.ko) #8
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  %i.kq = load ptr, ptr %16, align 8, !tbaa !11   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.ag
  br i1 %i.kr, label %"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit", label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit
  call void @free(ptr noundef %i.kq) #8
  br label %"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit"

"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit": ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  %.val1.val.i = load ptr, ptr %14, align 8, !tbaa !49
  %i.ks = load ptr, ptr %0, align 8, !tbaa !65
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %.val1.val.i) #8, !inline_history !46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit", %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.094.0 = phi ptr [ undef, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ %i.kl, %"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit" ]
  %.sroa.295.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %"_ZN4llvm10scope_exitIZN4mlir6linalg20interchangeGenericOpERNS1_12RewriterBaseENS2_9GenericOpENS_8ArrayRefIjEEE3$_0ED2Ev.exit" ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.094.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.295.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN4mlir18inversePermutationENS_9AffineMapE(ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir9AffineMap17getPermutationMapEN4llvm8ArrayRefIjEEPNS_11MLIRContextE(ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK4mlir9AffineMap7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK4mlir9AffineMap7composeES0_(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder21getAffineMapArrayAttrEN4llvm8ArrayRefINS_9AffineMapEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg9GenericOp16getIteratorTypesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare ptr @_ZNK4mlir9AffineMap9getSubMapEN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare noundef i64 @_ZN4mlir6linalg7IndexOp6getDimEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE21getIteratorTypesArrayEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.138") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::linalg::IteratorTypeAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = tail call ptr @_ZN4mlir6linalg9GenericOp16getIteratorTypesEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr %i.a, ptr %3, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !noalias !110
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !noalias !110 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 12, ptr %i.j, align 4, !tbaa !13
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 5 uses
  %i.o = icmp ugt i64 %i.n, 12
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.h, i64 noundef %i.n, i64 noundef 4) #8
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %.pre24.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre24.i.i, %bb.b ]
  %i.p = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.q = icmp sgt i64 %i.n, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2INS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEvEET_SF_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %2, align 8
  %i.u = call noundef i32 @_ZNK4mlir6linalg16IteratorTypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i32 %i.u, ptr %.045.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.x = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -1
  %i.y = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5utils12IteratorTypeELb1EE18uninitialized_copyINS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEPS3_EEvT_SG_T0_.exit.loopexit.i.i, !llvm.loop !109

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5utils12IteratorTypeELb1EE18uninitialized_copyINS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEPS3_EEvT_SG_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.pre23.i.i = load i32, ptr %i.i, align 8, !tbaa !10
  br label %_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2INS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEvEET_SF_.exit

_ZN4llvm11SmallVectorIN4mlir5utils12IteratorTypeELj12EEC2INS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEvEET_SF_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5utils12IteratorTypeELb1EE18uninitialized_copyINS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEPS3_EEvT_SG_T0_.exit.loopexit.i.i
  %i.z = phi i32 [ %.pre23.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5utils12IteratorTypeELb1EE18uninitialized_copyINS_15mapped_iteratorINS1_9ArrayAttr19attr_value_iteratorINS1_6linalg16IteratorTypeAttrEEEZNKS7_15getAsValueRangeISA_S3_EEDavEUlSA_E_S3_EEPS3_EEvT_SG_T0_.exit.loopexit.i.i ], [ %i.p, %_ZN4llvm15SmallVectorImplIN4mlir5utils12IteratorTypeEE7reserveEm.exit.i.i ]
  %i.aa = trunc i64 %i.n to i32
  %i.ab = add i32 %i.z, %i.aa
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !10
  ret void
}

declare noundef i32 @_ZNK4mlir6linalg16IteratorTypeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !115, !align !116
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #8 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = load i32, ptr %i.a, align 8, !tbaa !10
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !10
end_hunk_1
