Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CStringSyntaxChecker?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.(anonymous namespace)::WalkAST" = type { ptr, ptr, ptr }
%"class.llvm::APInt" = type <{ %union.anon.679, i32, [4 x i8] }>
%union.anon.679 = type { i64 }
%"class.clang::ento::PathDiagnosticLocation" = type <{ i32, [4 x i8], ptr, ptr, ptr, %"class.clang::FullSourceLoc", %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>
%"class.clang::FullSourceLoc" = type { %"class.clang::SourceLocation", ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.clang::ento::PathDiagnosticRange" = type <{ %"class.clang::SourceRange", i8, [3 x i8] }>
%"class.clang::SourceRange" = type { %"class.clang::SourceLocation", %"class.clang::SourceLocation" }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.655" }
%"class.llvm::SmallVector.655" = type { %"class.llvm::SmallVectorImpl.656", %"struct.llvm::SmallVectorStorage.660" }
%"class.llvm::SmallVectorImpl.656" = type { %"class.llvm::SmallVectorTemplateBase.657" }
%"class.llvm::SmallVectorTemplateBase.657" = type { %"class.llvm::SmallVectorTemplateCommon.658" }
%"class.llvm::SmallVectorTemplateCommon.658" = type { %"class.llvm::SmallVectorBase.659" }
%"class.llvm::SmallVectorBase.659" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.660" = type { [256 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.661" = type { ptr, i64 }
%"class.llvm::ArrayRef.662" = type { ptr, i64 }
%"class.llvm::iterator_range" = type { %"struct.clang::StmtIterator", %"struct.clang::StmtIterator" }
%"struct.clang::StmtIterator" = type { %"class.clang::StmtIteratorImpl" }
%"class.clang::StmtIteratorImpl" = type { %"class.clang::StmtIteratorBase" }
%"class.clang::StmtIteratorBase" = type { %union.anon.559, i64, ptr }
%union.anon.559 = type { ptr }

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ = comdat any

$_ZNK5clang12APIntStorage8getValueEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZN5clang4ento14CheckerManager6getTagIN12_GLOBAL__N_120CStringSyntaxCheckerEEEPvvE3tag = internal global i32 0, align 4
@_ZTVN12_GLOBAL__N_120CStringSyntaxCheckerE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN5clang15ProgramPointTagD2Ev, ptr @_ZN12_GLOBAL__N_120CStringSyntaxCheckerD0Ev, ptr @_ZNK5clang4ento11CheckerBase11getDebugTagEv, ptr @_ZNK5clang4ento14CheckerBackend10printStateERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKcSA_] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"strncat\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Potential buffer overflow. \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Replace with 'sizeof(\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c") - strlen(\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c") - 1'\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" or u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"se a safer 'strlcat' API\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Anti-pattern in the argument\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"C String API\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"strlcpy\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"strlcat\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"The third argument allows to potentially copy more bytes than it should. \00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Replace with the value \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"sizeof(<destination buffer>)\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" or lower\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"strlen\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento28registerCStringSyntaxCheckerERNS0_14CheckerManagerE(ptr noundef nonnull align 8 dereferenceable(1864) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr @_ZZN5clang4ento14CheckerManager6getTagIN12_GLOBAL__N_120CStringSyntaxCheckerEEEPvvE3tag, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.c = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16, !noalias !12 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.f, i8 0, i64 40, i1 false), !noalias !12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120CStringSyntaxCheckerE, i64 16), ptr %i.f, align 8, !tbaa !15, !noalias !12
  call void @_ZN5clang4ento14CheckerManager16_registerForBodyENS0_9CheckerFnIFvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterEEEE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr nonnull @_ZN5clang4ento5check11ASTCodeBody10_checkBodyIN12_GLOBAL__N_120CStringSyntaxCheckerEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE, ptr nonnull %i.f) #15
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !10   ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !10
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i, label %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #15, !inline_history !17
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !10
  br label %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i

