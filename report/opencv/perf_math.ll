Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_math?download=true
inline.NumInlined: 6226
inline.NumDeleted: 2527
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_130PolarToCartFixture_PolarToCartEE13RegisterTestsEv:bb.a
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i149 unwind label %bb.dj

.noexc.i.i149:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.oq = load ptr, ptr %i.z, align 8, !tbaa !148 ; 3 uses
  %i.or = icmp eq ptr %i.oq, %i.z                 ; 2 uses
  br i1 %i.or, label %bb.df, label %.preheader.i.i.i.i150

.preheader.i.i.i.i150:                            ; preds = %.noexc.i.i149, %.preheader.i.i.i.i150
  %.0.i.i.i.i151 = phi ptr [ %i.os, %.preheader.i.i.i.i150 ], [ %i.oq, %.noexc.i.i149 ] ; 2 uses
  %i.os = load ptr, ptr %.0.i.i.i.i151, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.os, %i.z
  br i1 %.not.i.i.i.i152, label %bb.de, label %.preheader.i.i.i.i150, !llvm.loop !1

bb.de:                                            ; preds = %.preheader.i.i.i.i150
  store ptr %i.oq, ptr %.0.i.i.i.i151, align 8, !tbaa !148
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.noexc.i.i149
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i153 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ot = landingpad { ptr, i32 }
          catch ptr null
  %i.ou = extractvalue { ptr, i32 } %i.ot, 0
  call void @__clang_call_terminate(ptr %i.ou) #31
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i153: ; preds = %bb.df
  br i1 %i.or, label %bb.dh, label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEED2Ev.exit154

bb.dh:                                            ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i153
  %i.ov = load ptr, ptr %4, align 8, !tbaa !355   ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEED2Ev.exit154, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ox = load ptr, ptr %i.ov, align 8, !tbaa !119
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(8) %i.ov) #29, !inline_history !88
  br label %_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEED2Ev.exit154

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #31
  unreachable

_ZN7testing8internal14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEED2Ev.exit154: ; preds = %bb.di, %bb.dh, %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i153, %bb.q
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %.pn37.pn.pn, %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i153 ], [ %.pn37.pn.pn, %bb.dh ], [ %.pn37.pn.pn, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call fastcc void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_130PolarToCartFixture_PolarToCartEE8TestInfoEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEED2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEEE, i64 16), ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !681  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !682  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !125 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !128
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1537

_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !681
  br label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.k, align 8, !tbaa !683
  %i.l = ptrtoint ptr %.val1.i to i64
  %i.m = ptrtoint ptr %.val.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !686  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !687  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.s, %.lr.ph.i.i.i2 ], [ %i.p, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit ] ; 2 uses
  tail call fastcc void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEED2Ev(ptr noundef nonnull readonly align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i3) #29
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !93

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.val.pr.i5 = load ptr, ptr %i.o, align 8, !tbaa !686
  br label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit
  %.val.i6 = phi ptr [ %.val.pr.i5, %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17InstantiationInfoESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i2.i7 = icmp eq ptr %.val.i6, null
  br i1 %.not.i.i2.i7, label %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEESaIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i8 = load ptr, ptr %i.t, align 8, !tbaa !688
  %i.u = ptrtoint ptr %.val1.i8 to i64
  %i.v = ptrtoint ptr %.val.i6 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i6, i64 noundef %i.w) #30
  br label %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEESaIS9_EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !128
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEESaIS9_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !128
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE15GetTestCaseNameB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(128) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE17GetTestCaseTypeIdEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE6dummy_E
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE13RegisterTestsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 40 uses
  %6 = alloca %"class.testing::internal::linked_ptr.196", align 8 ; 10 uses
  %7 = alloca %"class.testing::internal::ParamGenerator.70", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::set", align 8         ; 10 uses
  %11 = alloca %"class.testing::internal::ParamIterator.409", align 8 ; 7 uses
  %12 = alloca %"class.testing::Message", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"struct.testing::TestParamInfo.309", align 8 ; 6 uses
  %15 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %16 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::tuple.199", align 4   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.d, align 8, !tbaa !1567 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val42564 = load ptr, ptr %i.e, align 8, !tbaa !1567
  %.not565 = icmp eq ptr %.val, %.val42564
  br i1 %.not565, label %._crit_edge569, label %.lr.ph568

