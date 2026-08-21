Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/sourceparagraph?download=true
inline.NumInlined: 4999
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5vcpkgeqERKNS_16FeatureParagraphES2_:bb.a
  br i1 %i.aw, label %bb.f, label %_ZN5vcpkgL15paragraph_equalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES9_EEbRKT_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ax, %.val9
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e, !llvm.loop !114

.loopexit:                                        ; preds = %bb.f, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bb = call noundef zeroext i1 @_ZN5vcpkg4JsoneqERKNS0_6ObjectES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
  br label %_ZN5vcpkgL15paragraph_equalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES9_EEbRKT_RKT0_.exit

_ZN5vcpkgL15paragraph_equalISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES9_EEbRKT_RKT0_.exit: ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread12, %bb.a, %_ZStneIN5vcpkg10DependencyESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread13, %.loopexit, %_ZStneIN5vcpkg10DependencyESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.0 = phi i1 [ false, %_ZStneIN5vcpkg10DependencyESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.bb, %.loopexit ], [ false, %bb.a ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread12 ], [ false, %_ZStneIN5vcpkg10DependencyESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread13 ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5vcpkgeqERKNS_17SourceControlFileES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122
  %i.b = load ptr, ptr %1, align 8, !tbaa !122
  %i.c = tail call noundef zeroext i1 @_ZN5vcpkgeqERKNS_15SourceParagraphES2_(ptr noundef nonnull align 8 dereferenceable(488) %i.a, ptr noundef nonnull align 8 dereferenceable(488) %i.b)
  br i1 %i.c, label %bb.b, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEESD_ZNS3_eqERKNS3_17SourceControlFileESG_E3$_0EbT_SI_T0_SJ_T1_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub i64 %i.o, %i.p
  %.not.i.i = icmp eq i64 %i.n, %i.q
  br i1 %.not.i.i, label %bb.c, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEESD_ZNS3_eqERKNS3_17SourceControlFileESG_E3$_0EbT_SI_T0_SJ_T1_.exit"

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i.i.i, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEESD_ZNS3_eqERKNS3_17SourceControlFileESG_E3$_0EbT_SI_T0_SJ_T1_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !126
  %.val1.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i, align 8, !tbaa !126
  %i.r = tail call noundef zeroext i1 @_ZN5vcpkgeqERKNS_16FeatureParagraphES2_(ptr noundef nonnull align 8 dereferenceable(176) %.val.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.val1.i.i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i, i64 8
  %.not.i.i.i = icmp ne ptr %i.s, %i.g
  %or.cond.not = select i1 %i.r, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEESD_ZNS3_eqERKNS3_17SourceControlFileESG_E3$_0EbT_SI_T0_SJ_T1_.exit", !llvm.loop !128

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEESD_ZNS3_eqERKNS3_17SourceControlFileESG_E3$_0EbT_SI_T0_SJ_T1_.exit": ; preds = %.lr.ph.i.i.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.r, %.lr.ph.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg17SourceControlFile18parse_control_fileENS_10StringViewEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS9_NS_10TextRowColEESt4lessIvESaISA_IKS9_SC_EEESaISI_EE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::ParagraphParser", align 8 ; 19 uses
  %5 = alloca %"class.std::unique_ptr.94", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::vector.11", align 16   ; 10 uses
  %8 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"struct.vcpkg::Optional.292", align 8 ; 11 uses
  %11 = alloca %"struct.vcpkg::ExpectedT.302", align 16 ; 13 uses
  %12 = alloca %"struct.vcpkg::Optional.103", align 8 ; 8 uses
  %13 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"struct.vcpkg::ParagraphParser", align 8 ; 28 uses
  %15 = alloca %"class.std::unique_ptr.52", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"struct.vcpkg::Optional.292", align 8 ; 12 uses
  %19 = alloca %"struct.vcpkg::Optional.298", align 4 ; 6 uses
  %20 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %21 = alloca %"class.std::vector.11", align 16  ; 10 uses
  %22 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::vector.11", align 16  ; 10 uses
  %25 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %28 = alloca %"struct.vcpkg::Optional.292", align 8 ; 12 uses
  %29 = alloca %"struct.vcpkg::ExpectedT.302", align 8 ; 17 uses
  %30 = alloca %"struct.vcpkg::Optional.292", align 8 ; 12 uses
  %31 = alloca %"struct.vcpkg::ExpectedT.306", align 8 ; 17 uses
  %32 = alloca %"struct.vcpkg::Optional.121", align 8 ; 6 uses
  %33 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %34 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 11 uses
  %35 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %36 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 11 uses
  %37 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %38 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 12 uses
  %39 = alloca %"struct.vcpkg::DependencyRequestedFeature", align 8 ; 13 uses
  %40 = alloca %"struct.vcpkg::Optional.292", align 8 ; 12 uses
  %41 = alloca %"struct.vcpkg::ExpectedT.312", align 8 ; 10 uses
  %42 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %43 = alloca %"struct.vcpkg::Optional.292", align 8 ; 6 uses
  %44 = alloca %"struct.vcpkg::Optional.103", align 8 ; 9 uses
  %45 = alloca %"class.std::unique_ptr.69", align 8 ; 10 uses
  %46 = alloca %"struct.vcpkg::ExpectedT.77", align 8 ; 46 uses
  %47 = alloca %"struct.vcpkg::ExpectedT.91", align 8 ; 18 uses
  %48 = alloca %"struct.vcpkg::Optional.103", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !129 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false), !noalias !129
  store ptr %i.c, ptr %45, align 8, !tbaa !132, !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.d = load ptr, ptr %3, align 8, !tbaa !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !136
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.e, ptr %14, align 8, !tbaa !22, !noalias !136
  %i.f = icmp eq ptr %1, null
  %i.g = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.892) #27
          to label %.noexc unwind label %bb.eo

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !136
  store i64 %2, ptr %i.b, align 8, !tbaa !25, !noalias !136
  %i.h = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc47 unwind label %bb.eo  ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %14, align 8, !tbaa !23, !noalias !136
  %i.j = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !136
  store i64 %i.j, ptr %i.e, align 8, !tbaa !21, !noalias !136
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc47, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc47 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %1, align 1, !tbaa !21, !noalias !136
  store i8 %i.l, ptr %i.k, align 1, !tbaa !21
  br label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i

_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !136 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !24, !noalias !136
  %i.o = load ptr, ptr %14, align 8, !tbaa !23, !noalias !136
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !136
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.d, ptr %i.q, align 8, !tbaa !134, !noalias !136
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !136
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.s = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #25
          to label %bb.e unwind label %bb.w       ; 29 uses

bb.e:                                             ; preds = %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.t, i8 0, i64 472, i1 false), !noalias !139
  store ptr %i.t, ptr %i.s, align 8, !tbaa !22, !noalias !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store i64 0, ptr %i.u, align 8, !tbaa !24, !noalias !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 4, ptr %i.v, align 8, !tbaa !84, !noalias !139
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.w) #24, !noalias !139
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false), !noalias !139
  store ptr %i.z, ptr %i.y, align 8, !tbaa !22, !noalias !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i64 0, ptr %i.aa, align 8, !tbaa !24, !noalias !139
  store i8 0, ptr %i.z, align 8, !tbaa !21, !noalias !139
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 200 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !22, !noalias !139
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  store i64 0, ptr %i.ad, align 8, !tbaa !24, !noalias !139
  store i8 0, ptr %i.ac, align 8, !tbaa !21, !noalias !139
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 312 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.ae, i8 0, i64 76, i1 false), !noalias !139
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !22, !noalias !139
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  store i64 0, ptr %i.ah, align 8, !tbaa !24, !noalias !139
  store i8 0, ptr %i.ag, align 8, !tbaa !21, !noalias !139
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 360
  store i8 0, ptr %i.aj, align 8, !tbaa !21, !noalias !139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 392
  store i8 0, ptr %i.ak, align 8, !tbaa !142, !noalias !139
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 400
  store i8 0, ptr %i.al, align 8, !tbaa !21, !noalias !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  store i32 0, ptr %i.am, align 8, !tbaa !143, !noalias !139
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !noalias !139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ai, i8 0, i64 25, i1 false), !noalias !139
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #24, !noalias !139
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !noalias !139
  store ptr %i.s, ptr %15, align 8, !tbaa !122, !alias.scope !139, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !136
  invoke void @_ZN5vcpkg15ParagraphParser14required_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr nonnull @.str.16, i64 6)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !23  ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.t
  %i.as = load ptr, ptr %16, align 8, !tbaa !23, !noalias !136 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.au, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !24, !noalias !136 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  switch i64 %i.aw, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !21
  store i8 %i.ay, ptr %i.aq, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.az = load i64, ptr %i.av, align 8, !tbaa !24, !noalias !136 ; 2 uses
  store i64 %i.az, ptr %i.u, align 8, !tbaa !24
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !21
  %.pre.i.i = load ptr, ptr %16, align 8, !tbaa !23, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !21, !noalias !136
  store <2 x i64> %i.bd, ptr %i.u, align 8, !tbaa !21
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.be = load i64, ptr %i.t, align 8, !tbaa !21
  store ptr %i.as, ptr %i.s, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !21, !noalias !136
  store <2 x i64> %i.bg, ptr %i.u, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.aq, ptr %16, align 8, !tbaa !23, !noalias !136
  store i64 %i.be, ptr %i.at, align 8, !tbaa !21, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.at, ptr %16, align 8, !tbaa !23, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bh = phi ptr [ %i.aq, %bb.j ], [ %i.at, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !24, !noalias !136
  store i8 0, ptr %i.bh, align 1, !tbaa !21
  %i.bj = load ptr, ptr %16, align 8, !tbaa !23, !noalias !136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !21, !noalias !136
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !136
  invoke void @_ZN5vcpkg15ParagraphParser14required_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr nonnull @.str.18, i64 7)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bo = load ptr, ptr %15, align 8, !tbaa !122, !noalias !136 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !23 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %17, align 8, !tbaa !23, !noalias !136 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i162.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168.i: ; preds = %bb.l
  br i1 %i.bv, label %bb.m, label %.thread.i169.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i162.i: ; preds = %bb.l
  br i1 %i.bv, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i163.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i162.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168.i
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24, !noalias !136 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %.not21.i165.i = icmp eq ptr %17, %i.bp
  br i1 %.not21.i165.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i, label %bb.n, !prof !144

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bx, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !21
  store i8 %i.bz, ptr %i.bq, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !24, !noalias !136 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !24
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !21
  %.pre.i167.i = load ptr, ptr %17, align 8, !tbaa !23, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i

