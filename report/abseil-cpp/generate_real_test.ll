Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generate_real_test?download=true
inline.NumInlined: 2233
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_143GenerateRealTest_U64ToDoubleSignedTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to
  %.pn252 = phi { ptr, i32 } [ %i.ase, %bb.tp ], [ %i.asd, %bb.to ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #17
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tn
  %.pn252.pn = phi { ptr, i32 } [ %.pn252, %bb.tq ], [ %i.asc, %bb.tn ] ; 2 uses
  %i.asf = load ptr, ptr %143, align 8, !tbaa !50 ; 3 uses
  %.not.i.i911 = icmp eq ptr %i.asf, null
  br i1 %.not.i.i911, label %_ZN7testing7MessageD2Ev.exit913, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912: ; preds = %bb.tr
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !26
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8
  call void %i.asi(ptr noundef nonnull align 8 dereferenceable(128) %i.asf) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit913

_ZN7testing7MessageD2Ev.exit913:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912, %bb.tr, %bb.tm
  %.pn252.pn.pn = phi { ptr, i32 } [ %i.asb, %bb.tm ], [ %.pn252.pn, %bb.tr ], [ %.pn252.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i912 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #17
  br label %bb.tu

bb.ts:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit904, %_ZN7testing7MessageD2Ev.exit910
  %i.asj = load ptr, ptr %i.apv, align 8, !tbaa !48 ; 4 uses
  %.not.i.i914 = icmp eq ptr %i.asj, null
  br i1 %.not.i.i914, label %_ZN7testing15AssertionResultD2Ev.exit918, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !21 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asj, i64 16 ; 2 uses
  %i.asm = icmp eq ptr %i.ask, %i.asl
  br i1 %i.asm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915: ; preds = %bb.tt
  %i.asn = load i64, ptr %i.asl, align 8, !tbaa !24
  %i.aso = add i64 %i.asn, 1
  call void @_ZdlPvm(ptr noundef %i.ask, i64 noundef %i.aso) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916: ; preds = %bb.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i915
  call void @_ZdlPvm(ptr noundef nonnull %i.asj, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit918

_ZN7testing15AssertionResultD2Ev.exit918:         ; preds = %bb.ts, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i916
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.so, label %bb.sp, !llvm.loop !143

bb.tu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit898, %_ZN7testing7MessageD2Ev.exit913, %_ZN7testing7MessageD2Ev.exit857, %_ZN7testing7MessageD2Ev.exit871, %_ZN7testing7MessageD2Ev.exit884, %_ZN7testing7MessageD2Ev.exit844, %_ZN7testing7MessageD2Ev.exit830, %_ZN7testing7MessageD2Ev.exit816, %_ZN7testing7MessageD2Ev.exit802, %_ZN7testing7MessageD2Ev.exit788, %_ZN7testing7MessageD2Ev.exit774, %_ZN7testing7MessageD2Ev.exit760, %_ZN7testing7MessageD2Ev.exit746, %_ZN7testing7MessageD2Ev.exit732, %_ZN7testing7MessageD2Ev.exit718, %_ZN7testing7MessageD2Ev.exit704, %_ZN7testing7MessageD2Ev.exit690, %_ZN7testing7MessageD2Ev.exit676, %_ZN7testing7MessageD2Ev.exit662, %_ZN7testing7MessageD2Ev.exit648, %_ZN7testing7MessageD2Ev.exit634, %_ZN7testing7MessageD2Ev.exit620, %_ZN7testing7MessageD2Ev.exit606, %_ZN7testing7MessageD2Ev.exit592, %_ZN7testing7MessageD2Ev.exit578, %_ZN7testing7MessageD2Ev.exit564, %_ZN7testing7MessageD2Ev.exit550, %_ZN7testing7MessageD2Ev.exit536, %_ZN7testing7MessageD2Ev.exit522, %_ZN7testing7MessageD2Ev.exit508, %_ZN7testing7MessageD2Ev.exit495, %_ZN7testing7MessageD2Ev.exit482, %_ZN7testing7MessageD2Ev.exit469, %_ZN7testing7MessageD2Ev.exit455, %_ZN7testing7MessageD2Ev.exit441, %_ZN7testing7MessageD2Ev.exit427, %_ZN7testing7MessageD2Ev.exit413, %_ZN7testing7MessageD2Ev.exit399, %_ZN7testing7MessageD2Ev.exit385, %_ZN7testing7MessageD2Ev.exit371, %_ZN7testing7MessageD2Ev.exit357, %_ZN7testing7MessageD2Ev.exit343, %_ZN7testing7MessageD2Ev.exit329, %_ZN7testing7MessageD2Ev.exit315
  %.pn252.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %_ZN7testing7MessageD2Ev.exit315 ], [ %.pn236.pn, %_ZN7testing7MessageD2Ev.exit844 ], [ %.pn233.pn, %_ZN7testing7MessageD2Ev.exit830 ], [ %.pn230.pn, %_ZN7testing7MessageD2Ev.exit816 ], [ %.pn227.pn, %_ZN7testing7MessageD2Ev.exit802 ], [ %.pn224.pn, %_ZN7testing7MessageD2Ev.exit788 ], [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit774 ], [ %.pn218.pn, %_ZN7testing7MessageD2Ev.exit760 ], [ %.pn215.pn, %_ZN7testing7MessageD2Ev.exit746 ], [ %.pn212.pn, %_ZN7testing7MessageD2Ev.exit732 ], [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit718 ], [ %.pn206.pn, %_ZN7testing7MessageD2Ev.exit704 ], [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit690 ], [ %.pn200.pn, %_ZN7testing7MessageD2Ev.exit676 ], [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit662 ], [ %.pn194.pn, %_ZN7testing7MessageD2Ev.exit648 ], [ %.pn191.pn, %_ZN7testing7MessageD2Ev.exit634 ], [ %.pn188.pn, %_ZN7testing7MessageD2Ev.exit620 ], [ %.pn185.pn, %_ZN7testing7MessageD2Ev.exit606 ], [ %.pn182.pn, %_ZN7testing7MessageD2Ev.exit592 ], [ %.pn179.pn, %_ZN7testing7MessageD2Ev.exit578 ], [ %.pn176.pn, %_ZN7testing7MessageD2Ev.exit564 ], [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit550 ], [ %.pn170.pn, %_ZN7testing7MessageD2Ev.exit536 ], [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit522 ], [ %.pn164.pn, %_ZN7testing7MessageD2Ev.exit508 ], [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit495 ], [ %.pn158.pn, %_ZN7testing7MessageD2Ev.exit482 ], [ %.pn155.pn, %_ZN7testing7MessageD2Ev.exit469 ], [ %.pn152.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %.pn149.pn, %_ZN7testing7MessageD2Ev.exit441 ], [ %.pn146.pn, %_ZN7testing7MessageD2Ev.exit427 ], [ %.pn143.pn, %_ZN7testing7MessageD2Ev.exit413 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit399 ], [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit385 ], [ %.pn134.pn, %_ZN7testing7MessageD2Ev.exit371 ], [ %.pn131.pn, %_ZN7testing7MessageD2Ev.exit357 ], [ %.pn128.pn, %_ZN7testing7MessageD2Ev.exit343 ], [ %.pn125.pn, %_ZN7testing7MessageD2Ev.exit329 ], [ %.pn239.pn, %_ZN7testing7MessageD2Ev.exit857 ], [ %.pn245.pn, %_ZN7testing7MessageD2Ev.exit884 ], [ %.pn242.pn, %_ZN7testing7MessageD2Ev.exit871 ], [ %.pn252.pn.pn, %_ZN7testing7MessageD2Ev.exit913 ], [ %.pn248.pn.pn, %_ZN7testing7MessageD2Ev.exit898 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %_ZN7testing7MessageD2Ev.exit301, %_ZN7testing7MessageD2Ev.exit287, %_ZN7testing7MessageD2Ev.exit273, %_ZN7testing7MessageD2Ev.exit263
  %.pn252.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn252.pn.pn.pn.pn.pn, %bb.tu ], [ %.pn119.pn, %_ZN7testing7MessageD2Ev.exit301 ], [ %.pn116.pn, %_ZN7testing7MessageD2Ev.exit287 ], [ %.pn113.pn, %_ZN7testing7MessageD2Ev.exit273 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit263 ]
  resume { ptr, i32 } %.pn252.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestE, i64 16), ptr %i.a, align 8, !tbaa !26
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 0, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 0, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 0, ptr %i.e, align 8, !tbaa !16
  %i.k = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_absl_random_test_trials, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.k, -6076574518398440533
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4absl12lts_202605267GetFlagIlEET_RKNS0_14flags_internal4FlagIS2_EE.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i64 @_ZNK4absl12lts_2026052614flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_absl_random_test_trials)
  br label %_ZN4absl12lts_202605267GetFlagIlEET_RKNS0_14flags_internal4FlagIS2_EE.exit

