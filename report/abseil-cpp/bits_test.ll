Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/bits_test?download=true
inline.NumInlined: 3139
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2026052612_GLOBAL__N_117Rotate_Right_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !53 ; 4 uses
  %.not.i.i378 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i378, label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit383, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !20 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i379: ; preds = %bb.hl
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !21
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i380

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i380: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i379
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef 32) #25
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit383

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit383: ; preds = %bb.hk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61)
  %i.rm = load i8, ptr %61, align 8, !tbaa !50, !range !51, !noundef !52
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.hv, label %bb.hm

bb.hm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit383
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.hn unwind label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  %i.ro = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !53 ; 2 uses
  %.not.i.i384 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i384, label %_ZNK7testing15AssertionResult15failure_messageEv.exit385, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit385

_ZNK7testing15AssertionResult15failure_messageEv.exit385: ; preds = %bb.ho, %bb.hn
  %i.rr = phi ptr [ %i.rq, %bb.ho ], [ @.str, %bb.hn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 198, ptr noundef %i.rr)
          to label %bb.hp unwind label %bb.hs

bb.hp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit385
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.hq unwind label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.rs = load ptr, ptr %62, align 8, !tbaa !55   ; 3 uses
  %.not.i.i386 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i386, label %_ZN7testing7MessageD2Ev.exit388, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387: ; preds = %bb.hq
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !30
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(128) %i.rs) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit388

_ZN7testing7MessageD2Ev.exit388:                  ; preds = %bb.hq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  br label %bb.hv

bb.hr:                                            ; preds = %bb.hm
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit391

bb.hs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit385
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hp
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #21
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.pn111 = phi { ptr, i32 } [ %i.ry, %bb.ht ], [ %i.rx, %bb.hs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.rz = load ptr, ptr %62, align 8, !tbaa !55   ; 3 uses
  %.not.i.i389 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i389, label %_ZN7testing7MessageD2Ev.exit391, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390: ; preds = %bb.hu
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !30
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(128) %i.rz) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit391

_ZN7testing7MessageD2Ev.exit391:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390, %bb.hu, %bb.hr
  %.pn111.pn = phi { ptr, i32 } [ %i.rw, %bb.hr ], [ %.pn111, %bb.hu ], [ %.pn111, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i390 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.hx

bb.hv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit383, %_ZN7testing7MessageD2Ev.exit388
  %i.sd = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !53 ; 4 uses
  %.not.i.i392 = icmp eq ptr %i.se, null
  br i1 %.not.i.i392, label %_ZN7testing15AssertionResultD2Ev.exit396, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !20 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393: ; preds = %bb.hw
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !21
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394: ; preds = %bb.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i393
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit396

_ZN7testing15AssertionResultD2Ev.exit396:         ; preds = %bb.hv, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  ret void

bb.hx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit391, %_ZN7testing7MessageD2Ev.exit377, %_ZN7testing7MessageD2Ev.exit363, %_ZN7testing7MessageD2Ev.exit349, %_ZN7testing7MessageD2Ev.exit335, %_ZN7testing7MessageD2Ev.exit321, %_ZN7testing7MessageD2Ev.exit307, %_ZN7testing7MessageD2Ev.exit293, %_ZN7testing7MessageD2Ev.exit279, %_ZN7testing7MessageD2Ev.exit265, %_ZN7testing7MessageD2Ev.exit251, %_ZN7testing7MessageD2Ev.exit237, %_ZN7testing7MessageD2Ev.exit223, %_ZN7testing7MessageD2Ev.exit209, %_ZN7testing7MessageD2Ev.exit195, %_ZN7testing7MessageD2Ev.exit181, %_ZN7testing7MessageD2Ev.exit167, %_ZN7testing7MessageD2Ev.exit153, %_ZN7testing7MessageD2Ev.exit140, %_ZN7testing7MessageD2Ev.exit127, %_ZN7testing7MessageD2Ev.exit118
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %_ZN7testing7MessageD2Ev.exit391 ], [ %.pn108.pn, %_ZN7testing7MessageD2Ev.exit377 ], [ %.pn105.pn, %_ZN7testing7MessageD2Ev.exit363 ], [ %.pn102.pn, %_ZN7testing7MessageD2Ev.exit349 ], [ %.pn99.pn, %_ZN7testing7MessageD2Ev.exit335 ], [ %.pn96.pn, %_ZN7testing7MessageD2Ev.exit321 ], [ %.pn93.pn, %_ZN7testing7MessageD2Ev.exit307 ], [ %.pn90.pn, %_ZN7testing7MessageD2Ev.exit293 ], [ %.pn87.pn, %_ZN7testing7MessageD2Ev.exit279 ], [ %.pn84.pn, %_ZN7testing7MessageD2Ev.exit265 ], [ %.pn81.pn, %_ZN7testing7MessageD2Ev.exit251 ], [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit237 ], [ %.pn75.pn, %_ZN7testing7MessageD2Ev.exit223 ], [ %.pn72.pn, %_ZN7testing7MessageD2Ev.exit209 ], [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn66.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %.pn63.pn, %_ZN7testing7MessageD2Ev.exit167 ], [ %.pn60.pn, %_ZN7testing7MessageD2Ev.exit153 ], [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit140 ], [ %.pn54.pn, %_ZN7testing7MessageD2Ev.exit127 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit118 ]
  resume { ptr, i32 } %.pn111.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052612_GLOBAL__N_120Rotate_Symmetry_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052612_GLOBAL__N_120Rotate_Symmetry_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052612_GLOBAL__N_120Rotate_Symmetry_TestE, i64 16), ptr %i.a, align 8, !tbaa !30
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052612_GLOBAL__N_120Rotate_Symmetry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052612_GLOBAL__N_120Rotate_Symmetry_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.absl::lts_20260526::random_internal::UniformDistributionWrapper.47", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.absl::lts_20260526::random_internal::UniformDistributionWrapper.42", align 4 ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.absl::lts_20260526::random_internal::UniformDistributionWrapper", align 2 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::random_internal::RandenPoolSeedSeq", align 1 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::BitGen", align 8 ; 16 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i16, align 2                      ; 4 uses
  %i.n = alloca i16, align 2                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !167
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 272
  call void @_ZN4absl12lts_2026052615random_internal6RandenC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i64 32, ptr %i.r, align 8, !tbaa !66, !alias.scope !167
  %i.s = ptrtoint ptr %5 to i64
  %i.t = and i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.u, i8 0, i64 256, i1 false), !alias.scope !167
  call void @_ZN4absl12lts_2026052615random_internal13randen_engineImE6reseedINS1_17RandenPoolSeedSeqEEEvRT_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !167
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.b