.lr.ph568:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 353
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 360
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 6 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 5 uses
  %i.z = getelementptr i8, ptr %i.x, i64 -24      ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 22 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.bl = insertelement <2 x ptr> poison, ptr %i.m, i64 0
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge569:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph568, %._crit_edge
  %.sroa.0230.0566 = phi ptr [ %.val, %.lr.ph568 ], [ %i.br, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %.val.i.i = load ptr, ptr %.sroa.0230.0566, align 8, !tbaa !399 ; 2 uses
  store ptr %.val.i.i, ptr %6, align 8, !tbaa !399
  %.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0230.0566, i64 8 ; 3 uses
  call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.bn, %bb.c ], [ %i.bo, %bb.d ] ; 2 uses
  %i.bo = load ptr, ptr %.0.i.i.i, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %.0.i.i.i, align 8, !tbaa !148
  store ptr %i.bn, ptr %i.f, align 8, !tbaa !148
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #31
  unreachable

bb.g:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.f, align 8, !tbaa !148
  br label %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit

_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit: ; preds = %bb.e, %bb.g
  %.val46 = load ptr, ptr %i.g, align 8, !tbaa !1568 ; 2 uses
  %.val47561 = load ptr, ptr %i.h, align 8, !tbaa !1568
  %.not243562 = icmp eq ptr %.val46, %.val47561
  br i1 %.not243562, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7testing8internal14ParamGeneratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEED2Ev.exit, %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit
  call fastcc void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0230.0566, i64 16 ; 2 uses
  %.val42 = load ptr, ptr %i.e, align 8, !tbaa !1567
  %.not = icmp eq ptr %i.br, %.val42
  br i1 %.not, label %._crit_edge569, label %bb.b, !llvm.loop !1538

.lr.ph:                                           ; preds = %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit, %_ZN7testing8internal14ParamGeneratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEED2Ev.exit
  %.sroa.0228.0563 = phi ptr [ %i.fw, %_ZN7testing8internal14ParamGeneratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEED2Ev.exit ], [ %.val46, %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE8TestInfoEEC2ERKS8_.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0228.0563, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !690
  invoke void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::ParamGenerator.70") align 8 %7)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0228.0563, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !691
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0228.0563, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !692 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0228.0563, i64 56
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !693 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.i, ptr %8, align 8, !tbaa !126
  store i64 0, ptr %i.j, align 8, !tbaa !124
  store i8 0, ptr %i.i, align 8, !tbaa !128
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0228.0563, i64 8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !124
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %i.cd = load ptr, ptr %.sroa.0228.0563, align 8, !tbaa !125, !noalias !1569
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !124, !noalias !1569 ; 3 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !126, !alias.scope !1570
  store i64 0, ptr %i.l, align 8, !tbaa !124, !alias.scope !1570
  store i8 0, ptr %i.k, align 8, !tbaa !128, !alias.scope !1570
  %i.cf = add i64 %i.ce, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.cf)
          to label %bb.j unwind label %.loopexit250

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !124, !alias.scope !1570
  %i.ch = sub i64 4611686018427387903, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.ce
  br i1 %i.ci, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.cd, i64 noundef %i.ce)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit250 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !124, !alias.scope !1570
  %i.cl = icmp eq i64 %i.ck, 4611686018427387903
  br i1 %i.cl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #32
          to label %.cont.i.i unwind label %.loopexit.split-lp251

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit250 ; 0 uses

