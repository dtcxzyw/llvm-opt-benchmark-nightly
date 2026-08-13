inline.NumInlined: 354
inline.NumDeleted: 167
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
%"struct.vcpkg::Path" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.18 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.18 = type { i64, [8 x i8] }
%"struct.vcpkg::ExpectedT" = type <{ %union.anon.44, i8, [7 x i8] }>
%union.anon.44 = type { %"struct.vcpkg::LocalizedString" }
%"struct.vcpkg::LocalizedString" = type { %"class.std::__cxx11::basic_string" }
%"struct.vcpkg::LineInfo" = type { i32, ptr, ptr }

$_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE = comdat any

$_ZN5vcpkg15ParsedArgumentsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESt10_Select1stISD_ESt4lessIvESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIN5vcpkg13StringLiteralES1_St9_IdentityIS1_ESt4lessIvESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNKR5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE5errorEv = comdat any

@.str = private unnamed_addr constant [24 x i8] c"format-feature-baseline\00", align 1
@_ZN5vcpkg35msgCmdFormatFeatureBaselineSynopsisE = external global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg34msgCmdFormatFeatureBaselineExampleE = external global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg36CommandFormatFeatureBaselineMetadataE = dso_local constant { { ptr, i64 }, %"struct.vcpkg::MetadataMessage", [4 x %"struct.vcpkg::MetadataMessage"], %"struct.vcpkg::LearnWebsiteLinkLiteral", i32, i64, i64, %"struct.vcpkg::CommandOptionsStructure", ptr } { { ptr, i64 } { ptr @.str, i64 23 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg35msgCmdFormatFeatureBaselineSynopsisE } }, [4 x %"struct.vcpkg::MetadataMessage"] [%"struct.vcpkg::MetadataMessage" { i32 1, %union.anon { ptr @_ZN5vcpkg34msgCmdFormatFeatureBaselineExampleE } }, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer], %"struct.vcpkg::LearnWebsiteLinkLiteral" zeroinitializer, i32 0, i64 1, i64 1, %"struct.vcpkg::CommandOptionsStructure" zeroinitializer, ptr null }, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/commands.format-feature-baseline.cpp\00", align 1
@__func__._ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE = private unnamed_addr constant [41 x i8] c"command_format_feature_baseline_and_exit\00", align 1
@_ZN5vcpkg27msgFeatureBaselineFormattedE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/include/vcpkg/base/expected.h\00", align 1
@__func__._ZNKR5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE5errorEv = private unnamed_addr constant [6 x i8] c"error\00", align 1
@_ZN12_GLOBAL__N_118comparison_indicesE = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F (,6@75+-.2:&%*3ABCDEFGHIJ!';<=)1KMORTVXZ\\^`bdfhjlnprtvxz|~\224#9$8LNPQSUWY[]_acegikmoqsuwy{}/>0?\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 5 uses
  %3 = alloca %"struct.vcpkg::Path", align 8      ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  %5 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 8 uses
  %6 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %7 = alloca %"struct.vcpkg::LineInfo", align 8  ; 4 uses
  %8 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg36CommandFormatFeatureBaselineMetadataE)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.c = load ptr, ptr %1, align 8, !tbaa !13
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 79, ptr %6, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.1, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @__func__._ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !20, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %5) #14
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #15
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #16
  unreachable

_ZN5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %5, align 8, !tbaa !9      ; 3 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load <2 x ptr>, ptr %i.o, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !26   ; 3 uses
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %.not22 = icmp eq ptr %i.m, %i.r
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %_ZN5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEED2Ev.exit
  store i32 98, ptr %7, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @__func__._ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE, ptr %i.t, align 8, !tbaa !19
  invoke void @_ZNK5vcpkg10Filesystem11write_linesERKNS_4PathERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %7)
          to label %bb.k unwind label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZN5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEED2Ev.exit, %.backedge
  %.sroa.015.023 = phi ptr [ %.sroa.015.0.be, %.backedge ], [ %i.m, %_ZN5vcpkg9ExpectedTISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15LocalizedStringEED2Ev.exit ] ; 8 uses
  %i.w = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.023, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 2) #14 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph
  %i.y = load ptr, ptr %.sroa.015.023, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !31
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.preheader

