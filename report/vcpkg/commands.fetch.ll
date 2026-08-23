Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.fetch?download=true
inline.NumInlined: 150
inline.NumDeleted: 116
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
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.18 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.18 = type { i64, [8 x i8] }
%"struct.vcpkg::StringView" = type { ptr, i64 }
%"struct.vcpkg::LineInfo" = type { i32, ptr, ptr }

$_ZN5vcpkg15ParsedArgumentsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@_ZN5vcpkg19msgCmdFetchSynopsisE = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"vcpkg fetch python\00", align 1
@_ZN5vcpkg20CommandFetchMetadataE = dso_local constant { { ptr, i64 }, %"struct.vcpkg::MetadataMessage", [4 x %"struct.vcpkg::MetadataMessage"], %"struct.vcpkg::LearnWebsiteLinkLiteral", i32, i64, i64, %"struct.vcpkg::CommandOptionsStructure", ptr } { { ptr, i64 } { ptr @.str, i64 5 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg19msgCmdFetchSynopsisE } }, [4 x %"struct.vcpkg::MetadataMessage"] [%"struct.vcpkg::MetadataMessage" { i32 2, %union.anon { ptr @.str.1 } }, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer], %"struct.vcpkg::LearnWebsiteLinkLiteral" zeroinitializer, i32 0, i64 1, i64 1, %"struct.vcpkg::CommandOptionsStructure" { %"struct.vcpkg::Span" { ptr @_ZN12_GLOBAL__N_113STDERR_STATUSE, i64 1 }, %"struct.vcpkg::Span.0" zeroinitializer, %"struct.vcpkg::Span.1" zeroinitializer }, ptr null }, align 8
@_ZN5vcpkg25stderr_diagnostic_contextE = external local_unnamed_addr constant ptr, align 8
@_ZN5vcpkg26console_diagnostic_contextE = external local_unnamed_addr constant ptr, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/commands.fetch.cpp\00", align 1
@__func__._ZN5vcpkg22command_fetch_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE = private unnamed_addr constant [23 x i8] c"command_fetch_and_exit\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"x-stderr-status\00", align 1
@_ZN5vcpkg27msgCmdFetchOptXStderrStatusE = external global %"struct.vcpkg::msg::MessageT", align 8
@_ZN12_GLOBAL__N_113STDERR_STATUSE = internal constant [1 x { { ptr, i64 }, %"struct.vcpkg::MetadataMessage" }] [{ { ptr, i64 }, %"struct.vcpkg::MetadataMessage" } { { ptr, i64 } { ptr @.str.3, i64 15 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg27msgCmdFetchOptXStderrStatusE } } }], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN5vcpkg22command_fetch_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %5 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %8 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg20CommandFetchMetadataE)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i.i, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !16
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !18
  %i.g = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr nonnull @.str.3, i64 15) #11 ; 4 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.h, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !16
  %.19.i.i.i.i.sroa.sel24.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel24.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel24.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.19.i.i.i.i.sroa.sel24.v.sroa.sel.v.sroa.sel, align 8, !tbaa !18
  %i.i = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr nonnull @.str.3, i64 15, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i) #11
  br i1 %i.i, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit, label %9

9:                                                ; preds = %bb.b
  br label %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit

_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit: ; preds = %9, %bb.b, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i.i = phi i1 [ true, %9 ], [ false, %_ZNKSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !25
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.o, ptr %i.b, align 8, !tbaa !18
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %3, align 8, !tbaa !27
  %i.r = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.r, ptr %i.l, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.l, %_ZN5vcpkg4Util4Sets8containsISt3setINS_13StringLiteralESt4lessIvESaIS4_EES4_EEbRKT_RKT0_.exit ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !30
  store i8 %i.t, ptr %i.s, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !29
  %i.w = load ptr, ptr %3, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.y = load ptr, ptr @_ZN5vcpkg25stderr_diagnostic_contextE, align 8, !nonnull !31, !align !32
  %i.z = load ptr, ptr @_ZN5vcpkg26console_diagnostic_contextE, align 8, !nonnull !31, !align !32
  %i.aa = select i1 %.sroa.0.0.i.i.i, ptr %i.y, ptr %i.z
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr @_ZNK5vcpkg10VcpkgPaths13get_tool_pathERNS_17DiagnosticContextENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr %i.ab, i64 %i.ad)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg4Path6nativeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !30, !noalias !33
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27, !noalias !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29, !noalias !33 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !25, !alias.scope !36
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !29, !alias.scope !36
  store i8 0, ptr %i.aj, align 8, !tbaa !30, !alias.scope !36
  %i.al = add i64 %i.ai, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.al)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !29, !alias.scope !36
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ai
  br i1 %i.ao, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !29, !alias.scope !36
  %i.ar = icmp eq i64 %i.aq, 4611686018427387903
  br i1 %i.ar, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.j unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !27, !alias.scope !36 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %.body, label %.body.sink.split

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  %i.aw = load ptr, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  invoke void @_ZN5vcpkg3msg32write_unlocalized_text_to_stdoutENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.aw, i64 %i.ay)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aj
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bb = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i32 41, ptr %7, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.2, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @__func__._ZN5vcpkg22command_fetch_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.be, align 8, !tbaa !42
  invoke void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7) #12
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.m:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.n:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.i
  %.sink = phi ptr [ %i.au, %bb.i ], [ %i.bi, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.bh, %bb.o ]
  %i.bk = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bl) #13
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.bh, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store i32 45, ptr %8, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.2, ptr %i.bn, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @__func__._ZN5vcpkg22command_fetch_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE, ptr %i.bo, align 8, !tbaa !42
  invoke void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.t
end_hunk_0