.thread.i169.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i168.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !21, !noalias !136
  store <2 x i64> %i.cg, ptr %i.ce, align 8, !tbaa !21
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i163.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i162.i
  %i.ch = load i64, ptr %i.br, align 8, !tbaa !21
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ck = load <2 x i64>, ptr %i.ci, align 8, !tbaa !21, !noalias !136
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !21
  %.not.i164.i = icmp eq ptr %i.bq, null
  br i1 %.not.i164.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i163.i
  store ptr %i.bq, ptr %17, align 8, !tbaa !23, !noalias !136
  store i64 %i.ch, ptr %i.bu, align 8, !tbaa !21, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i163.i, %.thread.i169.i
  store ptr %i.bu, ptr %17, align 8, !tbaa !23, !noalias !136
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i: ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i, %bb.m
  %i.cl = phi ptr [ %i.bq, %bb.q ], [ %i.bu, %bb.r ], [ %i.bt, %bb.m ], [ %.pre.i167.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i166.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.cm, align 8, !tbaa !24, !noalias !136
  store i8 0, ptr %i.cl, align 1, !tbaa !21
  %i.cn = load ptr, ptr %17, align 8, !tbaa !23, !noalias !136 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !21, !noalias !136
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit170.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !136
  invoke void @_ZN5vcpkg15ParagraphParser14optional_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.292") align 8 %18, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr nonnull @.str.20, i64 12)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i
  %i.cs = load i8, ptr %18, align 8, !tbaa !145, !range !58, !noalias !136, !noundef !59
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %.sroa.gep365.i = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cv = load i64, ptr %.sroa.gep365.i, align 8, !noalias !136
  %i.cw = icmp ne i64 %i.cv, 0
  %or.cond.not.i = select i1 %i.ct, i1 %i.cw, i1 false
  br i1 %or.cond.not.i, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !136
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) #24
  %i.cx = load ptr, ptr %20, align 8, !noalias !136
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !136
  invoke void @_ZN5vcpkg7Strings5strtoIiEENS_8OptionalIT_EENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.298") align 4 %19, ptr %i.cx, i64 %i.cz)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.da = load i8, ptr %19, align 4, !tbaa !147, !range !58, !noalias !136, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !149, !noalias !136
  %i.de = load ptr, ptr %15, align 8, !tbaa !122, !noalias !136
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store i32 %i.dd, ptr %i.df, align 8, !tbaa !150
  br label %bb.ad

bb.w:                                             ; preds = %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.x:                                             ; preds = %bb.e
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !136
  br label %bb.el

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !136
  br label %bb.el

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit342.i

bb.aa:                                            ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.u
  %.sroa.gep363.i = getelementptr inbounds nuw i8, ptr %18, i64 40
  %.sroa.072.0.copyload.i = load i64, ptr %.sroa.gep363.i, align 8, !noalias !136
  %.sroa.071.0.copyload.i = load i64, ptr @_ZN5vcpkg46msgPortVersionControlMustBeANonNegativeIntegerE, align 8, !tbaa !25, !noalias !136
  invoke void @_ZN5vcpkg15ParagraphParser9add_errorENS_10TextRowColENS_3msg8MessageTIJEEE(ptr noundef nonnull align 8 dereferenceable(64) %14, i64 %.sroa.072.0.copyload.i, i64 %.sroa.071.0.copyload.i)
end_hunk_0
begin_hunk_1_@_ZN5vcpkg17SourceControlFile18parse_control_fileENS_10StringViewEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS9_NS_10TextRowColEESt4lessIvESaISA_IKS9_SC_EEESaISI_EE:bb.a
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uz) #26
  br label %_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit342.i

_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit342.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i340.i, %bb.ej, %bb.z
  %.pn143.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %.pn143.pn.pn.pn.pn.pn.pn.i, %bb.ej ], [ %.pn143.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i340.i ], [ %.pn143.pn.pn.pn.pn.pn.pn.i, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !136
  br label %bb.el

bb.el:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit342.i, %bb.y, %bb.x
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.i, %_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit342.i ], [ %i.di, %bb.y ], [ %i.dh, %bb.x ]
  call void @_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.w
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.el ], [ %i.dg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !136
  call void @_ZN5vcpkg15ParagraphParserD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !136
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i335.i: ; preds = %_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i334.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  %i.va = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  %i.vb = load i8, ptr %i.va, align 8, !tbaa !154, !range !58, !noundef !59
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %_ZNO5vcpkg9ExpectedTISt10unique_ptrINS_15SourceParagraphESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit, label %bb.en

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i335.i
  %i.vd = load ptr, ptr %45, align 8              ; 3 uses
  %i.ve = load ptr, ptr %46, align 8, !tbaa !122
  store ptr null, ptr %46, align 8, !tbaa !122
  %i.vf = load ptr, ptr %i.vd, align 8, !tbaa !122 ; 3 uses
  store ptr %i.ve, ptr %i.vd, align 8, !tbaa !122
  %.not.i.i.i.i48 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i48, label %bb.eq, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.en
  call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.vf) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef 488) #26
  br label %bb.eq

bb.eo:                                            ; preds = %.noexc.i.i.i, %.noexc.i.i
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNO5vcpkg9ExpectedTISt10unique_ptrINS_15SourceParagraphESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i335.i
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.vh, ptr %0, align 8, !tbaa !22
  %i.vi = load ptr, ptr %46, align 8, !tbaa !23   ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.vk = icmp eq ptr %i.vi, %i.vj
  br i1 %i.vk, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

bb.ep:                                            ; preds = %_ZNO5vcpkg9ExpectedTISt10unique_ptrINS_15SourceParagraphESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit
  %i.vl = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !24 ; 3 uses
  %i.vn = icmp ult i64 %i.vm, 16
  call void @llvm.assume(i1 %i.vn)
  %i.vo = add nuw nsw i64 %i.vm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vh, ptr noundef nonnull align 8 dereferenceable(1) %i.vj, i64 %i.vo, i1 false)
  br label %.thread412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %_ZNO5vcpkg9ExpectedTISt10unique_ptrINS_15SourceParagraphESt14default_deleteIS2_EENS_15LocalizedStringEE5errorEv.exit
  store ptr %i.vi, ptr %0, align 8, !tbaa !23
  %i.vp = load i64, ptr %i.vj, align 8, !tbaa !21
  store i64 %i.vp, ptr %i.vh, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.pre177 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %.thread412

.thread412:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49, %bb.ep
  %i.vq = phi i64 [ %.pre177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49 ], [ %i.vm, %bb.ep ]
  %i.vr = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.vq, ptr %i.vs, align 8, !tbaa !24
  store ptr %i.vj, ptr %46, align 8, !tbaa !23
  store i64 0, ptr %i.vr, align 8, !tbaa !24
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.vt, align 8, !tbaa !183
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_15SourceParagraphESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit

bb.eq:                                            ; preds = %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i, %bb.en
  %i.vu = load ptr, ptr %3, align 8, !tbaa !134
  %i.vv = invoke ptr @_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSG_SI_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.vu)
          to label %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSG_SI_EE.exit unwind label %bb.er ; 0 uses

_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSG_SI_EE.exit: ; preds = %bb.eq
  %i.vw = load ptr, ptr %3, align 8, !tbaa !134   ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !134 ; 2 uses
  %.not153166 = icmp eq ptr %i.vw, %i.vy
  br i1 %.not153166, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKSG_SI_EE.exit
  %i.vz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.wc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.we = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.sroa.gep85.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.gep83.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.wk = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %.sroa.gep80.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %.sroa.gep81.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 12 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 4 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.gep.i100 = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %.sroa.gep76.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.es

_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit.thread: ; preds = %bb.gp, %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i, %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i131, %.thread407
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0147.0167, i64 48 ; 2 uses
  %.not153 = icmp eq ptr %i.wv, %i.vy
  br i1 %.not153, label %.critedge.loopexit, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.es:                                            ; preds = %.lr.ph, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit.thread
  %.sroa.0147.0167 = phi ptr [ %i.vw, %.lr.ph ], [ %i.wv, %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEED2Ev.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !185
  store ptr %i.vz, ptr %4, align 8, !tbaa !22, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !185
  store i64 %2, ptr %i.a, align 8, !tbaa !25, !noalias !185
  br i1 %i.h, label %.noexc.i.i.i117, label %._crit_edge.i.i.i.i52

.noexc.i.i.i117:                                  ; preds = %bb.es
  %i.wx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc120 unwind label %bb.gm ; 2 uses

.noexc120:                                        ; preds = %.noexc.i.i.i117
  store ptr %i.wx, ptr %4, align 8, !tbaa !23, !noalias !185
  %i.wy = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !185
  store i64 %i.wy, ptr %i.vz, align 8, !tbaa !21, !noalias !185
  br label %._crit_edge.i.i.i.i52

._crit_edge.i.i.i.i52:                            ; preds = %.noexc120, %bb.es
  %i.wz = phi ptr [ %i.wx, %.noexc120 ], [ %i.vz, %bb.es ] ; 2 uses
  switch i64 %2, label %bb.eu [
    i64 1, label %bb.et
    i64 0, label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53
  ]

bb.et:                                            ; preds = %._crit_edge.i.i.i.i52
  %i.xa = load i8, ptr %1, align 1, !tbaa !21, !noalias !185
  store i8 %i.xa, ptr %i.wz, align 1, !tbaa !21
  br label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53

bb.eu:                                            ; preds = %._crit_edge.i.i.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wz, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53

_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53: ; preds = %bb.eu, %bb.et, %._crit_edge.i.i.i.i52
  %i.xb = load i64, ptr %i.a, align 8, !tbaa !25, !noalias !185 ; 2 uses
  store i64 %i.xb, ptr %i.wa, align 8, !tbaa !24, !noalias !185
  %i.xc = load ptr, ptr %4, align 8, !tbaa !23, !noalias !185
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xb
  store i8 0, ptr %i.xd, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !185
  store ptr %.sroa.0147.0167, ptr %i.wb, align 8, !tbaa !134, !noalias !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wc, i8 0, i64 24, i1 false), !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !185
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.xe = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #25
          to label %bb.ev unwind label %bb.fl     ; 23 uses