.loopexit250:                                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp251:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp251, %.loopexit250
  %lpad.phi254 = phi { ptr, i32 } [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ]
  %i.cn = load ptr, ptr %9, align 8, !tbaa !125, !alias.scope !1570 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.k
  br i1 %i.co, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !128, !alias.scope !1570
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #30
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.cr = load ptr, ptr %8, align 8, !tbaa !125   ; 6 uses
  %i.cs = icmp eq ptr %i.cr, %i.i
  %i.ct = load ptr, ptr %9, align 8, !tbaa !125   ; 5 uses
  %i.cu = icmp eq ptr %i.ct, %i.k                 ; 2 uses
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.cu, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.cu, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cv = load i64, ptr %i.l, align 8, !tbaa !124 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !128
  store i8 %i.cx, ptr %i.cr, align 1, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12_GLOBAL__N_119SolveTest_randomMatEE13RegisterTestsEv:bb.a
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !125
  %i.ke = call i32 @memcmp(ptr noundef %i.jy, ptr noundef %i.kd, i64 noundef %.sroa.speculated.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i216 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i216, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.bz
  %i.kf = sub i64 %i.jx, %i.ka
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kf, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i217 = phi i32 [ %i.ke, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.kg = icmp slt i32 %.0.i.i.i.i217, 0          ; 2 uses
  %.in.v.i = select i1 %i.kg, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8, !tbaa !594 ; 2 uses
  %.not.i218 = icmp eq ptr %.029.i, null
  br i1 %.not.i218, label %._crit_edge.i, label %bb.bz, !llvm.loop !80

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  br i1 %i.kg, label %._crit_edge.thread.i, label %bb.cb

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.by
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i ], [ %i.m, %bb.by ] ; 4 uses
  %i.kh = load ptr, ptr %i.o, align 8, !tbaa !603
  %i.ki = icmp eq ptr %.028.lcssa39.i, %i.kh
  br i1 %i.ki, label %select.unfold, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.thread.i
  %i.kj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %.pre613 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !124 ; 2 uses
  %.pre614 = load i64, ptr %i.r, align 8, !tbaa !124 ; 2 uses
  %.pre615 = call i64 @llvm.umin.i64(i64 %.pre614, i64 %.pre613)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre615, %bb.ca ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i ] ; 2 uses
  %i.kk = phi i64 [ %.pre614, %bb.ca ], [ %i.jx, %._crit_edge.i ]
  %i.kl = phi i64 [ %.pre613, %bb.ca ], [ %i.ka, %._crit_edge.i ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.ca ], [ %.02933.i, %._crit_edge.i ]
  %.sroa.014.0.i = phi ptr [ %i.kj, %bb.ca ], [ %.02933.i, %._crit_edge.i ]
  %i.km = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.km, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.ko = load ptr, ptr %13, align 8, !tbaa !125
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !125
  %i.kq = call i32 @memcmp(ptr noundef %i.kp, ptr noundef %i.ko, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #29 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.cb
  %i.kr = sub i64 %i.kl, %i.kk
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.kr, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.kq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %i.ks = icmp slt i32 %.0.i.i.i8.i, 0
  br i1 %i.ks, label %select.unfold, label %.noexc207

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.028.lcssa39.i, %._crit_edge.thread.i ], [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ] ; 4 uses
  %i.kt = icmp eq ptr %.sroa.4.0.i.ph, %i.m
  br i1 %i.kt, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %select.unfold
  %i.ku = load i64, ptr %i.r, align 8, !tbaa !124 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !124 ; 2 uses
  %.sroa.speculated.i.i.i.i.i198 = call i64 @llvm.umin.i64(i64 %i.kw, i64 %i.ku) ; 2 uses
  %i.kx = icmp eq i64 %.sroa.speculated.i.i.i.i.i198, 0
  br i1 %i.kx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i203, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i199

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i199: ; preds = %bb.cc
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !125
  %i.la = load ptr, ptr %13, align 8, !tbaa !125
  %i.lb = call i32 @memcmp(ptr noundef %i.la, ptr noundef %i.kz, i64 noundef %.sroa.speculated.i.i.i.i.i198) #29 ; 2 uses
  %.not.i.i.i.i.i200 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i.i.i.i200, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i203, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i201

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i203: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i199, %bb.cc
  %i.lc = sub i64 %i.ku, %i.kw
  %spec.select7.i.i.i.i.i.i204 = call i64 @llvm.smax.i64(i64 %i.lc, i64 -2147483648)
  %.08.i.i.i.i.i.i205 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i204, i64 2147483647)
  %.0.i6.i.i.i.i.i206 = trunc nsw i64 %.08.i.i.i.i.i.i205 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i201

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i201: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i203, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i199
  %.0.i.i.i.i.i202 = phi i32 [ %i.lb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i199 ], [ %.0.i6.i.i.i.i.i206, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i203 ]
  %i.ld = icmp slt i32 %.0.i.i.i.i.i202, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i201, %select.unfold
  %i.le = phi i1 [ %i.ld, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i201 ], [ true, %select.unfold ]
  %i.lf = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33
          to label %.noexc208 unwind label %bb.ax ; 2 uses

.noexc208:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc209 unwind label %bb.ax

.noexc209:                                        ; preds = %.noexc208
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.le, ptr noundef nonnull %i.lf, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #29
  %i.lg = load i64, ptr %i.p, align 8, !tbaa !595
  %i.lh = add i64 %i.lg, 1
  store i64 %i.lh, ptr %i.p, align 8, !tbaa !595
  br label %.noexc207

