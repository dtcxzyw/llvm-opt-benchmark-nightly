Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_126ChunkedQueue_Iterator_Test8TestBodyEv:bb.a
  br label %_ZN7testing7MessageD2Ev.exit491

_ZN7testing7MessageD2Ev.exit491:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %bb.el
  %.pn155.pn.pn = phi { ptr, i32 } [ %i.mz, %bb.el ], [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ], [ %.pn155.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i490 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.es

bb.eq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %.pr = load ptr, ptr %i.mk, align 8, !tbaa !81  ; 4 uses
  %.not.i.i.i492 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i492, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit496, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.nm = load ptr, ptr %.pr, align 8, !tbaa !85  ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i493: ; preds = %bb.er
  %i.np = load i64, ptr %i.nn, align 8, !tbaa !88
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.nq) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i494

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i494: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i493
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #24
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit496

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit496: ; preds = %bb.ee, %bb.eq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i494
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit496, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit301, %_ZN7testing15AssertionResultD2Ev.exit325, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit348, %_ZN7testing15AssertionResultD2Ev.exit396, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit419, %_ZN7testing15AssertionResultD2Ev.exit467, %_ZN7testing15AssertionResultD2Ev.exit278, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243, %_ZN7testing15AssertionResultD2Ev.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi ptr [ %i.nr, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %i.nr = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.nr, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit: ; preds = %.lr.ph.i
  ret void

bb.es:                                            ; preds = %bb.p, %_ZN7testing7MessageD2Ev.exit249, %bb.ad, %bb.at, %_ZN7testing7MessageD2Ev.exit491, %bb.ef, %_ZN7testing7MessageD2Ev.exit425, %bb.db, %_ZN7testing7MessageD2Ev.exit354, %bb.bx, %_ZN7testing7MessageD2Ev.exit307
  %.pn155.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn, %bb.bx ], [ %.pn118.pn.pn, %_ZN7testing7MessageD2Ev.exit307 ], [ %.pn127.pn.pn, %_ZN7testing7MessageD2Ev.exit354 ], [ %.pn151.pn.pn, %bb.ef ], [ %.pn114.pn.pn, %bb.at ], [ %.pn137.pn.pn, %bb.db ], [ %i.cr, %bb.ad ], [ %.pn109.pn.pn, %_ZN7testing7MessageD2Ev.exit249 ], [ %.pn105.pn.pn, %bb.p ], [ %.pn141.pn.pn, %_ZN7testing7MessageD2Ev.exit425 ], [ %.pn155.pn.pn, %_ZN7testing7MessageD2Ev.exit491 ]
  br label %.lr.ph.i498

.lr.ph.i498:                                      ; preds = %bb.es, %.lr.ph.i498
  %.08.i499 = phi ptr [ %i.ns, %.lr.ph.i498 ], [ %i.e, %bb.es ] ; 2 uses
  %i.ns = load ptr, ptr %.08.i499, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i499) #22
  %.not.i500 = icmp eq ptr %i.ns, null
  br i1 %.not.i500, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit501, label %.lr.ph.i498

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit501: ; preds = %.lr.ph.i498
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal26AssertionResultExpectationD2Ev.exit40:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_127ChunkedQueue_Iterator2_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = add i64 %i.g, 16
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !1135
  store i64 8589934593, ptr %i.i, align 4, !tbaa !128
  %i.k = ptrtoint ptr %i.j to i64
  %reass.sub = sub i64 %i.k, %i.g
  %i.l = add i64 %reass.sub, -16
  %i.m = ashr exact i64 %i.l, 2
  %.sroa.speculated.i.i.i.i.i58 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 128) ; 2 uses
  %i.n = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i58, 3
  %i.o = add nuw nsw i64 %i.n, 16
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26
          to label %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i62 unwind label %bb.bx ; 4 uses

_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i62: ; preds = %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12NewBlockSizeEv.exit.i.i.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !1134
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = add i64 %i.r, 16
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.speculated.i.i.i.i.i58
  store ptr %i.u, ptr %i.q, align 8, !tbaa !1135
  store ptr %i.p, ptr %i.e, align 8, !tbaa !1134
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 17179869187, ptr %i.t, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !128
  %i.w = load i32, ptr %i.i, align 4, !tbaa !128, !noalias !1136
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i62
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE12AddTailBlockEv.exit.i.i.i62
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.180, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.c

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.y = load i8, ptr %1, align 8, !tbaa !78, !range !79, !noundef !80
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.q

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ @.str.159, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 555, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.af = load ptr, ptr %2, align 8, !tbaa !87    ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.af, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit72

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.ak, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.am = load ptr, ptr %2, align 8, !tbaa !87    ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.am, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.l
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(128) %i.am) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  br label %bb.q

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81 ; 4 uses
  %.not.i.i73 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i73, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !88
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !128
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !128, !noalias !1137
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit76 unwind label %bb.r

bb.p:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.188, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit76 unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit76: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ba = load i8, ptr %4, align 8, !tbaa !78, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ab, label %bb.s

bb.q:                                             ; preds = %_ZN7testing7MessageD2Ev.exit72, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit72 ], [ %i.aa, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNK4absl12lts_2026052613chunked_queueIN12_GLOBAL__N_19TestEntryELm0ELm0ESaIS3_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS3_S4_EE.exit.i137.preheader

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ag

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !81 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.be, null
  br i1 %.not.i.i77, label %_ZNK7testing15AssertionResult15failure_messageEv.exit78, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit78

_ZNK7testing15AssertionResult15failure_messageEv.exit78: ; preds = %bb.u, %bb.t
  %i.bg = phi ptr [ %i.bf, %bb.u ], [ @.str.159, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 556, ptr noundef %i.bg)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit78
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bh = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i79, label %_ZN7testing7MessageD2Ev.exit81, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80: ; preds = %bb.w
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #22, !inline_history !0
end_hunk_0