_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i, %bb.b, %bb.a
  %i.k = phi ptr [ %i.f, %bb.b ], [ %.pre.i.i, %_ZNKSt14default_deleteIN5clang4ento14CheckerBackendEEclEPS2_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !22, !range !25, !noundef !26
  %i.p = trunc nuw i8 %i.o to i1
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br i1 %i.p, label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i
  store i8 1, ptr %i.n, align 8, !tbaa !22
  br label %_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit

_ZN5clang4ento14CheckerManager15registerCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit: ; preds = %_ZN5clang4ento14CheckerManager10getCheckerIN12_GLOBAL__N_120CStringSyntaxCheckerEJEEEPT_DpOT0_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang4ento34shouldRegisterCStringSyntaxCheckerERKNS0_14CheckerManagerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1864) %0) local_unnamed_addr #1 {
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !27, !noalias !31 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36, !noalias !31 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37, !noalias !31 ; 4 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !38
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !39

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.01624.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.01624.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !41, !llvm.loop !42

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKvSt10unique_ptrIN5clang4ento14CheckerBackendESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !36
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !27
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !38
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !46
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !27, !noalias !48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36, !noalias !48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37, !noalias !48 ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !39

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01624 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !40

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.01624, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_17WalkAST13VisitCallExprEPN5clang8CallExprE:bb.a
bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49
  call void @free(ptr noundef %i.jy) #15
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit:          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit49, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

bb.aw:                                            ; preds = %_ZN5clang8CallExpr15getDirectCalleeEv.exit
  %i.ka = tail call noundef zeroext i1 @_ZN5clang4ento14CheckerContext18isCLibraryFunctionEPKNS_12FunctionDeclEN4llvm9StringRefE(ptr noundef nonnull %i.c, ptr nonnull @.str.10, i64 7) #15
  br i1 %i.ka, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kb = tail call noundef zeroext i1 @_ZN5clang4ento14CheckerContext18isCLibraryFunctionEPKNS_12FunctionDeclEN4llvm9StringRefE(ptr noundef nonnull %i.c, ptr nonnull @.str.11, i64 7) #15
  br i1 %i.kb, label %bb.ay, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !71
  %.not.i52 = icmp eq i32 %i.kd, 3
  br i1 %.not.i52, label %bb.az, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.kf = load i32, ptr %1, align 8
  %i.kg = lshr i32 %i.kf, 19
  %i.kh = and i32 %i.kg, 1
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.ki ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !80 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !80 ; 6 uses
  %i.kn = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #18 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 8
  %i.kp = and i16 %i.ko, 511
  %.not98.i.a = icmp eq i16 %i.kp, 73
  %i.kq = tail call noundef ptr @_ZN5clang4Expr22IgnoreParenLValueCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.km) #18 ; 2 uses
  %i.kr = load i16, ptr %i.kq, align 8
  %i.ks = and i16 %i.kr, 511
  %.not93.i = icmp eq i16 %i.ks, 73
  %i.kt = load i16, ptr %i.km, align 8
  %i.ku = and i16 %i.kt, 511
  %.not.i.i54 = icmp eq i16 %i.ku, 5
  br i1 %.not.i.i54, label %bb.ba, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55

bb.ba:                                            ; preds = %bb.az
  %i.kv = load i24, ptr %i.km, align 8
  %or.cond.not.i.i60 = icmp ult i24 %i.kv, 524288
  br i1 %or.cond.not.i.i60, label %bb.bb, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55

bb.bb:                                            ; preds = %bb.ba
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !82
  %i.ky = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.kx) #18 ; 2 uses
  %i.kz = load i16, ptr %i.ky, align 8
  %i.la = and i16 %i.kz, 511
  %.not.i.i.i61 = icmp eq i16 %i.la, 73
  br i1 %.not.i.i.i61, label %bb.bc, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55

bb.bc:                                            ; preds = %bb.bb
  %i.lb = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.kk) #18 ; 2 uses
  %i.lc = load i16, ptr %i.lb, align 8
  %i.ld = and i16 %i.lc, 511
  %.not7.i.i.i62 = icmp eq i16 %i.ld, 73
  br i1 %.not7.i.i.i62, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.i63, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55

_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.i63: ; preds = %bb.bc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !83
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !83
  %i.li = icmp eq ptr %i.lf, %i.lh
  br i1 %i.li, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread, label %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55