.noexc207:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %.noexc209
  %.val56 = load ptr, ptr %6, align 8, !tbaa !399 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val56, i64 32
  %i.lj = load ptr, ptr %12, align 8, !tbaa !200
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !125
  %i.lm = getelementptr inbounds nuw i8, ptr %.val56, i64 40
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !124
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef %i.ll, i64 noundef %i.ln)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %.noexc207
  %i.lp = load ptr, ptr %12, align 8, !tbaa !200
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ls = load ptr, ptr %12, align 8, !tbaa !200
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %13, align 8, !tbaa !125
  %i.lv = load i64, ptr %i.r, align 8, !tbaa !124
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef %i.lu, i64 noundef %i.lv)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit116 unwind label %bb.ax ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit116: ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.lx = load ptr, ptr %8, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.cd unwind label %bb.ee

bb.cd:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit116
  %i.ly = load ptr, ptr %17, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.lz = load ptr, ptr %i.du, align 8, !tbaa !119
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef nonnull align 4 dereferenceable(24) ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %_ZNK7testing8internal13ParamIteratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEEdeEv.exit118 unwind label %bb.ef, !inline_history !1553 ; 6 uses

_ZNK7testing8internal13ParamIteratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEEdeEv.exit118: ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !1586
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #29
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !119
  store ptr null, ptr %i.t, align 8, !tbaa !1587
  store i8 0, ptr %i.u, align 8, !tbaa !1588
  store i8 0, ptr %i.v, align 1, !tbaa !1589
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store ptr %i.x, ptr %5, align 8, !tbaa !119
  %i.md = load i64, ptr %i.z, align 8
  %i.me = getelementptr inbounds i8, ptr %5, i64 %i.md
  store ptr %i.y, ptr %i.me, align 8, !tbaa !119
  store i64 0, ptr %i.aa, align 8, !tbaa !608
  %i.mf = load ptr, ptr %5, align 8, !tbaa !119
  %i.mg = getelementptr i8, ptr %i.mf, i64 -24
  %i.mh = load i64, ptr %i.mg, align 8
  %i.mi = getelementptr inbounds i8, ptr %5, i64 %i.mh
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mi, ptr noundef null)
          to label %.noexc.i213 unwind label %bb.cg

.noexc.i213:                                      ; preds = %_ZNK7testing8internal13ParamIteratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEEdeEv.exit118
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !119
  %i.mj = load i64, ptr %i.ae, align 8
  %i.mk = getelementptr inbounds i8, ptr %i.ab, i64 %i.mj
  store ptr %i.ad, ptr %i.mk, align 8, !tbaa !119
  %i.ml = load ptr, ptr %i.ab, align 8, !tbaa !119
  %i.mm = getelementptr i8, ptr %i.ml, i64 -24
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = getelementptr inbounds i8, ptr %i.ab, i64 %i.mn
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mo, ptr noundef null)
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %.noexc.i213
  %i.mp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.x, ptr %5, align 8, !tbaa !119
  %i.mq = load i64, ptr %i.z, align 8
  %i.mr = getelementptr inbounds i8, ptr %5, i64 %i.mq
  store ptr %i.y, ptr %i.mr, align 8, !tbaa !119
  store i64 0, ptr %i.aa, align 8, !tbaa !608
  br label %.body.i212

bb.cf:                                            ; preds = %.noexc.i213
  %i.ms = load i64, ptr %i.ah, align 8
  %i.mt = getelementptr inbounds i8, ptr %5, i64 %i.ms
  store ptr %i.ag, ptr %i.mt, align 8, !tbaa !119
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %5, align 8, !tbaa !119
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.s, align 8, !tbaa !119
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.ab, align 8, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #29
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !119
  store i32 24, ptr %i.al, align 8, !tbaa !1592
  store ptr %i.an, ptr %i.am, align 8, !tbaa !126
  store i64 0, ptr %i.ao, align 8, !tbaa !124
  store i8 0, ptr %i.an, align 8, !tbaa !128
  %i.mu = load ptr, ptr %5, align 8, !tbaa !119
  %i.mv = getelementptr i8, ptr %i.mu, i64 -24
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds i8, ptr %5, i64 %i.mw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mx, ptr noundef nonnull %i.ai)
          to label %.noexc121 unwind label %bb.ch

