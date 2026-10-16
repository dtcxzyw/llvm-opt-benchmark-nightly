Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterfaceStubs?download=true
inline.NumInlined: 351
inline.NumDeleted: 211
begin_hunk_0
%"class.llvm::SmallVectorTemplateBase.56" = type { %"class.llvm::SmallVectorTemplateCommon.57" }
%"class.llvm::SmallVectorTemplateCommon.57" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.58" = type { [128 x i8] }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.64" }
%"class.llvm::SmallVector.64" = type { %"class.llvm::SmallVectorImpl.65", %"struct.llvm::SmallVectorStorage.69" }
%"class.llvm::SmallVectorImpl.65" = type { %"class.llvm::SmallVectorTemplateBase.66" }
%"class.llvm::SmallVectorTemplateBase.66" = type { %"class.llvm::SmallVectorTemplateCommon.67" }
%"class.llvm::SmallVectorTemplateCommon.67" = type { %"class.llvm::SmallVectorBase.68" }
%"class.llvm::SmallVectorBase.68" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.69" = type { [128 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"struct.clang::BoundArch" = type <{ %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::opt::OptSpecifier" = type { i32 }
%"class.llvm::SmallString.118" = type { %"class.llvm::SmallVector.119" }
%"class.llvm::SmallVector.119" = type { %"class.llvm::SmallVectorImpl.65", %"struct.llvm::SmallVectorStorage.120" }
%"struct.llvm::SmallVectorStorage.120" = type { [256 x i8] }

$_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_ = comdat any

$_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE = comdat any

$_ZN5clang6driver5tools7ifstool6MergerD0Ev = comdat any

$_ZNK5clang6driver4Tool22hasIntegratedAssemblerEv = comdat any

$_ZNK5clang6driver4Tool20hasIntegratedBackendEv = comdat any

$_ZNK5clang6driver4Tool9canEmitIREv = comdat any

$_ZNK5clang6driver5tools7ifstool6Merger16hasIntegratedCPPEv = comdat any

$_ZNK5clang6driver5tools7ifstool6Merger9isLinkJobEv = comdat any

$_ZNK5clang6driver4Tool13isDsymutilJobEv = comdat any

$_ZNK5clang6driver4Tool18hasGoodDiagnosticsEv = comdat any

