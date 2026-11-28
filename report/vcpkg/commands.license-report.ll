Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.license-report?download=true
inline.NumInlined: 326
inline.NumDeleted: 252
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.vcpkg::msg::MessageT" = type { i64 }
%"struct.vcpkg::MetadataMessage" = type { i32, %union.anon }
%union.anon = type { ptr }
%"struct.vcpkg::LearnWebsiteLinkLiteral" = type { ptr }
%"struct.vcpkg::CommandOptionsStructure" = type { %"struct.vcpkg::Span", %"struct.vcpkg::Span.0", %"struct.vcpkg::Span.1" }
%"struct.vcpkg::Span" = type { ptr, i64 }
%"struct.vcpkg::Span.0" = type { ptr, i64 }
%"struct.vcpkg::Span.1" = type { ptr, i64 }
%"struct.vcpkg::Path" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.18 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.18 = type { i64, [8 x i8] }
%"struct.vcpkg::ParsedArguments" = type { %"class.std::set", %"class.std::map", %"class.std::map.6", %"class.std::vector" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<vcpkg::StringLiteral, vcpkg::StringLiteral, std::_Identity<vcpkg::StringLiteral>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<vcpkg::StringLiteral, vcpkg::StringLiteral, std::_Identity<vcpkg::StringLiteral>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree.2" }
%"class.std::_Rb_tree.2" = type { %"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::map.6" = type { %"class.std::_Rb_tree.7" }
%"class.std::_Rb_tree.7" = type { %"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::InstalledDatabaseLock" = type { %"struct.vcpkg::InstalledDatabaseLockImpl" }
%"struct.vcpkg::InstalledDatabaseLockImpl" = type { %"class.std::vector.55" }
%"class.std::vector.55" = type { %"struct.std::_Vector_base.56" }
%"struct.std::_Vector_base.56" = type { %"struct.std::_Vector_base<std::unique_ptr<vcpkg::IExclusiveFileLock>, std::allocator<std::unique_ptr<vcpkg::IExclusiveFileLock>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<vcpkg::IExclusiveFileLock>, std::allocator<std::unique_ptr<vcpkg::IExclusiveFileLock>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<vcpkg::IExclusiveFileLock>, std::allocator<std::unique_ptr<vcpkg::IExclusiveFileLock>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<vcpkg::IExclusiveFileLock>, std::allocator<std::unique_ptr<vcpkg::IExclusiveFileLock>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::LicenseReport" = type { i8, %"class.std::set.60" }
%"class.std::set.60" = type { %"class.std::_Rb_tree.61" }
%"class.std::_Rb_tree.61" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.vcpkg::StatusParagraphs" = type { %"class.std::vector.66" }
%"class.std::vector.66" = type { %"struct.std::_Vector_base.67" }
%"struct.std::_Vector_base.67" = type { %"struct.std::_Vector_base<std::unique_ptr<vcpkg::StatusParagraph>, std::allocator<std::unique_ptr<vcpkg::StatusParagraph>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<vcpkg::StatusParagraph>, std::allocator<std::unique_ptr<vcpkg::StatusParagraph>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<vcpkg::StatusParagraph>, std::allocator<std::unique_ptr<vcpkg::StatusParagraph>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<vcpkg::StatusParagraph>, std::allocator<std::unique_ptr<vcpkg::StatusParagraph>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.71" = type { %"struct.std::_Vector_base.72" }
%"struct.std::_Vector_base.72" = type { %"struct.std::_Vector_base<vcpkg::InstalledPackageView, std::allocator<vcpkg::InstalledPackageView>>::_Vector_impl" }
%"struct.std::_Vector_base<vcpkg::InstalledPackageView, std::allocator<vcpkg::InstalledPackageView>>::_Vector_impl" = type { %"struct.std::_Vector_base<vcpkg::InstalledPackageView, std::allocator<vcpkg::InstalledPackageView>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vcpkg::InstalledPackageView, std::allocator<vcpkg::InstalledPackageView>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::LineInfo" = type { i32, ptr, ptr }
%"struct.vcpkg::ExpectedT" = type <{ %union.anon.81, i8, [7 x i8] }>
%union.anon.81 = type { %"struct.vcpkg::ExpectedHolder" }
%"struct.vcpkg::ExpectedHolder" = type { %"struct.vcpkg::FileContents" }
%"struct.vcpkg::FileContents" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.vcpkg::Optional" = type { %"struct.vcpkg::details::OptionalStorage" }
%"struct.vcpkg::details::OptionalStorage" = type { %"struct.vcpkg::details::OptionalStorageDtor" }
%"struct.vcpkg::details::OptionalStorageDtor" = type { i8, %union.anon.14 }
%union.anon.14 = type { %"class.std::__cxx11::basic_string" }
%"struct.vcpkg::StringView" = type { ptr, i64 }
%"struct.vcpkg::ParseMessages" = type { %"class.std::vector.82", i8, i64 }
%"class.std::vector.82" = type { %"struct.std::_Vector_base.83" }
%"struct.std::_Vector_base.83" = type { %"struct.std::_Vector_base<vcpkg::DiagnosticLine, std::allocator<vcpkg::DiagnosticLine>>::_Vector_impl" }
%"struct.std::_Vector_base<vcpkg::DiagnosticLine, std::allocator<vcpkg::DiagnosticLine>>::_Vector_impl" = type { %"struct.std::_Vector_base<vcpkg::DiagnosticLine, std::allocator<vcpkg::DiagnosticLine>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vcpkg::DiagnosticLine, std::allocator<vcpkg::DiagnosticLine>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::ParsedSpdxLicenseDeclaration" = type { i32, %"class.std::__cxx11::basic_string", %"class.std::vector.87" }
%"class.std::vector.87" = type { %"struct.std::_Vector_base.88" }
%"struct.std::_Vector_base.88" = type { %"struct.std::_Vector_base<vcpkg::SpdxApplicableLicenseExpression, std::allocator<vcpkg::SpdxApplicableLicenseExpression>>::_Vector_impl" }
%"struct.std::_Vector_base<vcpkg::SpdxApplicableLicenseExpression, std::allocator<vcpkg::SpdxApplicableLicenseExpression>>::_Vector_impl" = type { %"struct.std::_Vector_base<vcpkg::SpdxApplicableLicenseExpression, std::allocator<vcpkg::SpdxApplicableLicenseExpression>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vcpkg::SpdxApplicableLicenseExpression, std::allocator<vcpkg::SpdxApplicableLicenseExpression>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::LocalizedString" = type { %"class.std::__cxx11::basic_string" }
%"struct.vcpkg::Triplet" = type { ptr }

$_ZN5vcpkg15ParsedArgumentsD2Ev = comdat any

$_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNK5vcpkg14InstalledPaths9share_dirERKNS_11PackageSpecE = comdat any

$_ZN5vcpkg15BinaryParagraphD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

@.str = private unnamed_addr constant [15 x i8] c"license-report\00", align 1
@_ZN5vcpkg27msgCmdLicenseReportSynopsisE = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"vcpkg license-report\00", align 1
@_ZN5vcpkg28CommandLicenseReportMetadataE = dso_local constant { { ptr, i64 }, %"struct.vcpkg::MetadataMessage", [4 x %"struct.vcpkg::MetadataMessage"], %"struct.vcpkg::LearnWebsiteLinkLiteral", i32, i64, i64, %"struct.vcpkg::CommandOptionsStructure", ptr } { { ptr, i64 } { ptr @.str, i64 14 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg27msgCmdLicenseReportSynopsisE } }, [4 x %"struct.vcpkg::MetadataMessage"] [%"struct.vcpkg::MetadataMessage" { i32 2, %union.anon { ptr @.str.1 } }, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer], %"struct.vcpkg::LearnWebsiteLinkLiteral" zeroinitializer, i32 0, i64 0, i64 0, %"struct.vcpkg::CommandOptionsStructure" zeroinitializer, ptr null }, align 8
@_ZN5vcpkg35msgNoInstalledPackagesLicenseReportE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/commands.license-report.cpp\00", align 1
@__func__._ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE = private unnamed_addr constant [32 x i8] c"command_license_report_and_exit\00", align 1
@_ZN5vcpkg21msgPackageLicenseSpdxE = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"vcpkg.spdx.json\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"LicenseRef-vcpkg-null\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::Path", align 8      ; 8 uses
  %3 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 2 uses
  %4 = alloca %"struct.vcpkg::InstalledDatabaseLock", align 8 ; 5 uses
  %5 = alloca %"struct.vcpkg::LicenseReport", align 8 ; 13 uses
  %6 = alloca %"struct.vcpkg::StatusParagraphs", align 8 ; 8 uses
  %7 = alloca %"class.std::vector.71", align 8    ; 8 uses
  %8 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %9 = alloca %"struct.vcpkg::Path", align 8      ; 8 uses
  %10 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 13 uses
  %11 = alloca %"struct.vcpkg::Optional", align 8 ; 10 uses
  %12 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %13 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %14 = alloca %"struct.vcpkg::ParseMessages", align 8 ; 14 uses
  %15 = alloca %"struct.vcpkg::ParsedSpdxLicenseDeclaration", align 8 ; 9 uses
  %16 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %17 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %19 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg28CommandLicenseReportMetadataE)
  call void @_ZN5vcpkg15ParsedArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %3) #16
  %i.a = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400) %1) ; 3 uses
  %i.b = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths9installedEv(ptr noundef nonnull align 8 dereferenceable(400) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1262
  call void @_ZN5vcpkg21InstalledDatabaseLockC1ERKNS_10FilesystemERKNS_14InstalledPathsERKNS_8OptionalIbEESA_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(2) %i.c, ptr noundef nonnull align 1 dereferenceable(2) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i8 0, ptr %5, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store i32 0, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.e, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN5vcpkg13database_loadERKNS_18ReadOnlyFilesystemERKNS_14InstalledPathsERKNS_21InstalledDatabaseLockE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::StatusParagraphs") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZN5vcpkg19get_installed_portsERKNS_16StatusParagraphsE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.71") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %7, align 8, !tbaa !50     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload = load i64, ptr @_ZN5vcpkg35msgNoInstalledPackagesLicenseReportE, align 8, !tbaa !51
  invoke void @_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %.sroa.020.0.copyload)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 42, ptr %8, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.2, ptr %i.aj, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @__func__._ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.ak, align 8, !tbaa !55
  invoke void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %8) #17
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg16StatusParagraphsD2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.k, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.j:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.bf

bb.k:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit
  invoke void @_ZNK5vcpkg13LicenseReport20print_license_reportERKNS_3msg8MessageTIJEEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg21msgPackageLicenseSpdxE)
          to label %bb.bc unwind label %bb.i

