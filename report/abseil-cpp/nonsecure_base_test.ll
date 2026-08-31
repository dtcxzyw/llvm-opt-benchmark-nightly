Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/nonsecure_base_test?download=true
inline.NumInlined: 1789
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN59NonsecureURBGBase_EqualSeedSequencesYieldEqualVariates_Test8TestBodyEv:bb.a
bb.y:                                             ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEE7discardEy.exit56, %_ZN7testing15AssertionResultD2Ev.exit76
  %.081 = phi i32 [ 0, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEE7discardEy.exit56 ], [ %i.gn, %_ZN7testing15AssertionResultD2Ev.exit76 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.fl = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %2)
          to label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit58 unwind label %bb.ab

_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit58: ; preds = %bb.y
  store i64 %i.fl, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.fm = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit60 unwind label %bb.ac ; 2 uses

_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit60: ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit58
  store i64 %i.fm, ptr %i.d, align 8, !tbaa !73
  %i.fn = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !113
  %i.fo = icmp eq i64 %i.fn, %i.fm
  br i1 %i.fo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit60
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit63 unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit60
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit63 unwind label %bb.ac

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit63: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.fp = load i8, ptr %7, align 8, !tbaa !42, !range !36, !noundef !37
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.an, label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EENS1_17RandenPoolSeedSeqEEclEv.exit58
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.ac ], [ %i.fr, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ft = load ptr, ptr %i.fe, align 8, !tbaa !63 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i64, label %_ZNK7testing15AssertionResult15failure_messageEv.exit65, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !54
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit65

_ZNK7testing15AssertionResult15failure_messageEv.exit65: ; preds = %bb.ag, %bb.af
  %i.fv = phi ptr [ %i.fu, %bb.ag ], [ @.str.45, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 197, ptr noundef %i.fv)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit65
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.fw = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i66, label %_ZN7testing7MessageD2Ev.exit68, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.ai
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit68

_ZN7testing7MessageD2Ev.exit68:                   ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit71

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit65
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn18 = phi { ptr, i32 } [ %i.gc, %bb.al ], [ %i.gb, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.gd = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %bb.am
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !9
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70, %bb.am, %bb.aj
  %.pn18.pn = phi { ptr, i32 } [ %i.ga, %bb.aj ], [ %.pn18, %bb.am ], [ %.pn18, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #23
  br label %bb.ap

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit63, %_ZN7testing7MessageD2Ev.exit68
  %i.gh = load ptr, ptr %i.fe, align 8, !tbaa !63 ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i72, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73: ; preds = %bb.ao
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !59
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit76

_ZN7testing15AssertionResultD2Ev.exit76:          ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.gn = add nuw nsw i32 %.081, 1                ; 2 uses
  %exitcond83.not = icmp eq i32 %i.gn, 1000
  br i1 %exitcond83.not, label %bb.w, label %bb.y, !llvm.loop !118

bb.ap:                                            ; preds = %_ZN7testing7MessageD2Ev.exit71, %bb.ad
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %_ZN7testing7MessageD2Ev.exit71 ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.v, %bb.d
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.v ], [ %.pn18.pn.pn, %bb.ap ], [ %i.bd, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.c
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.aq ], [ %i.bc, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.go = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i77, label %_ZNSt8seed_seqD2Ev.exit78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !67
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #24
  br label %_ZNSt8seed_seqD2Ev.exit78

_ZNSt8seed_seqD2Ev.exit78:                        ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"class.std::unique_ptr.90", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_ptr.90", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::vector.25", align 8    ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::Mutex", align 8 ; 6 uses
  %6 = alloca %"class.std::vector.30", align 8    ; 10 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.absl::lts_20260526::flat_hash_set", align 8 ; 15 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 12, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 0, ptr %5, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.h = load ptr, ptr %6, align 8, !tbaa !121    ; 6 uses
  %.not114 = icmp eq ptr %i.h, %i.bu
  br i1 %.not114, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.i = phi ptr [ null, %bb.a ], [ %i.bu, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 6 uses
  %.014113 = phi i32 [ 0, %bb.a ], [ %i.bv, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ]
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !123
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %i.i, align 8, !tbaa !125
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc unwind label %.loopexit ; 4 uses

.noexc:                                           ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !129
  store ptr %i.k, ptr %3, align 8, !tbaa !131
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 %3, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %3, align 8, !tbaa !131    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #23, !inline_history !133
  br label %"_ZNSt6threadC2IZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !131    ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i5.i.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #23, !inline_history !133
  br label %.body

"_ZNSt6threadC2IZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !134
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

bb.g:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %6, align 8, !tbaa !135    ; 10 uses
  %i.y = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #25
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26
          to label %.noexc41 unwind label %.loopexit ; 11 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %i.aj, align 8, !tbaa !125
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc.i.i unwind label %bb.m ; 4 uses

.noexc.i.i:                                       ; preds = %.noexc41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %5, ptr %i.al, align 8, !tbaa !127
  %.sroa.6.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %4, ptr %.sroa.6.0..sroa_idx90, align 8, !tbaa !129
  store ptr %i.ak, ptr %2, align 8, !tbaa !131
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc.i.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !131   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #23, !inline_history !136
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !131   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i5.i.i.i, label %bb.o, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #23, !inline_history !136
  br label %bb.o

bb.k:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not10.i.i.i.i.i = icmp eq ptr %i.x, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.av = add i64 %i.y, -8
  %i.aw = sub i64 %i.av, %i.z                     ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ai, i64 8
  %i.az = add i64 %i.y, -8
  %i.ba = sub i64 %i.az, %i.z
  %i.bb = and i64 %i.ba, -8                       ; 2 uses
  %scevgep209 = getelementptr i8, ptr %scevgep, i64 %i.bb
  %scevgep210 = getelementptr i8, ptr %i.x, i64 8
  %scevgep211 = getelementptr i8, ptr %scevgep210, i64 %i.bb
  %bound0 = icmp ult ptr %i.ai, %scevgep211
  %bound1 = icmp ult ptr %i.x, %scevgep209
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.x, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.bf ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.x, i64 %i.bf ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.bg = getelementptr i8, ptr %next.gep212, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !73, !alias.scope !142, !noalias !137
  %wide.load213 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !73, !alias.scope !142, !noalias !137
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !73, !alias.scope !145, !noalias !142
  store <2 x i64> %wide.load213, ptr %i.bh, align 8, !tbaa !73, !alias.scope !145, !noalias !142
  store <2 x i64> zeroinitializer, ptr %next.gep212, align 8, !tbaa !73, !alias.scope !142, !noalias !137
  store <2 x i64> zeroinitializer, ptr %i.bg, align 8, !tbaa !73, !alias.scope !142, !noalias !137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@_ZN49NonsecureURBGBase_DistinctSequencesPerThread_Test8TestBodyEv:bb.a
  %.05.i.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.h, %bb.w ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !73
  %.not.i.i.i.i.i42 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i42, label %bb.r, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.r, %bb.b
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.h to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !151
  %i.cd = load ptr, ptr %4, align 8, !tbaa !154
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24                ; 2 uses
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !73
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !41, !noalias !155
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

.lr.ph:                                           ; preds = %bb.b, %bb.w
  %.sroa.085.0115 = phi ptr [ %i.cl, %bb.w ], [ %i.h, %bb.b ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0115)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.085.0115, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.bu
  br i1 %.not, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cn = load i8, ptr %7, align 8, !tbaa !42, !range !36, !noundef !37
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ai, label %bb.z

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i, %bb.f, %bb.x
  %.pn37 = phi { ptr, i32 } [ %i.cm, %bb.x ], [ %i.bo, %bb.n ], [ %i.q, %bb.f ], [ %i.q, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bn

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ak

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.ct = phi ptr [ %i.cs, %bb.ab ], [ @.str.45, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 224, ptr noundef %i.ct)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cu = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.da, %bb.ag ], [ %i.cz, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.db = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.ah
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.ah, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #23
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !59
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 1, ptr %10, align 8
  %i.dm = load ptr, ptr %4, align 8, !tbaa !160   ; 2 uses
  %i.dn = load ptr, ptr %i.cb, align 8, !tbaa !160 ; 2 uses
  %.not103121 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not103121, label %._crit_edge125.thread, label %.lr.ph124

._crit_edge125.thread:                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 -1, ptr %i.e, align 8, !tbaa !73
  br label %bb.av

.lr.ph124:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit49, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %i.cp, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bn

bb.al:                                            ; preds = %.lr.ph124, %._crit_edge120
  %.pre135 = phi i64 [ 1, %.lr.ph124 ], [ %.pre135138, %._crit_edge120 ] ; 3 uses
  %i.dr = phi i64 [ 1, %.lr.ph124 ], [ %i.ea, %._crit_edge120 ]
  %.0123 = phi i64 [ 0, %.lr.ph124 ], [ %i.dz, %._crit_edge120 ]
  %.sroa.081.0122 = phi ptr [ %i.dm, %.lr.ph124 ], [ %i.eb, %._crit_edge120 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.081.0122, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !161 ; 3 uses
  %i.du = load ptr, ptr %.sroa.081.0122, align 8, !tbaa !164 ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3
  %i.dz = add i64 %i.dy, %.0123                   ; 2 uses
  %.not104116 = icmp eq ptr %i.du, %i.dt
  br i1 %.not104116, label %._crit_edge120, label %.lr.ph119

._crit_edge120:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit, %bb.al
  %.pre135138 = phi i64 [ %.pre135, %bb.al ], [ %.pre135139, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit ]
  %i.ea = phi i64 [ %i.dr, %bb.al ], [ %i.fy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.081.0122, i64 24 ; 2 uses
  %.not103 = icmp eq ptr %i.eb, %i.dn
  br i1 %.not103, label %._crit_edge125, label %bb.al

.lr.ph119:                                        ; preds = %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit
  %.pre135136 = phi i64 [ %.pre135139, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %.pre135, %bb.al ] ; 2 uses
  %i.ec = phi i64 [ %i.fy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %.pre135, %bb.al ] ; 7 uses
  %.sroa.077.0117 = phi ptr [ %i.fz, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit ], [ %i.du, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ed = load i64, ptr %.sroa.077.0117, align 8, !tbaa !73 ; 4 uses
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !73
  %i.ee = and i64 %i.ec, 254
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.lr.ph119
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ec, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i, label %bb.an

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.eg = or i64 %i.ec, 131328
  store i64 %i.eg, ptr %10, align 8, !noalias !165
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.an:                                            ; preds = %bb.am
  %i.eh = load i64, ptr %i.do, align 8, !tbaa !73, !noalias !165
  %i.ei = icmp eq i64 %i.eh, %i.ed
  br i1 %i.ei, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !165
  store ptr %10, ptr %1, align 8, !tbaa !184, !noalias !165
  store ptr %i.c, ptr %i.dq, align 8, !tbaa !186, !noalias !165
  %i.ej = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc51 unwind label %bb.at

.noexc51:                                         ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !165
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !59, !noalias !165
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.ej
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.ap:                                            ; preds = %.lr.ph119
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !59, !noalias !187 ; 3 uses
  %i.el = and i64 %i.ec, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.el
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !187
  %i.em = lshr i64 %i.ec, 8
  %i.en = and i64 %i.em, 255
  %i.eo = xor i64 %i.en, %i.ed
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw nsw i128 %i.ep, 8779197792823184629 ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = xor i128 %i.er, %i.eq
  %i.et = trunc i128 %i.es to i64                 ; 3 uses
  %i.eu = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ev = lshr i64 %i.et, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8
  %.sroa.0.0.copyload.i.i.i3.i = load ptr, ptr %i.dp, align 8, !tbaa !59, !noalias !187 ; 2 uses
  %i.ex = insertelement <16 x i8> poison, i8 %i.ew, i64 0
  %i.ey = shufflevector <16 x i8> %i.ex, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.pn.i = phi i64 [ %i.et, %bb.ap ], [ %i.fw, %bb.as ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.ap ], [ %i.fv, %bb.as ] ; 2 uses
  %.sroa.639.0.i = and i64 %.pn.i, %i.eu          ; 5 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %.sroa.639.0.i
  call void @llvm.prefetch.p0(ptr %i.ez, i32 0, i32 3, i32 1), !noalias !187
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.639.0.i
  %i.fb = load <16 x i8>, ptr %i.fa, align 1, !tbaa !59, !noalias !187 ; 2 uses
  %i.fc = icmp eq <16 x i8> %i.ey, %i.fb
  %i.fd = bitcast <16 x i1> %i.fc to i16
  %i.fe = zext i16 %i.fd to i32
  %i.ff = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fe) #28, !srcloc !190 ; 2 uses
  %.not67.i = icmp eq i32 %i.ff, 0
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.critedge.i.i
  %.sroa.024.068.i = phi i32 [ %i.fo, %.critedge.i.i ], [ %i.ff, %bb.aq ] ; 3 uses
  %i.fg = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.068.i, i1 true)
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = add nuw i64 %.sroa.639.0.i, %i.fh
  %i.fj = and i64 %i.fi, %i.eu
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !73, !noalias !187
  %i.fm = icmp eq i64 %i.fl, %i.ed
  br i1 %i.fm, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i, label %.critedge.i.i, !prof !191

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.fn = add i32 %.sroa.024.068.i, -1
  %i.fo = and i32 %i.fn, %.sroa.024.068.i         ; 2 uses
  %.not.i74 = icmp eq i32 %i.fo, 0
  br i1 %.not.i74, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.aq
  %i.fp = icmp eq <16 x i8> %i.fb, splat (i8 -128)
  %i.fq = bitcast <16 x i1> %i.fp to i16
  %i.fr = zext i16 %i.fq to i32
  %i.fs = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fr) #28, !srcloc !190 ; 2 uses
  %.not61.i = icmp eq i32 %i.fs, 0
  br i1 %.not61.i, label %bb.as, label %bb.ar, !prof !76

bb.ar:                                            ; preds = %._crit_edge.i
  %i.ft = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.et, i32 %i.fs, i64 %.sroa.639.0.i, i64 %.sroa.14.0.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96 unwind label %bb.at

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96: ; preds = %bb.ar
  %.sroa.0.0.copyload.i.i.i2.i.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !59, !noalias !187
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.pre.i, i64 %i.ft
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.as:                                            ; preds = %._crit_edge.i
  %i.fv = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.639.0.i
  br label %bb.aq

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i, %.noexc51, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96
  %.sroa.5.093 = phi ptr [ %i.fu, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread96 ], [ %i.do, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ek, %.noexc51 ]
  %i.fx = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !192
  store i64 %i.fx, ptr %.sroa.5.093, align 8, !tbaa !73
  %.pre = load i64, ptr %10, align 8, !noalias !193 ; 2 uses
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE6insertImLi0EEESt4pairINS5_8iteratorEbERKT_.exit: ; preds = %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.pre135139 = phi i64 [ %.pre135136, %bb.an ], [ %.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %.pre135136, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.fy = phi i64 [ %i.ec, %bb.an ], [ %.pre, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread ], [ %i.ec, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE22find_or_prepare_insertImEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.077.0117, i64 8 ; 2 uses
  %.not104 = icmp eq ptr %i.fz, %i.dt
  br i1 %.not104, label %._crit_edge120, label %.lr.ph119

bb.at:                                            ; preds = %bb.ar, %bb.ao
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.bm

._crit_edge125:                                   ; preds = %._crit_edge120
  %i.gb = lshr i64 %i.ea, 17                      ; 2 uses
  %i.gc = add i64 %i.dz, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.gb, ptr %i.d, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.gc, ptr %i.e, align 8, !tbaa !73
  %.not.i53 = icmp ult i64 %i.gb, %i.gc
  br i1 %.not.i53, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge125
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aw

bb.av:                                            ; preds = %._crit_edge125.thread, %._crit_edge125
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.65)
          to label %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.aw

_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.gd = load i8, ptr %11, align 8, !tbaa !42, !range !36, !noundef !37
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bg, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.bl

bb.ax:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !63 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i56, label %_ZNK7testing15AssertionResult15failure_messageEv.exit57, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit57

_ZNK7testing15AssertionResult15failure_messageEv.exit57: ; preds = %bb.az, %bb.ay
  %i.gj = phi ptr [ %i.gi, %bb.az ], [ @.str.45, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 233, ptr noundef %i.gj)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit57
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.gk = load ptr, ptr %12, align 8, !tbaa !60   ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i58, label %_ZN7testing7MessageD2Ev.exit60, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.bb
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(128) %i.gk) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit60

_ZN7testing7MessageD2Ev.exit60:                   ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit63

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit57
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn31 = phi { ptr, i32 } [ %i.gq, %bb.be ], [ %i.gp, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.gr = load ptr, ptr %12, align 8, !tbaa !60   ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit63, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.bf
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(128) %i.gr) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit63

_ZN7testing7MessageD2Ev.exit63:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.bf, %bb.bc
  %.pn31.pn = phi { ptr, i32 } [ %i.go, %bb.bc ], [ %.pn31, %bb.bf ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  br label %bb.bl

bb.bg:                                            ; preds = %_ZN7testing8internal11CmpHelperGEImmEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit60
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !63 ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i64, label %_ZN7testing15AssertionResultD2Ev.exit68, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !54 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65: ; preds = %bb.bh
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !59
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i65
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit68

_ZN7testing15AssertionResultD2Ev.exit68:          ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.hc = load i64, ptr %10, align 8              ; 3 uses
  %i.hd = and i64 %i.hc, 255                      ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.hd      ; 4 uses
  %i.he = add nsw i64 %notmask.i.i.i.i.i, 281474976710655
  %i.hf = or i64 %i.he, %notmask.i.i.i.i.i
  %i.hg = icmp eq i64 %i.hf, -1
  call void @llvm.assume(i1 %i.hg)
  %i.hh = icmp ne i64 %i.hd, 0
  call void @llvm.assume(i1 %i.hh)
  %i.hi = icmp samesign ugt i64 %notmask.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.hi)
  %i.hj = and i64 %i.hc, 254
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit68
  %14 = xor i64 %notmask.i.i.i.i.i, -1
  %15 = and i64 %i.hc, 65536
  %.phi.trans.insert.i.i.i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.a, align 8, !tbaa !59
  %i.hl = icmp ne i64 %15, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %14, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.hl)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i.i
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #27
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit68, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ho = load ptr, ptr %4, align 8, !tbaa !154   ; 3 uses
  %i.hp = load ptr, ptr %i.cb, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i.i70 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not4.i.i.i70, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i71 = phi ptr [ %i.hw, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.ho, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit ] ; 3 uses
  %i.hq = load ptr, ptr %.05.i.i.i71, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i71, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !194
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #24
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i71, i64 24 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.hw, %i.hp
  br i1 %.not.i.i.i72, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !195

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit
  %i.hx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ho, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i73 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i1.i73, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !196
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #24
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit63, %bb.aw
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZN7testing7MessageD2Ev.exit63 ], [ %i.gf, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.at
  %.pn35 = phi { ptr, i32 } [ %i.ga, %bb.at ], [ %.pn31.pn.pn, %bb.bl ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ak, %.body
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body ], [ %.pn35, %bb.bm ], [ %.pn.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn37.pn
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !150

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !73
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #24
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE15destructor_implEv.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %1 = xor i64 %notmask.i.i.i.i, -1
  %2 = and i64 %i.a, 65536
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i.a, align 8, !tbaa !59
  %i.j = icmp ne i64 %2, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.j)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE15destructor_implEv.exit unwind label %bb.b

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE15destructor_implEv.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE7deallocEv.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !194
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !195

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !196
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorImSaImEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN44RandenPoolSeedSeqTest_SeederWorksForU32_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 7 uses
  %1 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8
  call void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 %i.f, i1 false        ; 2 uses
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %1, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.j, align 8, !tbaa !52
  br i1 %i.g, label %bb.b, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  store i64 %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.k, ptr %i.n, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, i64 81, ptr nonnull @.str.2, i32 noundef 241, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  %i.o = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !59
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.t = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #23, !inline_history !62
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit14

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.i:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.k
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !59
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ag = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i12, label %_ZN7testing7MessageD2Ev.exit14, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #23, !inline_history !62
  br label %_ZN7testing7MessageD2Ev.exit14

_ZN7testing7MessageD2Ev.exit14:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn
end_hunk_1
begin_hunk_2_@_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.f = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !59
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIimEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !59
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.r = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !59
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !41
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !244, !alias.scope !282
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !58, !alias.scope !282
  store i8 0, ptr %i.d, align 8, !tbaa !59, !alias.scope !282
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252, !noalias !282 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !282 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !254, !noalias !282 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !54, !alias.scope !282 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !59, !alias.scope !282
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIiE5PrintERKiPSo.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !9
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !9
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #23
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !9
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !255
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #0

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashImEEmLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !73
  %i.b = xor i64 %i.a, %2
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #19 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyImEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !59 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #28, !srcloc !190 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !283

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bg, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !73
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !191

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !191

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !59
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #28, !srcloc !190 ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !76

bb.g:                                             ; preds = %bb.f
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add nuw i64 %i.as, %i.ba
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ak, i64 noundef %i.x, i64 noundef %i.ai)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bb, %bb.g ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ak, ptr %i.bc, align 1, !tbaa !284
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.be = load i64, ptr %i.y, align 8
  store i64 %i.be, ptr %i.bd, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = add i32 %.sroa.052.061, -1
  %i.bg = and i32 %i.bf, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashImEEmLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !nonnull !37, !align !263
  %i.c = load i64, ptr %i.b, align 8, !tbaa !73
  %i.d = xor i64 %i.c, %1
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #20

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #0

declare void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_nonsecure_base_test.cc() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %31 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_2