.preheader106:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.p

bb.b:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %.037107 = phi i32 [ 0, %bb.a ], [ %i.bi, %_ZN7testing15AssertionResultD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i8 0, ptr %3, align 2, !tbaa !169
  store i8 -2, ptr %i.v, align 1, !tbaa !170
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %3, align 2 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i16 %.sroa.0.0.copyload.i.i.i.i.i to i8
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i16 %.sroa.0.0.copyload.i.i.i.i.i, 8
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc nuw i16 %.sroa.4.0.extract.shift.i.i.i.i to i8
  %i.z = call noundef zeroext i8 @_ZN4absl12lts_2026052624uniform_int_distributionIhE8GenerateINS0_6BitGenEEEhRT_h(ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(288) %5, i8 noundef zeroext %.sroa.4.0.extract.trunc.i.i.i.i)
  %i.aa = add i8 %i.z, %.sroa.0.0.extract.trunc.i.i.i.i ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 -16, ptr %i.i, align 4, !tbaa !63
  store i32 16, ptr %i.j, align 4, !tbaa !63
  %i.ab = call noundef i32 @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIiEEJRiS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.ac = and i32 %i.ab, 7
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = trunc i32 %i.ab to i8
  %i.af = call i8 @llvm.fshl.i8(i8 %i.aa, i8 %i.aa, i8 %i.ae)
  %.0.i.i = select i1 %i.ad, i8 %i.aa, i8 %i.af   ; 2 uses
  store i8 %.0.i.i, ptr %i.k, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.ag = sub nsw i32 0, %i.ab                    ; 2 uses
  %i.ah = and i32 %i.ag, 7
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = trunc i32 %i.ag to i8
  %i.ak = call i8 @llvm.fshr.i8(i8 %i.aa, i8 %i.aa, i8 %i.aj)
  %.0.i.i50 = select i1 %i.ai, i8 %i.aa, i8 %i.ak ; 2 uses
  store i8 %.0.i.i50, ptr %i.l, align 1, !tbaa !21
  %i.al = icmp eq i8 %.0.i.i, %.0.i.i50
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN7testing8internal18CmpHelperEQFailureIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  %i.am = load i8, ptr %6, align 8, !tbaa !50, !range !51, !noundef !52
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !53  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ @.str, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef %i.aq)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ar = load ptr, ptr %7, align 8, !tbaa !55    ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit54

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn46 = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ay = load ptr, ptr %7, align 8, !tbaa !55    ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i52, label %_ZN7testing7MessageD2Ev.exit54, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53: ; preds = %bb.m
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit54