bb.ev:                                            ; preds = %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.xf, i8 0, i64 160, i1 false), !noalias !188
  store ptr %i.xf, ptr %i.xe, align 8, !tbaa !22, !noalias !188
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 4 uses
  store i64 0, ptr %i.xg, align 8, !tbaa !24, !noalias !188
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32 ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xh, i8 0, i64 48, i1 false), !noalias !188
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.xi) #24, !noalias !188
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 88
  store i32 0, ptr %i.xj, align 8, !tbaa !191, !noalias !188
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 96
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 112 ; 2 uses
  store ptr %i.xl, ptr %i.xk, align 8, !tbaa !22, !noalias !188
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 104
  store i64 0, ptr %i.xm, align 8, !tbaa !24, !noalias !188
  store i8 0, ptr %i.xl, align 8, !tbaa !21, !noalias !188
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xe, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xn, i8 0, i64 48, i1 false), !noalias !188
  store ptr %i.xe, ptr %5, align 8, !tbaa !126, !alias.scope !188, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !185
  invoke void @_ZN5vcpkg15ParagraphParser14required_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nonnull @.str.59, i64 7)
          to label %bb.ew unwind label %bb.fm

bb.ew:                                            ; preds = %bb.ev
  %i.xo = load ptr, ptr %i.xe, align 8, !tbaa !23 ; 6 uses
  %i.xp = icmp eq ptr %i.xo, %i.xf
  %i.xq = load ptr, ptr %6, align 8, !tbaa !23, !noalias !185 ; 5 uses
  %i.xr = icmp eq ptr %i.xq, %i.wd                ; 2 uses
  br i1 %i.xp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ew
  br i1 %i.xr, label %bb.ex, label %.thread.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54: ; preds = %bb.ew
  br i1 %i.xr, label %bb.ex, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i55

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  %i.xs = load i64, ptr %i.we, align 8, !tbaa !24, !noalias !185 ; 3 uses
  %i.xt = icmp ult i64 %i.xs, 16
  call void @llvm.assume(i1 %i.xt)
  switch i64 %i.xs, label %bb.ez [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113
    i64 1, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex
  %i.xu = load i8, ptr %i.xq, align 1, !tbaa !21
  store i8 %i.xu, ptr %i.xo, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xo, ptr align 1 %i.xq, i64 %i.xs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113: ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.xv = load i64, ptr %i.we, align 8, !tbaa !24, !noalias !185 ; 2 uses
  store i64 %i.xv, ptr %i.xg, align 8, !tbaa !24
  %i.xw = load ptr, ptr %i.xe, align 8, !tbaa !23
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xv
  store i8 0, ptr %i.xx, align 1, !tbaa !21
  %.pre.i.i114 = load ptr, ptr %6, align 8, !tbaa !23, !noalias !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57

.thread.i.i116:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  store ptr %i.xq, ptr %i.xe, align 8, !tbaa !23
  %i.xy = load <2 x i64>, ptr %i.we, align 8, !tbaa !21, !noalias !185
  store <2 x i64> %i.xy, ptr %i.xg, align 8, !tbaa !21
  br label %bb.fb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54
  %i.xz = load i64, ptr %i.xf, align 8, !tbaa !21
  store ptr %i.xq, ptr %i.xe, align 8, !tbaa !23
  %i.ya = load <2 x i64>, ptr %i.we, align 8, !tbaa !21, !noalias !185
  store <2 x i64> %i.ya, ptr %i.xg, align 8, !tbaa !21
  %.not.i.i56 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i56, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i55
  store ptr %i.xo, ptr %6, align 8, !tbaa !23, !noalias !185
  store i64 %i.xz, ptr %i.wd, align 8, !tbaa !21, !noalias !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i55, %.thread.i.i116
  store ptr %i.wd, ptr %6, align 8, !tbaa !23, !noalias !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57: ; preds = %bb.fb, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113
  %i.yb = phi ptr [ %i.xo, %bb.fa ], [ %i.wd, %bb.fb ], [ %.pre.i.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i113 ]
  store i64 0, ptr %i.we, align 8, !tbaa !24, !noalias !185
  store i8 0, ptr %i.yb, align 1, !tbaa !21
  %i.yc = load ptr, ptr %6, align 8, !tbaa !23, !noalias !185 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.wd
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57
  %i.ye = load i64, ptr %i.wd, align 8, !tbaa !21, !noalias !185
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !185
  invoke void @_ZN5vcpkg15ParagraphParser14required_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nonnull @.str.22, i64 11)
          to label %bb.fc unwind label %bb.fn

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #24
  %i.yg = load ptr, ptr %8, align 8, !noalias !185
  %i.yh = load i64, ptr %i.wf, align 8, !noalias !185
  invoke void @_ZN5vcpkg7Strings5splitB5cxx11ENS_10StringViewEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.11") align 8 %7, ptr %i.yg, i64 %i.yh, i8 noundef signext 10)
          to label %bb.fd unwind label %bb.fo

bb.fd:                                            ; preds = %bb.fc
  %i.yi = load ptr, ptr %i.xh, align 8, !tbaa !33 ; 5 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xe, i64 40 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !37 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xe, i64 48 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !36
  %i.yn = load <2 x ptr>, ptr %7, align 16, !tbaa !63, !noalias !185
  store <2 x ptr> %i.yn, ptr %i.xh, align 8, !tbaa !63
  %i.yo = load ptr, ptr %i.wh, align 16, !tbaa !36, !noalias !185
  store ptr %i.yo, ptr %i.yl, align 8, !tbaa !36
  %.not4.i.i.i.i.i.i61 = icmp eq ptr %i.yi, %i.yk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !185
  %i.yp = ptrtoint ptr %i.xe to i64
  br i1 %.not4.i.i.i.i.i.i61, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i67, label %.lr.ph.i.i.i.i.i.i62

.lr.ph.i.i.i.i.i.i62:                             ; preds = %bb.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65
  %.05.i.i.i.i.i.i63 = phi ptr [ %i.yv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65 ], [ %i.yi, %bb.fd ] ; 3 uses
  %i.yq = load ptr, ptr %.05.i.i.i.i.i.i63, align 8, !tbaa !23 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i63, i64 16 ; 2 uses
  %i.ys = icmp eq ptr %i.yq, %i.yr
  br i1 %i.ys, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i62
  %i.yt = load i64, ptr %i.yr, align 8, !tbaa !21
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yu) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65: ; preds = %.lr.ph.i.i.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64
  %i.yv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i63, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i66 = icmp eq ptr %i.yv, %i.yk
  br i1 %.not.i.i.i.i.i.i66, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i67, label %.lr.ph.i.i.i.i.i.i62, !llvm.loop !151

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i67: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i65, %bb.fd
  %.not.i.i1.i.i.i.i68 = icmp eq ptr %i.yi, null
  br i1 %.not.i.i1.i.i.i.i68, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69, label %bb.fe

bb.fe:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i67
  %i.yw = ptrtoint ptr %i.ym to i64
  %i.yx = ptrtoint ptr %i.yi to i64
  %i.yy = sub i64 %i.yw, %i.yx
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yy) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69: ; preds = %bb.fe, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i67
  %i.yz = load ptr, ptr %7, align 16, !tbaa !33, !noalias !185 ; 3 uses
  %i.za = load ptr, ptr %i.wg, align 8, !tbaa !37, !noalias !185 ; 2 uses
  %.not4.i.i.i.i70 = icmp eq ptr %i.yz, %i.za
  br i1 %.not4.i.i.i.i70, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78, label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74
  %.05.i.i.i.i72 = phi ptr [ %i.zg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74 ], [ %i.yz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69 ] ; 3 uses
  %i.zb = load ptr, ptr %.05.i.i.i.i72, align 8, !tbaa !23 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i72, i64 16 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i73: ; preds = %.lr.ph.i.i.i.i71
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !21
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74: ; preds = %.lr.ph.i.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i73
  %i.zg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i72, i64 32 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.zg, %i.za
  br i1 %.not.i.i.i.i75, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i76, label %.lr.ph.i.i.i.i71, !llvm.loop !151

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i76: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i74
  %.pr.i.i77 = load ptr, ptr %7, align 16, !tbaa !33, !noalias !185
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i76, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69
  %i.zh = phi ptr [ %.pr.i.i77, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i76 ], [ %i.yz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i69 ] ; 3 uses
  %.not.i.i1.i.i79 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i1.i.i79, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i80, label %bb.ff

bb.ff:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78
  %i.zi = load ptr, ptr %i.wh, align 16, !tbaa !36, !noalias !185
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = ptrtoint ptr %i.zh to i64
  %i.zl = sub i64 %i.zj, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %i.zh, i64 noundef %i.zl) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i80

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i80: ; preds = %bb.ff, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i78
  %i.zm = load ptr, ptr %9, align 8, !tbaa !23, !noalias !185 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.wi
  br i1 %i.zn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i80
  %i.zo = load i64, ptr %i.wi, align 8, !tbaa !21, !noalias !185
  %i.zp = add i64 %i.zo, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !185
  %.val.i81 = load ptr, ptr %i.xh, align 8, !tbaa !63 ; 2 uses
  %.val44.i = load ptr, ptr %i.yj, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i82 = icmp eq ptr %.val.i81, %.val44.i
  br i1 %.not4.i.i82, label %_ZN5vcpkgL8trim_allERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i86, label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %.noexc.i85
  %.sroa.01.05.i.i84 = phi ptr [ %i.zq, %.noexc.i85 ], [ %.val.i81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i ] ; 2 uses
  invoke void @_ZN5vcpkg7Strings12inplace_trimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.05.i.i84)
          to label %.noexc.i85 unwind label %bb.fp

.noexc.i85:                                       ; preds = %.lr.ph.i.i83
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i84, i64 32 ; 2 uses
  %.not.i48.i = icmp eq ptr %i.zq, %.val44.i
  br i1 %.not.i48.i, label %_ZN5vcpkgL8trim_allERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i86, label %.lr.ph.i.i83

_ZN5vcpkgL8trim_allERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i86: ; preds = %.noexc.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !185
  invoke void @_ZN5vcpkg15ParagraphParser14optional_fieldB5cxx11ENS_13StringLiteralE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.292") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nonnull @.str.28, i64 13)
          to label %bb.fg unwind label %bb.fq