bb.cg:                                            ; preds = %_ZNK7testing8internal13ParamIteratorISt5tupleIJiN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEN4perf12_GLOBAL__N_18MatDepthENS5_15SolveDecompEnumEbNS5_13SolutionsEnumEEEEdeEv.exit118
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body.i212

bb.ch:                                            ; preds = %bb.cf
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ai) #29
  store ptr %i.x, ptr %5, align 8, !tbaa !119
  %i.na = load i64, ptr %i.z, align 8
  %i.nb = getelementptr inbounds i8, ptr %5, i64 %i.na
  store ptr %i.y, ptr %i.nb, align 8, !tbaa !119
  store i64 0, ptr %i.aa, align 8, !tbaa !608
  br label %.body.i212

.body.i212:                                       ; preds = %bb.ch, %bb.cg, %bb.ce
  %.pn.pn.i = phi { ptr, i32 } [ %i.mz, %bb.ch ], [ %i.my, %bb.cg ], [ %i.mp, %bb.ce ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.s) #29
  br label %.body122

.noexc121:                                        ; preds = %bb.cf
  %i.nc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.106, i64 noundef 1)
          to label %.noexc.i unwind label %bb.dt, !noalias !1586 ; 0 uses

.noexc.i:                                         ; preds = %.noexc121
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.nd, align 4, !tbaa !161, !noalias !1586
  %i.ne = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc2.i unwind label %bb.dt, !noalias !1586 ; 0 uses

.noexc2.i:                                        ; preds = %.noexc.i
  %i.nf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.108, i64 noundef 2)
          to label %.noexc3.i unwind label %bb.dt, !noalias !1586 ; 0 uses

.noexc3.i:                                        ; preds = %.noexc2.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ng, align 4, !tbaa !701, !noalias !1586
  invoke fastcc void @_ZN7testing8internal16UniversalPrinterIN11opencv_test12_GLOBAL__N_112_GLOBAL__N_18RankEnumEE5PrintERKS5_PSo(i32 %.val5.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %.noexc4.i unwind label %bb.dt, !noalias !1586

.noexc4.i:                                        ; preds = %.noexc3.i
  %i.nh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.108, i64 noundef 2)
          to label %.noexc5.i unwind label %bb.dt, !noalias !1586 ; 0 uses

.noexc5.i:                                        ; preds = %.noexc4.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ni, align 4, !tbaa !702, !noalias !1586
  invoke fastcc void @_ZN7testing8internal16UniversalPrinterIN4perf12_GLOBAL__N_18MatDepthEE5PrintERKS4_PSo(i32 %.val.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %.noexc6.i unwind label %bb.dt, !noalias !1586

.noexc6.i:                                        ; preds = %.noexc5.i
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.108, i64 noundef 2)
          to label %.noexc7.i unwind label %bb.dt, !noalias !1586 ; 0 uses

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.nk, align 4, !tbaa !1593, !noalias !1586 ; 5 uses
  br label %bb.cu

.preheader48.1.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.critedge39.i.i.i.i.i.i.i.i.i.i.i.i
  %sext.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.lcssa51.ph.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.nl = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.1.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader48.1.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nl, %.preheader48.1.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.1.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.1.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nm = getelementptr inbounds i8, ptr @.str.112, i64 %indvars.iv.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !128, !noalias !1586 ; 2 uses
  %i.no = sext i8 %i.nn to i32
  %i.np = call i32 @isspace(i32 noundef %i.no) #35, !noalias !1586
  %.not.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.np, 0
  br i1 %.not.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cj, label %.critedge.1.i.i.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.nq = shl nuw i64 1, %indvars.iv.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nr = and i64 %i.nq, 1125908498874880
  %.not33.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nr, 0
  br i1 %.not33.1.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.1.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.1.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cj, %bb.ci
  %indvars.iv.next.1.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.1.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.ci, !llvm.loop !1557

