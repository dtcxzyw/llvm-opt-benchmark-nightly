Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.format-manifest?download=true
inline.NumInlined: 564
inline.NumDeleted: 333
begin_hunk_0
%"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::__cxx11::basic_string<char>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::map.6" = type { %"class.std::_Rb_tree.7" }
%"class.std::_Rb_tree.7" = type { %"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<vcpkg::StringLiteral, std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const vcpkg::StringLiteral, std::vector<std::__cxx11::basic_string<char>>>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.55" = type { %"struct.std::_Vector_base.56" }
%"struct.std::_Vector_base.56" = type { %"struct.std::_Vector_base<(anonymous namespace)::ToWrite, std::allocator<(anonymous namespace)::ToWrite>>::_Vector_impl" }
%"struct.std::_Vector_base<(anonymous namespace)::ToWrite, std::allocator<(anonymous namespace)::ToWrite>>::_Vector_impl" = type { %"struct.std::_Vector_base<(anonymous namespace)::ToWrite, std::allocator<(anonymous namespace)::ToWrite>>::_Vector_impl_data" }
%"struct.std::_Vector_base<(anonymous namespace)::ToWrite, std::allocator<(anonymous namespace)::ToWrite>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::ExpectedT" = type <{ %union.anon.60, i8, [7 x i8] }>
%union.anon.60 = type { %"struct.vcpkg::ExpectedHolder" }
%"struct.vcpkg::ExpectedHolder" = type { %"struct.vcpkg::FileContents" }
%"struct.vcpkg::FileContents" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.(anonymous namespace)::ToWrite" = type { %"class.std::__cxx11::basic_string", %"class.std::unique_ptr.64", %"struct.vcpkg::Path", %"struct.vcpkg::Path" }
%"class.std::unique_ptr.64" = type { %"struct.std::__uniq_ptr_data.65" }
%"struct.std::__uniq_ptr_data.65" = type { %"class.std::__uniq_ptr_impl.66" }
%"class.std::__uniq_ptr_impl.66" = type { %"class.std::tuple.67" }
%"class.std::tuple.67" = type { %"struct.std::_Tuple_impl.68" }
%"struct.std::_Tuple_impl.68" = type { %"struct.std::_Head_base.71" }
%"struct.std::_Head_base.71" = type { ptr }
%"class.std::vector.46" = type { %"struct.std::_Vector_base.47" }
%"struct.std::_Vector_base.47" = type { %"struct.std::_Vector_base<vcpkg::Path, std::allocator<vcpkg::Path>>::_Vector_impl" }
%"struct.std::_Vector_base<vcpkg::Path, std::allocator<vcpkg::Path>>::_Vector_impl" = type { %"struct.std::_Vector_base<vcpkg::Path, std::allocator<vcpkg::Path>>::_Vector_impl_data" }
%"struct.std::_Vector_base<vcpkg::Path, std::allocator<vcpkg::Path>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.vcpkg::Paragraphs::PortLoadResult" = type { %"struct.vcpkg::ExpectedT.74", %"class.std::__cxx11::basic_string" }
%"struct.vcpkg::ExpectedT.74" = type <{ %union.anon.75, i8, [7 x i8] }>
%union.anon.75 = type { %"struct.vcpkg::ExpectedHolder.76" }
%"struct.vcpkg::ExpectedHolder.76" = type { %"struct.vcpkg::SourceControlFileAndLocation" }
%"struct.vcpkg::SourceControlFileAndLocation" = type { %"class.std::unique_ptr.64", %"struct.vcpkg::Path", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string" }

$_ZN5vcpkg3msg15println_warningIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE = comdat any

$_ZN5vcpkg6Checks19msg_exit_with_errorIJEJEEEvRKNS_8LineInfoENS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE = comdat any

$_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev = comdat any

$_ZN5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev = comdat any

$_ZN5vcpkg10Paragraphs14PortLoadResultD2Ev = comdat any

$_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev = comdat any

$_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE = comdat any

$_ZN5vcpkg15ParsedArgumentsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5vcpkg9ExpectedTINS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev = comdat any

$_ZN5vcpkg15LocalizedStringD2Ev = comdat any

$_ZN5vcpkg4Json6ObjectD2Ev = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZN5vcpkg17SourceControlFileD2Ev = comdat any

$_ZN5vcpkg16FeatureParagraphD2Ev = comdat any

$_ZN5vcpkg10DependencyD2Ev = comdat any

$_ZN5vcpkg15SourceParagraphD2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN5vcpkg18DependencyOverrideEEEvT_S5_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"format-manifest\00", align 1
@_ZN5vcpkg28msgCmdFormatManifestSynopsisE = external global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg28msgCmdFormatManifestExample1E = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"vcpkg format-manifest ports/zlib/vcpkg.json\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"vcpkg format-manifest --all\00", align 1
@_ZN5vcpkg29CommandFormatManifestMetadataE = dso_local constant { { ptr, i64 }, %"struct.vcpkg::MetadataMessage", [4 x %"struct.vcpkg::MetadataMessage"], %"struct.vcpkg::LearnWebsiteLinkLiteral", i32, i64, i64, %"struct.vcpkg::CommandOptionsStructure", ptr } { { ptr, i64 } { ptr @.str, i64 15 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg28msgCmdFormatManifestSynopsisE } }, [4 x %"struct.vcpkg::MetadataMessage"] [%"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg28msgCmdFormatManifestExample1E } }, %"struct.vcpkg::MetadataMessage" { i32 2, %union.anon { ptr @.str.1 } }, %"struct.vcpkg::MetadataMessage" { i32 2, %union.anon { ptr @.str.2 } }, %"struct.vcpkg::MetadataMessage" zeroinitializer], %"struct.vcpkg::LearnWebsiteLinkLiteral" zeroinitializer, i32 0, i64 0, i64 -1, %"struct.vcpkg::CommandOptionsStructure" { %"struct.vcpkg::Span" { ptr @_ZN12_GLOBAL__N_115FORMAT_SWITCHESE, i64 2 }, %"struct.vcpkg::Span.0" zeroinitializer, %"struct.vcpkg::Span.1" zeroinitializer }, ptr null }, align 8
@_ZN5vcpkg27msgMissingArgFormatManifestE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.3 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/commands.format-manifest.cpp\00", align 1
@__func__._ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE = private unnamed_addr constant [33 x i8] c"command_format_manifest_and_exit\00", align 1
@_ZN5vcpkg28msgFailedToFormatMissingFileE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"vcpkg.json\00", align 1
@_ZN5vcpkg8out_sinkE = external local_unnamed_addr constant ptr, align 8
@_ZN5vcpkg26msgManifestFormatCompletedE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@_ZN5vcpkg26msgCmdFormatManifestOptAllE = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"convert-control\00", align 1
@_ZN5vcpkg37msgCmdFormatManifestOptConvertControlE = external global %"struct.vcpkg::msg::MessageT", align 8
@_ZN12_GLOBAL__N_115FORMAT_SWITCHESE = internal constant [2 x { { ptr, i64 }, %"struct.vcpkg::MetadataMessage" }] [{ { ptr, i64 }, %"struct.vcpkg::MetadataMessage" } { { ptr, i64 } { ptr @.str.6, i64 3 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg26msgCmdFormatManifestOptAllE } } }, { { ptr, i64 }, %"struct.vcpkg::MetadataMessage" } { { ptr, i64 } { ptr @.str.7, i64 15 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg37msgCmdFormatManifestOptConvertControlE } } }], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Formatting \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Converting \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<unsaved>\00", align 1
@_ZN5vcpkg9null_sinkE = external local_unnamed_addr constant ptr, align 8
@__func__._ZN12_GLOBAL__N_114open_for_writeERKN5vcpkg10FilesystemERKNS_7ToWriteE = private unnamed_addr constant [15 x i8] c"open_for_write\00", align 1
@_ZN5vcpkg37msgMismatchedManifestAfterReserializeE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.16 = private unnamed_addr constant [54 x i8] c"\0A=== Original File ===\0A{}\0A=== Serialized File ===\0A{}\0A\00", align 1
@_ZN5vcpkg5Debug11g_debuggingE = external local_unnamed_addr global %"struct.std::atomic", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"[DEBUG] \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 7 uses
  %7 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %8 = alloca %"struct.vcpkg::Json::Object", align 8 ; 12 uses
  %9 = alloca %"struct.vcpkg::ExpectedT.61", align 8 ; 9 uses
  %10 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %11 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 6 uses
  %12 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"struct.vcpkg::LineInfo", align 8 ; 5 uses
  %18 = alloca %"struct.vcpkg::Path", align 8     ; 8 uses
  %19 = alloca %"struct.vcpkg::LineInfo", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 10 uses
  %21 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %22 = alloca %"class.std::vector.55", align 8   ; 12 uses
  %23 = alloca %"struct.vcpkg::Path", align 8     ; 21 uses
  %24 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %25 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 18 uses
  %26 = alloca %"struct.vcpkg::ExpectedT.61", align 8 ; 11 uses
  %27 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %28 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %29 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 19 uses
  %30 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %31 = alloca %"struct.vcpkg::ExpectedT.61", align 8 ; 11 uses
  %32 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %33 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %34 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 20 uses
  %35 = alloca %"class.std::vector.46", align 8   ; 8 uses
  %36 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %37 = alloca %"struct.vcpkg::Paragraphs::PortLoadResult", align 8 ; 25 uses
  %38 = alloca %"struct.vcpkg::Path", align 8     ; 16 uses
  %39 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 19 uses
  %40 = alloca %"struct.vcpkg::Path", align 8     ; 11 uses
  %41 = alloca %"struct.(anonymous namespace)::ToWrite", align 8 ; 20 uses
  %42 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %43 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %20, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg29CommandFormatManifestMetadataE)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.b unwind label %bb.e       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.b ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !90
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !91
  %i.p = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr nonnull @.str.6, i64 3) #16 ; 4 uses
  %.19.i.i.i.i = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !82