_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %.lr.ph, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 32
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph.i.i.i.i, %bb.j, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.sroa.015.0.be = phi ptr [ %i.ac, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.ptr, %bb.j ], [ %.ptr, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.015.0.be, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12
  %.sroa.0.0.idx = phi i64 [ %.sroa.0.0.add, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12 ], [ 0, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx, 32 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 %.sroa.0.0.add ; 8 uses
  %.not21 = icmp eq ptr %.ptr, %i.r
  br i1 %.not21, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ad = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 2) #14 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %.critedge, label %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12

_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12: ; preds = %bb.i
  %i.af = load ptr, ptr %.ptr, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %.critedge, label %.preheader, !llvm.loop !34

.critedge:                                        ; preds = %bb.i, %_ZN12_GLOBAL__N_115is_comment_lineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit12, %.preheader
  %i.aj = lshr exact i64 %.sroa.0.0.add, 5
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = shl nuw nsw i64 %i.ak, 1
  %i.am = xor i64 %i.al, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.015.023, ptr nonnull %.ptr, i64 noundef %i.am)
  %i.an = icmp samesign ugt i64 %.sroa.0.0.idx, 511
  br i1 %i.an, label %.lr.ph.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.preheader:                         ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 512 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_(ptr nonnull %.sroa.015.023, ptr nonnull %i.ao)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  call fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_(ptr nonnull %.sroa.0.07.i.i.i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %.ptr
  br i1 %.not.i.i.i.i, label %.backedge, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.j:                                             ; preds = %.critedge
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_(ptr nonnull %.sroa.015.023, ptr nonnull %.ptr)
  br label %.backedge

bb.k:                                             ; preds = %._crit_edge
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg27msgFeatureBaselineFormattedE, align 8, !tbaa !36
  invoke void @_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %.sroa.0.0.copyload)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store i32 100, ptr %8, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.1, ptr %i.aq, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @__func__._ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE, ptr %i.ar, align 8, !tbaa !19
  invoke void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %8) #15
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k, %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.au, %bb.p ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !9
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.q, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %.pn, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i ], [ %.pn, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bh = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !31
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #17
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN5vcpkg15ParsedArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind writable sret(%"struct.vcpkg::ParsedArguments") align 8, ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK5vcpkg10Filesystem11write_linesERKNS_4PathERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg7printlnIJEJEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS3_E4typeET0_EE(i64 %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %1, i64 %0)
  %i.a = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #14 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.b, i64 %i.c)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.4, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit unwind label %bb.b

_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit: ; preds = %.noexc
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !31
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #17
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5vcpkg15LocalizedStringD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !31
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #17
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit5

_ZN5vcpkg15LocalizedStringD2Ev.exit5:             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %i.i
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg15ParsedArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !31
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_:bb.a
bb.r:                                             ; preds = %.lr.ph.i.i.i.i69.i.i
  %i.ek = icmp ult i8 %i.ei, %i.ef
  br i1 %i.ek, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i70.i.i, i64 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i71.i.i, i64 1
  %.not.i.i.i.i72.i.i = icmp eq ptr %i.el, %spec.select.i.i.i.i.i65.i.i
  br i1 %.not.i.i.i.i72.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i, label %.lr.ph.i.i.i.i69.i.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i
  %.sroa.011.0.lcssa.i.i.i.i74.i.i = phi ptr [ %.val2.i62.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread95.i.i ], [ %scevgep.i.i.i.i68.i.i, %bb.s ]
  %.not109.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i74.i.i, %i.ea
  br i1 %.not109.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i
  %spec.select.i.i.i.v.i.i81.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i63.i.i, i64 %.val3.i.i.i) ; 3 uses
  %spec.select.i.i.i.i.i82.i.i = getelementptr inbounds i8, ptr %.val2.i.i.i, i64 %spec.select.i.i.i.v.i.i81.i.i
  %.not19.i.i.i.i83.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i81.i.i, 0
  br i1 %.not19.i.i.i.i83.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, label %.lr.ph.preheader.i.i.i.i84.i.i