_ZN7testing7MessageD2Ev.exit54:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53, %bb.m, %bb.j
  %.pn46.pn = phi { ptr, i32 } [ %i.av, %bb.j ], [ %.pn46, %bb.m ], [ %.pn46, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.be

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !53  ; 4 uses
  %.not.i.i55 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i55, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !21
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bi = add nuw nsw i32 %.037107, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, 100
  br i1 %exitcond.not, label %.preheader106, label %bb.b, !llvm.loop !163

.preheader105:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit74
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  br label %bb.ad

bb.p:                                             ; preds = %.preheader106, %_ZN7testing15AssertionResultD2Ev.exit74
  %.026108 = phi i32 [ 0, %.preheader106 ], [ %i.ct, %_ZN7testing15AssertionResultD2Ev.exit74 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i16 0, ptr %2, align 4, !tbaa !172
  store i16 -2, ptr %i.x, align 2, !tbaa !173
  %.sroa.0.0.copyload.i.i.i.i.i56 = load i32, ptr %2, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i57 = trunc i32 %.sroa.0.0.copyload.i.i.i.i.i56 to i16
  %.sroa.4.0.extract.shift.i.i.i.i58 = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i56, 16
  %.sroa.4.0.extract.trunc.i.i.i.i59 = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i.i58 to i16
  %i.bk = call noundef zeroext i16 @_ZN4absl12lts_2026052624uniform_int_distributionItE8GenerateINS0_6BitGenEEEtRT_t(ptr noundef nonnull align 2 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(288) %5, i16 noundef zeroext %.sroa.4.0.extract.trunc.i.i.i.i59)
  %i.bl = add i16 %i.bk, %.sroa.0.0.extract.trunc.i.i.i.i57 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 -32, ptr %i.g, align 4, !tbaa !63
  store i32 32, ptr %i.h, align 4, !tbaa !63
  %i.bm = call noundef i32 @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIiEEJRiS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  %i.bn = and i32 %i.bm, 15
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = trunc i32 %i.bm to i16
  %i.bq = call i16 @llvm.fshl.i16(i16 %i.bl, i16 %i.bl, i16 %i.bp)
  %.0.i.i60 = select i1 %i.bo, i16 %i.bl, i16 %i.bq ; 2 uses
  store i16 %.0.i.i60, ptr %i.m, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  %i.br = sub nsw i32 0, %i.bm                    ; 2 uses
  %i.bs = and i32 %i.br, 15
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = trunc i32 %i.br to i16
  %i.bv = call i16 @llvm.fshr.i16(i16 %i.bl, i16 %i.bl, i16 %i.bu)
  %.0.i.i61 = select i1 %i.bt, i16 %i.bl, i16 %i.bv ; 2 uses
  store i16 %.0.i.i61, ptr %i.n, align 2, !tbaa !62
  %i.bw = icmp eq i16 %.0.i.i60, %.0.i.i61
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZN7testing8internal18CmpHelperEQFailureIttEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull align 2 dereferenceable(2) %i.m, ptr noundef nonnull align 2 dereferenceable(2) %i.n)
  br label %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  %i.bx = load i8, ptr %9, align 8, !tbaa !50, !range !51, !noundef !52
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !53  ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i62, label %_ZNK7testing15AssertionResult15failure_messageEv.exit63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit63

_ZNK7testing15AssertionResult15failure_messageEv.exit63: ; preds = %bb.u, %bb.t
  %i.cb = phi ptr [ %i.ca, %bb.u ], [ @.str, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef %i.cb)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit63
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.cc = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.w
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit69

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit63
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn43 = phi { ptr, i32 } [ %i.ci, %bb.z ], [ %i.ch, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.cj = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i67, label %_ZN7testing7MessageD2Ev.exit69, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.aa
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(128) %i.cj) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit69

_ZN7testing7MessageD2Ev.exit69:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, %bb.aa, %bb.x
  %.pn43.pn = phi { ptr, i32 } [ %i.cg, %bb.x ], [ %.pn43, %bb.aa ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.be

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIttTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit66
  %i.cn = load ptr, ptr %i.y, align 8, !tbaa !53  ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i70, label %_ZN7testing15AssertionResultD2Ev.exit74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %bb.ac
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit74

_ZN7testing15AssertionResultD2Ev.exit74:          ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ct = add nuw nsw i32 %.026108, 1             ; 2 uses
  %exitcond111.not.a = icmp eq i32 %i.ct, 100
  br i1 %exitcond111.not.a, label %.preheader105, label %bb.p, !llvm.loop !164

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit89
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  br label %bb.aq

bb.ad:                                            ; preds = %.preheader105, %_ZN7testing15AssertionResultD2Ev.exit89
  %.025109 = phi i32 [ 0, %.preheader105 ], [ %i.ds, %_ZN7testing15AssertionResultD2Ev.exit89 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.e, align 4, !tbaa !63
  store i32 -1, ptr %i.f, align 4, !tbaa !63
  %i.cw = call noundef i32 @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIjEEJRjS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 -64, ptr %i.c, align 4, !tbaa !63
  store i32 64, ptr %i.d, align 4, !tbaa !63
  %i.cx = call noundef i32 @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIiEEJRiS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
  %18 = load i8, ptr %12, align 8, !tbaa !50, !range !51, !noundef !52
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !53 ; 2 uses
  %.not.i.i77.a = icmp eq ptr %i.cy, null
  br i1 %.not.i.i77.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit78, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit78

_ZNK7testing15AssertionResult15failure_messageEv.exit78: ; preds = %bb.ag, %bb.af
  %i.da = phi ptr [ %i.cz, %bb.ag ], [ @.str, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 230, ptr noundef %i.da)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit78
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.db = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.db, null
  br i1 %.not.i.i79, label %_ZN7testing7MessageD2Ev.exit81, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80: ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit81

_ZN7testing7MessageD2Ev.exit81:                   ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit84

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit78
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn40 = phi { ptr, i32 } [ %i.dh, %bb.al ], [ %i.dg, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.di = load ptr, ptr %13, align 8, !tbaa !55   ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.di, null
  br i1 %.not.i.i82, label %_ZN7testing7MessageD2Ev.exit84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.am
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, %bb.am, %bb.aj
  %.pn40.pn = phi { ptr, i32 } [ %i.df, %bb.aj ], [ %.pn40, %bb.am ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.be

bb.an:                                            ; preds = %bb.ad, %_ZN7testing7MessageD2Ev.exit81
  %i.dm = load ptr, ptr %i.bj, align 8, !tbaa !53 ; 4 uses
  %.not.i.i85 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i85, label %_ZN7testing15AssertionResultD2Ev.exit89, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86: ; preds = %bb.ao
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !21
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i86
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit89

_ZN7testing15AssertionResultD2Ev.exit89:          ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.ds = add nuw nsw i32 %.025109, 1             ; 2 uses
  %exitcond112.not = icmp eq i32 %i.ds, 100
  br i1 %exitcond112.not, label %.preheader, label %bb.ad, !llvm.loop !165

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.aq:                                            ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit104
  %.0110 = phi i32 [ 0, %.preheader ], [ %i.ev, %_ZN7testing15AssertionResultD2Ev.exit104 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i64 0, ptr %1, align 8, !tbaa !175
  store i64 -2, ptr %i.cu, align 8, !tbaa !176
  %i.dt = call noundef i64 @_ZN4absl12lts_2026052624uniform_int_distributionImEclINS0_6BitGenEEEmRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(288) %5) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 -128, ptr %i.a, align 4, !tbaa !63
  store i32 128, ptr %i.b, align 4, !tbaa !63
  %i.du = call noundef i32 @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIiEEJRiS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  %i.dv = zext i32 %i.du to i64
  %.0.i.i90 = call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 %i.dv) ; 2 uses
  store i64 %.0.i.i90, ptr %i.o, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #21
  %i.dw = sub nsw i32 0, %i.du
  %i.dx = zext i32 %i.dw to i64
  %.0.i.i91 = call noundef i64 @llvm.fshr.i64(i64 %i.dt, i64 %i.dt, i64 %i.dx) ; 2 uses
  store i64 %.0.i.i91, ptr %i.p, align 8, !tbaa !18
  %i.dy = icmp eq i64 %.0.i.i90, %.0.i.i91
  br i1 %i.dy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.as:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #21
  %i.dz = load i8, ptr %15, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.eb = load ptr, ptr %i.cv, align 8, !tbaa !53 ; 2 uses
  %.not.i.i92.a = icmp eq ptr %i.eb, null
  br i1 %.not.i.i92.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit93, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit93

_ZNK7testing15AssertionResult15failure_messageEv.exit93: ; preds = %bb.av, %bb.au
  %i.ed = phi ptr [ %i.ec, %bb.av ], [ @.str, %bb.au ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef %i.ed)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.ee = load ptr, ptr %16, align 8, !tbaa !55   ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i94, label %_ZN7testing7MessageD2Ev.exit96, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.ax
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit96

_ZN7testing7MessageD2Ev.exit96:                   ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.bc

bb.ay:                                            ; preds = %bb.at
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ba ], [ %i.ej, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.el = load ptr, ptr %16, align 8, !tbaa !55   ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.el, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.bb
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.el) #21, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98, %bb.bb, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.ay ], [ %.pn, %bb.bb ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.be

bb.bc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit96
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !53 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !20 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.bd
  %i.et = load i64, ptr %i.er, align 8, !tbaa !21
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ev = add nuw nsw i32 %.0110, 1               ; 2 uses
  %exitcond113.not = icmp eq i32 %i.ev, 100
  br i1 %exitcond113.not, label %bb.ap, label %bb.aq, !llvm.loop !166

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99, %_ZN7testing7MessageD2Ev.exit84, %_ZN7testing7MessageD2Ev.exit69, %_ZN7testing7MessageD2Ev.exit54
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %_ZN7testing7MessageD2Ev.exit54 ], [ %.pn43.pn, %_ZN7testing7MessageD2Ev.exit69 ], [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit84 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn46.pn.pn
}

declare void @_ZN4absl12lts_2026052615random_internal6RandenC1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052615random_internal13randen_engineImE6reseedINS1_17RandenPoolSeedSeqEEEvRT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 {
_ZN4absl12lts_2026052615random_internal17RandenPoolSeedSeq8generateIPjEEvT_S5_.exit:
  %i.a = alloca [60 x i32], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %scevgep, i8 0, i64 208, i1 false), !tbaa !63
  call void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 32)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load <4 x i32>, ptr %i.c, align 16, !tbaa !63
  %i.f = load <4 x i32>, ptr %i.d, align 16, !tbaa !63
  store <4 x i32> %i.f, ptr %i.c, align 16, !tbaa !63
  store <4 x i32> %i.e, ptr %i.d, align 16, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.l = load <4 x i32>, ptr %i.j, align 16, !tbaa !63
  %i.m = load <4 x i32>, ptr %i.k, align 16, !tbaa !63
  store <4 x i32> %i.m, ptr %i.j, align 16, !tbaa !63
  store <4 x i32> %i.l, ptr %i.k, align 16, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.p, align 16, !tbaa !63
  %i.r = load <4 x i32>, ptr %i.g, align 16, !tbaa !63
  %i.s = load <4 x i32>, ptr %i.h, align 16, !tbaa !63
  store <4 x i32> %i.q, ptr %i.i, align 16, !tbaa !63
  store <4 x i32> %i.s, ptr %i.g, align 16, !tbaa !63
  store <4 x i32> %i.r, ptr %i.p, align 16, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load <4 x i32>, ptr %i.t, align 16, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load <4 x i32>, ptr %i.a, align 16, !tbaa !63
  store <4 x i32> %i.w, ptr %i.v, align 16, !tbaa !63
  %i.x = load <4 x i32>, ptr %i.b, align 16, !tbaa !63
  %i.y = load <4 x i32>, ptr %i.n, align 16, !tbaa !63
  store <4 x i32> %i.u, ptr %i.o, align 16, !tbaa !63
  store <4 x i32> %i.y, ptr %i.b, align 16, !tbaa !63
  store <4 x i32> %i.x, ptr %i.a, align 16, !tbaa !63
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = and i64 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !67, !range !51, !noundef !52
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4absl12lts_2026052615random_internal17RandenPoolSeedSeq8generateIPjEEvT_S5_.exit
  call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes6AbsorbEPKvPv(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab)
  br label %_ZNK4absl12lts_2026052615random_internal6Randen6AbsorbEPKvPv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052615random_internal17RandenPoolSeedSeq8generateIPjEEvT_S5_.exit
  call void @_ZN4absl12lts_2026052615random_internal10RandenSlow6AbsorbEPKvPv(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab)
  br label %_ZNK4absl12lts_2026052615random_internal6Randen6AbsorbEPKvPv.exit

_ZNK4absl12lts_2026052615random_internal6Randen6AbsorbEPKvPv.exit: ; preds = %bb.a, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 32, ptr %i.af, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2026052615random_internal11RandenHwAes6AbsorbEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2026052615random_internal10RandenSlow6AbsorbEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4absl12lts_2026052624uniform_int_distributionIhE8GenerateINS0_6BitGenEEEhRT_h(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i8 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::random_internal::FastUniformBits", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp ugt i64 %i.e, 31
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i8, ptr %i.h, align 8, !tbaa !67, !range !51, !noundef !52
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit

_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = add i8 %2, 1                             ; 4 uses
  %i.q = and i8 %i.p, %2
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit
  %i.s = trunc i64 %i.o to i8
  %i.t = and i8 %2, %i.s
  br label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_.exit
  %i.u = trunc i64 %i.o to i16
  %i.v = and i16 %i.u, 255
  %i.w = zext i8 %i.p to i16                      ; 2 uses
  %i.x = mul nuw i16 %i.v, %i.w                   ; 4 uses
  %i.y = trunc i16 %i.x to i8
  %i.z = icmp ugt i8 %i.p, %i.y
  br i1 %i.z, label %bb.g, label %.loopexit, !prof !69

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc = xor i8 %2, -1
  %i.aa = urem i8 %.lhs.trunc, %i.p
  %i.ab = zext i8 %i.aa to i16                    ; 2 uses
  %i.ac = and i16 %i.x, 255
  %i.ad = icmp samesign ult i16 %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.ae = call noundef zeroext i8 @_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(288) %1)
  %i.af = zext i8 %i.ae to i16
  %i.ag = mul nuw i16 %i.af, %i.w                 ; 2 uses
  %i.ah = and i16 %i.ag, 255
  %i.ai = icmp samesign ult i16 %i.ah, %i.ab
  br i1 %i.ai, label %.lr.ph, label %.loopexit, !llvm.loop !177

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.f
  %.1 = phi i16 [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.ag, %.lr.ph ]
  %i.aj = lshr i16 %.1, 8
  %i.ak = trunc nuw i16 %i.aj to i8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.e
  %.018 = phi i8 [ %i.t, %bb.e ], [ %i.ak, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i8 %.018
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhEclINS0_6BitGenEEEhRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp ugt i64 %i.e, 31
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhE8GenerateINS0_6BitGenEEEhRT_NS1_17SimplifiedLoopTagE.exit

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load i8, ptr %i.h, align 8, !tbaa !67, !range !51, !noundef !52
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhE8GenerateINS0_6BitGenEEEhRT_NS1_17SimplifiedLoopTagE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhE8GenerateINS0_6BitGenEEEhRT_NS1_17SimplifiedLoopTagE.exit

_ZN4absl12lts_2026052615random_internal15FastUniformBitsIhE8GenerateINS0_6BitGenEEEhRT_NS1_17SimplifiedLoopTagE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_bits_test.cc:bb.a
  %i.auk = load i64, ptr %i.atf, align 8, !tbaa !21
  %i.aul = add i64 %i.auk, 1
  call void @_ZdlPvm(ptr noundef %i.aui, i64 noundef %i.aul) #25
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i293

_ZN7testing8internal12CodeLocationD2Ev.exit15.i293: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i292
  %i.aum = load ptr, ptr %5, align 8, !tbaa !20   ; 2 uses
  %i.aun = icmp eq ptr %i.aum, %i.ata
  br i1 %i.aun, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i294: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i293
  %i.auo = load i64, ptr %i.ata, align 8, !tbaa !21
  %i.aup = add i64 %i.auo, 1
  call void @_ZdlPvm(ptr noundef %i.aum, i64 noundef %i.aup) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i283: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i294, %bb.gf
  %.pn.i284 = phi { ptr, i32 } [ %i.aug, %bb.gf ], [ %i.auh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i294 ], [ %i.auh, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i293 ] ; 2 uses
  %i.auq = load ptr, ptr %3, align 8, !tbaa !20   ; 2 uses
  %i.aur = icmp eq ptr %i.auq, %i.asx
  br i1 %i.aur, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i283
  %i.aus = load i64, ptr %i.asx, align 8, !tbaa !21
  br label %common.resume.sink.split

__cxx_global_var_init.39.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i301
  store ptr %i.att, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_123Byteswap_Constexpr_Test10test_info_E, align 8, !tbaa !300
  %i.aut = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_123Byteswap_Constexpr_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.auu, ptr %0, align 8, !tbaa !16
  store i64 8097884942495938882, ptr %i.auu, align 8
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.auv, align 8, !tbaa !22
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.auw, align 8, !tbaa !21
  %i.aux = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.aux, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 63, ptr %i.a, align 8, !tbaa !18
  %i.auy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i310 unwind label %bb.gn ; 3 uses

.noexc7.i310:                                     ; preds = %__cxx_global_var_init.39.exit
  store ptr %i.auy, ptr %2, align 8, !tbaa !20
  %i.auz = load i64, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  store i64 %i.auz, ptr %i.aux, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.auy, ptr noundef nonnull align 1 dereferenceable(63) @.str.1, i64 63, i1 false)
  %i.ava = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.auz, ptr %i.ava, align 8, !tbaa !22
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 %i.auz
  store i8 0, ptr %i.avb, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.avc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.avc, ptr %1, align 8, !tbaa !16
  %i.avd = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %i.ave = icmp eq ptr %i.avd, %i.aux
  br i1 %i.ave, label %bb.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311

bb.gh:                                            ; preds = %.noexc7.i310
  %i.avf = load i64, ptr %i.ava, align 8, !tbaa !22 ; 3 uses
  %i.avg = icmp ult i64 %i.avf, 16
  call void @llvm.assume(i1 %i.avg)
  %i.avh = add nuw nsw i64 %i.avf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.avc, ptr noundef nonnull align 8 dereferenceable(1) %i.aux, i64 %i.avh, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311: ; preds = %.noexc7.i310
  store ptr %i.avd, ptr %1, align 8, !tbaa !20
  %i.avi = load i64, ptr %i.aux, align 8, !tbaa !21
  store i64 %i.avi, ptr %i.avc, align 8, !tbaa !21
  %.pre.i312 = load i64, ptr %i.ava, align 8, !tbaa !22
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i313

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i313: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311, %bb.gh
  %i.avj = phi i64 [ %i.avf, %bb.gh ], [ %.pre.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311 ]
  %i.avk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.avj, ptr %i.avk, align 8, !tbaa !22
  store ptr %i.aux, ptr %2, align 8, !tbaa !20
  store i64 0, ptr %i.ava, align 8, !tbaa !22
  store i8 0, ptr %i.aux, align 8, !tbaa !21
  %i.avl = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 693, ptr %i.avl, align 8, !tbaa !24
  %i.avm = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.gi unwind label %bb.go

bb.gi:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i313
  %i.avn = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 693)
          to label %bb.gj unwind label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.avo = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 693)
          to label %bb.gk unwind label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.avp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24
          to label %bb.gl unwind label %bb.go     ; 2 uses

