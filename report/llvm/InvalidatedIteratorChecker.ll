Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InvalidatedIteratorChecker?download=true
inline.NumInlined: 619
inline.NumDeleted: 465
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.std::unique_ptr.261" = type { %"struct.std::__uniq_ptr_data.262" }
%"struct.std::__uniq_ptr_data.262" = type { %"class.std::__uniq_ptr_impl.263" }
%"class.std::__uniq_ptr_impl.263" = type { %"class.std::tuple.264" }
%"class.std::tuple.264" = type { %"struct.std::_Tuple_impl.265" }
%"struct.std::_Tuple_impl.265" = type { %"struct.std::_Head_base.268" }
%"struct.std::_Head_base.268" = type { ptr }
%"class.clang::ento::PathDiagnosticLocation" = type <{ i32, [4 x i8], ptr, ptr, ptr, %"class.clang::FullSourceLoc", %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>
%"class.clang::FullSourceLoc" = type { %"class.clang::SourceLocation", ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.clang::ento::PathDiagnosticRange" = type <{ %"class.clang::SourceRange", i8, [3 x i8] }>
%"class.clang::SourceRange" = type { %"class.clang::SourceLocation", %"class.clang::SourceLocation" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::IntrusiveRefCntPtr" = type { ptr }
%"class.clang::ProgramPoint" = type { ptr, %"class.llvm::PointerIntPair", %"class.llvm::PointerIntPair.186", %"class.llvm::PointerIntPair.188", %"class.clang::CFGBlock::ElementRefImpl" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer.185" }
%"struct.llvm::detail::PunnedPointer.185" = type { [8 x i8] }
%"class.llvm::PointerIntPair.186" = type { %"struct.llvm::detail::PunnedPointer.187" }
%"struct.llvm::detail::PunnedPointer.187" = type { [8 x i8] }
%"class.llvm::PointerIntPair.188" = type { %"struct.llvm::detail::PunnedPointer.189" }
%"struct.llvm::detail::PunnedPointer.189" = type { [8 x i8] }
%"class.clang::CFGBlock::ElementRefImpl" = type { ptr, i64 }
%"class.clang::ento::EnvironmentEntry" = type { %"struct.std::pair.386" }
%"struct.std::pair.386" = type { ptr, ptr }

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ = comdat any

$_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE = comdat any

$_ZN5clang4ento5check7PreStmtINS_13UnaryOperatorEE12_handlesStmtEPKNS_4StmtE = comdat any

$_ZN5clang4ento5check7PreStmtINS_14BinaryOperatorEE12_handlesStmtEPKNS_4StmtE = comdat any

$_ZN5clang4ento5check7PreStmtINS_18ArraySubscriptExprEE12_handlesStmtEPKNS_4StmtE = comdat any

$_ZN5clang4ento5check7PreStmtINS_10MemberExprEE12_handlesStmtEPKNS_4StmtE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZN5clang4ento14CheckerManager6getTagIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEPvvE3tag = internal global i32 0, align 4
@_ZTVN12_GLOBAL__N_126InvalidatedIteratorCheckerE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_126InvalidatedIteratorCheckerD2Ev, ptr @_ZN12_GLOBAL__N_126InvalidatedIteratorCheckerD0Ev, ptr @_ZNK5clang4ento11CheckerBase11getDebugTagEv, ptr @_ZNK5clang4ento14CheckerBackend10printStateERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKcSA_] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Iterator invalidated\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Misuse of STL APIs\00", align 1
@_ZTVN5clang4ento7BugTypeE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalidated iterator accessed.\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento34registerInvalidatedIteratorCheckerERNS0_14CheckerManagerE(ptr noundef nonnull align 8 dereferenceable(1864) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr @_ZZN5clang4ento14CheckerManager6getTagIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEPvvE3tag, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #14, !noalias !12 ; 20 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, i8 0, i64 144, i1 false), !noalias !12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_126InvalidatedIteratorCheckerE, i64 16), ptr %i.h, align 16, !tbaa !15, !noalias !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4ento7BugTypeE, i64 16), ptr %i.i, align 8, !tbaa !15, !noalias !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.j, ptr %i.k, align 16, !tbaa !17, !noalias !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %i.l, align 16, !tbaa !20, !noalias !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !22, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !12
  store i64 20, ptr %i.b, align 8, !tbaa !25, !noalias !12
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13, !noalias !12 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !27, !noalias !12
  %i.p = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !12 ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !29, !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.o, ptr noundef nonnull align 1 dereferenceable(20) @.str, i64 20, i1 false), !noalias !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 %i.p, ptr %i.q, align 16, !tbaa !30, !noalias !12
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !27, !noalias !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !29, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !22, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !12
  store i64 18, ptr %i.a, align 8, !tbaa !25, !noalias !12
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13, !noalias !12 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !27, !noalias !12
  %i.w = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !12 ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !29, !noalias !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.v, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 18, i1 false), !noalias !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 %i.w, ptr %i.x, align 16, !tbaa !30, !noalias !12
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !27, !noalias !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !29, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store i8 0, ptr %i.aa, align 8, !tbaa !31, !noalias !12
  call void @_ZN5clang4ento14CheckerManager19_registerForPreCallENS0_9CheckerFnIFvRKNS0_9CallEventERNS0_14CheckerContextEEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE, ptr nonnull %i.h) #13
  call void @_ZN5clang4ento14CheckerManager19_registerForPreStmtENS0_9CheckerFnIFvPKNS_4StmtERNS0_14CheckerContextEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreStmtINS_13UnaryOperatorEE10_checkStmtIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE, ptr nonnull %i.h, ptr noundef nonnull @_ZN5clang4ento5check7PreStmtINS_13UnaryOperatorEE12_handlesStmtEPKNS_4StmtE) #13
  call void @_ZN5clang4ento14CheckerManager19_registerForPreStmtENS0_9CheckerFnIFvPKNS_4StmtERNS0_14CheckerContextEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreStmtINS_14BinaryOperatorEE10_checkStmtIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE, ptr nonnull %i.h, ptr noundef nonnull @_ZN5clang4ento5check7PreStmtINS_14BinaryOperatorEE12_handlesStmtEPKNS_4StmtE) #13
  call void @_ZN5clang4ento14CheckerManager19_registerForPreStmtENS0_9CheckerFnIFvPKNS_4StmtERNS0_14CheckerContextEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreStmtINS_18ArraySubscriptExprEE10_checkStmtIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE, ptr nonnull %i.h, ptr noundef nonnull @_ZN5clang4ento5check7PreStmtINS_18ArraySubscriptExprEE12_handlesStmtEPKNS_4StmtE) #13
  call void @_ZN5clang4ento14CheckerManager19_registerForPreStmtENS0_9CheckerFnIFvPKNS_4StmtERNS0_14CheckerContextEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check7PreStmtINS_10MemberExprEE10_checkStmtIN12_GLOBAL__N_126InvalidatedIteratorCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE, ptr nonnull %i.h, ptr noundef nonnull @_ZN5clang4ento5check7PreStmtINS_10MemberExprEE12_handlesStmtEPKNS_4StmtE) #13
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !10
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i, label %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #13, !inline_history !40
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  br label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i

_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i, %bb.b, %bb.a
  %i.af = phi ptr [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !42, !range !44, !noundef !45
  %i.ak = trunc nuw i8 %i.aj to i1
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br i1 %i.ak, label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i
  store i8 1, ptr %i.ai, align 8, !tbaa !42
  br label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit

_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit: ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_126InvalidatedIteratorCheckerEJEEEPT_DpOT0_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang4ento40shouldRegisterInvalidatedIteratorCheckerERKNS0_14CheckerManagerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1864) %0) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46, !noalias !50 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55, !noalias !50 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !56, !noalias !50 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !57
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !58

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.01624.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.01624.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !57
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !60, !llvm.loop !61

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !64
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !59

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !63
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !57
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !57
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !64
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !65
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46, !noalias !67 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55, !noalias !67 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56, !noalias !67 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !58

.lr.ph:                                           ; preds = %bb.b, %bb.c
end_hunk_0