$_ZN5clang6driver7Command12setBoundArchENS_9BoundArchE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS4_EELb0EE4growEm = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [19 x i8] c"--input-format=IFS\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"--output-format=ELF\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"--output-format=IFS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ifso\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ifs\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".ifso\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".ifs\00", align 1
@_ZTVN5clang6driver5tools7ifstool6MergerE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN5clang6driver4ToolD2Ev, ptr @_ZN5clang6driver5tools7ifstool6MergerD0Ev, ptr @_ZNK5clang6driver4Tool22hasIntegratedAssemblerEv, ptr @_ZNK5clang6driver4Tool20hasIntegratedBackendEv, ptr @_ZNK5clang6driver4Tool9canEmitIREv, ptr @_ZNK5clang6driver5tools7ifstool6Merger16hasIntegratedCPPEv, ptr @_ZNK5clang6driver5tools7ifstool6Merger9isLinkJobEv, ptr @_ZNK5clang6driver4Tool13isDsymutilJobEv, ptr @_ZNK5clang6driver4Tool18hasGoodDiagnosticsEv, ptr @_ZNK5clang6driver5tools7ifstool6Merger12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc, ptr @_ZNK5clang6driver4Tool27ConstructJobMultipleOutputsERNS0_11CompilationERKNS0_9JobActionERKN4llvm11SmallVectorINS0_9InputInfoELj4EEESC_RKNS7_3opt7ArgListEPKc] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver5tools7ifstool6Merger12ConstructJobERNS0_11CompilationERKNS0_9JobActionERKNS0_9InputInfoERKN4llvm11SmallVectorIS9_Lj4EEERKNSC_3opt7ArgListEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(176) %5, ptr nofree readnone captures(none) %6) unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit:
  %7 = alloca %"class.std::unique_ptr.110", align 8 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.llvm::SmallVector.54", align 8 ; 16 uses
  %12 = alloca %"class.llvm::SmallString", align 8 ; 20 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::SmallString", align 8 ; 14 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @_ZNK5clang6driver9ToolChain14GetProgramPathB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2568) %i.b, ptr noundef %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.e, ptr %11, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 5 uses
  store i32 16, ptr %i.g, align 4, !tbaa !12
  store ptr @.str, ptr %i.e, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !13
  %i.h = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 360)
  %.not = icmp eq ptr %i.h, null                  ; 4 uses
  %.str.1..str.2 = select i1 %.not, ptr @.str.1, ptr @.str.2 ; 2 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i24 = icmp ult i32 %i.i, %i.j
  br i1 %.not.i24, label %bb.b, label %bb.a, !prof !44

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %.str.1..str.2)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !13
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit25

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.k = zext i32 %i.i to i64
  %i.l = load ptr, ptr %11, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store ptr %.str.1..str.2, ptr %i.m, align 1
  %i.n = load i32, ptr %i.f, align 8, !tbaa !13
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.f, align 8, !tbaa !13
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit25

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit25: ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %.pre, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i26 = icmp ult i32 %i.p, %i.q
  br i1 %.not.i26, label %bb.d, label %bb.c, !prof !44

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit25
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit27

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit25
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %11, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  store ptr @.str.3, ptr %i.t, align 1
  %i.u = load i32, ptr %i.f, align 8, !tbaa !13
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.f, align 8, !tbaa !13
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit27

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit27: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.w = load ptr, ptr %3, align 8, !tbaa !14     ; 3 uses
  %.not.i28 = icmp eq ptr %i.w, null
  br i1 %.not.i28, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit27
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.x, ptr %12, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 128, ptr %i.z, align 8, !tbaa !18
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit27
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #12 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 5 uses
  store ptr %i.ab, ptr %12, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 128, ptr %i.ad, align 8, !tbaa !18
  %i.ae = icmp ugt i64 %i.aa, 128
  br i1 %i.ae, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 1) #12
  %.pre8.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !19
  %.pre90 = load ptr, ptr %12, align 8, !tbaa !17
  br label %bb.e

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i.i.i.i = icmp samesign eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.af = phi ptr [ %.pre90, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.ab, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.w, i64 %i.aa, i1 false)
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !19
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.e
  %i.ah = phi ptr [ %i.ad, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %i.ad, %bb.e ], [ %i.z, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.ac, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %i.ac, %bb.e ], [ %i.y, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread ] ; 9 uses
  %i.aj = phi ptr [ %i.ab, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %i.ab, %bb.e ], [ %i.x, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread ] ; 2 uses
  %.sroa.0.0.i74 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %i.aa, %bb.e ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread ]
  %i.ak = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.e ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i.thread ]
  %i.al = add i64 %i.ak, %.sroa.0.0.i74           ; 2 uses
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !19
  %.not.i.i = icmp eq i64 %i.al, 1
  br i1 %.not.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit
  %i.am = load ptr, ptr %12, align 8, !tbaa !17
  %lhsc = load i8, ptr %i.am, align 1
  %.not86 = icmp eq i8 %lhsc, 45
  br i1 %.not86, label %_ZN4llvmneENS_9StringRefES0_.exit.thread78, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.an = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %5, i32 noundef 3470)
  %.not87 = icmp eq ptr %i.an, null
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %20, align 1, !tbaa !22
  %i.ao = select i1 %.not, ptr @.str.5, ptr @.str.6
  store ptr %i.ao, ptr %13, align 8, !tbaa !14
  store i8 3, ptr %19, align 8, !tbaa !23
  call void @_ZN4llvm3sys4path17replace_extensionERNS_15SmallVectorImplIcEERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(34) %13, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %.pre91 = load i64, ptr %i.ai, align 8, !tbaa !19
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread78