bb.l:                                             ; preds = %.preheader, %_ZN5vcpkg4PathD2Ev.exit
  %.sroa.0144.0178 = phi ptr [ %i.j, %.preheader ], [ %i.il, %_ZN5vcpkg4PathD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ap = load ptr, ptr %.sroa.0144.0178, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !65
  invoke void @_ZNK5vcpkg14InstalledPaths9share_dirERKNS_11PackageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %.noexc unwind label %bb.v, !noalias !65

.noexc:                                           ; preds = %bb.l
  invoke void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.5, i64 15)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc
  %i.aq = load ptr, ptr %2, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.n
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.as = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !65
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.n:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %2, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.n
  br i1 %i.aw, label %_ZN5vcpkg4PathD2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i: ; preds = %bb.n
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !21, !noalias !65
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #18
  br label %_ZN5vcpkg4PathD2Ev.exit5.i

_ZN5vcpkg4PathD2Ev.exit5.i:                       ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !65
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem17try_read_contentsERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.az = load i8, ptr %i.o, align 8, !tbaa !67, !range !68, !noundef !69
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.gep) #16
  %i.bb = load ptr, ptr %12, align 8
  %i.bc = load i64, ptr %i.p, align 8
  %i.bd = load ptr, ptr %13, align 8
  %i.be = load i64, ptr %i.q, align 8
  invoke void @_ZN5vcpkg22read_spdx_license_textB5cxx11ENS_10StringViewES0_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional") align 8 %11, ptr %i.bb, i64 %i.bc, ptr %i.bd, i64 %i.be)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bf = load i8, ptr %11, align 8, !tbaa !71, !range !68, !noundef !69
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.r, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104.thread

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !78
  store i64 0, ptr %i.t, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.r) #16
  %i.bh = load ptr, ptr %16, align 8
  %i.bi = load i64, ptr %i.u, align 8
  invoke void @_ZN5vcpkg29parse_spdx_license_expressionENS_10StringViewERNS_13ParseMessagesE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedSpdxLicenseDeclaration") align 8 %15, ptr %i.bh, i64 %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK5vcpkg13ParseMessages24print_errors_or_warningsEv(ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !79
  %.not157 = icmp eq i64 %i.bj, 0
  br i1 %.not157, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %5, align 8, !tbaa !44
  br label %bb.aa