_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.q, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !90
  %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel.v = select i1 %i.p, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.19.i.i.i.i.sroa.sel520.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  %i.r = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr nonnull @.str.6, i64 3, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) #16 ; 2 uses
  %not..i = xor i1 %i.r, true
  br label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit: ; preds = %bb.c, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %.sroa.0.0.i.i.i.ph = phi i1 [ %i.r, %bb.c ], [ true, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i ]
  %.sroa.0.0.i.i.i.ph.a = phi i1 [ %not..i, %bb.c ], [ false, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i ] ; 2 uses
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i.i159 = icmp eq ptr %.pr, null
  br i1 %.not10.i.i.i.i159, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, label %.lr.ph.i.i.i.i160

.lr.ph.i.i.i.i160:                                ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, %.lr.ph.i.i.i.i160
  %.012.i.i.i.i161 = phi ptr [ %.1.i.i.i.i169, %.lr.ph.i.i.i.i160 ], [ %.pr, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit ] ; 6 uses
  %.0811.i.i.i.i162 = phi ptr [ %.19.i.i.i.i166, %.lr.ph.i.i.i.i160 ], [ %i.n, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i163 = load ptr, ptr %i.s, align 8, !tbaa !90
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i164 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i165 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i164, align 8, !tbaa !91
  %i.t = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i163, i64 %.sroa.22.0.copyload.i.i.i.i.i.i165, ptr nonnull @.str.7, i64 15) #16 ; 4 uses
  %.19.i.i.i.i166 = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161 ; 2 uses
  %.1.in.v.i.i.i.i167 = select i1 %i.t, i64 24, i64 16
  %.1.in.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 %.1.in.v.i.i.i.i167
  %.1.i.i.i.i169 = load ptr, ptr %.1.in.i.i.i.i168, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %.1.i.i.i.i169, null
  br i1 %.not.i.i.i.i170, label %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171, label %.lr.ph.i.i.i.i160, !llvm.loop !82

