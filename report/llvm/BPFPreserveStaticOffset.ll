Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFPreserveStaticOffset?download=true
inline.NumInlined: 1136
inline.NumDeleted: 721
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"struct.llvm::AAMDNodes" = type { ptr, ptr, ptr, ptr, ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::InsertPosition" = type { %"class.llvm::ilist_iterator_w_bits" }
%"class.llvm::ilist_iterator_w_bits" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [48 x i8] }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet", %"class.llvm::SmallPtrSet.2" }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::SmallPtrSet.2" = type { %"class.llvm::SmallPtrSetImpl.base.4", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.4" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallVector.38" = type { %"class.llvm::SmallVectorImpl.39", %"struct.llvm::SmallVectorStorage.42" }
%"class.llvm::SmallVectorImpl.39" = type { %"class.llvm::SmallVectorTemplateBase.40" }
%"class.llvm::SmallVectorTemplateBase.40" = type { %"class.llvm::SmallVectorTemplateCommon.41" }
%"class.llvm::SmallVectorTemplateCommon.41" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.42" = type { [48 x i8] }
%"class.llvm::SmallVector.43" = type { %"class.llvm::SmallVectorImpl.44", %"struct.llvm::SmallVectorStorage.47" }
%"class.llvm::SmallVectorImpl.44" = type { %"class.llvm::SmallVectorTemplateBase.45" }
%"class.llvm::SmallVectorTemplateBase.45" = type { %"class.llvm::SmallVectorTemplateCommon.46" }
%"class.llvm::SmallVectorTemplateCommon.46" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.47" = type { [48 x i8] }
%"class.llvm::SmallVector.34" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.35" }
%"struct.llvm::SmallVectorStorage.35" = type { [256 x i8] }
%"class.llvm::SmallPtrSet.20" = type { %"class.llvm::SmallPtrSetImpl.base.22", [16 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.22" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.16 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.16 = type { i64, [8 x i8] }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%class.anon.51 = type { ptr, ptr, ptr, ptr, ptr }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.52" }
%"class.llvm::SmallVector.52" = type { %"class.llvm::SmallVectorImpl.53", %"struct.llvm::SmallVectorStorage.57" }
%"class.llvm::SmallVectorImpl.53" = type { %"class.llvm::SmallVectorTemplateBase.54" }
%"class.llvm::SmallVectorTemplateBase.54" = type { %"class.llvm::SmallVectorTemplateCommon.55" }
%"class.llvm::SmallVectorTemplateCommon.55" = type { %"class.llvm::SmallVectorBase.56" }
%"class.llvm::SmallVectorBase.56" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.57" = type { [128 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.llvm::DiagnosticInfoUnsupported" = type { %"class.llvm::DiagnosticInfoWithLocationBase", ptr }
%"class.llvm::DiagnosticInfoWithLocationBase" = type { %"class.llvm::DiagnosticInfo.base", ptr, %"class.llvm::DiagnosticLocation" }
%"class.llvm::DiagnosticInfo.base" = type <{ ptr, i32, i8 }>
%"class.llvm::DiagnosticLocation" = type { ptr, i32, i32 }
%"class.llvm::ArrayRef.155" = type { ptr, i64 }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"struct.(anonymous namespace)::GEPChainInfo" = type { i8, ptr, %"class.llvm::SmallVector", %"class.llvm::SmallVector.38" }

$_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE = comdat any

$_ZN4llvm18raw_string_ostreamC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4llvmlsERNS_11raw_ostreamERKNS_5ValueE = comdat any

$_ZN4llvm11raw_ostreamlsEPKc = comdat any

$_ZN4llvm11raw_ostreamlsEj = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm19raw_svector_ostreamC2ERNS_15SmallVectorImplIcEE = comdat any

$_ZNK4llvm5Twine6concatERKS0_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_17GetElementPtrInstELb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Expecting ConstantInt as argument #\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unexpected rewriteAccessChain Insn = \00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"Non-constant offset in access to a field of a type marked with preserve_static_offset might be rejected by BPF verifier\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c" (pass -g option to get exact location)\00", align 1
@_ZTVN4llvm25DiagnosticInfoUnsupportedE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4llvm27BPFPreserveStaticOffsetPass15reconstructLoadEPNS_8CallInstE(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::AAMDNodes", align 8  ; 4 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::InsertPosition", align 8 ; 2 uses
  %i.a = tail call fastcc noundef ptr @_ZL14reconstructGEPPN4llvm8CallInstEi(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.g, ptr noundef %i.f, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(34) %2, i1 noundef zeroext false, i8 0, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.i = call fastcc noundef i32 @_ZL20getOperandAsUnsignedPN4llvm8CallInstEj(ptr noundef nonnull %0, i32 noundef 1)
  %i.j = icmp ne i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 6 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !39
  %i.m = and i16 %i.l, -2
  %i.n = zext i1 %i.j to i16
  %i.o = or disjoint i16 %i.m, %i.n
  store i16 %i.o, ptr %i.k, align 2, !tbaa !39
  %i.p = call fastcc noundef i32 @_ZL20getOperandAsUnsignedPN4llvm8CallInstEj(ptr noundef nonnull %0, i32 noundef 2)
  %i.q = load i16, ptr %i.k, align 2, !tbaa !39
  %i.r = and i16 %i.q, -897
  %.tr.i.i.i.i.i.i = trunc i32 %i.p to i16
  %i.s = shl i16 %.tr.i.i.i.i.i.i, 7
  %i.t = and i16 %i.s, 896
  %i.u = or disjoint i16 %i.t, %i.r
  store i16 %i.u, ptr %i.k, align 2, !tbaa !39
  %i.v = call fastcc noundef i32 @_ZL20getOperandAsUnsignedPN4llvm8CallInstEj(ptr noundef nonnull %0, i32 noundef 3)
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i8 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = call fastcc noundef i32 @_ZL20getOperandAsUnsignedPN4llvm8CallInstEj(ptr noundef nonnull %0, i32 noundef 4)
  %i.z = trunc i32 %i.y to i16
  %i.aa = load i16, ptr %i.k, align 2, !tbaa !39
  %i.ab = and i16 %i.aa, -127
  %.tr.i.i.i.i.i19.i = shl i16 %i.z, 1
  %i.ac = and i16 %.tr.i.i.i.i.i19.i, 126
  %i.ad = or disjoint i16 %i.ac, %i.ab
  store i16 %i.ad, ptr %i.k, align 2, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.01.0.copyload.i, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.01.0.copyload.i, ptr %i.ag, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZNK4llvm11Instruction13getAAMetadataEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::AAMDNodes") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  call void @_ZN4llvm11Instruction13setAAMetadataERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.g, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL14reconstructGEPPN4llvm8CallInstEi(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::InsertPosition", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 6, ptr %i.c, align 4, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 268435455
  %i.g = zext nneg i32 %i.f to i64
  %i.h = zext nneg i32 %1 to i64                  ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.g
  %reass.sub = shl nsw i64 %i.i, 5
  %i.j = add nsw i64 %reass.sub, 192              ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %0, align 8, !tbaa !48
  switch i8 %i.l, label %bb.d [
    i8 88, label %_ZN4llvm8CallBase17data_operands_endEv.exit
    i8 36, label %bb.b
    i8 42, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i32 @_ZNK4llvm8CallBase34getNumSubclassExtraOperandsDynamicEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = sub nuw nsw i64 -32, %i.o
  %.pre = load i32, ptr %i.b, align 8, !tbaa !46
  %.pre14 = load i32, ptr %i.c, align 4, !tbaa !47
  %i.q = zext i32 %.pre14 to i64
  br label %_ZN4llvm8CallBase17data_operands_endEv.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZN4llvm8CallBase17data_operands_endEv.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.r = phi i64 [ %i.q, %bb.c ], [ 6, %bb.b ], [ 6, %bb.a ]
  %i.s = phi i32 [ %.pre, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0.i.i.neg = phi i64 [ %i.p, %bb.c ], [ -96, %bb.b ], [ -32, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.0.i.i.neg
  %gepdiff = sub nsw i64 %.0.i.i.neg, %i.j
  %i.u = ashr exact i64 %gepdiff, 5               ; 2 uses
  %i.v = zext i32 %i.s to i64                     ; 2 uses
  %i.w = add nsw i64 %i.u, %i.v                   ; 2 uses
  %i.x = icmp ugt i64 %i.w, %i.r
  br i1 %i.x, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i

bb.e:                                             ; preds = %_ZN4llvm8CallBase17data_operands_endEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef 8) #15
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !46 ; 2 uses
  %.pre8.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i: ; preds = %bb.e, %_ZN4llvm8CallBase17data_operands_endEv.exit
  %.pre-phi.i = phi i64 [ %i.v, %_ZN4llvm8CallBase17data_operands_endEv.exit ], [ %.pre8.i, %bb.e ]
  %i.y = phi i32 [ %i.s, %_ZN4llvm8CallBase17data_operands_endEv.exit ], [ %.pre.i, %bb.e ]
  %.not9.i.i.i.i.i = icmp eq i64 %i.j, %.0.i.i.neg
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i
  %i.z = load ptr, ptr %2, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.ab = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !53
  store ptr %i.ab, ptr %.011.i.i.i.i.i, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i
  %i.ae = trunc i64 %i.u to i32
  %i.af = add i32 %i.y, %i.ae
  store i32 %i.af, ptr %i.b, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = call noundef ptr @_ZNK4llvm13AttributeList19getParamElementTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %1) #15
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = load ptr, ptr %2, align 8, !tbaa !45
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !46
  %i.ar = zext i32 %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.as = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.aw, align 1, !tbaa !59
  store ptr %i.at, ptr %3, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ay = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.ah, ptr noundef %i.ao, ptr %i.ap, i64 %i.ar, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.az = add nuw nsw i32 %1, 5
  %i.ba = call fastcc noundef i32 @_ZL20getOperandAsUnsignedPN4llvm8CallInstEj(ptr noundef nonnull %0, i32 noundef %i.az)
  %i.bb = icmp ne i32 %i.ba, 0
  call void @_ZN4llvm17GetElementPtrInst13setIsInBoundsEb(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, i1 noundef zeroext %i.bb) #15
  %i.bc = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit
end_hunk_0
begin_hunk_1_@"_ZZL18rewriteAccessChainPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEERNS2_IS1_Lj6EEEbRbENK3$_1clES1_":bb.a
  %i.to = call noundef ptr @_ZN4llvm4UsernwEmNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE(i64 noundef 96, i64 %.sroa.05.0.insert.ext6.i.i.i.i64.i) #15 ; 10 uses
  %i.tp = and i32 %i.tn, 268435455
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !37
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !38
  call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(92) %i.to, ptr noundef %i.ts, i32 noundef 58, i32 %i.tp, ptr null, i64 0) #15
  %i.tt = getelementptr inbounds nuw i8, ptr %i.to, i64 72 ; 9 uses
  store ptr null, ptr %i.tt, align 8, !tbaa !291
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 88
  store i32 0, ptr %i.tu, align 8, !tbaa !293
  call void @_ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(92) %i.to, ptr noundef nonnull %i.tl, ptr noundef %i.ti, ptr %i.tg, i64 %i.th, ptr noundef nonnull byval(%"class.llvm::ArrayRef.155") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.tv = load ptr, ptr %i.at, align 8, !tbaa !189
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 7 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.tz = call ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ty, i32 noundef 87, ptr noundef %i.tv) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.c, align 4, !tbaa !294
  %i.ua = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.uc = call ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr nonnull %i.c, i64 1, ptr %i.tz) #15
  store ptr %i.uc, ptr %i.tt, align 8, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ud = load ptr, ptr %i.pp, align 8, !tbaa !53
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !79
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load i32, ptr %i.ug, align 8
  %i.ui = and i32 %i.uh, 255
  %i.uj = icmp eq i32 %i.ui, 15
  br i1 %i.uj, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZL17makeIntrinsicCallPN4llvm6ModuleENS_9Intrinsic13BPFIntrinsicsENS_8ArrayRefIPNS_4TypeEEENS4_IPNS_5ValueEEE.exit.i63.i
  %i.uk = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.um = call ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ul, i32 noundef 54, i64 noundef 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4, !tbaa !294
  %i.un = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.up = call ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %i.uo, ptr nonnull %i.b, i64 1, ptr %i.um) #15
  store ptr %i.up, ptr %i.tt, align 8, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZL17makeIntrinsicCallPN4llvm6ModuleENS_9Intrinsic13BPFIntrinsicsENS_8ArrayRefIPNS_4TypeEEENS4_IPNS_5ValueEEE.exit.i63.i
  %.val.i65.i = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %.val25.i.i = load i32, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.uq = load ptr, ptr %.val.i65.i, align 8, !tbaa !175
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 48
  %.sroa.011.0.copyload.i.i66.i = load ptr, ptr %i.ur, align 8, !tbaa !43 ; 2 uses
  %i.us = zext i32 %.val25.i.i to i64
  %.idx.i27.i.i = shl nuw nsw i64 %i.us, 3
  %i.ut = getelementptr inbounds nuw i8, ptr %.val.i65.i, i64 %.idx.i27.i.i
  %.not1.i.i67.i = icmp eq i32 %.val25.i.i, 0
  br i1 %.not1.i.i67.i, label %_ZL14mergeDebugLocsIN4llvm17GetElementPtrInstEENS0_8DebugLocERNS0_11SmallVectorIPT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEE.exit.i72.i, label %.lr.ph.i.i68.i

.lr.ph.i.i68.i:                                   ; preds = %bb.ce, %.lr.ph.i.i68.i
  %.sroa.011.03.i.i69.i = phi ptr [ %i.uw, %.lr.ph.i.i68.i ], [ %.sroa.011.0.copyload.i.i66.i, %bb.ce ]
  %.02.i.i70.i = phi ptr [ %i.ux, %.lr.ph.i.i68.i ], [ %.val.i65.i, %bb.ce ] ; 2 uses
  %i.uu = load ptr, ptr %.02.i.i70.i, align 8, !tbaa !175
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 48
  %.sroa.0.0.copyload.i.i71.i = load ptr, ptr %i.uv, align 8, !tbaa !43
  %i.uw = call ptr @_ZN4llvm8DebugLoc17getMergedLocationES0_S0_(ptr %.sroa.011.03.i.i69.i, ptr %.sroa.0.0.copyload.i.i71.i) #15 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.02.i.i70.i, i64 8 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.ux, %i.ut
  br i1 %.not.i28.i.i, label %_ZL14mergeDebugLocsIN4llvm17GetElementPtrInstEENS0_8DebugLocERNS0_11SmallVectorIPT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEE.exit.i72.i, label %.lr.ph.i.i68.i

_ZL14mergeDebugLocsIN4llvm17GetElementPtrInstEENS0_8DebugLocERNS0_11SmallVectorIPT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEE.exit.i72.i: ; preds = %.lr.ph.i.i68.i, %bb.ce
  %.sroa.011.0.lcssa.i.i73.i = phi ptr [ %.sroa.011.0.copyload.i.i66.i, %bb.ce ], [ %i.uw, %.lr.ph.i.i68.i ]
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.uy, align 8, !tbaa !43
  call void @_ZN4llvm11Instruction19applyMergedLocationENS_8DebugLocES1_(ptr noundef nonnull align 8 dereferenceable(72) %i.to, ptr %.sroa.011.0.lcssa.i.i73.i, ptr %.sroa.0.0.copyload.i.i) #15
  %i.uz = load i16, ptr %i.pu, align 2, !tbaa !39
  %i.va = and i16 %i.uz, 769
  %i.vb = icmp eq i16 %i.va, 0
  br i1 %i.vb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZL14mergeDebugLocsIN4llvm17GetElementPtrInstEENS0_8DebugLocERNS0_11SmallVectorIPT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEE.exit.i72.i
  call void @_ZN4llvm8CallBase19setOnlyWritesMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %i.to) #15
  call void @_ZN4llvm8CallBase24setOnlyAccessesArgMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %i.to) #15
  %i.vc = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.ve = call ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEm(ptr noundef nonnull align 8 dereferenceable(8) %i.vd, i32 noundef 83, i64 noundef 0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !294
  %i.vf = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.vh = call ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %i.vg, ptr nonnull %i.a, i64 1, ptr %i.ve) #15
  store ptr %i.vh, ptr %i.tt, align 8, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZL14mergeDebugLocsIN4llvm17GetElementPtrInstEENS0_8DebugLocERNS0_11SmallVectorIPT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS5_EE5valueEEE.exit.i72.i
  %i.vi = load i32, ptr %i.pn, align 8, !tbaa !46
  %i.vj = icmp ugt i32 %i.vi, 7
  br i1 %i.vj, label %.lr.ph.i75.i, label %._crit_edge.i74.i