bb.fg:                                            ; preds = %_ZN5vcpkgL8trim_allERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i86
  %i.zr = load i8, ptr %10, align 8, !tbaa !145, !range !58, !noalias !185, !noundef !59
  %i.zs = trunc nuw i8 %i.zr to i1
  %i.zt = load i64, ptr %.sroa.gep85.i, align 8, !noalias !185
  %i.zu = icmp ne i64 %i.zt, 0
  %or.cond.not.i87 = select i1 %i.zs, i1 %i.zu, i1 false
  br i1 %or.cond.not.i87, label %bb.fh, label %bb.fw

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !185
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.gep83.i, align 8, !noalias !185
  invoke void @_ZN5vcpkg23parse_dependencies_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewENS_10TextRowColE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.302") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.wj, ptr %1, i64 %2, i64 %.sroa.0.0.copyload.i)
          to label %bb.fi unwind label %bb.fr

bb.fi:                                            ; preds = %bb.fh
  %i.zv = load i8, ptr %i.wk, align 16, !tbaa !152, !range !58, !noalias !185, !noundef !59
  %i.zw = trunc nuw i8 %i.zv to i1                ; 2 uses
  br i1 %i.zw, label %_ZNO5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEE5errorEv.exit.i106, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xe, i64 56 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !116 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !115 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xe, i64 72 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !158
  %i.aad = load <2 x ptr>, ptr %11, align 16, !tbaa !192, !noalias !185
  store <2 x ptr> %i.aad, ptr %i.zx, align 8, !tbaa !192
  %i.aae = load ptr, ptr %.sroa.gep81.i, align 16, !tbaa !158, !noalias !185
  store ptr %i.aae, ptr %i.aab, align 8, !tbaa !158
  %.not4.i.i.i.i.i49.i = icmp eq ptr %i.zy, %i.aaa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !185
  br i1 %.not4.i.i.i.i.i49.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i.i101, label %.lr.ph.i.i.i.i.i50.i

.lr.ph.i.i.i.i.i50.i:                             ; preds = %bb.fj, %.lr.ph.i.i.i.i.i50.i
  %.05.i.i.i.i.i51.i = phi ptr [ %i.aaf, %.lr.ph.i.i.i.i.i50.i ], [ %i.zy, %bb.fj ] ; 2 uses
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.05.i.i.i.i.i51.i) #24
  %i.aaf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i51.i, i64 144 ; 2 uses
  %.not.i.i.i.i.i52.i = icmp eq ptr %i.aaf, %i.aaa
  br i1 %.not.i.i.i.i.i52.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i.i101, label %.lr.ph.i.i.i.i.i50.i, !llvm.loop !157

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i.i101: ; preds = %.lr.ph.i.i.i.i.i50.i, %bb.fj
  %.not.i.i1.i.i.i53.i = icmp eq ptr %i.zy, null
  br i1 %.not.i.i1.i.i.i53.i, label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i, label %bb.fk

bb.fk:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i.i101
  %i.aag = ptrtoint ptr %i.aac to i64
  %i.aah = ptrtoint ptr %i.zy to i64
  %i.aai = sub i64 %i.aag, %i.aah
  call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aai) #26
  br label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i

bb.fl:                                            ; preds = %_ZN5vcpkg15ParagraphParserC2ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE.exit.i53
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.fm:                                            ; preds = %bb.ev
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !185
  br label %bb.gi

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.fo:                                            ; preds = %bb.fc
  %i.aam = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aan = load ptr, ptr %9, align 8, !tbaa !23, !noalias !185 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.wi
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.fo
  %i.aap = load i64, ptr %i.wi, align 8, !tbaa !21, !noalias !185
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.fn
  %.pn.i60 = phi { ptr, i32 } [ %i.aal, %bb.fn ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.aam, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !185
  br label %bb.gi

bb.fp:                                            ; preds = %.lr.ph.i.i83
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.fq:                                            ; preds = %_ZN5vcpkgL8trim_allERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE.exit.i86
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10TextRowColEELb0EED2Ev.exit75.i

bb.fr:                                            ; preds = %bb.fh
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !185
  br label %bb.gg

_ZNO5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEE5errorEv.exit.i106: ; preds = %bb.fi
  store ptr %i.wl, ptr %47, align 8, !tbaa !22, !alias.scope !185
  %i.aau = load ptr, ptr %11, align 16, !tbaa !23, !noalias !185 ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %.sroa.gep81.i
  br i1 %i.aav, label %bb.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i107

bb.fs:                                            ; preds = %_ZNO5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEE5errorEv.exit.i106
  %i.aaw = load i64, ptr %.sroa.gep80.i, align 8, !tbaa !24, !noalias !185 ; 3 uses
  %i.aax = icmp ult i64 %i.aaw, 16
  call void @llvm.assume(i1 %i.aax)
  %i.aay = add nuw nsw i64 %i.aaw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wl, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.gep81.i, i64 %i.aay, i1 false)
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEEC2IS6_TnNSt9enable_ifIXaasr3stdE16is_convertible_vIT_S6_Entsr3stdE9is_same_vINSt16remove_referenceISA_E4typeES5_EEiE4typeELi0ELi1EEEOSA_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i107: ; preds = %_ZNO5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEE5errorEv.exit.i106
  store ptr %i.aau, ptr %47, align 8, !tbaa !23, !alias.scope !185
  %i.aaz = load i64, ptr %.sroa.gep81.i, align 16, !tbaa !21, !noalias !185
  store i64 %i.aaz, ptr %i.wl, align 8, !tbaa !21, !alias.scope !185
  %.pre.i109 = load i64, ptr %.sroa.gep80.i, align 8, !tbaa !24, !noalias !185
  br label %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEEC2IS6_TnNSt9enable_ifIXaasr3stdE16is_convertible_vIT_S6_Entsr3stdE9is_same_vINSt16remove_referenceISA_E4typeES5_EEiE4typeELi0ELi1EEEOSA_.exit.i

_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEEC2IS6_TnNSt9enable_ifIXaasr3stdE16is_convertible_vIT_S6_Entsr3stdE9is_same_vINSt16remove_referenceISA_E4typeES5_EEiE4typeELi0ELi1EEEOSA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i107, %bb.fs
  %i.aba = phi i64 [ %i.aaw, %bb.fs ], [ %.pre.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i107 ]
  store i64 %i.aba, ptr %i.wm, align 8, !tbaa !24, !alias.scope !185
  store ptr %.sroa.gep81.i, ptr %11, align 16, !tbaa !23, !noalias !185
  store i64 0, ptr %.sroa.gep80.i, align 8, !tbaa !24, !noalias !185
  store i8 0, ptr %.sroa.gep81.i, align 16, !tbaa !21, !noalias !185
  store i8 1, ptr %i.wn, align 8, !tbaa !193, !alias.scope !185
  br label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i: ; preds = %_ZN5vcpkg9ExpectedTISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS2_EENS_15LocalizedStringEEC2IS6_TnNSt9enable_ifIXaasr3stdE16is_convertible_vIT_S6_Entsr3stdE9is_same_vINSt16remove_referenceISA_E4typeES5_EEiE4typeELi0ELi1EEEOSA_.exit.i, %bb.fk, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i.i101
  %i.abb = load i8, ptr %i.wk, align 16, !tbaa !152, !range !58, !noalias !185, !noundef !59
  %i.abc = trunc nuw i8 %i.abb to i1
  %i.abd = load ptr, ptr %11, align 16, !tbaa !156, !noalias !185 ; 5 uses
  br i1 %i.abc, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i
  %i.abe = icmp eq ptr %i.abd, %.sroa.gep81.i
  br i1 %i.abe, label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105: ; preds = %bb.ft
  %i.abf = load i64, ptr %.sroa.gep81.i, align 16, !tbaa !21, !noalias !185
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abd, i64 noundef %i.abg) #26
  br label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104

bb.fu:                                            ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EEaSEOS3_.exit.i
  %i.abh = load ptr, ptr %.sroa.gep80.i, align 8, !tbaa !115, !noalias !185 ; 2 uses
  %.not4.i.i.i.i.i57.i = icmp eq ptr %i.abd, %i.abh
  br i1 %.not4.i.i.i.i.i57.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i61.i, label %.lr.ph.i.i.i.i.i58.i

.lr.ph.i.i.i.i.i58.i:                             ; preds = %bb.fu, %.lr.ph.i.i.i.i.i58.i
  %.05.i.i.i.i.i59.i = phi ptr [ %i.abi, %.lr.ph.i.i.i.i.i58.i ], [ %i.abd, %bb.fu ] ; 2 uses
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.05.i.i.i.i.i59.i) #24
  %i.abi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i59.i, i64 144 ; 2 uses
  %.not.i.i.i.i.i60.i = icmp eq ptr %i.abi, %i.abh
  br i1 %.not.i.i.i.i.i60.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i102, label %.lr.ph.i.i.i.i.i58.i, !llvm.loop !157

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i102: ; preds = %.lr.ph.i.i.i.i.i58.i
  %.pr.i.i.i.i103 = load ptr, ptr %11, align 16, !tbaa !116, !noalias !185
  br label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i61.i

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i61.i: ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i102, %bb.fu
  %i.abj = phi ptr [ %.pr.i.i.i.i103, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i102 ], [ %i.abd, %bb.fu ] ; 3 uses
  %.not.i.i1.i.i.i62.i = icmp eq ptr %i.abj, null
  br i1 %.not.i.i1.i.i.i62.i, label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104, label %bb.fv

bb.fv:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i61.i
  %i.abk = load ptr, ptr %.sroa.gep81.i, align 16, !tbaa !158, !noalias !185
  %i.abl = ptrtoint ptr %i.abk to i64
  %i.abm = ptrtoint ptr %i.abj to i64
  %i.abn = sub i64 %i.abl, %i.abm
  call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef %i.abn) #26
  br label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104

_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104: ; preds = %bb.ft, %bb.fv, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i61.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !185
  br i1 %i.zw, label %bb.gd, label %bb.fw

bb.fw:                                            ; preds = %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit.i104, %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !185
  invoke void @_ZNK5vcpkg15ParagraphParser5errorEv(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.103") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.fx unwind label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.abo = load i8, ptr %12, align 8, !tbaa !175, !range !58, !noalias !185, !noundef !59
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  store ptr %i.wl, ptr %47, align 8, !tbaa !22, !alias.scope !185
  %i.abq = load ptr, ptr %i.wo, align 8, !tbaa !23, !noalias !185 ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %.sroa.gep.i100
  br i1 %i.abr, label %bb.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i

bb.fz:                                            ; preds = %bb.fy
  %i.abs = load i64, ptr %.sroa.gep76.phi.trans.insert.i, align 8, !tbaa !24, !noalias !185 ; 3 uses
  %i.abt = icmp ult i64 %i.abs, 16
  call void @llvm.assume(i1 %i.abt)
  %i.abu = add nuw nsw i64 %i.abs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wl, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.gep.i100, i64 %i.abu, i1 false)
  br label %bb.gc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63.i: ; preds = %bb.fy
  store ptr %i.abq, ptr %47, align 8, !tbaa !23, !alias.scope !185
  %i.abv = load i64, ptr %.sroa.gep.i100, align 8, !tbaa !21, !noalias !185
  store i64 %i.abv, ptr %i.wl, align 8, !tbaa !21, !alias.scope !185
  %.pre89.i = load i64, ptr %.sroa.gep76.phi.trans.insert.i, align 8, !tbaa !24, !noalias !185
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fw
  %i.abw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !185
  br label %bb.gg