_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55: ; preds = %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.i63, %bb.bc, %bb.bb, %bb.ba, %bb.az
  br i1 %.not93.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !83 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 28
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = and i32 %i.lm, 127
  %i.lo = add nsw i32 %i.ln, -48
  %i.lp = icmp ult i32 %i.lo, -7
  %.not60.not94.i = icmp eq ptr %i.lk, null
  %.not60.not.i = or i1 %.not60.not94.i, %i.lp
  br i1 %.not60.not.i, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.lk) #15
  %.not61.i = icmp eq ptr %i.lq, null
  br i1 %.not61.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lr = tail call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.lk) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55
  %.243.i = phi ptr [ %i.km, %_ZN12_GLOBAL__N_17WalkAST8isSizeofEPKN5clang4ExprES4_.exit.thread.i55 ], [ %i.km, %bb.be ], [ %i.lr, %bb.bf ]
  %i.ls = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.243.i) #18 ; 3 uses
  %i.lt = load i16, ptr %i.ls, align 8
  %i.lu = and i16 %i.lt, 511
  %.not96.i = icmp eq i16 %i.lu, 54
  br i1 %.not96.i, label %bb.bh, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !87, !noalias !150 ; 3 uses
  %i.ly = icmp ugt i32 %i.lx, 64
  br i1 %i.ly, label %_ZNK5clang12APIntStorage8getValueEv.exit.i, label %.thread.i56

.thread.i56:                                      ; preds = %bb.bh
  %i.lz = load i64, ptr %i.lv, align 8, !tbaa !82, !noalias !150
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZNK5clang12APIntStorage8getValueEv.exit.i:       ; preds = %bb.bh
  %i.ma = zext i32 %i.lx to i64
  %i.mb = add nuw nsw i64 %i.ma, 63
  %i.mc = lshr i64 %i.mb, 6
  %i.md = load ptr, ptr %i.lv, align 8, !tbaa !82, !noalias !150
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %i.lx, ptr %i.md, i64 %i.mc) #15
  %.pr.i = load ptr, ptr %2, align 8              ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !94
  %.pre.fr.i = freeze i32 %.pre.i
  %i.me = icmp ult i32 %.pre.fr.i, 65             ; 2 uses
  %spec.select.i = select i1 %i.me, ptr %2, ptr %.pr.i
  %.0.i.i59 = load i64, ptr %spec.select.i, align 8, !tbaa !82 ; 2 uses
  %i.mf = icmp eq ptr %.pr.i, null
  %or.cond.i = select i1 %i.me, i1 true, i1 %i.mf
  br i1 %or.cond.i, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #17
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.bi, %_ZNK5clang12APIntStorage8getValueEv.exit.i, %.thread.i56
  %.0.i112.i = phi i64 [ %i.lz, %.thread.i56 ], [ %.0.i.i59, %_ZNK5clang12APIntStorage8getValueEv.exit.i ], [ %.0.i.i59, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not98.i.a, label %.thread82.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.mg = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kk) #18 ; 4 uses
  %i.mh = load i16, ptr %i.mg, align 8
  %i.mi = and i16 %i.mh, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i57 = icmp eq i16 %i.mi, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i57, label %bb.bk, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !69
  %i.ml = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #18 ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 8
  %i.mn = and i16 %i.mm, 511
  %.not103.i.a = icmp eq i16 %i.mn, 73
  %i.mo = load i32, ptr %i.mg, align 8
  %i.mp = and i32 %i.mo, 33030144
  %i.mq = icmp eq i32 %i.mp, 2621440
  br i1 %i.mq, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !69
  %i.mt = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ms) #18 ; 2 uses
  %i.mu = load i16, ptr %i.mt, align 8
  %i.mv = and i16 %i.mu, 511
  %.not101.i = icmp eq i16 %i.mv, 54
  br i1 %.not101.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  call void @_ZNK5clang12APIntStorage8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %i.mw)
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !94
  %i.mz = icmp ult i32 %i.my, 65                  ; 2 uses
  %i.na = load ptr, ptr %3, align 8               ; 3 uses
  %spec.select.i76.i = select i1 %i.mz, ptr %3, ptr %i.na
  %.0.i77.i = load i64, ptr %spec.select.i76.i, align 8, !tbaa !82
  %i.nb = icmp eq ptr %i.na, null
  %or.cond91.i = select i1 %i.mz, i1 true, i1 %i.nb
  br i1 %or.cond91.i, label %_ZN4llvm5APIntD2Ev.exit78.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.na) #17
  br label %_ZN4llvm5APIntD2Ev.exit78.i

_ZN4llvm5APIntD2Ev.exit78.i:                      ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit78.i, %bb.bl, %bb.bk
  %.147.i = phi i64 [ 0, %bb.bk ], [ %.0.i77.i, %_ZN4llvm5APIntD2Ev.exit78.i ], [ 0, %bb.bl ]
  br i1 %.not103.i.a, label %.thread82.i, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