._crit_edge.i74.i:                                ; preds = %.lr.ph.i75.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK4llvm11Instruction13getAAMetadataEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::AAMDNodes") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  call void @_ZN4llvm11Instruction13setAAMetadataERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(72) %i.to, ptr noundef nonnull align 8 dereferenceable(40) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.vk = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.pm
  br i1 %i.vl, label %_ZL15makeGEPAndStorePN4llvm6ModuleERN12_GLOBAL__N_112GEPChainInfoEPNS_9StoreInstE.exit.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i74.i
  call void @free(ptr noundef %i.vk) #15
  br label %_ZL15makeGEPAndStorePN4llvm6ModuleERN12_GLOBAL__N_112GEPChainInfoEPNS_9StoreInstE.exit.i

.lr.ph.i75.i:                                     ; preds = %bb.cg, %.lr.ph.i75.i
  %.031.i.i = phi i32 [ %i.vo, %.lr.ph.i75.i ], [ 7, %bb.cg ]
  %i.vm = load ptr, ptr %i.tw, align 8, !tbaa !79
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !191, !nonnull !70, !align !173
  %i.vo = add nuw i32 %.031.i.i, 1                ; 3 uses
  %i.vp = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %i.vn, i32 noundef %i.vo, i32 noundef 15) #15
  store ptr %i.vp, ptr %i.tt, align 8, !tbaa !295
  %i.vq = load i32, ptr %i.pn, align 8, !tbaa !46
  %i.vr = icmp ugt i32 %i.vq, %i.vo
  br i1 %i.vr, label %.lr.ph.i75.i, label %._crit_edge.i74.i, !llvm.loop !168