_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171: ; preds = %.lr.ph.i.i.i.i160
  %i.u = icmp eq ptr %.19.i.i.i.i166, %i.n
  br i1 %i.u, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread: ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171
  br i1 %.sroa.0.0.i.i.i.ph.a, label %bb.j, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177: ; preds = %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i171
  %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161
  %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i172 = load ptr, ptr %.19.i.i.i.i166.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !90
  %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel.v = select i1 %i.t, ptr %.0811.i.i.i.i162, ptr %.012.i.i.i.i161
  %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i174 = load i64, ptr %.19.i.i.i.i166.sroa.sel523.v.sroa.sel.v.sroa.sel, align 8, !tbaa !91
  %i.v = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr nonnull @.str.7, i64 15, ptr %.sroa.0.0.copyload.i.i.i.i.i172, i64 %.sroa.2.0.copyload.i.i.i.i.i174) #16
  %not..i175 = xor i1 %i.v, true                  ; 3 uses
  %or.cond = and i1 %.sroa.0.0.i.i.i.ph, %not..i175
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  %.sroa.042.0.copyload = load i64, ptr @_ZN5vcpkg27msgMissingArgFormatManifestE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg3msg15println_warningIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %.sroa.042.0.copyload)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.f:                                             ; preds = %bb.d, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177
  br i1 %.sroa.0.0.i.i.i.ph.a, label %bb.j, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread: ; preds = %bb.b, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %bb.f
  %.sroa.0.0.i.i.i176532533 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %not..i175, %bb.f ], [ false, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  store i32 112, ptr %21, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.3, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @__func__._ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.ad, align 8, !tbaa !97
  %.sroa.041.0.copyload = load i64, ptr @_ZN5vcpkg28msgFailedToFormatMissingFileE, align 8, !tbaa !91
  invoke void @_ZN5vcpkg6Checks19msg_exit_with_errorIJEJEEEvRKNS_8LineInfoENS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 %.sroa.041.0.copyload) #17
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.gq