bb.g:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.ap = select i1 %.not, ptr @.str.7, ptr @.str.8
  %i.aq = select i1 %.not, i64 5, i64 4           ; 3 uses
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %i.as = add i64 %i.ar, %i.aq                    ; 2 uses
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.au = icmp ult i64 %i.at, %i.as
  br i1 %i.au, label %bb.h, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull %i.aj, i64 noundef %i.as, i64 noundef 1) #12
  %.pre8.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !19
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.g, %bb.h
  %.pre8.i.i = phi i64 [ %i.ar, %bb.g ], [ %.pre8.pre.i.i, %bb.h ]
  %i.av = load ptr, ptr %12, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.pre8.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aw, ptr noundef nonnull align 1 dereferenceable(4) %i.ap, i64 %i.aq, i1 false)
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.ax = add i64 %.pre.i.i, %i.aq                ; 2 uses
  store i64 %i.ax, ptr %i.ai, align 8, !tbaa !19
  br label %_ZN4llvmneENS_9StringRefES0_.exit.thread78

_ZN4llvmneENS_9StringRefES0_.exit.thread78:       ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.ay = phi i64 [ %.pre91, %bb.f ], [ %i.ax, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !18
  %.not.i.i33 = icmp ult i64 %i.ay, %i.az
  br i1 %.not.i.i33, label %bb.j, label %bb.i, !prof !44

bb.i:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread78
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(152) %12, i8 noundef signext 0)
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.ba = add i64 %.pre.i, -1
  br label %_ZN4llvm11SmallStringILj128EE5c_strEv.exit

bb.j:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread78
  %i.bb = load ptr, ptr %12, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  store i8 0, ptr %i.bc, align 1
  %i.bd = load i64, ptr %i.ai, align 8, !tbaa !19
  br label %_ZN4llvm11SmallStringILj128EE5c_strEv.exit

_ZN4llvm11SmallStringILj128EE5c_strEv.exit:       ; preds = %bb.i, %bb.j
  %i.be = phi i64 [ %i.ba, %bb.i ], [ %i.bd, %bb.j ]
  store i64 %i.be, ptr %i.ai, align 8, !tbaa !19
  %i.bf = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !22
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !14
  %.not.i34 = icmp eq i8 %i.bi, 0
  br i1 %.not.i34, label %_ZN4llvm5TwineC2EPKc.exit36, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallStringILj128EE5c_strEv.exit
  store ptr %i.bf, ptr %14, align 8, !tbaa !14
  br label %_ZN4llvm5TwineC2EPKc.exit36

_ZN4llvm5TwineC2EPKc.exit36:                      ; preds = %_ZN4llvm11SmallStringILj128EE5c_strEv.exit, %bb.k
  %storemerge.i35 = phi i8 [ 3, %bb.k ], [ 1, %_ZN4llvm11SmallStringILj128EE5c_strEv.exit ]
  store i8 %storemerge.i35, ptr %i.bg, align 8, !tbaa !23
  %i.bj = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(34) %14) ; 2 uses
  %i.bk = load i32, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i37 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i37, label %bb.m, label %bb.l, !prof !44

bb.l:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit36
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit38