bb.v:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit

bb.x:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84

bb.z:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aa:                                            ; preds = %bb.u, %bb.t
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !81  ; 3 uses
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !81  ; 2 uses
  %.not158176 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not158176, label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap
  %.pre180 = load ptr, ptr %i.v, align 8, !tbaa !83 ; 3 uses
  %.pre181 = load ptr, ptr %i.w, align 8, !tbaa !84 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre180, %.pre181
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i ], [ %.pre180, %._crit_edge ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #18
  br label %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, %.pre181
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
  br label %.noexc65

.noexc65:                                         ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %.noexc66
  %i.fb = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.z
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc65
  %i.fd = load i64, ptr %i.z, align 8, !tbaa !21
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.ap

bb.an:                                            ; preds = %bb.af
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ao:                                            ; preds = %bb.al
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.z
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ao
  %i.fj = load i64, ptr %i.z, align 8, !tbaa !21
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.an ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.fg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ae
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0140.0177, i64 40 ; 2 uses
  %.not158 = icmp eq ptr %i.fl, %i.bq
  br i1 %.not158, label %._crit_edge, label %.lr.ph

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bo, %bb.z ] ; 2 uses
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !83  ; 3 uses
  %i.fn = load ptr, ptr %i.w, align 8, !tbaa !84  ; 2 uses
  %.not4.i.i.i.i70 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not4.i.i.i.i70, label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i78, label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %bb.aq, %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74
  %.05.i.i.i.i72 = phi ptr [ %i.ft, %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74 ], [ %i.fm, %bb.aq ] ; 3 uses
  %i.fo = load ptr, ptr %.05.i.i.i.i72, align 8, !tbaa !20 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i72, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i71
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !21
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #18
  br label %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74