bb.j:                                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread, %bb.f
  %.sroa.0.0.i.i.i526531536 = phi i1 [ true, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ true, %bb.f ]
  %.sroa.0.0.i.i.i176532534 = phi i1 [ false, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread ], [ %.sroa.0.0.i.i.i176532533, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit177.thread.thread ], [ %not..i175, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 2 uses
  %.not740 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not740, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 3 uses
  %.sroa.gep508 = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  %i.ao = load ptr, ptr @_ZN5vcpkg8out_sinkE, align 8, !nonnull !25, !align !98
  %i.ap = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %.sroa.gep512 = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %34, i64 56 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %34, i64 72 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %34, i64 88 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 88 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN5vcpkg4PathD2Ev.exit242, %bb.j
  %.096.lcssa = phi i1 [ false, %bb.j ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 3 uses
  br i1 %.sroa.0.0.i.i.i526531536, label %bb.ch, label %bb.eh

bb.k:                                             ; preds = %.lr.ph, %_ZN5vcpkg4PathD2Ev.exit242
  %.096742 = phi i1 [ false, %.lr.ph ], [ %.4100, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  %.sroa.0515.0741 = phi ptr [ %i.ag, %.lr.ph ], [ %i.nx, %_ZN5vcpkg4PathD2Ev.exit242 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0515.0741)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.br = invoke noundef zeroext i1 @_ZNK5vcpkg4Path11is_relativeEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  br i1 %i.br, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.bs = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %23) #16 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.bt, i64 %i.bu)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %23, align 8, !tbaa !28   ; 6 uses
  %i.bw = icmp eq ptr %i.bv, %i.aj
  %i.bx = load ptr, ptr %24, align 8, !tbaa !28   ; 5 uses
  %i.by = icmp eq ptr %i.bx, %i.ak                ; 2 uses
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  br i1 %i.by, label %bb.p, label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o
  br i1 %i.by, label %bb.p, label %.thread.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  switch i64 %i.bz, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !30
  store i8 %i.cb, ptr %i.bv, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cc = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  store i64 %i.cc, ptr %i.am, align 8, !tbaa !29
  %i.cd = load ptr, ptr %23, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1, !tbaa !30
  %.pre.i.i = load ptr, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %44 = load i64, ptr %i.aj, align 8, !tbaa !30
  %45 = icmp eq ptr %i.bv, null
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %i.cf = load <2 x i64>, ptr %i.al, align 8, !tbaa !30
  store <2 x i64> %i.cf, ptr %i.am, align 8, !tbaa !30
  br i1 %45, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %.thread.i.i
  store ptr %i.bv, ptr %24, align 8, !tbaa !28
  store i64 %44, ptr %i.ak, align 8, !tbaa !30
  br label %_ZN5vcpkg4PathaSEOS0_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.bx, ptr %23, align 8, !tbaa !28
  %46 = load <2 x i64>, ptr %i.al, align 8, !tbaa !30
  store <2 x i64> %46, ptr %i.am, align 8, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread.i.i
  store ptr %i.ak, ptr %24, align 8, !tbaa !28
  br label %_ZN5vcpkg4PathaSEOS0_.exit

_ZN5vcpkg4PathaSEOS0_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %bb.t
  %i.cg = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i ], [ %i.ak, %bb.t ]
  store i64 0, ptr %i.al, align 8, !tbaa !29
  store i8 0, ptr %i.cg, align 1, !tbaa !30
  %i.ch = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ak
  br i1 %i.ci, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg4PathaSEOS0_.exit
  %i.cj = load i64, ptr %i.ak, align 8, !tbaa !30
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #18
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg4PathaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.x

bb.u:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit253

bb.v:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.w:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.cg

bb.x:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem17try_read_contentsERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = load i8, ptr %i.an, align 8, !tbaa !100, !range !32, !noundef !25
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, label %bb.ab

_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.y
  %i.cq = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #16 ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0
  %i.cs = extractvalue { ptr, i64 } %i.cq, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.cr, i64 %i.cs)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.11, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEED2Ev.exit250