_ZN4absl12lts_202605267GetFlagIlEET_RKNS0_14flags_internal4FlagIS2_EE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.k, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %.not175 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not175, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4absl12lts_202605267GetFlagIlEET_RKNS0_14flags_internal4FlagIS2_EE.exit
  %.promoted157 = load i64, ptr %i.b, align 8
  %.promoted152 = load i64, ptr %i.c, align 8
  %.promoted159 = load i64, ptr %i.d, align 8
  %.promoted = load i64, ptr %i.a, align 8
  %.promoted145 = load i64, ptr %i.e, align 8
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit"
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.lr.ph
  %.promoted135160 = phi i64 [ %.promoted135161, %..loopexit_crit_edge ], [ %.promoted135163164, %.lr.ph ]
  %.promoted133153 = phi i64 [ %.promoted133154, %..loopexit_crit_edge ], [ %.promoted133156166, %.lr.ph ] ; 2 uses
  %.promoted132148 = phi i64 [ %.promoted132149, %..loopexit_crit_edge ], [ %.promoted132151167, %.lr.ph ]
  %.lcssa144146 = phi i64 [ %i.ai, %..loopexit_crit_edge ], [ %.lcssa144147168, %.lr.ph ]
  %.lcssa = phi i64 [ %i.aw, %..loopexit_crit_edge ], [ %.lcssa158165, %.lr.ph ] ; 3 uses
  %.1129.lcssa = phi float [ %.2130, %..loopexit_crit_edge ], [ %.0128169, %.lr.ph ]
  %.1.lcssa = phi float [ %.2, %..loopexit_crit_edge ], [ %.0170, %.lr.ph ]
  %.134.lcssa = phi i64 [ %i.ax, %..loopexit_crit_edge ], [ %.033171, %.lr.ph ] ; 3 uses
  %.132.lcssa = phi i64 [ %i.ay, %..loopexit_crit_edge ], [ %.031172, %.lr.ph ] ; 2 uses
  %i.m = icmp ne i64 %.132.lcssa, 0
  %i.n = icmp ne i64 %.134.lcssa, 0
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.031172 = phi i64 [ %.132.lcssa, %.loopexit ], [ -1, %.lr.ph.preheader ] ; 5 uses
  %.033171 = phi i64 [ %.134.lcssa, %.loopexit ], [ %.sroa.0.0.i.i.i, %.lr.ph.preheader ] ; 2 uses
  %.0170 = phi float [ %.1.lcssa, %.loopexit ], [ 2.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %.0128169 = phi float [ %.1129.lcssa, %.loopexit ], [ 1.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %.lcssa144147168 = phi i64 [ %.lcssa144146, %.loopexit ], [ %.promoted145, %.lr.ph.preheader ] ; 2 uses
  %.promoted132151167 = phi i64 [ %.promoted132148, %.loopexit ], [ %.promoted, %.lr.ph.preheader ] ; 3 uses
  %.promoted133156166 = phi i64 [ %.promoted133153, %.loopexit ], [ %.promoted152, %.lr.ph.preheader ] ; 3 uses
  %.lcssa158165 = phi i64 [ %.lcssa, %.loopexit ], [ %.promoted157, %.lr.ph.preheader ] ; 2 uses
  %.promoted135163164 = phi i64 [ %.promoted135160, %.loopexit ], [ %.promoted159, %.lr.ph.preheader ] ; 3 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.031172, i1 true) ; 2 uses
  %i.q = icmp ugt i64 %.031172, 16777215          ; 2 uses
  %i.r = sub nsw i64 40, %i.p
  %.neg = shl nsw i64 -1, %i.r
  %i.s = lshr i64 9223372036854775807, %i.p
  %.030.neg = select i1 %i.q, i64 %.neg, i64 -1
  %.029 = select i1 %i.q, i64 %i.s, i64 0         ; 2 uses
  %i.t = icmp ugt i64 %.031172, %.029
  br i1 %i.t, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_0clEm.exit", label %.loopexit

"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_0clEm.exit": ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit"
  %.promoted135162 = phi i64 [ %.promoted135161, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted135163164, %.lr.ph ]
  %.promoted133155 = phi i64 [ %.promoted133154, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted133156166, %.lr.ph ]
  %.promoted132150 = phi i64 [ %.promoted132149, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted132151167, %.lr.ph ]
  %.132139 = phi i64 [ %i.ay, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.031172, %.lr.ph ] ; 3 uses
  %.134138 = phi i64 [ %i.ax, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.033171, %.lr.ph ]
  %.1137 = phi float [ %.2, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.0170, %.lr.ph ] ; 2 uses
  %.1129136 = phi float [ %.2130, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.0128169, %.lr.ph ] ; 2 uses
  %i.u = phi i64 [ %i.ai, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.lcssa144147168, %.lr.ph ]
  %i.v = phi i64 [ %i.ap, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted132151167, %.lr.ph ] ; 2 uses
  %i.w = phi i64 [ %i.ao, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted133156166, %.lr.ph ] ; 2 uses
  %i.x = phi i64 [ %i.aw, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.lcssa158165, %.lr.ph ] ; 2 uses
  %i.y = phi i64 [ %i.av, %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit" ], [ %.promoted135163164, %.lr.ph ] ; 2 uses
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.132139, i1 true) ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = shl i64 %.132139, %i.z
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 8388607
  %i.af = shl nuw nsw i32 %i.aa, 23
  %reass.sub = sub nsw i32 %i.ae, %i.af
  %i.ag = add nsw i32 %reass.sub, 1056964608
  %i.ah = bitcast i32 %i.ag to float              ; 3 uses
  %i.ai = add i64 %i.u, 1                         ; 3 uses
  %i.aj = fsub float 1.000000e+00, %i.ah          ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.ah) ; 2 uses
  %i.al = fcmp ult float %i.ak, %.1129136
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_0clEm.exit"
  %i.am = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_0clEm.exit"
  %i.an = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.an, ptr %i.c, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.promoted133154 = phi i64 [ %i.an, %bb.d ], [ %.promoted133155, %bb.c ] ; 2 uses
  %.promoted132149 = phi i64 [ %.promoted132150, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %i.ao = phi i64 [ %i.an, %bb.d ], [ %i.w, %bb.c ]
  %i.ap = phi i64 [ %i.v, %bb.d ], [ %i.am, %bb.c ]
  %.2130 = phi float [ %i.ak, %bb.d ], [ %.1129136, %bb.c ] ; 2 uses
  %i.aq = fmul float %i.ah, 2.000000e+00
  %i.ar = fadd float %i.aj, %i.aq                 ; 2 uses
  %i.as = fcmp ult float %i.ar, %.1137
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = add i64 %i.x, 1
  br label %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit"

bb.g:                                             ; preds = %bb.e
  %i.au = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !16
  br label %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit"

"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_1clEf.exit": ; preds = %bb.f, %bb.g
  %.promoted135161 = phi i64 [ %i.au, %bb.g ], [ %.promoted135162, %bb.f ] ; 2 uses
  %i.av = phi i64 [ %i.au, %bb.g ], [ %i.y, %bb.f ]
  %i.aw = phi i64 [ %i.x, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %.2 = phi float [ %i.ar, %bb.g ], [ %.1137, %bb.f ] ; 2 uses
  %i.ax = add i64 %.134138, -1                    ; 3 uses
  %i.ay = add i64 %.132139, %.030.neg             ; 3 uses
  %i.az = icmp ugt i64 %i.ay, %.029
  %i.ba = icmp ne i64 %i.ax, 0
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_ExhaustiveFloat_Test8TestBodyEvENK3$_0clEm.exit", label %..loopexit_crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %.loopexit
  %i.bc = icmp eq i64 %.134.lcssa, 0
  store i64 %.lcssa, ptr %i.b, align 8
  br i1 %i.bc, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 268435456, ptr %i.f, align 4, !tbaa !62
  %i.bd = icmp ugt i64 %.promoted133153, 268435456
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZN7testing8internal18CmpHelperOpFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.97)
  br label %_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.be = load i8, ptr %1, align 8, !tbaa !45, !range !46, !noundef !47
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.bj = phi ptr [ %i.bi, %bb.m ], [ @.str.51, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 485, ptr noundef %i.bj)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bk = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit57

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.r ], [ %i.bp, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.br = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.br, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.s
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.ci

bb.t:                                             ; preds = %_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i58, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !24
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
end_hunk_0