_ZL15makeGEPAndStorePN4llvm6ModuleERN12_GLOBAL__N_112GEPChainInfoEPNS_9StoreInstE.exit.i: ; preds = %bb.ch, %._crit_edge.i74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.to, ptr nonnull %i.vs, i64 0) #15
  br label %_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.thread.i

_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.thread.i: ; preds = %_ZL15makeGEPAndStorePN4llvm6ModuleERN12_GLOBAL__N_112GEPChainInfoEPNS_9StoreInstE.exit.i, %bb.bm, %_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.i, %bb.af, %bb.l
  %.0.i = phi i1 [ false, %_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.i ], [ true, %_ZL15makeGEPAndStorePN4llvm6ModuleERN12_GLOBAL__N_112GEPChainInfoEPNS_9StoreInstE.exit.i ], [ true, %bb.bm ], [ false, %bb.af ], [ false, %bb.l ]
  %i.vt = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.aq
  br i1 %i.vu, label %_ZN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EED2Ev.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.thread.i
  call void @free(ptr noundef %i.vt) #15
  br label %_ZN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EED2Ev.exit.i.i: ; preds = %bb.ci, %_ZL22foldGEPChainAsU8AccessRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEERN12_GLOBAL__N_112GEPChainInfoE.exit.thread.i
  %i.vv = load ptr, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.am
  br i1 %i.vw, label %_ZL26tryToReplaceWithGEPBuiltinPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEES1_.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.vv) #15
  br label %_ZL26tryToReplaceWithGEPBuiltinPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEES1_.exit

_ZL26tryToReplaceWithGEPBuiltinPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEES1_.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EED2Ev.exit.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br i1 %.0.i, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %_ZL26tryToReplaceWithGEPBuiltinPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEES1_.exit
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !297, !nonnull !70, !align !173 ; 4 uses
  %i.vz = load ptr, ptr %i.ai, align 8, !tbaa !176, !nonnull !70, !align !173
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !74 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 3 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !46 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !47
  %.not.i4 = icmp ult i32 %i.wc, %i.we
  br i1 %.not.i4, label %bb.cm, label %bb.cl, !prof !77

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, ptr noundef %i.wa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.cm:                                            ; preds = %bb.ck
  %i.wf = zext i32 %i.wc to i64
  %i.wg = load ptr, ptr %i.vy, align 8, !tbaa !45
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wf
  store ptr %i.wa, ptr %i.wh, align 1
  %i.wi = load i32, ptr %i.wb, align 8, !tbaa !46
  %i.wj = add i32 %i.wi, 1
  store i32 %i.wj, ptr %i.wb, align 8, !tbaa !46
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.cn:                                            ; preds = %_ZL26tryToReplaceWithGEPBuiltinPN4llvm11InstructionERNS_11SmallVectorIPNS_17GetElementPtrInstELj6EEES1_.exit
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !298, !nonnull !70
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !78, !range !69, !noundef !70
  %i.wn = trunc nuw i8 %i.wm to i1
  br i1 %i.wn, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.wo = load ptr, ptr %i.ai, align 8, !tbaa !176, !nonnull !70, !align !173
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !74 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !79
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !191, !nonnull !70, !align !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.wt = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.wp) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 48 ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !299
  %.not.i5 = icmp eq ptr %i.wv, null
  %16 = select i1 %.not.i5, ptr @.str.7, ptr @.str ; 2 uses
  %17 = load i8, ptr %16, align 1, !tbaa !60
  %.not.i.i6 = icmp eq i8 %17, 0
  store ptr @.str.6, ptr %3, align 8
  br i1 %.not.i.i6, label %_ZL23reportNonStaticGEPChainPN4llvm11InstructionE.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ww = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %16, ptr %i.ww, align 8, !alias.scope !300
  br label %_ZL23reportNonStaticGEPChainPN4llvm11InstructionE.exit

