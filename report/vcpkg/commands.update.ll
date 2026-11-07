Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.update?download=true
inline.NumInlined: 998
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0

$_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE = comdat any

$_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_ = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_ = comdat any

$_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE = comdat any

$_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ = comdat any

$_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_ = comdat any

$_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEm = comdat any

$_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE = comdat any

$_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_ = comdat any

$_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorcEES7_S7_RKNS1_18find_escape_resultISA_EE = comdat any

$_ZN3fmt3v126detail15write_codepointILm2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILm4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj = comdat any

$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_ = comdat any

@.str = private unnamed_addr constant [7 x i8] c"update\00", align 1
@_ZN5vcpkg20msgHelpUpdateCommandE = external global %"struct.vcpkg::msg::MessageT", align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"vcpkg update\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"https://learn.microsoft.com/vcpkg/commands/update\00", align 1
@_ZN5vcpkg21CommandUpdateMetadataE = dso_local constant { { ptr, i64 }, %"struct.vcpkg::MetadataMessage", [4 x %"struct.vcpkg::MetadataMessage"], %"struct.vcpkg::LearnWebsiteLinkLiteral", i32, i64, i64, %"struct.vcpkg::CommandOptionsStructure", ptr } { { ptr, i64 } { ptr @.str, i64 6 }, %"struct.vcpkg::MetadataMessage" { i32 1, %union.anon.31 { ptr @_ZN5vcpkg20msgHelpUpdateCommandE } }, [4 x %"struct.vcpkg::MetadataMessage"] [%"struct.vcpkg::MetadataMessage" { i32 2, %union.anon.31 { ptr @.str.1 } }, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer, %"struct.vcpkg::MetadataMessage" zeroinitializer], %"struct.vcpkg::LearnWebsiteLinkLiteral" { ptr @.str.2 }, i32 0, i64 0, i64 0, %"struct.vcpkg::CommandOptionsStructure" zeroinitializer, ptr null }, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/commands.update.cpp\00", align 1
@__func__._ZN5vcpkg23command_update_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE = private unnamed_addr constant [24 x i8] c"command_update_and_exit\00", align 1
@_ZN5vcpkg23msgUnsupportedUpdateCMDE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg23msgLocalPortfileVersionE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg19msgPackagesUpToDateE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@_ZN5vcpkg22msgPortVersionConflictE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"\09{:<32} {}\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"./vcpkg\00", align 1
@_ZN5vcpkg19msgToUpdatePackagesE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT.140", align 8
@_ZN5vcpkg19msgToRemovePackagesE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT.140", align 8
@_ZTVN5vcpkg21PathsPortFileProviderE = external constant { [6 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.19 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@_ZN5vcpkg3msg14command_name_t4nameE = external local_unnamed_addr global %"struct.vcpkg::StringLiteral", align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5vcpkg15OutdatedPackage15compare_by_nameERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %i.k = sub i64 %i.d, %i.f
  %spec.select7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.l = icmp slt i32 %.0.i.i, 0
  ret i1 %i.l
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg22find_outdated_packagesERKNS_16PortFileProviderERKNS_16StatusParagraphsE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %4 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %5 = alloca %"struct.vcpkg::OutdatedPackage", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5vcpkg19get_installed_portsERKNS_16StatusParagraphsE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %3, align 8, !tbaa !127    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %.not2938 = icmp eq ptr %i.b, %i.d
  br i1 %.not2938, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25
  %.pre = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %.pre40 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre40
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #22
  br label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %.pre40
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25
  %.sroa.026.039 = phi ptr [ %i.b, %.lr.ph ], [ %i.cl, %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ab = load ptr, ptr %.sroa.026.039, align 8, !tbaa !41
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg11PackageSpec4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !129, !range !45, !noundef !46
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr %4, align 8               ; 2 uses
  %.not30 = icmp eq ptr %i.ai, null
  %.not = select i1 %i.ah, i1 true, i1 %.not30
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.am = load ptr, ptr %.sroa.026.039, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = call noundef zeroext i1 @_ZN5vcpkgneERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.al, ptr noundef nonnull align 8 dereferenceable(36) %i.an) #21
  br i1 %i.ao, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ap = load ptr, ptr %.sroa.026.039, align 8, !tbaa !41 ; 3 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !47
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.as, ptr %i.a, align 8, !tbaa !48
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.au, ptr %5, align 8, !tbaa !28
  %i.av = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.av, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.h
  %i.aw = phi ptr [ %i.au, %.noexc ], [ %i.f, %bb.h ] ; 2 uses
  switch i64 %i.as, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !49
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !49
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  store i64 %i.ay, ptr %i.g, align 8, !tbaa !27
  %i.az = load ptr, ptr %5, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  store i64 %i.bc, ptr %i.h, align 8, !tbaa !51
  %i.bd = load ptr, ptr %.sroa.026.039, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  invoke void @_ZN5vcpkg11VersionDiffC1ERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(36) %i.be, ptr noundef nonnull align 8 dereferenceable(36) %i.al)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bf = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %5)
          to label %_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EE9push_backEOS1_.exit unwind label %bb.p ; 0 uses