bb.gb:                                            ; preds = %bb.fx
  store i64 %i.yp, ptr %47, align 8, !tbaa !126, !alias.scope !185
  store ptr null, ptr %5, align 8, !tbaa !126, !noalias !185
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_15LocalizedStringELb0EED2Ev.exit.i88

end_hunk_1
begin_hunk_2_@_ZNK5vcpkg29LicenseExpressionDeserializer12visit_stringERNS_4Json6ReaderENS_10StringViewE:bb.a
  br i1 %.not.i.i1.i.i56, label %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i57, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i55
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !222
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #26
  br label %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i57

_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i57: ; preds = %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i55.thread, %bb.p, %_ZSt8_DestroyIPN5vcpkg31SpdxApplicableLicenseExpressionES1_EvT_S3_RSaIT0_E.exit.i.i55
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !23 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i57
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !21
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61

_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61: ; preds = %_ZNSt6vectorIN5vcpkg31SpdxApplicableLicenseExpressionESaIS1_EED2Ev.exit.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.cm = load ptr, ptr %6, align 8, !tbaa !263   ; 3 uses
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !266 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i ], [ %i.cm, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61 ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !269, !range !58, !noundef !59
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.q, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

bb.q:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #26
  br label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.cn
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !270

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %6, align 8, !tbaa !263
  br label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61
  %i.de = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.cm, %_ZN5vcpkg28ParsedSpdxLicenseDeclarationD2Ev.exit61 ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg10ParserBaseD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !267
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #26
  br label %_ZN5vcpkg10ParserBaseD2Ev.exit

_ZN5vcpkg10ParserBaseD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.s:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit44, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZN5vcpkg15LocalizedStringD2Ev.exit44 ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN5vcpkg10ParserBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn27.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerINS_28ParsedSpdxLicenseDeclarationEE11visit_arrayERNS0_6ReaderERKNS0_5ArrayE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.269") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !500
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerINS_28ParsedSpdxLicenseDeclarationEE12visit_objectERNS0_6ReaderERKNS0_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.269") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !500
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK5vcpkg4Json13IDeserializerINS_28ParsedSpdxLicenseDeclarationEE12valid_fieldsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg19FeatureDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg11msgAFeatureE, align 8, !tbaa !25
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE10visit_nullERNS0_6ReaderE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE13visit_booleanERNS0_6ReaderEb(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE13visit_integerERNS0_6ReaderEl(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sitofp i64 %3 to double
  %i.b = load ptr, ptr %1, align 8, !tbaa !294
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE12visit_numberERNS0_6ReaderEd(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE12visit_stringERNS0_6ReaderENS_10StringViewE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_16FeatureParagraphESt14default_deleteIS3_EEE11visit_arrayERNS0_6ReaderERKNS0_5ArrayE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg19FeatureDeserializer12visit_objectERNS_4Json6ReaderERKNS1_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.273") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.94", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 7 uses
  %6 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #25, !noalias !510 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, i8 0, i64 160, i1 false), !noalias !510
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22, !noalias !510
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !24, !noalias !510
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !510
  tail call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #24, !noalias !510
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !191, !noalias !510
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !22, !noalias !510
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %i.i, align 8, !tbaa !24, !noalias !510
  store i8 0, ptr %i.h, align 8, !tbaa !21, !noalias !510
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !noalias !510
  store ptr %i.a, ptr %4, align 8, !tbaa !126, !alias.scope !510
  %i.k = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 2 uses
  %.not45 = icmp eq ptr %i.k, %i.m
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN5vcpkg11msgAFeatureE, align 8, !tbaa !25, !noalias !513
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %8, i64 %.sroa.0.0.copyload.i)
          to label %_ZNK5vcpkg19FeatureDeserializer9type_nameEv.exit unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.042.046 = phi ptr [ %i.k, %.lr.ph ], [ %i.ah, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.042.046) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.042.046, i64 32
  store ptr %i.r, ptr %i.n, align 8, !tbaa !75, !alias.scope !516
  %i.s = call noundef zeroext i1 @_ZNK5vcpkg10StringView11starts_withES0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.928, i64 1) #24
  br i1 %i.s, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #24
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !80, !nonnull !59, !align !83
  %i.u = load ptr, ptr %6, align 8
  %i.v = load i64, ptr %i.o, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object17insert_or_replaceENS_10StringViewERKNS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.u, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.p, align 8, !tbaa !21
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.g
  %i.af = load i64, ptr %i.p, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.f
  %.pn28 = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.p

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.042.046, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b

_ZNK5vcpkg19FeatureDeserializer9type_nameEv.exit: ; preds = %._crit_edge
  invoke void @_ZN5vcpkg4Json6Reader21required_object_fieldISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEvRKNS_15LocalizedStringERKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISJ_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.899, i64 11, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg4Json21ParagraphDeserializer8instanceE)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNK5vcpkg19FeatureDeserializer9type_nameEv.exit
  %i.ai = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.an = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.909, i64 12) #24 ; 2 uses
  %.not.i.not = icmp eq ptr %i.an, null
  br i1 %.not.i.not, label %_ZN5vcpkg4Json6Reader21optional_object_fieldISt6vectorINS_10DependencyESaIS4_EEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISB_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_ZN5vcpkg4Json6Reader12visit_in_keyISt6vectorINS_10DependencyESaIS4_EEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerISB_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr nonnull @.str.909, i64 12, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg27DependencyArrayDeserializer8instanceE)
          to label %_ZN5vcpkg4Json6Reader21optional_object_fieldISt6vectorINS_10DependencyESaIS4_EEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISB_EE.exit unwind label %bb.o

_ZN5vcpkg4Json6Reader21optional_object_fieldISt6vectorINS_10DependencyESaIS4_EEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISB_EE.exit: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %bb.j
  %i.ap = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.907, i64 8) #24 ; 2 uses
  %.not.i34.not = icmp eq ptr %i.ap, null
  br i1 %.not.i34.not, label %_ZN5vcpkg4Json6Reader21optional_object_fieldINS_18PlatformExpression4ExprEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldISt6vectorINS_10DependencyESaIS4_EEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISB_EE.exit
  invoke void @_ZN5vcpkg4Json6Reader12visit_in_keyINS_18PlatformExpression4ExprEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr nonnull @.str.907, i64 8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg24PlatformExprDeserializer8instanceE)
          to label %_ZN5vcpkg4Json6Reader21optional_object_fieldINS_18PlatformExpression4ExprEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE.exit unwind label %bb.o

_ZN5vcpkg4Json6Reader21optional_object_fieldINS_18PlatformExpression4ExprEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE.exit: ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldISt6vectorINS_10DependencyESaIS4_EEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISB_EE.exit, %bb.k
  %i.aq = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.905, i64 7) #24 ; 2 uses
  %.not.i36.not = icmp eq ptr %i.aq, null
  br i1 %.not.i36.not, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldINS_18PlatformExpression4ExprEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE.exit
  invoke void @_ZN5vcpkg4Json6Reader12visit_in_keyINS_28ParsedSpdxLicenseDeclarationEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerIS8_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr nonnull @.str.905, i64 7, ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg29LicenseExpressionDeserializer8instanceE)
          to label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.o

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZN5vcpkg4Json6Reader21optional_object_fieldINS_18PlatformExpression4ExprEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerIS9_EE.exit
  %i.ar = ptrtoint ptr %i.a to i64
  store i8 1, ptr %0, align 8, !tbaa !508
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.m:                                             ; preds = %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit41

bb.n:                                             ; preds = %_ZNK5vcpkg19FeatureDeserializer9type_nameEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN5vcpkg15LocalizedStringD2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.n
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !21
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit41