bb.m:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit36
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %11, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  store ptr %i.bj, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !13
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.f, align 8, !tbaa !13
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit38

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit38: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.br = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx = mul nuw nsw i64 %i.bu, 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %.not2388 = icmp eq i32 %i.bt, 0
  br i1 %.not2388, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit38
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 33
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ac, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 4, ptr %i.cd, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.ce, align 1, !tbaa !22
  store ptr %10, ptr %18, align 8, !tbaa !14
  %i.cf = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 8 dereferenceable(34) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.cg = call noalias noundef nonnull dereferenceable(584) ptr @_Znwm(i64 noundef 584) #13, !noalias !45 ; 3 uses
  %i.ch = load ptr, ptr %4, align 8, !tbaa !11, !noalias !45
  store ptr %i.ch, ptr %8, align 8, !tbaa !48, !noalias !45
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !13, !noalias !45
  %i.ck = zext i32 %i.cj to i64
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !49, !noalias !45
  store ptr %3, ptr %9, align 8, !tbaa !48, !noalias !45
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.cl, align 8, !tbaa !49, !noalias !45
  call void @_ZN5clang6driver7CommandC1ERKNS0_6ActionERKNS0_4ToolENS0_19ResponseFileSupportEPKcRKN4llvm11SmallVectorISA_Lj16EEENSB_8ArrayRefINS0_9InputInfoEEESI_SA_(ptr noundef nonnull align 8 dereferenceable(578) %i.cg, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 2, ptr null, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9, ptr noundef null) #12, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @_ZN5clang6driver7Command12setBoundArchENS_9BoundArchE(ptr noundef nonnull align 8 dereferenceable(578) %i.cg, ptr noundef nonnull byval(%"struct.clang::BoundArch") align 8 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.co = ptrtoint ptr %i.cg to i64               ; 3 uses
  store i64 %i.co, ptr %7, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12
  %.not.i.i.not.i.i.i = icmp ult i32 %i.cq, %i.cu
  %.pre3.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !11 ; 4 uses
  br i1 %.not.i.i.not.i.i.i, label %_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i, label %bb.n, !prof !44

bb.n:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i.i, i64 %i.cr
  %i.cw = icmp uge ptr %7, %.pre3.i.i.i
  %i.cx = icmp ult ptr %7, %i.cv
  %spec.select.i.i.i.i.i.i.i = and i1 %i.cw, %i.cx
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.o, label %.critedge.i.i.i.i.i, !prof !50

bb.o:                                             ; preds = %bb.n
  %i.cy = ptrtoint ptr %7 to i64
  %i.cz = ptrtoint ptr %.pre3.i.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS4_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cs)
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !11 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.da ; 2 uses
  %.pre.i41 = load i64, ptr %i.dc, align 8, !tbaa !25
  br label %_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i

.critedge.i.i.i.i.i:                              ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS4_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cs)
  %.pre.i.i.i39 = load ptr, ptr %i.cn, align 8, !tbaa !11
  br label %_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i

_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.o, %._crit_edge
  %i.dd = phi i64 [ %i.co, %._crit_edge ], [ %.pre.i41, %bb.o ], [ %i.co, %.critedge.i.i.i.i.i ]
  %i.de = phi ptr [ %.pre3.i.i.i, %._crit_edge ], [ %i.db, %bb.o ], [ %.pre.i.i.i39, %.critedge.i.i.i.i.i ]
  %.016.i.i.i.i.i = phi ptr [ %7, %._crit_edge ], [ %i.dc, %bb.o ], [ %7, %.critedge.i.i.i.i.i ]
  %i.df = load i32, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !25
  store ptr null, ptr %.016.i.i.i.i.i, align 8, !tbaa !25
  %i.di = add i32 %i.df, 1
  store i32 %i.di, ptr %i.cp, align 8, !tbaa !13
  %i.dj = load ptr, ptr %7, align 8, !tbaa !25    ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i40, label %_ZNSt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang6driver7CommandEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5clang6driver7CommandEEclEPS2_.exit.i.i: ; preds = %_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(578) %i.dj) #12, !inline_history !37
  br label %_ZNSt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5clang6driver7CommandEEclEPS2_.exit.i.i, %_ZN5clang6driver7JobList6addJobESt10unique_ptrINS0_7CommandESt14default_deleteIS3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #12
  %i.dn = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.aj
  br i1 %i.do, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS2_EED2Ev.exit
  call void @free(ptr noundef %i.dn) #12
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN5clang6driver7CommandESt14default_deleteIS2_EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.dp = load ptr, ptr %11, align 8, !tbaa !11   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.e
  br i1 %i.dq, label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  call void @free(ptr noundef %i.dp) #12
  br label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit

_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.dr = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !14
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  ret void

bb.r:                                             ; preds = %.lr.ph, %bb.ac
  %.089 = phi ptr [ %i.br, %.lr.ph ], [ %i.fc, %bb.ac ] ; 4 uses
end_hunk_0