_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.l
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k
  br i1 %i.bh, label %_ZN5vcpkg7VersionD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EE9push_backEOS1_.exit
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !49
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #22
  br label %_ZN5vcpkg7VersionD2Ev.exit.i.i

_ZN5vcpkg7VersionD2Ev.exit.i.i:                   ; preds = %_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %_ZN5vcpkg11VersionDiffD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !49
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %_ZN5vcpkg11VersionDiffD2Ev.exit.i

_ZN5vcpkg11VersionDiffD2Ev.exit.i:                ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.bo = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.f
  br i1 %i.bp, label %_ZN5vcpkg15OutdatedPackageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !49
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZN5vcpkg15OutdatedPackageD2Ev.exit

_ZN5vcpkg15OutdatedPackageD2Ev.exit:              ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.r

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.f
  br i1 %i.bw, label %_ZN5vcpkg11PackageSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !49
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg15OutdatedPackageD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #21
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZN5vcpkg11PackageSpecD2Ev.exit:                  ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.bt, %bb.n ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ca = load i8, ptr %i.e, align 8, !tbaa !129, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

bb.q:                                             ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit
  %i.cc = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.m
  br i1 %i.cd, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %bb.q
  %i.ce = load i64, ptr %i.m, align 8, !tbaa !49
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #22
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

bb.r:                                             ; preds = %bb.g, %_ZN5vcpkg15OutdatedPackageD2Ev.exit, %bb.f
  %6 = load i8, ptr %i.e, align 8, !tbaa !129, !range !45, !noundef !46
  %i.cg = trunc nuw i8 %6 to i1
  br i1 %i.cg, label %bb.s, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.m
  br i1 %i.ci, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %bb.s
  %i.cj = load i64, ptr %i.m, align 8, !tbaa !49
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #22
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25

_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit25: ; preds = %bb.s, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 32 ; 2 uses
  %.not29 = icmp eq ptr %i.cl, %i.d
  br i1 %.not29, label %._crit_edge, label %bb.d

_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21, %_ZN5vcpkg11PackageSpecD2Ev.exit, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn, %_ZN5vcpkg11PackageSpecD2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #21
  call void @_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5vcpkg19get_installed_portsERKNS_16StatusParagraphsE(ptr dead_on_unwind writable sret(%"class.std::vector.3") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5vcpkgneERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare void @_ZN5vcpkg11VersionDiffC1ERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg15OutdatedPackageD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5vcpkg7VersionD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !49
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZN5vcpkg7VersionD2Ev.exit.i

_ZN5vcpkg7VersionD2Ev.exit.i:                     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN5vcpkg11VersionDiffD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !49
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZN5vcpkg11VersionDiffD2Ev.exit

_ZN5vcpkg11VersionDiffD2Ev.exit:                  ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5vcpkg11PackageSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !49
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZN5vcpkg11PackageSpecD2Ev.exit:                  ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg15OutdatedPackageESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5vcpkg7VersionD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !49
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZN5vcpkg7VersionD2Ev.exit.i.i.i.i.i

_ZN5vcpkg7VersionD2Ev.exit.i.i.i.i.i:             ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5vcpkg11VersionDiffD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !49
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZN5vcpkg11VersionDiffD2Ev.exit.i.i.i.i

_ZN5vcpkg11VersionDiffD2Ev.exit.i.i.i.i:          ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.p = load ptr, ptr %.05.i.i, align 8, !tbaa !28 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #22
  br label %_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i

_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i: ; preds = %_ZN5vcpkg11VersionDiffD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5vcpkg15OutdatedPackageEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5vcpkg15OutdatedPackageESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt12_Vector_baseIN5vcpkg15OutdatedPackageESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5vcpkg15OutdatedPackageESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg15OutdatedPackageES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg20InstalledPackageViewESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #22
  br label %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i

_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5vcpkg20InstalledPackageViewEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN5vcpkg20InstalledPackageViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
end_hunk_0