.thread82.i:                                      ; preds = %bb.bo, %_ZN4llvm5APIntD2Ev.exit.i
  %.14587.i = phi ptr [ %i.ml, %bb.bo ], [ %i.kn, %_ZN4llvm5APIntD2Ev.exit.i ]
  %.14786.i = phi i64 [ %.147.i, %bb.bo ], [ 0, %_ZN4llvm5APIntD2Ev.exit.i ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.14587.i, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.nc, align 8, !tbaa !82
  %i.nd = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ne = inttoptr i64 %i.nd to ptr
  %i.nf = load ptr, ptr %i.ne, align 16, !tbaa !155 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i8, ptr %i.ng, align 16
  %i.ni = and i8 %i.nh, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i58 = icmp ne i8 %i.ni, 2
  %.not67104.i = icmp eq ptr %i.nf, null
  %.not67.i = or i1 %.not67104.i, %spec.select.i.i.i.i.i.i.i.i.i.i58
  br i1 %.not67.i, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %.thread82.i
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !96, !nonnull !26, !align !97
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !98, !nonnull !26, !align !97 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = call noundef nonnull align 8 dereferenceable(23904) ptr %i.np(ptr noundef nonnull align 8 dereferenceable(8) %i.nm) #15, !inline_history !158
  %i.nr = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.nq, ptr noundef nonnull %i.nf) #15
  %i.ns = extractvalue { i64, i64 } %i.nr, 0
  %i.nt = lshr i64 %i.ns, 3
  %i.nu = sub i64 %i.nt, %.14786.i
  %i.nv = icmp ult i64 %i.nu, %.0.i112.i
  br i1 %i.nv, label %_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit, label %_ZN12_GLOBAL__N_17WalkAST25containsBadStrncatPatternEPKN5clang8CallExprE.exit.thread

_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit: ; preds = %bb.bp
  %i.nw = load i32, ptr %1, align 8
  %i.nx = lshr i32 %i.nw, 19
  %i.ny = and i32 %i.nx, 1
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.nz ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !80
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.oe = load ptr, ptr %i.nj, align 8, !tbaa !96, !nonnull !26, !align !97
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !98, !nonnull !26, !align !97 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = call noundef nonnull align 8 dereferenceable(776) ptr %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.og) #15, !inline_history !118
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !66
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = or i64 %i.on, 4
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4StmtERKNS_13SourceManagerEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %13, ptr noundef %i.od, ptr noundef nonnull align 8 dereferenceable(776) %i.ok, i64 %i.oo) #15
  %i.op = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ob) #18 ; 2 uses
  %i.oq = load i16, ptr %i.op, align 8
  %i.or = and i16 %i.oq, 511
  %i.os = icmp eq i16 %i.or, 73
  br i1 %i.os, label %bb.bq, label %_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !83
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !119 ; 2 uses
  %i.ox = and i64 %i.ow, 7
  %i.oy = icmp ne i64 %i.ox, 0
  %i.oz = and i64 %i.ow, -8                       ; 2 uses
  %.not2.i.i68 = icmp eq i64 %i.oz, 0
  %.not.i.i69 = or i1 %i.oy, %.not2.i.i68
  br i1 %.not.i.i69, label %_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pa = inttoptr i64 %i.oz to ptr
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !121 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !124
  %i.pf = and i64 %i.pe, 4294967295
  br label %_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70

_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70: ; preds = %_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit, %bb.bq, %bb.br
  %.sroa.0.1.i64 = phi ptr [ null, %_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit ], [ %i.pd, %bb.br ], [ @.str.19, %bb.bq ] ; 2 uses
  %.sroa.4.1.i65 = phi i64 [ 0, %_ZN12_GLOBAL__N_17WalkAST32containsBadStrlcpyStrlcatPatternEPKN5clang8CallExprE.exit ], [ %i.pf, %bb.br ], [ 0, %bb.bq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.pg = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  store ptr %i.pg, ptr %14, align 8, !tbaa !126
  %i.ph = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ph, align 8, !tbaa !128
  %i.pi = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 256, ptr %i.pi, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.pj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 2, ptr %i.pj, align 8, !tbaa !130
  %i.pk = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i8 0, ptr %i.pk, align 8, !tbaa !134
  %i.pl = getelementptr inbounds nuw i8, ptr %15, i64 44
  store i32 1, ptr %i.pl, align 4, !tbaa !135
  %i.pm = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pm, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %15, align 8, !tbaa !15
  %i.pn = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store ptr %14, ptr %i.pn, align 8, !tbaa !136
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef null, i64 noundef 0, i32 noundef 0) #15
  %i.po = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !138
  %i.pq = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 13 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !139 ; 3 uses
  %i.ps = ptrtoint ptr %i.pp to i64               ; 2 uses
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = icmp ult i64 %i.pu, 73
  br i1 %i.pv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70
  %i.pw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.12, i64 noundef 73) #15 ; 0 uses
  %.pre = load ptr, ptr %i.po, align 8, !tbaa !138
  %.pre117 = load ptr, ptr %i.pq, align 8, !tbaa !139
  %.pre129 = ptrtoint ptr %.pre to i64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit73