.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cj, %bb.ck
  %indvars.iv66.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next67.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ck ], [ %indvars.iv.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cj ] ; 4 uses
  %i.ns = shl nuw i64 1, %indvars.iv66.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nt = and i64 %i.ns, 1125908498874880
  %.not35.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nt, 0
  %i.nu = icmp ne i64 %indvars.iv66.1.i.i.i.i.i.i.i.i.i.i.i.i, 61
  %spec.select.1.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nu, %.not35.1.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %spec.select.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck, label %.critedge39.1.i.i.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next67.1.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv66.1.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.nv = getelementptr inbounds i8, ptr @.str.112, i64 %indvars.iv.next67.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !128, !noalias !1586
  %i.nx = sext i8 %i.nw to i32
  %i.ny = call i32 @isspace(i32 noundef %i.nx) #35, !noalias !1586
  %.not34.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not34.1.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge39.1.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1558

.critedge39.1.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.ck, %.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa51.ph.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv66.1.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.1.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next67.1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.not37.1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not37.1.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %.preheader48.2.i.i.i.i.i.i.i.i.i.i.i.i

.preheader48.2.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.critedge39.1.i.i.i.i.i.i.i.i.i.i.i.i
  %sext76.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.lcssa51.ph.1.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.nz = ashr exact i64 %sext76.i.i.i.i.i.i.i.i.i.i.i.i, 32
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge.2.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader48.2.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nz, %.preheader48.2.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.2.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.2.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.oa = getelementptr inbounds i8, ptr @.str.112, i64 %indvars.iv.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !128, !noalias !1586 ; 2 uses
  %i.oc = sext i8 %i.ob to i32
  %i.od = call i32 @isspace(i32 noundef %i.oc) #35, !noalias !1586
  %.not.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.od, 0
  br i1 %.not.2.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm, label %.critedge.2.i.i.i.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.oe = shl nuw i64 1, %indvars.iv.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.of = and i64 %i.oe, 1125908498874880
  %.not33.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.of, 0
  br i1 %.not33.2.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.2.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.2.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cm, %bb.cl
  %indvars.iv.next.2.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.2.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.cl, !llvm.loop !1557

.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cm, %bb.cn
  %indvars.iv66.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next67.2.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cn ], [ %indvars.iv.2.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cm ] ; 4 uses
  %i.og = shl nuw i64 1, %indvars.iv66.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oh = and i64 %i.og, 1125908498874880
  %.not35.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.oh, 0
  %i.oi = icmp ne i64 %indvars.iv66.2.i.i.i.i.i.i.i.i.i.i.i.i, 61
  %spec.select.2.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.oi, %.not35.2.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %spec.select.2.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %.critedge39.2.i.i.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next67.2.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv66.2.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.oj = getelementptr inbounds i8, ptr @.str.112, i64 %indvars.iv.next67.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !128, !noalias !1586
  %i.ol = sext i8 %i.ok to i32
  %i.om = call i32 @isspace(i32 noundef %i.ol) #35, !noalias !1586
  %.not34.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.om, 0
  br i1 %.not34.2.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge39.2.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1558

.critedge39.2.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.cn, %.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa51.ph.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv66.2.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.2.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next67.2.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cn ] ; 2 uses
  %.not37.2.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not37.2.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %.preheader48.3.i.i.i.i.i.i.i.i.i.i.i.i

.preheader48.3.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.critedge39.2.i.i.i.i.i.i.i.i.i.i.i.i
  %sext77.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.lcssa51.ph.2.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.on = ashr exact i64 %sext77.i.i.i.i.i.i.i.i.i.i.i.i, 32
  br label %bb.co

bb.co:                                            ; preds = %.critedge.3.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader48.3.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.3.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.on, %.preheader48.3.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.3.i.i.i.i.i.i.i.i.i.i.i.i, %.critedge.3.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.oo = getelementptr inbounds i8, ptr @.str.112, i64 %indvars.iv.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !128, !noalias !1586 ; 2 uses
  %i.oq = sext i8 %i.op to i32
  %i.or = call i32 @isspace(i32 noundef %i.oq) #35, !noalias !1586
  %.not.3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.or, 0
  br i1 %.not.3.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cp, label %.critedge.3.i.i.i.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.os = shl nuw i64 1, %indvars.iv.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ot = and i64 %i.os, 1125908498874880
  %.not33.3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ot, 0
  br i1 %.not33.3.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.3.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.3.i.i.i.i.i.i.i.i.i.i.i.i

.critedge.3.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cp, %bb.co
  %indvars.iv.next.3.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.3.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.co, !llvm.loop !1557

.lr.ph.3.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cp, %bb.cq
  %indvars.iv66.3.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next67.3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cq ], [ %indvars.iv.3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cp ] ; 4 uses
end_hunk_1