_ZN5vcpkg15LocalizedStringD2Ev.exit41:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %bb.m
  %.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5vcpkg15LocalizedStringD2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ba, %bb.o ], [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit41 ]
  call void @_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK5vcpkg19FeatureDeserializer12valid_fieldsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZNK5vcpkg19FeatureDeserializer12valid_fieldsEvE1t, i64 4 }
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg25FeaturesFieldDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg17msgASetOfFeaturesE, align 8, !tbaa !25
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerINS_14FeaturesObjectEE10visit_nullERNS0_6ReaderE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.277") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !519
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
begin_hunk_3_@_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE11visit_arrayERNS0_6ReaderERKNS0_5ArrayE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg20ContactsDeserializer12visit_objectERNS_4Json6ReaderERKNS1_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !142
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !67     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ugt i64 %i.h, 230584300921369395
  br i1 %i.i, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !144

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !70
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %i.d, ptr %i.c, ptr noundef %i.k)
          to label %_ZN5vcpkg8OptionalINS_4Json6ObjectEEC2IRKS2_TnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES3_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIS2_Lb1EEES9_EEiE4typeELi0EEEOS9_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EED2Ev.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZN5vcpkg8OptionalINS_4Json6ObjectEEC2IRKS2_TnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES3_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIS2_Lb1EEES9_EEiE4typeELi0EEEOS9_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK5vcpkg4Json13IDeserializerINS0_6ObjectEE12valid_fieldsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg26BaselineCommitDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg25msgAVcpkgRepositoryCommitE, align 8, !tbaa !25
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg26BaselineCommitDeserializer12visit_stringB5cxx11ERNS_4Json6ReaderENS_10StringViewE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr %3, i64 %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
  store i8 1, ptr %0, align 8, !tbaa !269
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !22
  %i.d = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !23
  %i.k = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.k, ptr %i.c, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg20ManifestDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg12msgAManifestE, align 8, !tbaa !25
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE10visit_nullERNS0_6ReaderE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE13visit_booleanERNS0_6ReaderEb(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE13visit_integerERNS0_6ReaderEl(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sitofp i64 %3 to double
  %i.b = load ptr, ptr %1, align 8, !tbaa !294
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE12visit_numberERNS0_6ReaderEd(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE12visit_stringERNS0_6ReaderENS_10StringViewE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerISt10unique_ptrINS_17SourceControlFileESt14default_deleteIS3_EEE11visit_arrayERNS0_6ReaderERKNS0_5ArrayE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !365
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg27ProjectManifestDeserializer12visit_objectERNS_4Json6ReaderERKNS1_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.69", align 8 ; 7 uses
  %5 = alloca %"struct.vcpkg::Optional.410", align 8 ; 14 uses
  %6 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !541 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false), !noalias !541
  store ptr %i.a, ptr %4, align 8, !tbaa !132, !alias.scope !541
  %i.b = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #25
          to label %bb.b unwind label %bb.f       ; 26 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !noalias !544
  store ptr %i.c, ptr %i.b, align 8, !tbaa !22, !noalias !544
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !24, !noalias !544
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 4, ptr %i.e, align 8, !tbaa !84, !noalias !544
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.f) #24, !noalias !544
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false), !noalias !544
  store ptr %i.i, ptr %i.h, align 8, !tbaa !22, !noalias !544
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 0, ptr %i.j, align 8, !tbaa !24, !noalias !544
  store i8 0, ptr %i.i, align 8, !tbaa !21, !noalias !544
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !22, !noalias !544
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 0, ptr %i.m, align 8, !tbaa !24, !noalias !544
  store i8 0, ptr %i.l, align 8, !tbaa !21, !noalias !544
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.n, i8 0, i64 76, i1 false), !noalias !544
  store ptr %i.p, ptr %i.o, align 8, !tbaa !22, !noalias !544
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store i64 0, ptr %i.q, align 8, !tbaa !24, !noalias !544
  store i8 0, ptr %i.p, align 8, !tbaa !21, !noalias !544
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i8 0, ptr %i.s, align 8, !tbaa !21, !noalias !544
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i8 0, ptr %i.t, align 8, !tbaa !142, !noalias !544
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store i8 0, ptr %i.u, align 8, !tbaa !21, !noalias !544
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store i32 0, ptr %i.v, align 8, !tbaa !143, !noalias !544
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !noalias !544
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i8 0, i64 25, i1 false), !noalias !544
  tail call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #24, !noalias !544
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !544
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !122
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.z) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 488) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pre, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 5 uses
  %i.ab = tail call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.12, i64 4) #24 ; 2 uses
  %.not.i28.not = icmp eq ptr %i.ab, null
  br i1 %.not.i28.not, label %_ZN5vcpkg4Json6Reader21optional_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISD_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN5vcpkg4Json6Reader12visit_in_keyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS0_5ValueENS_10StringViewERT_RKNS0_13IDeserializerISD_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr nonnull @.str.12, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg4Json23PackageNameDeserializer8instanceE)
          to label %_ZN5vcpkg4Json6Reader21optional_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISD_EE.exit unwind label %bb.g

_ZN5vcpkg4Json6Reader21optional_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISD_EE.exit: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN5vcpkg12msgAManifestE, align 8, !tbaa !25, !noalias !547
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %6, i64 %.sroa.0.0.copyload.i)
          to label %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit unwind label %bb.h

_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit: ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISD_EE.exit
  invoke void @_ZN5vcpkg30visit_optional_schemed_versionERKNS_15LocalizedStringERNS_4Json6ReaderERKNS3_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.410") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit
  %i.ac = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ah = load i8, ptr %5, align 8, !tbaa !550, !range !58, !noundef !59
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !552
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %i.am, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.gep)
          to label %_ZN5vcpkg7VersionaSERKS0_.exit unwind label %bb.j

_ZN5vcpkg7VersionaSERKS0_.exit:                   ; preds = %bb.e
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = load i32, ptr %.sroa.gep.sroa.gep, align 8, !tbaa !26
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %_ZN5vcpkg4Json6Reader21optional_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISD_EE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit33

bb.i:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5vcpkg15LocalizedStringD2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !21
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit33

_ZN5vcpkg15LocalizedStringD2Ev.exit33:            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37

bb.j:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %_ZN5vcpkg7VersionaSERKS0_.exit
  %.sink50 = phi i64 [ 72, %_ZN5vcpkg7VersionaSERKS0_.exit ], [ 32, %_ZN5vcpkg15LocalizedStringD2Ev.exit ]
  %.sink = phi i32 [ %i.an, %_ZN5vcpkg7VersionaSERKS0_.exit ], [ 0, %_ZN5vcpkg15LocalizedStringD2Ev.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink50
  store i32 %.sink, ptr %i.ay, align 8, !tbaa !21
  invoke void @_ZNK5vcpkg20ManifestDeserializer19visit_object_commonERKNS_4Json6ObjectERNS_15SourceParagraphERNS1_6ReaderERSt10unique_ptrINS_17SourceControlFileESt14default_deleteISA_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(488) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = load i8, ptr %5, align 8, !tbaa !550, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit: ; preds = %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bh = load ptr, ptr %4, align 8, !tbaa !132   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bh, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i: ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bh) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 56) #26
  br label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.n:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.pn23 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.ax, %bb.j ] ; 3 uses
  %i.bj = load i8, ptr %5, align 8, !tbaa !550, !range !58, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !23 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35: ; preds = %bb.p
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !21
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37

_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35, %bb.o, %_ZN5vcpkg15LocalizedStringD2Ev.exit33
  %.pn23.pn = phi { ptr, i32 } [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit33 ], [ %.pn23, %bb.o ], [ %.pn23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35 ], [ %.pn23, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37, %bb.f
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %.pn23.pn, %_ZN5vcpkg7details19OptionalStorageDtorINS_14SchemedVersionELb0EED2Ev.exit37 ], [ %i.ap, %bb.g ]
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNK5vcpkg20ManifestDeserializer12valid_fieldsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @_ZZNK5vcpkg20ManifestDeserializer12valid_fieldsEvE6fields, i64 21 }
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg24PortManifestDeserializer12visit_objectERNS_4Json6ReaderERKNS1_6ObjectE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.69", align 8 ; 7 uses
  %5 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %6 = alloca %"struct.vcpkg::SchemedVersion", align 8 ; 9 uses
  %7 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !554 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false), !noalias !554
  store ptr %i.a, ptr %4, align 8, !tbaa !132, !alias.scope !554
  %i.b = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #25
          to label %bb.b unwind label %bb.g       ; 26 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !noalias !557
  store ptr %i.c, ptr %i.b, align 8, !tbaa !22, !noalias !557
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !24, !noalias !557
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 4, ptr %i.e, align 8, !tbaa !84, !noalias !557
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.f) #24, !noalias !557
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false), !noalias !557
  store ptr %i.i, ptr %i.h, align 8, !tbaa !22, !noalias !557
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 0, ptr %i.j, align 8, !tbaa !24, !noalias !557
  store i8 0, ptr %i.i, align 8, !tbaa !21, !noalias !557
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !22, !noalias !557
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 0, ptr %i.m, align 8, !tbaa !24, !noalias !557
  store i8 0, ptr %i.l, align 8, !tbaa !21, !noalias !557
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.n, i8 0, i64 76, i1 false), !noalias !557
  store ptr %i.p, ptr %i.o, align 8, !tbaa !22, !noalias !557
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store i64 0, ptr %i.q, align 8, !tbaa !24, !noalias !557
  store i8 0, ptr %i.p, align 8, !tbaa !21, !noalias !557
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i8 0, ptr %i.s, align 8, !tbaa !21, !noalias !557
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i8 0, ptr %i.t, align 8, !tbaa !142, !noalias !557
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store i8 0, ptr %i.u, align 8, !tbaa !21, !noalias !557
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store i32 0, ptr %i.v, align 8, !tbaa !143, !noalias !557
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !noalias !557
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.r, i8 0, i64 25, i1 false), !noalias !557
  tail call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #24, !noalias !557
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !557
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !122
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.z) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 488) #26
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pre, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN5vcpkg12msgAManifestE, align 8, !tbaa !25, !noalias !560
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %5, i64 %.sroa.0.0.copyload.i)
          to label %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit unwind label %bb.h

_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN5vcpkg4Json6Reader21required_object_fieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS_15LocalizedStringERKNS0_6ObjectENS_10StringViewERT_RKNS0_13IDeserializerISG_EE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull @.str.12, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5vcpkg4Json23PackageNameDeserializer8instanceE)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit
  %i.ab = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.0.0.copyload.i24 = load i64, ptr @_ZN5vcpkg12msgAManifestE, align 8, !tbaa !25, !noalias !563
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %7, i64 %.sroa.0.0.copyload.i24)
          to label %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit25 unwind label %bb.j

_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit25: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  invoke void @_ZN5vcpkg30visit_required_schemed_versionERKNS_15LocalizedStringERNS_4Json6ReaderERKNS3_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::SchemedVersion") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit25
  %i.ag = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5vcpkg15LocalizedStringD2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit28

_ZN5vcpkg15LocalizedStringD2Ev.exit28:            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.al = load i32, ptr %6, align 8, !tbaa !552
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.al, ptr %i.am, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, ptr noundef nonnull align 8 dereferenceable(36) %i.an)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit28
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !26
  invoke void @_ZNK5vcpkg20ManifestDeserializer19visit_object_commonERKNS_4Json6ObjectERNS_15SourceParagraphERNS1_6ReaderERSt10unique_ptrINS_17SourceControlFileESt14default_deleteISA_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Optional.281") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(488) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5vcpkg14SchemedVersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.av = load i64, ptr %i.at, align 8, !tbaa !21
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit

_ZN5vcpkg14SchemedVersionD2Ev.exit:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ax = load ptr, ptr %4, align 8, !tbaa !132   ; 3 uses
  %.not.i29 = icmp eq ptr %i.ax, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i: ; preds = %_ZN5vcpkg14SchemedVersionD2Ev.exit
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ax) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 56) #26
  br label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg14SchemedVersionD2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit32

bb.i:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5vcpkg15LocalizedStringD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !21
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit32

_ZN5vcpkg15LocalizedStringD2Ev.exit32:            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %bb.h ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %i.ba, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.m

bb.j:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit35

bb.k:                                             ; preds = %_ZNK5vcpkg20ManifestDeserializer9type_nameEv.exit25
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN5vcpkg15LocalizedStringD2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33: ; preds = %bb.k
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit35

_ZN5vcpkg15LocalizedStringD2Ev.exit35:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33, %bb.j
  %.pn18 = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33 ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit38