bb.aa:                                            ; preds = %.noexc, %_ZNR5vcpkg9ExpectedTINS_12FileContentsENS_15LocalizedStringEE5errorEv.exit, %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ab:                                            ; preds = %bb.y
  %i.cv = invoke { ptr, i64 } @_ZNK5vcpkg4Path8filenameEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ac unwind label %bb.aa     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1
  %i.cy = call noundef zeroext i1 @_ZN5vcpkgeqENS_10StringViewES0_(ptr %i.cw, i64 %i.cx, ptr nonnull @.str.4, i64 7) #16
  br i1 %i.cy, label %bb.ad, label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.gep508) #16
  %i.cz = load ptr, ptr %27, align 8
  %i.da = load i64, ptr %i.bc, align 8
  %i.db = load ptr, ptr %28, align 8
  %i.dc = load i64, ptr %i.bd, align 8
  invoke void @_ZN5vcpkg10Paragraphs26try_load_control_file_textENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %26, ptr %i.cz, i64 %i.da, ptr %i.db, i64 %i.dc)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr %i.be, align 8, !tbaa !34, !range !32, !noundef !25
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZNR5vcpkg9ExpectedTISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16
  store ptr %i.bf, ptr %29, align 8, !tbaa !35
  %i.df = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.dg = load i64, ptr %.sroa.gep512, align 8, !tbaa !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i64 %i.dg, ptr %i.j, align 8, !tbaa !91
  %i.dh = icmp ugt i64 %i.dg, 15
  br i1 %i.dh, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc180 unwind label %bb.ar ; 2 uses

.noexc180:                                        ; preds = %.noexc.i
  store ptr %i.di, ptr %29, align 8, !tbaa !28
  %i.dj = load i64, ptr %i.j, align 8, !tbaa !91
  store i64 %i.dj, ptr %i.bf, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc180, %bb.af
  %i.dk = phi ptr [ %i.di, %.noexc180 ], [ %i.bf, %bb.af ] ; 2 uses
  switch i64 %i.dg, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !30
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !30
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.df, i64 %i.dg, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !91  ; 2 uses
  store i64 %i.dm, ptr %i.bg, align 8, !tbaa !29
  %i.dn = load ptr, ptr %29, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm
  store i8 0, ptr %i.do, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  %i.dp = load i64, ptr %26, align 8, !tbaa !37
  store i64 %i.dp, ptr %i.bh, align 8, !tbaa !37
  store ptr null, ptr %26, align 8, !tbaa !37
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !35
  %i.dq = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.aj
  br i1 %i.dr, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i64, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.du, i1 false)
  br label %_ZN5vcpkg4PathC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.ai
  store ptr %i.dq, ptr %i.bi, align 8, !tbaa !28
  %i.dv = load i64, ptr %i.aj, align 8, !tbaa !30
  store i64 %i.dv, ptr %i.bj, align 8, !tbaa !30
  %.pre = load i64, ptr %i.am, align 8, !tbaa !29
  br label %_ZN5vcpkg4PathC2EOS0_.exit

_ZN5vcpkg4PathC2EOS0_.exit:                       ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %i.dw = phi i64 [ %i.ds, %bb.aj ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ]
  store i64 %i.dw, ptr %i.bk, align 8, !tbaa !29
  store ptr %i.aj, ptr %23, align 8, !tbaa !28
  store i64 0, ptr %i.am, align 8, !tbaa !29
  store i8 0, ptr %i.aj, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.dx = invoke { ptr, i64 } @_ZNK5vcpkg4Path11parent_pathEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ak unwind label %_ZN5vcpkg4PathD2Ev.exit190.thread ; 2 uses

bb.ak:                                            ; preds = %_ZN5vcpkg4PathC2EOS0_.exit
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  invoke void @_ZN5vcpkg4PathC1ENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr %i.dy, i64 %i.dz)
          to label %bb.al unwind label %_ZN5vcpkg4PathD2Ev.exit190.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr nonnull @.str.5, i64 10)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZNSt6vectorIN12_GLOBAL__N_17ToWriteESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(104) %29)
          to label %bb.an unwind label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ea = load ptr, ptr %i.bl, align 8, !tbaa !28 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bm
  br i1 %i.eb, label %_ZN5vcpkg4PathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.an
  %i.ec = load i64, ptr %i.bm, align 8, !tbaa !30
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #18
  br label %_ZN5vcpkg4PathD2Ev.exit.i

_ZN5vcpkg4PathD2Ev.exit.i:                        ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ee = load ptr, ptr %i.bi, align 8, !tbaa !28 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bj
  br i1 %i.ef, label %_ZN5vcpkg4PathD2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  %i.eg = load i64, ptr %i.bj, align 8, !tbaa !30
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #18
  br label %_ZN5vcpkg4PathD2Ev.exit3.i
end_hunk_0