_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74: ; preds = %.lr.ph.i.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i73
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i72, i64 40 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.ft, %i.fn
  br i1 %.not.i.i.i.i75, label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i76, label %.lr.ph.i.i.i.i71, !llvm.loop !32

_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i76: ; preds = %_ZSt8_DestroyIN5vcpkg31SpdxApplicableLicenseExpressionEEvPT_.exit.i.i.i.i74
  %.pr.i.i77 = load ptr, ptr %i.v, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i78

_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i78: ; preds = %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i76, %bb.aq
  %i.fu = phi ptr [ %.pr.i.i77, %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i76 ], [ %i.fm, %bb.aq ] ; 3 uses
  %.not.i.i1.i.i79 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i1.i.i79, label %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i78
  %i.fv = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fy) #18
  br label %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80

_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80: ; preds = %bb.ar, %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i78
  %i.fz = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.ac
  br i1 %i.ga, label %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80
  %i.gb = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #18
  br label %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84

_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84: ; preds = %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81 ], [ %.pn.pn, %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i80 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.gd = load ptr, ptr %14, align 8, !tbaa !86   ; 3 uses
  %i.ge = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %.not4.i.i.i.i85 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i.i.i85, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i94, label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90
  %.05.i.i.i.i87 = phi ptr [ %i.gu, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90 ], [ %i.gd, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84 ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 72 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88: ; preds = %.lr.ph.i.i.i.i86
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !21
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #18
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i89

_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i89: ; preds = %.lr.ph.i.i.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i88
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 8
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !71, !range !68, !noundef !69
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.as, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90

bb.as:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i89
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !20 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 32 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i96: ; preds = %bb.as
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !21
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #18
  br label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90

_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i96, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i89
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87, i64 88 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.gu, %i.ge
  br i1 %.not.i.i.i.i91, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i92, label %.lr.ph.i.i.i.i86, !llvm.loop !33

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i92: ; preds = %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i90
  %.pr.i.i93 = load ptr, ptr %14, align 8, !tbaa !86
  br label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i94

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i94: ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i92, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84
  %i.gv = phi ptr [ %.pr.i.i93, %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i92 ], [ %i.gd, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit84 ] ; 3 uses
  %.not.i.i1.i.i95 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i.i95, label %_ZN5vcpkg13ParseMessagesD2Ev.exit99, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i94
  %i.gw = load ptr, ptr %i.ae, align 8, !tbaa !88
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #18
  br label %_ZN5vcpkg13ParseMessagesD2Ev.exit99

_ZN5vcpkg13ParseMessagesD2Ev.exit99:              ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i94, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.ha = load i8, ptr %11, align 8, !tbaa !71, !range !68, !noundef !69
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.au, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

bb.au:                                            ; preds = %_ZN5vcpkg13ParseMessagesD2Ev.exit99
  %i.hc = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.af
  br i1 %i.hd, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.au
  %i.he = load i64, ptr %i.af, align 8, !tbaa !21
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #18
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

bb.av:                                            ; preds = %bb.ad, %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %.pre182 = load i8, ptr %11, align 8, !tbaa !71, !range !68
  %i.hg = trunc nuw i8 %.pre182 to i1
  br i1 %i.hg, label %bb.aw, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104

bb.aw:                                            ; preds = %bb.av
  %i.hh = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.af
  br i1 %i.hi, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %bb.aw
  %i.hj = load i64, ptr %i.af, align 8, !tbaa !21
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #18
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104: ; preds = %bb.aw, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.az

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100, %_ZN5vcpkg13ParseMessagesD2Ev.exit99, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.x ], [ %.pn.pn.pn, %_ZN5vcpkg13ParseMessagesD2Ev.exit99 ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100 ], [ %.pn.pn.pn, %bb.au ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.hl = load i8, ptr %i.o, align 8, !tbaa !67, !range !68, !noundef !69
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit
  %i.hn = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ah
  br i1 %i.ho, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split

bb.ay:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit
  %i.hp = load ptr, ptr %.sroa.gep, align 8, !tbaa !20 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ag
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.hr = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ht = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.ah
  br i1 %i.hu, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split

.thread:                                          ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104.thread, %bb.o
  store i8 1, ptr %5, align 8, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit104, %.thread
  %i.hv = load i8, ptr %i.o, align 8, !tbaa !67, !range !68, !noundef !69
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hx = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ah
  br i1 %i.hy, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114.sink.split

bb.bb:                                            ; preds = %bb.az
  %i.hz = load ptr, ptr %.sroa.gep, align 8, !tbaa !20 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ag
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.bb
  %i.ib = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  %i.id = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.ah
  br i1 %i.ie, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114, label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114.sink.split

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108, %bb.ba
  %.sink = phi ptr [ %i.hx, %bb.ba ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108 ]
  %i.if = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ig) #18
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i108, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.ih = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.ai
  br i1 %i.ii, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114
  %i.ij = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #18
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0144.0178, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.il, %i.l
  br i1 %.not, label %bb.k, label %bb.l

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ax
  %.sink275 = phi ptr [ %i.hn, %bb.ax ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %20 = load i64, ptr %i.ah, align 8, !tbaa !21
  %21 = add i64 %20, 1
  call void @_ZdlPvm(ptr noundef %.sink275, i64 noundef %21) #18
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ax, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %.pn.pn.pn.pn, %bb.ax ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn.pn.pn.pn, %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.im = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ai
  br i1 %i.in, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117: ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit
  %i.io = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #18
  br label %.body

.body:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117, %bb.v, %_ZN5vcpkg4PathD2Ev.exit5.i
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %_ZN5vcpkg4PathD2Ev.exit5.i ], [ %i.bk, %bb.v ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117 ], [ %.pn.pn.pn.pn.pn, %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.bf

bb.bc:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i32 82, ptr %19, align 8, !tbaa !53
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.2, ptr %i.iq, align 8, !tbaa !54
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr @__func__._ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.ir, align 8, !tbaa !55
  invoke void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %19) #17
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.body, %bb.j, %bb.i
  %.pn55 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.an, %bb.i ], [ %.pn.pn.pn.pn.pn.pn, %.body ], [ %i.is, %bb.be ] ; 2 uses
  %i.it = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  %i.iu = load ptr, ptr %i.k, align 8, !tbaa !94  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bf, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jc, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i ], [ %i.it, %bb.bf ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !96
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jb) #18
  br label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i: ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jc, %i.iu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bf
  %i.jd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.it, %bb.bf ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !97
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.jd to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.ji) #18
  br label %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit: ; preds = %bb.bh, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i, %bb.h
  %.pn55.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn55, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i ], [ %.pn55, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.jj = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i.i120 = icmp eq ptr %i.jj, %i.jl
  br i1 %.not4.i.i.i.i120, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i121

.lr.ph.i.i.i.i121:                                ; preds = %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i122 = phi ptr [ %i.jn, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.jj, %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit ] ; 2 uses
  %i.jm = load ptr, ptr %.05.i.i.i.i122, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i121
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.jm) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef 248) #18
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i121
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i122, i64 8 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.jn, %i.jl
  br i1 %.not.i.i.i.i123, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i121, !llvm.loop !36

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i124 = load ptr, ptr %6, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit
  %i.jo = phi ptr [ %.pr.i.i124, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jj, %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i125 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i1.i.i125, label %_ZN5vcpkg16StatusParagraphsD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !103
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #18
  br label %_ZN5vcpkg16StatusParagraphsD2Ev.exit

_ZN5vcpkg16StatusParagraphsD2Ev.exit:             ; preds = %bb.bi, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.g
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.al, %bb.g ], [ %.pn55.pn, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %.pn55.pn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ju, ptr noundef %i.jv)
          to label %_ZN5vcpkg13LicenseReportD2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN5vcpkg16StatusParagraphsD2Ev.exit
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #21
  unreachable

_ZN5vcpkg13LicenseReportD2Ev.exit:                ; preds = %_ZN5vcpkg16StatusParagraphsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN5vcpkg21InstalledDatabaseLockD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn55.pn.pn
}

declare void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind writable sret(%"struct.vcpkg::ParsedArguments") align 8, ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg15ParsedArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
          to label %_ZNSt3mapIN5vcpkg13StringLiteralESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4lessIvESaISt4pairIKS1_SA_EEED2Ev.exit unwind label %bb.c
end_hunk_1