bb.l:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit28, %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN5vcpkg14SchemedVersionD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #26
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit38

_ZN5vcpkg14SchemedVersionD2Ev.exit38:             ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36, %_ZN5vcpkg15LocalizedStringD2Ev.exit35
  %.pn20 = phi { ptr, i32 } [ %.pn18, %_ZN5vcpkg15LocalizedStringD2Ev.exit35 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36 ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit32, %_ZN5vcpkg14SchemedVersionD2Ev.exit38, %bb.g
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.g ], [ %.pn20, %_ZN5vcpkg14SchemedVersionD2Ev.exit38 ], [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit32 ]
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg33ManifestConfigurationDeserializer9type_nameEv(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg12msgAManifestE, align 8, !tbaa !25
  tail call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8 %0, i64 %.sroa.0.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5vcpkg4Json13IDeserializerINS_21ManifestConfigurationEE10visit_nullERNS0_6ReaderE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Optional.177") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !319
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZN5vcpkg27SpdxLicenseExpressionParser8tokenizeEv:bb.a
  store i64 1, ptr %.sroa.7309.0..sroa_idx310, align 8, !tbaa !25
  %.sroa.8312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8312.0..sroa_idx313, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ar
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc63, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %.noexc63 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %.noexc63 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i, i64 96, i1 false), !tbaa.struct !770, !alias.scope !771
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !775

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc63
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc63 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 96
  %.not.i23.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #26
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !285
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !768
  %i.bk = getelementptr inbounds nuw [96 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bk, ptr %i.j, align 8, !tbaa !287
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8312)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit114.invoke

.loopexit330:                                     ; preds = %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp331:                            ; preds = %bb.m
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp331, %.loopexit330
  %lpad.phi334 = phi { ptr, i32 } [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8312)
  br label %bb.cj

bb.p:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit114.invoke
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.q:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8296)
  %.sroa.4283.0.copyload = load ptr, ptr %.sroa.4283.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8296, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false), !tbaa.struct !767
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !768 ; 9 uses
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !287
  %.not.i.i64 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.bm, align 8, !tbaa !769
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.4283.0.copyload, ptr %.sroa.6290.0..sroa_idx, align 8, !tbaa !38
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 1, ptr %.sroa.7293.0..sroa_idx, align 8, !tbaa !25
  %.sroa.8296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8296.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8296, i64 72, i1 false), !tbaa.struct !767
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE9push_backEOS2_.exit79

bb.s:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %0, align 8, !tbaa !285   ; 5 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775776
  br i1 %i.bt, label %bb.t, label %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #27
          to label %.noexc77 unwind label %.loopexit.split-lp326

.noexc77:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.s
  %i.bu = sdiv exact i64 %i.bs, 96                ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 96076792050570581)
  %i.by = select i1 %i.bw, i64 96076792050570581, i64 %i.bx ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.bz = mul nuw nsw i64 %i.by, 96
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #25
          to label %.noexc78 unwind label %.loopexit325 ; 5 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 4 uses
  store i32 1, ptr %i.cb, align 8, !tbaa !769
  %.sroa.6290.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.sroa.4283.0.copyload, ptr %.sroa.6290.0..sroa_idx291, align 8, !tbaa !38
  %.sroa.7293.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 1, ptr %.sroa.7293.0..sroa_idx294, align 8, !tbaa !25
  %.sroa.8296.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8296.0..sroa_idx297, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false)
  %.not10.i.i.i.i.i.i68 = icmp eq ptr %i.bp, %i.bm
  br i1 %.not10.i.i.i.i.i.i68, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i69:                             ; preds = %.noexc78, %.lr.ph.i.i.i.i.i.i69
  %.012.i.i.i.i.i.i70 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i69 ], [ %i.ca, %.noexc78 ] ; 2 uses
  %.0911.i.i.i.i.i.i71 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i69 ], [ %i.bp, %.noexc78 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i70, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i71, i64 96, i1 false), !tbaa.struct !770, !alias.scope !776
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i71, i64 96 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i70, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i72 = icmp eq ptr %i.cc, %i.bm
  br i1 %.not.i.i.i.i.i.i72, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i73, label %.lr.ph.i.i.i.i.i.i69, !llvm.loop !775

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i73: ; preds = %.lr.ph.i.i.i.i.i.i69, %.noexc78
  %.0.lcssa.i.i.i.i.i.i74 = phi ptr [ %i.ca, %.noexc78 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i69 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i74, i64 96
  %.not.i23.i.i.i75 = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i75, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i76, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bs) #26
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i76

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i76: ; preds = %bb.u, %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i73
  store ptr %i.ca, ptr %0, align 8, !tbaa !285
  store ptr %i.ce, ptr %i.i, align 8, !tbaa !768
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !287
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE9push_backEOS2_.exit79

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE9push_backEOS2_.exit79: ; preds = %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i76, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8296)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit114.invoke

.loopexit325:                                     ; preds = %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp326:                            ; preds = %bb.t
  %lpad.loopexit.split-lp328 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp326, %.loopexit325
  %lpad.phi329 = phi { ptr, i32 } [ %lpad.loopexit327, %.loopexit325 ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp326 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8296)
  br label %bb.cj

bb.w:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.015.0.copyload = load i64, ptr @_ZN5vcpkg37msgLicenseExpressionContainsExtraPlusE, align 8, !tbaa !25
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %7, i64 %.sroa.015.0.copyload)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5vcpkg10ParserBase9add_errorEONS_15LocalizedStringERKNS_9SourceLocE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN5vcpkg15LocalizedStringD2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80: ; preds = %bb.y
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit82

_ZN5vcpkg15LocalizedStringD2Ev.exit82:            ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8271)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9273)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8271, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa.struct !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9273, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa.struct !765
  %i.cl = load i32, ptr %i.g, align 8, !tbaa !780, !noalias !784 ; 2 uses
  %i.cm = load i32, ptr %i.h, align 4, !tbaa !787, !noalias !784 ; 2 uses
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !768 ; 10 uses
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !287
  %.not.i.i83 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit82
  store i32 7, ptr %i.cn, align 8, !tbaa !769
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  %.sroa.8271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8271.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8271, i64 32, i1 false), !tbaa.struct !767
  %.sroa.9273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9273.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9273, i64 32, i1 false), !tbaa.struct !788
  %.sroa.10275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  store i32 %i.cl, ptr %.sroa.10275.0..sroa_idx, align 8, !tbaa !149
  %.sroa.11278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 92
  store i32 %i.cm, ptr %.sroa.11278.0..sroa_idx, align 4, !tbaa !149
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !768
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  store ptr %i.cr, ptr %i.i, align 8, !tbaa !768
  br label %.thread317

bb.aa:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit82
  %i.cs = load ptr, ptr %0, align 8, !tbaa !285   ; 5 uses
  %i.ct = ptrtoint ptr %i.cn to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775776
  br i1 %i.cw, label %bb.ab, label %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i84

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #27
          to label %.noexc96 unwind label %bb.af

.noexc96:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i84: ; preds = %bb.aa
  %i.cx = sdiv exact i64 %i.cv, 96                ; 3 uses
  %.sroa.speculated.i.i.i.i85 = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i85, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 96076792050570581)
  %i.db = select i1 %i.cz, i64 96076792050570581, i64 %i.da ; 3 uses
  %.not.i.i.i.i86 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i86)
  %i.dc = mul nuw nsw i64 %i.db, 96
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #25
          to label %.noexc97 unwind label %bb.af  ; 5 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i84
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 6 uses
  store i32 7, ptr %i.de, align 8, !tbaa !769
  %i.df = getelementptr i8, ptr %i.de, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %.sroa.8271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8271.0..sroa_idx272, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %.sroa.9273.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9273.0..sroa_idx274, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %.sroa.10275.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.de, i64 88
  store i32 %i.cl, ptr %.sroa.10275.0..sroa_idx276, align 8, !tbaa !149
  %.sroa.11278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.de, i64 92
  store i32 %i.cm, ptr %.sroa.11278.0..sroa_idx279, align 4, !tbaa !149
  %.not10.i.i.i.i.i.i87 = icmp eq ptr %i.cs, %i.cn
  br i1 %.not10.i.i.i.i.i.i87, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i88

.lr.ph.i.i.i.i.i.i88:                             ; preds = %.noexc97, %.lr.ph.i.i.i.i.i.i88
  %.012.i.i.i.i.i.i89 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i88 ], [ %i.dd, %.noexc97 ] ; 2 uses
  %.0911.i.i.i.i.i.i90 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i88 ], [ %i.cs, %.noexc97 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.012.i.i.i.i.i.i89, ptr noundef nonnull align 8 dereferenceable(96) %.0911.i.i.i.i.i.i90, i64 96, i1 false), !tbaa.struct !770, !alias.scope !789
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i90, i64 96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i89, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i91 = icmp eq ptr %i.dg, %i.cn
  br i1 %.not.i.i.i.i.i.i91, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i88, !llvm.loop !775

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i92: ; preds = %.lr.ph.i.i.i.i.i.i88, %.noexc97
  %.0.lcssa.i.i.i.i.i.i93 = phi ptr [ %i.dd, %.noexc97 ], [ %i.dh, %.lr.ph.i.i.i.i.i.i88 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i93, i64 96
  %.not.i23.i.i.i94 = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i.i.i94, label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i95, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #26
  br label %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i95

_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i95: ; preds = %bb.ac, %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i92
  store ptr %i.dd, ptr %0, align 8, !tbaa !285
  store ptr %i.di, ptr %i.i, align 8, !tbaa !768
  %i.dj = getelementptr inbounds nuw [96 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dj, ptr %i.j, align 8, !tbaa !287
  br label %.thread317

.thread317:                                       ; preds = %bb.z, %_ZNSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8271)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9273)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.critedge

bb.ad:                                            ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit101

bb.ae:                                            ; preds = %bb.x
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN5vcpkg15LocalizedStringD2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.ae
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !21
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit101

_ZN5vcpkg15LocalizedStringD2Ev.exit101:           ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99 ], [ %i.dl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.cj

bb.af:                                            ; preds = %_ZNKSt6vectorIN5vcpkg27SpdxLicenseExpressionParser16SpdxLicenseTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i84, %bb.ab
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8271)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9273)
  br label %bb.cj