bb.gl:                                            ; preds = %bb.gk
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN4absl12lts_2026052612_GLOBAL__N_126Byteswap_NotConstexpr_TestEEE, i64 16), ptr %i.avp, align 8, !tbaa !30
  %i.avq = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.avm, ptr noundef %i.avn, ptr noundef %i.avo, ptr noundef nonnull %i.avp)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %i.avr = load ptr, ptr %1, align 8, !tbaa !20   ; 2 uses
  %i.avs = icmp eq ptr %i.avr, %i.avc
  br i1 %i.avs, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319: ; preds = %bb.gm
  %i.avt = load i64, ptr %i.avc, align 8, !tbaa !21
  %i.avu = add i64 %i.avt, 1
  call void @_ZdlPvm(ptr noundef %i.avr, i64 noundef %i.avu) #25
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i320

_ZN7testing8internal12CodeLocationD2Ev.exit.i320: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319
  %i.avv = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %i.avw = icmp eq ptr %i.avv, %i.aux
  br i1 %i.avw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i321: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i320
  %i.avx = load i64, ptr %i.aux, align 8, !tbaa !21
  %i.avy = add i64 %i.avx, 1
  call void @_ZdlPvm(ptr noundef %i.avv, i64 noundef %i.avy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i321
  %i.avz = load ptr, ptr %0, align 8, !tbaa !20   ; 2 uses
  %i.awa = icmp eq ptr %i.avz, %i.auu
  br i1 %i.awa, label %__cxx_global_var_init.42.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322
  %i.awb = load i64, ptr %i.auu, align 8, !tbaa !21
  %i.awc = add i64 %i.awb, 1
  call void @_ZdlPvm(ptr noundef %i.avz, i64 noundef %i.awc) #25
  br label %__cxx_global_var_init.42.exit

bb.gn:                                            ; preds = %__cxx_global_var_init.39.exit
  %i.awd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i305

bb.go:                                            ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gi, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i313
  %i.awe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awf = load ptr, ptr %1, align 8, !tbaa !20   ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.avc
  br i1 %i.awg, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i314: ; preds = %bb.go
  %i.awh = load i64, ptr %i.avc, align 8, !tbaa !21
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awf, i64 noundef %i.awi) #25
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i315