.lr.ph.preheader.i.i.i.i84.i.i:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i
  %scevgep.i.i.i.i85.i.i = getelementptr i8, ptr %.val2.i62.i.i, i64 %spec.select.i.i.i.v.i.i81.i.i
  br label %.lr.ph.i.i.i.i86.i.i

.lr.ph.i.i.i.i86.i.i:                             ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i84.i.i
  %.sroa.015.021.i.i.i.i87.i.i = phi ptr [ %i.ex, %bb.u ], [ %.val2.i.i.i, %.lr.ph.preheader.i.i.i.i84.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i88.i.i = phi ptr [ %i.ey, %bb.u ], [ %.val2.i62.i.i, %.lr.ph.preheader.i.i.i.i84.i.i ] ; 2 uses
  %i.en = load i8, ptr %.sroa.015.021.i.i.i.i87.i.i, align 1, !tbaa !31
  %i.eo = load i8, ptr %.sroa.011.020.i.i.i.i88.i.i, align 1, !tbaa !31
  %i.ep = zext i8 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !31  ; 2 uses
  %i.es = zext i8 %i.eo to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !31  ; 2 uses
  %i.ev = icmp ult i8 %i.er, %i.eu
  br i1 %i.ev, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i86.i.i
  %i.ew = icmp ult i8 %i.eu, %i.er
  br i1 %i.ew, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i87.i.i, i64 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i88.i.i, i64 1
  %.not.i.i.i.i89.i.i = icmp eq ptr %i.ex, %spec.select.i.i.i.i.i82.i.i
  br i1 %.not.i.i.i.i89.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, label %.lr.ph.i.i.i.i86.i.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i
  %.sroa.011.0.lcssa.i.i.i.i91.i.i = phi ptr [ %.val2.i62.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.thread104.i.i ], [ %scevgep.i.i.i.i85.i.i, %bb.u ]
  %.not110.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i91.i.i, %i.ea
  br i1 %.not110.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i35.i.i, %.lr.ph.i.i.i.i52.i.i, %.lr.ph.i.i.i.i69.i.i, %.lr.ph.i.i.i.i86.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.thread101.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit42.i.i
  %.sink.i.i = phi ptr [ %i.ck, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.i.i ], [ %i.cj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.thread107.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit76.i.i ], [ %i.cj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit42.i.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit59.thread101.i.i ], [ %i.ck, %.lr.ph.i.i.i.i52.i.i ], [ %i.f, %.lr.ph.i.i.i.i69.i.i ], [ %i.ck, %.lr.ph.i.i.i.i86.i.i ], [ %i.ck, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit93.i.i ], [ %i.cj, %.lr.ph.i.i.i.i35.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.027.0.i.i = phi ptr [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i ], [ %i.gd, %bb.ab ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge34120, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_SI_T0_.exit.i ], [ %.sroa.0.1.i.i, %bb.ab ]
  %.val2.i.i13.i = load ptr, ptr %0, align 8, !tbaa !27 ; 6 uses
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !50 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val2.i.i13.i, i64 %.val3.i.i14.i
  br label %bb.w

bb.w:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i, %bb.v
  %.sroa.027.1.i.i = phi ptr [ %.sroa.027.0.i.i, %bb.v ], [ %i.fn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i ] ; 10 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.027.1.i.i, align 8, !tbaa !27 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.027.1.i.i, i64 8
  %.val1.i.i16.i = load i64, ptr %i.fa, align 8, !tbaa !50
  %spec.select.i.i.i.v.i.i.i17.i = tail call i64 @llvm.smin.i64(i64 %.val3.i.i14.i, i64 %.val1.i.i16.i) ; 3 uses
  %spec.select.i.i.i.i.i.i18.i = getelementptr inbounds i8, ptr %.val.i.i15.i, i64 %spec.select.i.i.i.v.i.i.i17.i
  %.not19.i.i.i.i.i19.i = icmp eq i64 %spec.select.i.i.i.v.i.i.i17.i, 0
  br i1 %.not19.i.i.i.i.i19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, label %.lr.ph.preheader.i.i.i.i.i20.i

.lr.ph.preheader.i.i.i.i.i20.i:                   ; preds = %bb.w
  %scevgep.i.i.i.i.i21.i = getelementptr i8, ptr %.val2.i.i13.i, i64 %spec.select.i.i.i.v.i.i.i17.i
  br label %.lr.ph.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i22.i:                             ; preds = %bb.y, %.lr.ph.preheader.i.i.i.i.i20.i
  %.sroa.015.021.i.i.i.i.i23.i = phi ptr [ %i.fl, %bb.y ], [ %.val.i.i15.i, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i.i24.i = phi ptr [ %i.fm, %bb.y ], [ %.val2.i.i13.i, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 2 uses
  %i.fb = load i8, ptr %.sroa.015.021.i.i.i.i.i23.i, align 1, !tbaa !31
  %i.fc = load i8, ptr %.sroa.011.020.i.i.i.i.i24.i, align 1, !tbaa !31
  %i.fd = zext i8 %i.fb to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !31  ; 2 uses
  %i.fg = zext i8 %i.fc to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !31  ; 2 uses
  %i.fj = icmp ult i8 %i.ff, %i.fi
  br i1 %i.fj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.fk = icmp ult i8 %i.fi, %i.ff
  br i1 %i.fk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i.i23.i, i64 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i.i24.i, i64 1
  %.not.i.i.i.i.i25.i = icmp eq ptr %i.fl, %spec.select.i.i.i.i.i.i18.i
  br i1 %.not.i.i.i.i.i25.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, label %.lr.ph.i.i.i.i.i22.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i: ; preds = %bb.y, %bb.w
  %.sroa.011.0.lcssa.i.i.i.i.i27.i = phi ptr [ %.val2.i.i13.i, %bb.w ], [ %scevgep.i.i.i.i.i21.i, %bb.y ]
  %.not.i28.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i27.i, %i.ez
  br i1 %.not.i28.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i29.i: ; preds = %.lr.ph.i.i.i.i.i22.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.027.1.i.i, i64 32
  br label %bb.w, !llvm.loop !56

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i26.i, %bb.x
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %.val2.i10.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !27 ; 4 uses
  %i.fo = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val3.i11.i.i = load i64, ptr %i.fo, align 8, !tbaa !50 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val2.i10.i.i, i64 %.val3.i11.i.i
  %spec.select.i.i.i.v.i.i12.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i11.i.i, i64 %.val3.i.i14.i) ; 3 uses
  %spec.select.i.i.i.i.i13.i.i = getelementptr inbounds i8, ptr %.val2.i.i13.i, i64 %spec.select.i.i.i.v.i.i12.i.i
  %.not19.i.i.i.i14.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i12.i.i, 0
  br i1 %.not19.i.i.i.i14.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, label %.lr.ph.preheader.i.i.i.i15.i.i

.lr.ph.preheader.i.i.i.i15.i.i:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i
  %scevgep.i.i.i.i16.i.i = getelementptr i8, ptr %.val2.i10.i.i, i64 %spec.select.i.i.i.v.i.i12.i.i
  br label %.lr.ph.i.i.i.i17.i.i

.lr.ph.i.i.i.i17.i.i:                             ; preds = %bb.aa, %.lr.ph.preheader.i.i.i.i15.i.i
  %.sroa.015.021.i.i.i.i18.i.i = phi ptr [ %i.ga, %bb.aa ], [ %.val2.i.i13.i, %.lr.ph.preheader.i.i.i.i15.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i19.i.i = phi ptr [ %i.gb, %bb.aa ], [ %.val2.i10.i.i, %.lr.ph.preheader.i.i.i.i15.i.i ] ; 2 uses
  %i.fq = load i8, ptr %.sroa.015.021.i.i.i.i18.i.i, align 1, !tbaa !31
  %i.fr = load i8, ptr %.sroa.011.020.i.i.i.i19.i.i, align 1, !tbaa !31
  %i.fs = zext i8 %i.fq to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !31  ; 2 uses
  %i.fv = zext i8 %i.fr to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !31  ; 2 uses
  %i.fy = icmp ult i8 %i.fu, %i.fx
  br i1 %i.fy, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge, label %bb.z, !llvm.loop !57

bb.z:                                             ; preds = %.lr.ph.i.i.i.i17.i.i
  %i.fz = icmp ult i8 %i.fx, %i.fu
  br i1 %i.fz, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i18.i.i, i64 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i19.i.i, i64 1
  %.not.i.i.i.i20.i.i = icmp eq ptr %i.ga, %spec.select.i.i.i.i.i13.i.i
  br i1 %.not.i.i.i.i20.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, label %.lr.ph.i.i.i.i17.i.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i
  %.sroa.011.0.lcssa.i.i.i.i22.i.i = phi ptr [ %.val2.i10.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i ], [ %scevgep.i.i.i.i16.i.i, %bb.aa ]
  %.not36.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i22.i.i, %i.fp
  br i1 %.not36.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i.backedge: ; preds = %.lr.ph.i.i.i.i17.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread31.i.i, !llvm.loop !57

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.i.i, %bb.z
  %i.gc = icmp ult ptr %.sroa.027.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gc, label %bb.ab, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #14
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.027.1.i.i, i64 32
  br label %bb.v, !llvm.loop !58

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit24.thread34.i.i
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_T1_(ptr nonnull %.sroa.027.1.i.i, ptr %storemerge34120, i64 noundef %i.ch)
  %i.ge = ptrtoint ptr %.sroa.027.1.i.i to i64
  %i.gf = sub i64 %i.ge, %i.a                     ; 2 uses
  %i.gg = ashr exact i64 %i.gf, 5                 ; 3 uses
  %i.gh = icmp sgt i64 %i.gg, 16
  br i1 %i.gh, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit, !llvm.loop !49

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_SI_RT0_.exit, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.059 = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.059, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %5 = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !tbaa !50
  %.val2.i = load ptr, ptr %5, align 8, !tbaa !27 ; 4 uses
  %i.i = getelementptr i8, ptr %5, i64 8
  %.val3.i = load i64, ptr %i.i, align 8, !tbaa !50 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.val3.i
  %spec.select.i.i.i.v.i.i = tail call i64 @llvm.smin.i64(i64 %.val3.i, i64 %.val1.i) ; 3 uses
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.val.i, i64 %spec.select.i.i.i.v.i.i
  %.not19.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i, 0
  br i1 %.not19.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val2.i, i64 %spec.select.i.i.i.v.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i
  %.sroa.015.021.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %.val.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %.val2.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.k = load i8, ptr %.sroa.015.021.i.i.i.i, align 1, !tbaa !31
  %i.l = load i8, ptr %.sroa.011.020.i.i.i.i, align 1, !tbaa !31
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31    ; 2 uses
  %i.p = zext i8 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31    ; 2 uses
  %i.s = icmp ult i8 %i.o, %i.r
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp ult i8 %i.r, %i.o
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.u, %spec.select.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.c, %.lr.ph
  %.sroa.011.0.lcssa.i.i.i.i = phi ptr [ %.val2.i, %.lr.ph ], [ %scevgep.i.i.i.i, %bb.c ]
  %i.w = icmp ne ptr %.sroa.011.0.lcssa.i.i.i.i, %i.j
  %cond.fr = freeze i1 %i.w
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.x = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit ], [ %i.e, %bb.b ] ; 5 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x ; 9 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %.059 ; 8 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !27  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae                ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54
  br i1 %i.af, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread54
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %.not21.i = icmp eq i64 %i.x, %.059
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !53

bb.e:                                             ; preds = %bb.d
  switch i64 %i.ah, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !31
  store i8 %i.aj, ptr %i.aa, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ad, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !50
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load <2 x i64>, ptr %i.ap, align 8, !tbaa !31
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !31
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !31
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.au = load <2 x i64>, ptr %i.as, align 8, !tbaa !31
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !27
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.av = phi ptr [ %i.aa, %bb.h ], [ %i.ae, %bb.i ], [ %i.ad, %bb.d ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !50
  store i8 0, ptr %i.av, align 1, !tbaa !31
  %i.ax = icmp slt i64 %i.x, %i.b
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.ay = and i64 %2, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.r

bb.j:                                             ; preds = %._crit_edge
  %i.ba = add nsw i64 %2, -2
  %i.bb = ashr exact i64 %i.ba, 1
  %i.bc = icmp eq i64 %.0.lcssa, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bd = shl nsw i64 %.0.lcssa, 1
  %i.be = or disjoint i64 %i.bd, 1                ; 3 uses
  %6 = getelementptr inbounds [32 x i8], ptr %0, i64 %i.be ; 9 uses
  %7 = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.bf = load ptr, ptr %7, align 8, !tbaa !27    ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  %i.bi = load ptr, ptr %6, align 8, !tbaa !27    ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj                ; 2 uses
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.k
  br i1 %i.bk, label %bb.l, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.k
  br i1 %i.bk, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !50 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %.not21.i28 = icmp eq i64 %i.be, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.m, !prof !53

bb.m:                                             ; preds = %bb.l
  switch i64 %i.bm, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !31
  store i8 %i.bo, ptr %i.bf, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bi, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !50 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !50
  %i.br = load ptr, ptr %7, align 8, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !31
  %.pre.i30 = load ptr, ptr %6, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bi, ptr %7, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load <2 x i64>, ptr %i.bu, align 8, !tbaa !31
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !31
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bw = load i64, ptr %i.bg, align 8, !tbaa !31
  store ptr %i.bi, ptr %7, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !31
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !31
  %.not.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.bf, ptr %6, align 8, !tbaa !27
  store i64 %i.bw, ptr %i.bj, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.bj, ptr %6, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29, %bb.p, %bb.q
  %i.ca = phi ptr [ %i.bf, %bb.p ], [ %i.bj, %bb.q ], [ %i.bi, %bb.l ], [ %.pre.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !50
  store i8 0, ptr %i.ca, align 1, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, %bb.j, %._crit_edge
  %.1 = phi i64 [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33 ], [ %.0.lcssa, %bb.j ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !51
  %i.cd = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !50 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34: ; preds = %bb.r
  store ptr %i.cd, ptr %4, align 8, !tbaa !27
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !31
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  %i.cl = phi i64 [ %i.ch, %bb.s ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !50
  store ptr %i.ce, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.cm, align 8, !tbaa !50
  store i8 0, ptr %i.ce, align 8, !tbaa !31
  %i.co = icmp sgt i64 %.1, %1
  br i1 %i.co, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %.015.i = phi i64 [ %.0916.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0916.in.i = add nsw i64 %.015.i, -1
  %.0916.i = sdiv i64 %.0916.in.i, 2              ; 5 uses
  %i.cp = getelementptr inbounds [32 x i8], ptr %0, i64 %.0916.i ; 6 uses
  %.val.i35 = load ptr, ptr %4, align 8, !tbaa !27 ; 4 uses
  %.val10.i = load i64, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cp, align 8, !tbaa !27 ; 8 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8      ; 3 uses
  %.val2.i.i = load i64, ptr %i.cq, align 8, !tbaa !50 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i35, i64 %.val10.i
  %spec.select.i.i.i.v.i.i.i = call i64 @llvm.smin.i64(i64 %.val10.i, i64 %.val2.i.i) ; 3 uses
  %spec.select.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.val.i.i, i64 %spec.select.i.i.i.v.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i.i, 0
  br i1 %.not19.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val.i35, i64 %spec.select.i.i.i.v.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.015.021.i.i.i.i.i = phi ptr [ %i.dc, %bb.u ], [ %.val.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i.i = phi ptr [ %i.dd, %bb.u ], [ %.val.i35, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.cs = load i8, ptr %.sroa.015.021.i.i.i.i.i, align 1, !tbaa !31
  %i.ct = load i8, ptr %.sroa.011.020.i.i.i.i.i, align 1, !tbaa !31
  %i.cu = zext i8 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31  ; 2 uses
  %i.cx = zext i8 %i.ct to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !31  ; 2 uses
  %i.da = icmp ult i8 %i.cw, %i.cz
  br i1 %i.da, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = icmp ult i8 %i.cz, %i.cw
  br i1 %i.db, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i.i, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %spec.select.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i: ; preds = %bb.u, %.lr.ph.i
  %.sroa.011.0.lcssa.i.i.i.i.i = phi ptr [ %.val.i35, %.lr.ph.i ], [ %scevgep.i.i.i.i.i, %bb.u ]
  %.not.i36 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i, %i.cr
  br i1 %.not.i36, label %.critedge.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i
  %i.de = getelementptr inbounds [32 x i8], ptr %0, i64 %.015.i ; 8 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 6 uses
  %i.dj = icmp eq ptr %.val.i.i, %i.di            ; 2 uses
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  br i1 %i.dj, label %bb.v, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  br i1 %i.dj, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dk = icmp ult i64 %.val2.i.i, 16
  call void @llvm.assume(i1 %i.dk)
  %.not21.i.i = icmp eq i64 %.0916.i, %.015.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.w, !prof !53

bb.w:                                             ; preds = %bb.v
  switch i64 %.val2.i.i, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %.val.i.i, align 1, !tbaa !31
  store i8 %i.dl, ptr %i.df, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %.val.i.i, i64 %.val2.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.dm = load i64, ptr %i.cq, align 8, !tbaa !50 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !50
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %i.cp, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %.val.i.i, ptr %i.de, align 8, !tbaa !27
  store i64 %.val2.i.i, ptr %i.dq, align 8, !tbaa !50
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !31
  store i64 %i.dr, ptr %i.dg, align 8, !tbaa !31
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ds = load i64, ptr %i.dg, align 8, !tbaa !31
  store ptr %.val.i.i, ptr %i.de, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %.val2.i.i, ptr %i.dt, align 8, !tbaa !50
  %i.du = load i64, ptr %i.di, align 8, !tbaa !31
  store i64 %i.du, ptr %i.dg, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.df, ptr %i.cp, align 8, !tbaa !27
  store i64 %i.ds, ptr %i.di, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.di, ptr %i.cp, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.v
  %i.dv = phi ptr [ %i.df, %bb.z ], [ %i.di, %bb.aa ], [ %.val.i.i, %bb.v ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.cq, align 8, !tbaa !50
  store i8 0, ptr %i.dv, align 1, !tbaa !31
  %i.dw = icmp sgt i64 %.0916.i, %1
  br i1 %i.dw, label %.lr.ph.i, label %.critedge.i, !llvm.loop !60

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.012.i = phi i64 [ %.015.i, %bb.t ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.015.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i ], [ %.0916.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ]
  %i.dx = getelementptr inbounds [32 x i8], ptr %0, i64 %.012.i ; 9 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 4 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  %i.eb = load ptr, ptr %4, align 8, !tbaa !27    ; 6 uses
  %i.ec = icmp eq ptr %i.eb, %i.cc                ; 2 uses
  %.pre63 = load i64, ptr %i.cn, align 8, !tbaa !50 ; 5 uses
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i: ; preds = %.critedge.i
  br i1 %i.ec, label %bb.ab, label %.thread.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i: ; preds = %.critedge.i
  br i1 %i.ec, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i
  %i.ed = icmp ult i64 %.pre63, 16
  call void @llvm.assume(i1 %i.ed)
  %.not21.i14.i = icmp eq ptr %4, %i.dx
  br i1 %.not21.i14.i, label %bb.ah, label %bb.ac, !prof !53

bb.ac:                                            ; preds = %bb.ab
  switch i64 %.pre63, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
end_hunk_1