bb.ag:                                            ; preds = %bb.h
  %i.ds = icmp ugt i32 %i.ap, 127
  br i1 %i.ds, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %.sroa.3264.0.copyload = load ptr, ptr %.sroa.4283.0..sroa_idx, align 8, !tbaa !38 ; 2 uses
  %i.dt = invoke noundef zeroext i32 @_ZN5vcpkg10ParserBase4nextEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.ai unwind label %bb.am     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.4283.0..sroa_idx, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.012.0.copyload = load i64, ptr @_ZN5vcpkg35msgLicenseExpressionContainsUnicodeE, align 8, !tbaa !25
  %i.du = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.dv = ptrtoint ptr %.sroa.3264.0.copyload to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.3264.0.copyload, ptr %4, align 8, !noalias !793
  store i64 %i.dw, ptr %i.s, align 8, !noalias !793
  %i.dx = load ptr, ptr @_ZN5vcpkg3msg7value_t4nameE, align 8, !tbaa !230, !noalias !793 ; 3 uses
  %i.dy = load ptr, ptr @_ZN5vcpkg3msg14pretty_value_t4nameE, align 8, !tbaa !230, !noalias !793 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !796
  store ptr %i.t, ptr %3, align 16, !tbaa !234, !noalias !796
  store i64 2, ptr %i.u, align 8, !tbaa !237, !noalias !796
  store i32 %i.ap, ptr %i.v, align 16, !tbaa !21, !noalias !796
  store ptr %4, ptr %i.w, align 16, !tbaa !21, !noalias !796
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.x, align 8, !tbaa !21, !noalias !796
  store ptr %i.dx, ptr %i.t, align 16, !tbaa !38, !noalias !796
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !149, !noalias !796
  %i.dz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dy) #24, !noalias !796 ; 2 uses
  %i.ea = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dx) #24, !noalias !796 ; 2 uses
  %i.eb = call noundef i64 @llvm.umin.i64(i64 %i.ea, i64 %i.dz)
  %bcmp.i.i.i7.i.i = call i32 @bcmp(ptr nonnull %i.dx, ptr nonnull %i.dy, i64 %i.eb), !noalias !796
  %.not.i.i.i.i8.i.i = icmp eq i32 %bcmp.i.i.i7.i.i, 0
  %i.ec = icmp eq i64 %i.ea, %i.dz
  %i.ed = select i1 %.not.i.i.i.i8.i.i, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.aj, label %_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcjEENS6_IcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.53) #27
          to label %.noexc102 unwind label %.loopexit.split-lp358

.noexc102:                                        ; preds = %bb.aj
  unreachable

_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcjEENS6_IcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_.exit.i: ; preds = %bb.ai
  store ptr %i.dy, ptr %i.y, align 16, !tbaa !38, !noalias !796
  store i32 1, ptr %.sroa.4.0..sroa_idx.i2.i.i, align 8, !tbaa !149, !noalias !796
  invoke void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %8, i64 noundef %.sroa.012.0.copyload, i64 4611686018427388146, ptr nonnull %i.v)
          to label %bb.ak unwind label %.loopexit357

bb.ak:                                            ; preds = %_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcjEENS6_IcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !796
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN5vcpkg10ParserBase9add_errorEONS_15LocalizedStringERKNS_9SourceLocE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ee = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.z
  br i1 %i.ef, label %_ZN5vcpkg15LocalizedStringD2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104: ; preds = %bb.al
  %i.eg = load i64, ptr %i.z, align 8, !tbaa !21
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit106

_ZN5vcpkg15LocalizedStringD2Ev.exit106:           ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %thread-pre-split

bb.am:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit357:                                     ; preds = %_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcjEENS6_IcNS_10StringViewEEEEEENS_15LocalizedStringEmDpOT_.exit.i
  %lpad.loopexit359 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit109

.loopexit.split-lp358:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp360 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit109

bb.an:                                            ; preds = %bb.ak
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.z
  br i1 %i.el, label %_ZN5vcpkg15LocalizedStringD2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.an
  %i.em = load i64, ptr %i.z, align 8, !tbaa !21
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit109

_ZN5vcpkg15LocalizedStringD2Ev.exit109:           ; preds = %bb.an, %.loopexit357, %.loopexit.split-lp358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  %.pn53 = phi { ptr, i32 } [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107 ], [ %lpad.loopexit.split-lp360, %.loopexit.split-lp358 ], [ %lpad.loopexit359, %.loopexit357 ], [ %i.ej, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.cj

bb.ao:                                            ; preds = %bb.ag
  %i.eo = and i32 %i.ap, 95
  %i.ep = add nsw i32 %i.eo, -65
  %i.eq = icmp ult i32 %i.ep, 26
  %i.er = add nsw i32 %i.ap, -48
  %i.es = icmp ult i32 %i.er, 10
  %i.et = or i1 %i.es, %i.eq
  %i.eu = add nsw i32 %i.ap, -45
  %i.ev = icmp ult i32 %i.eu, 2
  %i.ew = or i1 %i.ev, %i.et
  br i1 %i.ew, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg44msgLicenseExpressionContainsInvalidCharacterE, align 8, !tbaa !25
  %i.ex = trunc nuw nsw i32 %i.ap to i8
  %i.ey = load ptr, ptr @_ZN5vcpkg3msg7value_t4nameE, align 8, !tbaa !230, !noalias !799
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !802
  store ptr %i.k, ptr %2, align 16, !tbaa !234, !noalias !802
  store i64 1, ptr %i.l, align 8, !tbaa !237, !noalias !802
  store i8 %i.ex, ptr %i.m, align 16, !tbaa !21, !noalias !802
end_hunk_4
begin_hunk_5_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_RT0_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.aj, %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.n = getelementptr inbounds [40 x i8], ptr %0, i64 %.010 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.o, ptr %3, align 8, !tbaa !23
  %i.v = load i64, ptr %i.p, align 8, !tbaa !21
  store i64 %i.v, ptr %i.h, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit

_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi ptr [ %i.h, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.s, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.n, align 8, !tbaa !23
  store i64 0, ptr %i.y, align 8, !tbaa !24
  store i8 0, ptr %i.p, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !252, !range !58, !noundef !59 ; 2 uses
  store i8 %i.aa, ptr %i.j, align 8, !tbaa !252
  store ptr %i.k, ptr %4, align 8, !tbaa !22
  %i.ab = icmp eq ptr %i.w, %i.h
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.e:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit
  %i.ac = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ad, i1 false)
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit
  store ptr %i.w, ptr %4, align 8, !tbaa !23
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !21
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !21
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit12

_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  store i64 %i.x, ptr %i.l, align 8, !tbaa !24
  store ptr %i.h, ptr %3, align 8, !tbaa !23
  store i64 0, ptr %i.i, align 8, !tbaa !24
  store i8 0, ptr %i.h, align 8, !tbaa !21
  store i8 %i.aa, ptr %i.m, align 8, !tbaa !252
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_(ptr nonnull %0, i64 noundef %.010, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit12
  %i.af = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.k
  br i1 %i.ag, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !21
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not = icmp eq i64 %.010, 0
  %i.aj = add nsw i64 %.010, -1
  %i.ak = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.h
  br i1 %i.al, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit
  %i.am = load i64, ptr %i.h, align 8, !tbaa !21
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !839

bb.g:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit12
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.g
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit18

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit18: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.at = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.h
  br i1 %i.au, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit18
  %i.av = load i64, ptr %i.h, align 8, !tbaa !21
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit21

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit21: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ao

.loopexit:                                        ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit15, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.vcpkg::SpdxApplicableLicenseExpression", align 8 ; 12 uses
  %5 = alloca %"struct.vcpkg::SpdxApplicableLicenseExpression", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !22
  %i.b = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !23
  %i.i = load i64, ptr %i.c, align 8, !tbaa !21
  store i64 %i.i, ptr %i.a, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !24
  store ptr %i.c, ptr %2, align 8, !tbaa !23
  store i64 0, ptr %i.k, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !252, !range !58, !noundef !59
  store i8 %i.o, ptr %i.m, align 8, !tbaa !252
  %i.p = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i.i = icmp eq ptr %0, %2
  br i1 %.not21.i.i, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit, label %bb.d, !prof !144

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !21
  store i8 %i.v, ptr %i.c, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !21
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  store ptr %i.p, ptr %2, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  store i64 %i.z, ptr %i.k, align 8, !tbaa !24
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !21
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !21
  store ptr %i.q, ptr %0, align 8, !tbaa !23
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit

_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.ab = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.q, %bb.g ], [ %i.p, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !24
  store i8 0, ptr %i.ab, align 1, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !252, !range !58, !noundef !59
  store i8 %i.ae, ptr %i.n, align 8, !tbaa !252
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 40
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !22
  %i.ak = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.h:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit
  %i.am = load i64, ptr %i.l, align 8, !tbaa !24  ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ao, i1 false)
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit
  store ptr %i.ak, ptr %5, align 8, !tbaa !23
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !21
  %.pre19 = load i64, ptr %i.l, align 8, !tbaa !24
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit5

_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit5: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.aq = phi i64 [ %i.am, %bb.h ], [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !24
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  store i64 0, ptr %i.l, align 8, !tbaa !24
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = load i8, ptr %i.m, align 8, !tbaa !252, !range !58, !noundef !59
  store i8 %i.at, ptr %i.as, align 8, !tbaa !252
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit5
  %i.au = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aj
  br i1 %i.av, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !21
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit8

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit8: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.j:                                             ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionC2EOS0_.exit5
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aj
  br i1 %i.be, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.j
  %i.bf = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit11

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.bh = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit11
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !21
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #26
  br label %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit14

_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit14: ; preds = %_ZN5vcpkg31SpdxApplicableLicenseExpressionD2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.354", align 1 ; 4 uses
  %5 = alloca %"struct.vcpkg::SpdxApplicableLicenseExpression", align 8 ; 8 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit
  %.048 = phi i64 [ %i.ac, %_ZN5vcpkg31SpdxApplicableLicenseExpressionaSEOS0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.048, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph
  %i.q = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %i.s = icmp eq i64 %i.j, %i.l
  br i1 %i.s, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i64 %i.j, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !23
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.j)
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !252, !range !58, !noundef !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !252, !range !58, !noundef !59
  %i.ab = icmp samesign ult i8 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

bb.d:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg31SpdxApplicableLicenseExpressionESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.b, %bb.d
  %i.ac = phi i64 [ %i.g, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i ] ; 5 uses
  %i.ad = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ac ; 10 uses
  %i.ae = getelementptr inbounds [40 x i8], ptr %0, i64 %.048 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
end_hunk_5