_ZL23reportNonStaticGEPChainPN4llvm11InstructionE.exit: ; preds = %bb.co, %bb.cp
  %.sink.i = phi i8 [ 3, %bb.cp ], [ 1, %bb.co ]
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !102
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 %.sink.i, ptr %.sroa.79.0..sroa_idx.i, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.wu) #15
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 25, ptr %i.wx, align 8, !tbaa !303
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.wy, align 4, !tbaa !304
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.wt, ptr %i.wz, align 8, !tbaa !306
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !309
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %2, align 8, !tbaa !96
  %i.xb = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %3, ptr %i.xb, align 8, !tbaa !311
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef nonnull align 8 dereferenceable(13) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL23reportNonStaticGEPChainPN4llvm11InstructionE.exit, %bb.cn
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !312, !nonnull !70
  store i8 1, ptr %i.xd, align 1, !tbaa !78
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit: ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i, %bb.a, %bb.cm, %bb.cl, %_ZL14allZeroIndicesRN4llvm11SmallVectorIPNS_17GetElementPtrInstELj6EEE.exit, %bb.cq
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm4UserdlEPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN4llvm11InstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19raw_svector_ostreamC2ERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm11raw_ostream13SetUnbufferedEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.a, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.c, align 4, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %0, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !314
  tail call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, i64 noundef 0, i32 noundef 0) #15
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5Twine6concatERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58    ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !58    ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !59
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !315
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !315
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !59
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8
  %.014 = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0 = select i1 %i.m, ptr %.sroa.05.0.copyload, ptr %1
  %.sroa.56.0 = select i1 %i.m, i64 %.sroa.56.0.copyload, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !59
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.0 = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0 = select i1 %i.p, ptr %.sroa.04.0.copyload, ptr %2
  %.sroa.5.0 = select i1 %i.p, i64 %.sroa.5.0.copyload, i64 undef
  store ptr %.sroa.05.0, ptr %0, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0, ptr %i.s, align 1, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst17hasAllZeroIndicesEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

declare void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst10isInBoundsEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst21hasAllConstantIndicesEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst24accumulateConstantOffsetERKNS_10DataLayoutERNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(912), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm11ConstantInt3getERNS_11LLVMContextERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK4llvm11Instruction9getModuleEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction19applyMergedLocationENS_8DebugLocES1_(ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4llvm8CallBase18setOnlyReadsMemoryEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN4llvm8CallBase24setOnlyAccessesArgMemoryEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction13setAAMetadataERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK4llvm11Instruction13getAAMetadataEv(ptr dead_on_unwind writable sret(%"struct.llvm::AAMDNodes") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef, i32 noundef, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4UsernwEmNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE(i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN4llvm8CallInst4initEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.155") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare ptr @_ZN4llvm8DebugLoc17getMergedLocationES0_S0_(ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEm(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm8CallBase19setOnlyWritesMemoryEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
end_hunk_1