bb.bt:                                            ; preds = %_ZN12_GLOBAL__N_17WalkAST16getPrintableNameEPKN5clang4ExprE.exit70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.pr, ptr noundef nonnull align 1 dereferenceable(73) @.str.12, i64 73, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 73 ; 2 uses
  store ptr %i.px, ptr %i.pq, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit73

_ZN4llvm11raw_ostreamlsEPKc.exit73:               ; preds = %bb.bs, %bb.bt
  %.pre-phi = phi i64 [ %.pre129, %bb.bs ], [ %i.ps, %bb.bt ]
  %i.py = phi ptr [ %.pre117, %bb.bs ], [ %i.px, %bb.bt ] ; 2 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = sub i64 %.pre-phi, %i.pz
  %i.qb = icmp ult i64 %i.qa, 23
  br i1 %i.qb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit73
  %i.qc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.13, i64 noundef 23) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.py, ptr noundef nonnull align 1 dereferenceable(23) @.str.13, i64 23, i1 false)
  %i.qd = load ptr, ptr %i.pq, align 8, !tbaa !139
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 23
  store ptr %i.qe, ptr %i.pq, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

_ZN4llvm11raw_ostreamlsEPKc.exit76:               ; preds = %bb.bu, %bb.bv
  %i.qf = icmp eq i64 %.sroa.4.1.i65, 0
  %i.qg = load ptr, ptr %i.po, align 8, !tbaa !138
  %i.qh = load ptr, ptr %i.pq, align 8, !tbaa !139 ; 3 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj                    ; 2 uses
  br i1 %i.qf, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76
  %i.ql = icmp ult i64 %i.qk, 7
  br i1 %i.ql, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.14, i64 noundef 7) #15 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %.pre118 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit79

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.qh, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  %i.qn = load ptr, ptr %i.pq, align 8, !tbaa !139
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 7 ; 2 uses
  store ptr %i.qo, ptr %i.pq, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit79

_ZN4llvm11raw_ostreamlsEPKc.exit79:               ; preds = %bb.bx, %bb.by
  %i.qp = phi ptr [ %.pre118, %bb.bx ], [ %i.qo, %bb.by ] ; 2 uses
  %.0.i.i78 = phi ptr [ %i.qm, %bb.bx ], [ %15, %bb.by ] ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !138
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = icmp ugt i64 %.sroa.4.1.i65, %i.qu
  br i1 %i.qv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit79
  %i.qw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i78, ptr noundef %.sroa.0.1.i64, i64 noundef %.sroa.4.1.i65) #15 ; 2 uses
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %.pre120 = load ptr, ptr %.phi.trans.insert119, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit82

bb.ca:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit79
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qp, ptr align 1 %.sroa.0.1.i64, i64 %.sroa.4.1.i65, i1 false)
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !139
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.sroa.4.1.i65 ; 2 uses
  store ptr %i.qz, ptr %i.qx, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit82

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit82:    ; preds = %bb.bz, %bb.ca
  %i.ra = phi ptr [ %.pre120, %bb.bz ], [ %i.qz, %bb.ca ] ; 2 uses
  %.0.i81 = phi ptr [ %i.qw, %bb.bz ], [ %.0.i.i78, %bb.ca ] ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i81, i64 24
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !138
  %i.rd = icmp eq ptr %i.rc, %i.ra
  br i1 %i.rd, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit82
  %i.re = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i81, ptr noundef nonnull @.str.15, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.cc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit82
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.i81, i64 32 ; 2 uses
  store i8 41, ptr %i.ra, align 1
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !139
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  store ptr %i.rh, ptr %i.rf, align 8, !tbaa !139
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.cd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76
  %i.ri = icmp ult i64 %i.qk, 28
  br i1 %i.ri, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.16, i64 noundef 28) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit85

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.qh, ptr noundef nonnull align 1 dereferenceable(28) @.str.16, i64 28, i1 false)
  %i.rk = load ptr, ptr %i.pq, align 8, !tbaa !139
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 28
end_hunk_1