_ZN7testing8internal12CodeLocationD2Ev.exit15.i315: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i314
  %i.awj = load ptr, ptr %2, align 8, !tbaa !20   ; 2 uses
  %i.awk = icmp eq ptr %i.awj, %i.aux
  br i1 %i.awk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i316: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i315
  %i.awl = load i64, ptr %i.aux, align 8, !tbaa !21
  %i.awm = add i64 %i.awl, 1
  call void @_ZdlPvm(ptr noundef %i.awj, i64 noundef %i.awm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i305: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i316, %bb.gn
  %.pn.i306 = phi { ptr, i32 } [ %i.awd, %bb.gn ], [ %i.awe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i316 ], [ %i.awe, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i315 ] ; 2 uses
  %i.awn = load ptr, ptr %0, align 8, !tbaa !20   ; 2 uses
  %i.awo = icmp eq ptr %i.awn, %i.auu
  br i1 %i.awo, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i305
  %i.awp = load i64, ptr %i.auu, align 8, !tbaa !21
  br label %common.resume.sink.split

__cxx_global_var_init.42.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323
  store ptr %i.avq, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_126Byteswap_NotConstexpr_Test10test_info_E, align 8, !tbaa !300
  %i.awq = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_126Byteswap_NotConstexpr_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!20 = !{!19, !14, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!19, !17, i64 8}
!23 = !{!"_ZTSN7testing8internal12CodeLocationE", !19, i64 0, !10, i64 32}
!24 = !{!23, !10, i64 32}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !17, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !9, i64 64, !10, i64 192, !35, i64 200, !37, i64 208}
!39 = !{!38, !32, i64 32}
!40 = !{!26, !25, i64 8}
!41 = !{!26, !25, i64 16}
!42 = !{!"bool", !9, i64 0}
!43 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !25, i64 0}
!44 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !43, i64 0}
!45 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !44, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !47, i64 0}
!49 = !{!"_ZTSN7testing15AssertionResultE", !42, i64 0, !48, i64 8}
!50 = !{!49, !42, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!25, !25, i64 0}
!54 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !37, i64 56}
!57 = !{!56, !14, i64 40}
!58 = !{!56, !14, i64 32}
!59 = !{!"_ZTSSi", !17, i64 8}
!60 = !{!59, !17, i64 8}
!61 = !{!"short", !9, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!10, !10, i64 0}
!64 = !{!"_ZTSN4absl12lts_2026052615random_internal6RandenE", !13, i64 0, !42, i64 8}
!65 = !{!"_ZTSN4absl12lts_2026052615random_internal13randen_engineImEE", !9, i64 0, !17, i64 264, !64, i64 272}
!66 = !{!65, !17, i64 264}
!67 = !{!64, !42, i64 8}
!68 = !{!64, !13, i64 0}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = distinct !{!70, !"_ZN7testing8internal13GenerateNamesINS0_20DefaultNameGeneratorENS0_5TypesIhJtjmEEEEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEv"}
!71 = distinct !{!71, !70, !"_ZN7testing8internal13GenerateNamesINS0_20DefaultNameGeneratorENS0_5TypesIhJtjmEEEEESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEv: argument 0"}
!72 = distinct !{!72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!73 = distinct !{!73, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!74 = distinct !{!74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!75 = distinct !{!75, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!77 = distinct !{!77, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!78 = distinct !{!78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!79 = distinct !{!79, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!80 = distinct !{!80, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!81 = distinct !{!81, !80, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!82 = distinct !{!82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!83 = distinct !{!83, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!84 = distinct !{!84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!85 = distinct !{!85, !84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!86 = distinct !{!86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!87 = distinct !{!87, !86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!88 = distinct !{!88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!90 = distinct !{!90, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!91 = distinct !{!91, !90, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!92 = distinct !{!92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!93 = distinct !{!93, !92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = distinct !{!95, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!96 = distinct !{!96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!97 = distinct !{!97, !96, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!98 = distinct !{!98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!99 = distinct !{!99, !98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!100 = distinct !{!100, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!101 = distinct !{!101, !100, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!102 = distinct !{!102, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!103 = distinct !{!103, !102, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!104 = distinct !{!104, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!105 = distinct !{!105, !104, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!106 = distinct !{!106, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!107 = distinct !{!107, !106, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!108 = distinct !{!108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!109 = distinct !{!109, !108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!110 = distinct !{!110, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!111 = distinct !{!111, !110, !"_ZN7testing8internal19StripTrailingSpacesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!112 = !{!71}
!113 = !{!73}
!114 = !{!75}
!115 = !{!77}
!116 = !{!79}
!117 = !{!81}
!118 = !{!83}
!119 = !{!85}
!120 = !{!87}
!121 = !{!89}
!122 = !{!91}
!123 = !{!93}
!124 = !{!95}
!125 = !{!97}
!126 = !{!99}
!127 = !{!101}
!128 = !{!103}
!129 = !{!105}
!130 = !{!107}
!131 = !{!109}
!132 = !{!111}
!133 = distinct !{!133, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!134 = distinct !{!134, !133, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!135 = distinct !{!135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!136 = distinct !{!136, !135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = !{!134}
!138 = !{!136}
!139 = !{!136, !134}
end_hunk_1
