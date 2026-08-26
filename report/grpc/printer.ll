Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/printer?download=true
inline.NumInlined: 3420
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !130

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !77
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !77
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !77
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !77
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !77
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !77
  %i.ax = and i8 %i.aw, 8
  %.not10 = icmp eq i8 %i.ax, 0
  br i1 %.not10, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit:      ; preds = %.lr.ph.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28 ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %.lr.ph.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.bc, i64 noundef %0) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef returned zeroext %0, i64 %1, i8 %2, ptr %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = and i64 %1, 65536
  %i.b = icmp ne i64 %i.a, 0
  %or.cond = select i1 %0, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.5, i32 noundef 321) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void %4(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr %3)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit unwind label %bb.d, !inline_history !131

_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.c, %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !132    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !77
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

bb.f:                                             ; preds = %bb.a
  ret i1 %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer6FormatD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer6Format4LineESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorIN6google8protobuf2io7Printer6Format4LineESaIS5_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf2io7Printer6Format4LineESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(296) initializes((0, 33), (40, 114), (120, 200), (224, 264), (272, 296)) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 16, !tbaa !137
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 36, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.45.0..sroa_idx.a, i8 0, i64 15, i1 false)
  store i64 2, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @.str.31, ptr %.sroa.78.0..sroa_idx, align 16
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 3, ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @.str.32, ptr %.sroa.910.0..sroa_idx, align 16
  %.sroa.1011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 2, ptr %.sroa.1011.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.c, align 16, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.d, align 1, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.f, align 16, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = load atomic i8, ptr @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str.30) #28
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  br label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit

_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.p = load i8, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117, !range !15, !noundef !16
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.p to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.0.0.insert.ext.i, 256
  store i16 %.sroa.0.0.insert.insert.i, ptr %.sroa.11.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(296) initializes((0, 33), (40, 114), (120, 200), (224, 264), (272, 296)) %0, ptr noundef %1, ptr nofree noundef readonly byval(%"struct.google::protobuf::io::Printer::Options") align 8 captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 16, !tbaa !137
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.c, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.d, align 16, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.e, align 1, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false)
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.g, align 16, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.l = load i8, ptr %i.k, align 1, !tbaa !142, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load atomic i8, ptr @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.e, !prof !140

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @getenv(ptr noundef nonnull @.str.30) #28
  %i.r = icmp ne ptr %i.q, null
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.u = load i8, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117, !range !15, !noundef !16
  %.sroa.0.0.insert.ext = zext nneg i8 %i.u to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.j, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamEcPNS1_19AnnotationCollectorE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(296) initializes((0, 33), (40, 41), (48, 98), (104, 114), (120, 200), (224, 264), (272, 296)) %0, ptr noundef %1, i8 noundef signext %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 16, !tbaa !137
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %2, ptr %i.b, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %.sroa.57.0..sroa_idx, align 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @.str.31, ptr %.sroa.79.0..sroa_idx, align 16
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 3, ptr %.sroa.810.0..sroa_idx, align 8
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @.str.32, ptr %.sroa.911.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.c, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.d, align 16, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.e, align 1, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false)
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.g, align 16, !tbaa !139
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load atomic i8, ptr @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @getenv(ptr noundef nonnull @.str.30) #28
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace) #28
  br label %_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit

_ZN6google8protobuf2io7PrinterC2EPNS1_20ZeroCopyOutputStreamENS2_7OptionsE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i8, ptr @_ZZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamENS2_7OptionsEE19kEnableCodegenTrace, align 1, !tbaa !117, !range !15, !noundef !16
  %.sroa.0.0.insert.ext.i = zext nneg i8 %i.r to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.0.0.insert.ext.i, 256
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.q, align 16
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6google8protobuf2io7Printer9LookupVarESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(296) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::optional.37", align 8  ; 16 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %.not10.i = icmp eq ptr %i.d, %i.b
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit.i, %.lr.ph.i
  %.011.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.k, %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit.i ]
  %i.k = add i64 %.011.i, -1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.k ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !145
  store i64 %1, ptr %3, align 8, !noalias !148
  store ptr %2, ptr %i.i, align 8, !noalias !148
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151, !noalias !148
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #29, !noalias !153
  unreachable

_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_.exit.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154, !noalias !148
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.37") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !156
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !145
  %i.q = load i8, ptr %i.j, align 8, !tbaa !157, !range !15, !alias.scope !145, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.critedge, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit.i: ; preds = %_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_.exit.i
  store i8 0, ptr %i.j, align 8, !tbaa !157, !alias.scope !145
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.loopexit, label %bb.b, !llvm.loop !159

.loopexit:                                        ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 0, ptr %i.s, align 8, !tbaa !157, !alias.scope !145
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.5, i32 noundef 306, ptr noundef nonnull @.str.6) #32
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.loopexit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 15, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.q

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

.critedge:                                        ; preds = %_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !160
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.m, label %bb.h, !prof !162

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.5, i32 noundef 309, ptr noundef nonnull @.str.8) #32
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 15, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit33 unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit33: ; preds = %bb.i
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %1, ptr %2)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit33
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 24, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit34 unwind label %bb.l

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit34: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.q

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit, %bb.j, %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit33
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.m:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.021.0.copyload = load i64, ptr %4, align 8, !tbaa !72
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.gep, align 8, !tbaa !76
  store i8 0, ptr %i.ab, align 8, !tbaa !157
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !132 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #31
  %.pre = load i8, ptr %i.w, align 8, !tbaa !160
  %i.ai = icmp eq i8 %.pre, 0
  br i1 %i.ai, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef 3)
          to label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33
  unreachable

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.021.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.222.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert

bb.q:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.u, %bb.f ]
  call void @_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !157, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !157
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !77
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !160
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZNSt17_Optional_payloadIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef 3)
          to label %_ZNSt17_Optional_payloadIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0ELb0EED2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

_ZNSt17_Optional_payloadIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEE(i1 noundef returned zeroext %0, i64 %1, i8 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.51, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %3, ptr %5, align 8, !tbaa !72
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !76
  %i.a = call noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %0, i64 %1, i8 poison, ptr nonnull %5, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE") ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i1 %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(296) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %class.anon.51, align 8             ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !164
  store i8 0, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !165
  %i.g = icmp uge i64 %i.d, %i.f                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 35, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 0, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.i, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %3, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %i.l, ptr %1, align 8, !tbaa !72
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.j, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !76
  %i.m = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.g, i64 282574488403968, i8 poison, ptr nonnull %1, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !132    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !77
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !132    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !77
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.c
  %.pn26 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.z = load ptr, ptr %2, align 8, !tbaa !132    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.critedge31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !77
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %.critedge31

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !165
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !141
  %i.af = sub i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.c, align 8, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %i.ag = load ptr, ptr %2, align 8, !tbaa !132   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.f
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !77
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.critedge31:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn26
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8optionalIN6google8protobuf2io7Printer14SourceLocationEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit:
  %5 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 8 uses
  %6 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cleanup") align 8 %5, ptr noundef nonnull align 16 dereferenceable(296) %0, ptr %1, i64 %2, i1 noundef zeroext true)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i32 16843009, ptr %.sroa.7.0..sroa_idx, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %3, ptr %4, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %6)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZNSt8optionalIN6google8protobuf2io7Printer14SourceLocationEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit
  %i.a = load i8, ptr %5, align 8, !tbaa !166, !range !15, !noundef !16
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !144
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !171, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !172
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151  ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.h:                                             ; preds = %_ZNSt8optionalIN6google8protobuf2io7Printer14SourceLocationEEaSIRS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS4_ESA_IS4_NSt5decayISD_E4typeEEEEESt16is_constructibleIS4_JSD_EESt13is_assignableIS7_SD_EEERS5_E4typeEOSD_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.x
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEb(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Cleanup") align 8 %0, ptr noundef nonnull align 16 dereferenceable(296) %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.244, align 8            ; 4 uses
  %6 = alloca %class.anon.252, align 8            ; 4 uses
  %7 = alloca %class.anon.252, align 8            ; 4 uses
  %8 = alloca %class.anon.244, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::allocator.173", align 1 ; 3 uses
  %10 = alloca %"struct.std::pair.195", align 8   ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.121", align 8 ; 15 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.124", align 8 ; 17 uses
  %13 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %14 = alloca %"struct.std::pair.149", align 8   ; 6 uses
  %15 = alloca %"struct.std::pair.153", align 8   ; 14 uses
  %16 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %17 = alloca %"struct.std::pair.159", align 8   ; 21 uses
  %18 = alloca %"struct.std::pair.155", align 8   ; 7 uses
  %19 = alloca %class.anon.161, align 8           ; 14 uses
  %20 = alloca %class.anon.164, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.thread, label %bb.b, !prof !173

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i54142 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i54142, align 8
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %3)
          to label %.lr.ph unwind label %bb.h

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i54 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i54, align 8
  %.idx = mul nuw nsw i64 %3, 184
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 88
  br label %bb.i

._crit_edge:                                      ; preds = %bb.an, %.thread
  %.sroa.4.0..sroa_idx.i.i.i54144 = phi ptr [ %.sroa.4.0..sroa_idx.i.i.i54142, %.thread ], [ %.sroa.4.0..sroa_idx.i.i.i54, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEC2EOSN_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !144 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !174
  %.not.i55 = icmp eq ptr %i.u, %i.w
  br i1 %.not.i55, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.y = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSB_E_vEEOT_.exit.i unwind label %bb.d ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEb:bb.a
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i32 noundef 3)
          to label %.body85 unwind label %bb.aw   ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #33
  unreachable

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_vEEOT_.exit.i: ; preds = %bb.at
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEC2EOSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %20) #28
  store ptr %i.et, ptr %i.ep, align 8, !tbaa !175
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_, ptr %i.ez, align 8, !tbaa !250
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.es, align 8, !tbaa !151
  %i.fa = load ptr, ptr %i.eo, align 8, !tbaa !172
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fb, ptr %i.eo, align 8, !tbaa !172
  br label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12emplace_backIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEERSD_DpOT_.exit

bb.ax:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_M_realloc_insertIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12emplace_backIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEERSD_DpOT_.exit unwind label %bb.bb

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12emplace_backIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEERSD_DpOT_.exit: ; preds = %bb.ax, %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_vEEOT_.exit.i
  %i.fd = load i64, ptr %20, align 8, !tbaa !244
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12emplace_backIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEERSD_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %20, ptr %7, align 8, !tbaa !252
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 96, ptr nonnull %7, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i88 unwind label %bb.az

.noexc.i.i88:                                     ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ff = load i64, ptr %20, align 8, !tbaa !244
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !77
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !248
  %i.fk = and i64 %i.fj, 65536
  %i.fl = icmp ne i64 %i.fk, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.ff, ptr noundef %i.fh, i64 noundef 96, i64 noundef 8, i1 noundef zeroext %i.fl)
          to label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %.noexc.i.i88, %bb.ay
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #33
  unreachable

_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12emplace_backIJZNS5_8WithDefsEN4absl12lts_202505124SpanIKNS5_3SubEEEbEUlSB_E0_EEERSD_DpOT_.exit, %.noexc.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bc

bb.ba:                                            ; preds = %bb.g
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.fo, %bb.ba ], [ %i.z, %bb.e ], [ %i.z, %bb.d ]
  call void @_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ax
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85:                                          ; preds = %bb.au, %bb.av, %bb.bb
  %eh.lpad-body86 = phi { ptr, i32 } [ %i.fp, %bb.bb ], [ %i.eu, %bb.av ], [ %i.eu, %bb.au ]
  call void @_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ar, %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.fq, align 8, !tbaa !255, !alias.scope !256
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.en, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !117, !alias.scope !256
  store i8 1, ptr %0, align 8, !tbaa !166, !alias.scope !256
  %i.fr = load i64, ptr %12, align 8, !tbaa !244
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %12, ptr %6, align 8, !tbaa !252
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 96, ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.be

.noexc.i:                                         ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ft = load i64, ptr %12, align 8, !tbaa !244
  %i.fu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i54144, align 8, !tbaa !77
  %i.fv = load i64, ptr %i.el, align 8, !tbaa !248
  %i.fw = and i64 %i.fv, 65536
  %i.fx = icmp ne i64 %i.fw, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ft, ptr noundef %i.fu, i64 noundef 96, i64 noundef 8, i1 noundef zeroext %i.fx)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i, %bb.bd
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #33
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev.exit: ; preds = %bb.bc, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ga = load i64, ptr %11, align 8, !tbaa !244
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %11, ptr %5, align 8, !tbaa !245
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 112, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SH_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSS_ST_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i89 unwind label %bb.bg

.noexc.i89:                                       ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gc = load i64, ptr %11, align 8, !tbaa !244
  %i.gd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !248
  %i.gg = and i64 %i.gf, 65536
  %i.gh = icmp ne i64 %i.gg, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.gc, ptr noundef %i.gd, i64 noundef 112, i64 noundef 8, i1 noundef zeroext %i.gh)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %.noexc.i89, %bb.bf
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #33
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev.exit, %.noexc.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret void

bb.bh:                                            ; preds = %.body85, %bb.m, %bb.ao, %.body
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.am, %bb.m ], [ %.pn44.pn, %bb.ao ], [ %eh.lpad-body86, %.body85 ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.h
  %.pn44.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.bh ], [ %i.ai, %bb.h ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %class.anon.51, align 8             ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %class.anon.51, align 8            ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %class.anon.51, align 8            ; 5 uses
  %14 = alloca %class.anon.51, align 8            ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %15 = alloca %class.anon.51, align 8            ; 5 uses
  %16 = alloca %class.anon.51, align 8            ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"struct.google::protobuf::io::Printer::SourceLocation", align 1 ; 3 uses
  %19 = alloca %class.anon.298, align 8           ; 4 uses
  %20 = alloca %"struct.google::protobuf::io::Printer::Format", align 8 ; 13 uses
  %21 = alloca %"class.std::vector.85", align 8   ; 14 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 23 uses
  %23 = alloca %"struct.std::pair.95", align 8    ; 10 uses
  %.sroa.0539 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %class.anon.99, align 8            ; 8 uses
  %25 = alloca %"class.std::optional.100", align 8 ; 12 uses
  %26 = alloca %class.anon.111, align 8           ; 5 uses
  %27 = alloca %"class.std::optional.37", align 8 ; 22 uses
  %28 = alloca %"class.std::optional.100", align 8 ; 12 uses
  %29 = alloca %"class.std::optional.37", align 8 ; 12 uses
  %30 = alloca %"class.std::optional.100", align 8 ; 10 uses
  %31 = alloca %class.anon.112, align 8           ; 5 uses
  %32 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %34 = alloca %"struct.std::pair.114", align 8   ; 6 uses
  %35 = alloca %class.anon.116, align 8           ; 6 uses
  %36 = alloca %class.anon.117, align 8           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !141  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !259 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !77
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !260
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !262, !range !15, !noundef !16
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.s = load i64, ptr %i.r, align 16, !tbaa !244 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store ptr %i.r, ptr %19, align 8, !tbaa !263
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 48, ptr nonnull %19, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS3_10StringHashENS3_8StringEqESaISC_IKSB_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSN_SO_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.u = icmp ult i64 %i.s, 128
  invoke void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i1 noundef zeroext %i.u, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit491"

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit: ; preds = %bb.b, %.noexc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN6google8protobuf2io7Printer14TokenizeFormatESt17basic_string_viewIcSt11char_traitsIcEERKNS2_12PrintOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.google::protobuf::io::Printer::Format") align 8 %20, ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(9) %5)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit
  %.sroa.0167.0.copyload = load i16, ptr %5, align 8
  invoke void @_ZN6google8protobuf2io7Printer17PrintCodegenTraceESt8optionalINS2_14SourceLocationEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i16 %.sroa.0167.0.copyload)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.y = load ptr, ptr %20, align 8, !tbaa !135   ; 2 uses
  %.not1186 = icmp eq ptr %i.x, %i.y
  br i1 %.not1186, label %._crit_edge1182, label %.lr.ph1181

.lr.ph1181:                                       ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %.sroa.10.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.24.0..sroa_idx.i305 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %.sroa.5564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.24.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 6
  %.sroa.24.0..sroa_idx.i344 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %27, i64 80 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.24.0..sroa_idx.i394 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %.sroa.24.0..sroa_idx.i437 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.gep527 = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %.sroa.gep528 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  %.sroa.6.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.7.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.i

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE5clearEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.h:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.i:                                             ; preds = %.lr.ph1181, %._crit_edge1168
  %i.cd = phi ptr [ %i.y, %.lr.ph1181 ], [ %i.dg, %._crit_edge1168 ]
  %.02051179 = phi i64 [ 0, %.lr.ph1181 ], [ %.1206.lcssa, %._crit_edge1168 ] ; 2 uses
  %.02171178 = phi i1 [ false, %.lr.ph1181 ], [ %.1218.lcssa, %._crit_edge1168 ]
  %.02251177 = phi i64 [ 0, %.lr.ph1181 ], [ %i.de, %._crit_edge1168 ] ; 3 uses
  %.sroa.0582.01176 = phi ptr [ null, %.lr.ph1181 ], [ %.sroa.0582.1.lcssa, %._crit_edge1168 ] ; 3 uses
  %.sroa.8585.01175 = phi ptr [ null, %.lr.ph1181 ], [ %.sroa.8585.1.lcssa, %._crit_edge1168 ] ; 2 uses
  %.sroa.15.01174 = phi ptr [ null, %.lr.ph1181 ], [ %.sroa.15.1.lcssa, %._crit_edge1168 ] ; 3 uses
  %i.ce = getelementptr [32 x i8], ptr %i.cd, i64 %.02251177 ; 9 uses
  %.not = icmp eq i64 %.02251177, 0
  br i1 %.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 -32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !115
  %i.ch = getelementptr i8, ptr %i.ce, i64 -24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !115
  %i.cj = icmp ne ptr %i.cg, %i.ci
  br i1 %.02171178, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load i8, ptr %i.z, align 8, !tbaa !17, !range !15, !noundef !16
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %.critedge281

bb.l:                                             ; preds = %bb.k
  %i.cm = load i8, ptr %i.aa, align 16, !tbaa !28, !range !15, !noundef !16
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = and i1 %i.cj, %i.cn
  br i1 %i.co, label %.critedge, label %.critedge281

.critedge281:                                     ; preds = %bb.k, %bb.l
  %i.cp = load ptr, ptr %i.e, align 16, !tbaa !259 ; 3 uses
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !260 ; 2 uses
  %.not.i.i292 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i292, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit300, label %.lr.ph.i.i.i.i293

.lr.ph.i.i.i.i293:                                ; preds = %.critedge281, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296
  %.05.i.i.i.i294 = phi ptr [ %i.cw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296 ], [ %i.cp, %.critedge281 ] ; 3 uses
  %i.cr = load ptr, ptr %.05.i.i.i.i294, align 8, !tbaa !132 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i294, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i295: ; preds = %.lr.ph.i.i.i.i293
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !77
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296: ; preds = %.lr.ph.i.i.i.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i295
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i294, i64 32 ; 2 uses
  %.not.i.i.i.i297 = icmp eq ptr %i.cw, %i.cq
  br i1 %.not.i.i.i.i297, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i298, label %.lr.ph.i.i.i.i293, !llvm.loop !261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i298: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i296
  store ptr %i.cp, ptr %i.g, align 8, !tbaa !260
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit300

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit300: ; preds = %.critedge281, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i298
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.m

_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit300
  store i8 1, ptr %i.aa, align 16, !tbaa !28
  br label %.critedge

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit300
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.critedge:                                        ; preds = %bb.l, %_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.j, %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !98
  %i.da = add i64 %i.cz, %i.d
  store i64 %i.da, ptr %i.c, align 8, !tbaa !141
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 5 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !118
  %i.dd = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %.not1187 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not1187, label %._crit_edge1168, label %.lr.ph1167

._crit_edge1168:                                  ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.01174, %.critedge ], [ %.sroa.15.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.sroa.8585.1.lcssa = phi ptr [ %.sroa.8585.01175, %.critedge ], [ %.sroa.8585.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.sroa.0582.1.lcssa = phi ptr [ %.sroa.0582.01176, %.critedge ], [ %.sroa.0582.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %.1218.lcssa = phi i1 [ false, %.critedge ], [ %.7224, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.1206.lcssa = phi i64 [ %.02051179, %.critedge ], [ %.11216, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %i.de = add nuw i64 %.02251177, 1               ; 2 uses
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.dg = load ptr, ptr %20, align 8, !tbaa !135  ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 5
  %i.dl = icmp ult i64 %i.de, %i.dk
  br i1 %i.dl, label %bb.i, label %._crit_edge1182, !llvm.loop !266

.lr.ph1167:                                       ; preds = %.critedge, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dm = phi ptr [ %i.yf, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.dd, %.critedge ]
  %.12061166 = phi i64 [ %.11216, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.02051179, %.critedge ] ; 22 uses
  %.12181165 = phi i1 [ %.7224, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %.critedge ] ; 13 uses
  %.02301164 = phi i64 [ %i.yd, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %.critedge ] ; 20 uses
  %.sroa.0582.11161 = phi ptr [ %.sroa.0582.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.0582.01176, %.critedge ] ; 32 uses
  %.sroa.8585.11160 = phi ptr [ %.sroa.8585.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.8585.01175, %.critedge ] ; 21 uses
  %.sroa.15.11157 = phi ptr [ %.sroa.15.4, %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.sroa.15.01174, %.critedge ] ; 27 uses
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.02301164 ; 3 uses
  %.sroa.0572.0.copyload = load i64, ptr %i.dn, align 8, !tbaa !72 ; 10 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !76 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !117
  %i.do = trunc nuw i8 %.sroa.13.0.copyload to i1
  br i1 %i.do, label %bb.o, label %.invoke

.invoke:                                          ; preds = %.lr.ph1167, %bb.o
  %i.dp = phi ptr [ %i.ca, %bb.o ], [ %.sroa.10.0.copyload, %.lr.ph1167 ]
  %i.dq = phi i64 [ 1, %bb.o ], [ %.sroa.0572.0.copyload, %.lr.ph1167 ]
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %i.dp, i64 noundef %i.dq)
          to label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.n

bb.n:                                             ; preds = %.invoke
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.o:                                             ; preds = %.lr.ph1167
  %i.ds = icmp eq i64 %.sroa.0572.0.copyload, 0
  br i1 %i.ds, label %.invoke, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i64 %.sroa.0572.0.copyload, ptr %22, align 8, !tbaa !72
  store ptr %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76
  %i.dt = load ptr, ptr %i.ab, align 8, !tbaa !267 ; 2 uses
  %.not624 = icmp eq ptr %i.dt, null
  br i1 %.not624, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store i64 %.sroa.0572.0.copyload, ptr %17, align 8
  store ptr %.sroa.10.0.copyload, ptr %i.ad, align 8
  invoke void %i.dt(ptr noundef nonnull align 16 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.r unwind label %bb.s, !inline_history !268

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.pre1414.pre.pre = load i64, ptr %22, align 8, !tbaa !72
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.t:                                             ; preds = %bb.r, %bb.p
  %.pre1414.pre = phi i64 [ %.pre1414.pre.pre, %bb.r ], [ %.sroa.0572.0.copyload, %bb.p ] ; 10 uses
  %i.dv = load i8, ptr %i.ae, align 4, !tbaa !269, !range !15, !noundef !16
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.u, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread

bb.u:                                             ; preds = %bb.t
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76 ; 4 uses
  %i.dx = icmp eq i64 %.pre1414.pre, 0
  br i1 %i.dx, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.u
  %lhsc = load i8, ptr %.sroa.22.0.copyload.i, align 1
  %i.dy = icmp eq i8 %lhsc, 123
  br i1 %i.dy, label %bb.v, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i318

bb.v:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1
  store ptr %i.dz, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.ea = add i64 %.pre1414.pre, -1               ; 2 uses
  store i64 %i.ea, ptr %22, align 8, !tbaa !128
  %i.eb = icmp eq i64 %i.ea, 1                    ; 2 uses
  %.sroa.0126.0.copyload = load i64, ptr %5, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store i64 30, ptr %16, align 8, !tbaa !72
  store ptr @.str.16, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !76
  %i.ec = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.eb, i64 %.sroa.0126.0.copyload, i8 poison, ptr nonnull %16, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br i1 %i.eb, label %bb.y, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.x:                                             ; preds = %bb.al, %bb.y, %bb.v, %bb.ao
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.y:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !77
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store i64 22, ptr %15, align 8, !tbaa !72
  store ptr @.str.17, ptr %.sroa.24.0..sroa_idx.i305, align 8, !tbaa !76
  %i.ei = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.eh, i64 %.sroa.0126.0.copyload, i8 poison, ptr nonnull %15, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.z unwind label %bb.x       ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br i1 %i.eh, label %bb.aa, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !77
  %i.el = sext i8 %i.ek to i64
  %i.em = add nsw i64 %i.el, -49                  ; 3 uses
  %i.en = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer27ValidateIndexLookupInBoundsEmmmNS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 noundef %i.em, i64 noundef %.12061166, i64 noundef %4, i64 %.sroa.0126.0.copyload, i8 poison)
          to label %bb.ab unwind label %.loopexit.split-lp646

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.en, label %bb.ac, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

.loopexit645:                                     ; preds = %.lr.ph.i
  %lpad.loopexit647 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp646:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp648 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.ac:                                            ; preds = %bb.ab
  %i.eo = icmp eq i64 %i.em, %.12061166
  %i.ep = zext i1 %i.eo to i64
  %spec.select = add nsw i64 %.12061166, %i.ep
  %i.eq = load i8, ptr %i.aa, align 16, !tbaa !28, !range !15, !noundef !16
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.preheader.i, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit

.preheader.i:                                     ; preds = %bb.ac
  %i.es = load i64, ptr %i.c, align 8, !tbaa !141
  %.not.i = icmp eq i64 %i.es, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc308, %.preheader.i
  store i8 0, ptr %i.aa, align 16, !tbaa !28
  br label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc308
  %.02.i = phi i64 [ %i.et, %.noexc308 ], [ 0, %.preheader.i ]
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc308 unwind label %.loopexit645

.noexc308:                                        ; preds = %.lr.ph.i
  %i.et = add nuw i64 %.02.i, 1                   ; 2 uses
  %i.eu = load i64, ptr %i.c, align 8, !tbaa !141
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit: ; preds = %._crit_edge.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !272
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.em ; 2 uses
  store i64 %i.ew, ptr %23, align 8
  store i64 0, ptr %.sroa.5564.0..sroa_idx, align 8
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !163
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !132 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !72
  %i.fb = icmp ugt i64 %i.fa, 15
  br i1 %i.fb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc309 unwind label %bb.aj ; 2 uses

.noexc309:                                        ; preds = %.noexc.i.i
  store ptr %i.fc, ptr %i.ag, align 8, !tbaa !132
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.fd, ptr %i.ah, align 8, !tbaa !77
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc309, %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit
  %i.fe = phi ptr [ %i.fc, %.noexc309 ], [ %i.ah, %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit ] ; 2 uses
  switch i64 %i.fa, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !77
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !77
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.ey, i64 %i.fa, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  store i64 %i.fg, ptr %i.ai, align 8, !tbaa !164
  %i.fh = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fj = load ptr, ptr %i.aj, align 8, !tbaa !273 ; 6 uses
  %i.fk = load ptr, ptr %i.ak, align 8, !tbaa !276
  %.not.i.i310 = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i.i310, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull align 8 dereferenceable(48) %23, i64 16, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !163
  %i.fn = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.ah
  br i1 %i.fo, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load i64, ptr %i.ai, align 8, !tbaa !164 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nuw nsw i64 %i.fp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fm, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ag
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !132
  %i.fs = load i64, ptr %i.ah, align 8, !tbaa !77
  store i64 %i.fs, ptr %i.fm, align 8, !tbaa !77
  %.pre = load i64, ptr %i.ai, align 8, !tbaa !164
  br label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit.thread

_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit.thread: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ft = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fp, %bb.ah ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !164
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !132
  store i64 0, ptr %i.ai, align 8, !tbaa !164
  %i.fv = load ptr, ptr %i.aj, align 8, !tbaa !273
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store ptr %i.fw, ptr %i.aj, align 8, !tbaa !273
  br label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.fj, ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit unwind label %bb.ak

_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.ai
  %.pre1413 = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %i.fx = icmp eq ptr %.pre1413, %i.ah
  br i1 %i.fx, label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit
  %i.fy = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %.pre1413, i64 noundef %i.fz) #31
  br label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE9push_backEOS8_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.aj:                                            ; preds = %.noexc.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

bb.ak:                                            ; preds = %bb.ai
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ah
  br i1 %i.gd, label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312: ; preds = %bb.ak
  %i.ge = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #31
  br label %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314

_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312, %bb.aj
  %.pn269 = phi { ptr, i32 } [ %i.ga, %bb.aj ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i312 ], [ %i.gb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ft

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i318: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %lhsc625 = load i8, ptr %.sroa.22.0.copyload.i, align 1
  %i.gg = icmp eq i8 %lhsc625, 125
  br i1 %i.gg, label %bb.al, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread

bb.al:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i318
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1
  store ptr %i.gh, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.gi = add i64 %.pre1414.pre, -1
  store i64 %i.gi, ptr %22, align 8, !tbaa !128
  %i.gj = load ptr, ptr %21, align 8, !tbaa !277
  %i.gk = load ptr, ptr %i.aj, align 8, !tbaa !277
  %i.gl = icmp ne ptr %i.gj, %i.gk                ; 2 uses
  %.sroa.0111.0.copyload = load i64, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i64 28, ptr %14, align 8, !tbaa !72
  store ptr @.str.19, ptr %.sroa.24.0..sroa_idx.i323, align 8, !tbaa !76
  %i.gm = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.gl, i64 %.sroa.0111.0.copyload, i8 poison, ptr nonnull %14, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.am unwind label %bb.x      ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br i1 %i.gl, label %bb.an, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.an:                                            ; preds = %bb.am
  %i.gn = load i64, ptr %i.af, align 8, !tbaa !272
  %i.go = load ptr, ptr %i.aj, align 8, !tbaa !277 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -40
  store i64 %i.gn, ptr %i.gp, align 8, !tbaa !278
  %i.gq = load ptr, ptr %i.al, align 16, !tbaa !281 ; 3 uses
  %.not268 = icmp eq ptr %i.gq, null
  br i1 %.not268, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds i8, ptr %i.go, i64 -48
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !282
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull align 8 dereferenceable(48) %i.gr)
          to label %bb.ap unwind label %bb.x

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gv = load ptr, ptr %i.aj, align 8, !tbaa !273 ; 3 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -48
  store ptr %i.gw, ptr %i.aj, align 8, !tbaa !273
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !132 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gv, i64 -16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i326: ; preds = %bb.ap
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !77
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #31
  br label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread: ; preds = %bb.u, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i318, %bb.t
  %i.hd = load i8, ptr %i.am, align 2, !tbaa !284, !range !15, !noundef !16
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.aq, label %bb.bo

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76 ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.2106.0.copyload, i64 %.pre1414.pre ; 4 uses
  %i.hg = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hh = ptrtoint ptr %.sroa.2106.0.copyload to i64 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE:bb.a
  %i.lc = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i, i64 -1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !77, !noalias !285
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !77, !noalias !285
  %i.lh = and i8 %i.lg, 8
  %.not14.i = icmp eq i8 %i.lh, 0
  %spec.select.i.i.i = select i1 %.not14.i, ptr %.sroa.03.1.i.i.i, ptr %i.jk
  br label %.loopexit644

.loopexit644.loopexit.split.loop.exit:            ; preds = %bb.bd
  %i.li = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -1
  br label %.loopexit644

.loopexit644.loopexit.split.loop.exit1815:        ; preds = %bb.be
  %i.lj = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -2
  br label %.loopexit644

.loopexit644.loopexit.split.loop.exit1817:        ; preds = %bb.bf
  %i.lk = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -3
  br label %.loopexit644

.loopexit644:                                     ; preds = %.lr.ph.i.i.i.i336, %.loopexit644.loopexit.split.loop.exit, %.loopexit644.loopexit.split.loop.exit1815, %.loopexit644.loopexit.split.loop.exit1817, %bb.bj, %bb.bi, %bb.bh, %._crit_edge.i.i.i.i330
  %.sink.i.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.bj ], [ %.sroa.03.2.i.i.i, %bb.bi ], [ %.sroa.03.0.i.i.i, %bb.bh ], [ %i.jk, %._crit_edge.i.i.i.i330 ], [ %i.lk, %.loopexit644.loopexit.split.loop.exit1817 ], [ %i.lj, %.loopexit644.loopexit.split.loop.exit1815 ], [ %i.li, %.loopexit644.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i, %.lr.ph.i.i.i.i336 ]
  %i.ll = ptrtoint ptr %.sink.i.i.i.i to i64
  %i.lm = sub i64 %i.ll, %i.jg
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.jj, i64 %i.lm) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %22, align 8, !tbaa !72
  store ptr %i.jk, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76
  %i.ln = add i64 %.sroa.speculated.i.i, %.sroa.speculated.i ; 4 uses
  %i.lo = icmp ugt i64 %i.ln, %.sroa.0572.0.copyload
  br i1 %i.lo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.loopexit644
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i64 noundef %i.ln, i64 noundef %.sroa.0572.0.copyload) #29
          to label %.noexc343 unwind label %bb.bn

.noexc343:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.loopexit644
  %i.lp = sub nuw i64 %.sroa.0572.0.copyload, %i.ln
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload, i64 %i.ln
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bb
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.bn:                                            ; preds = %bb.bk
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.bo:                                            ; preds = %bb.bl, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread
  %i.lt = phi i64 [ %.sroa.speculated.i.i, %bb.bl ], [ %.pre1414.pre, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread ] ; 5 uses
  %.sroa.7551.0 = phi ptr [ %i.lq, %bb.bl ], [ null, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread ]
  %.sroa.0550.0 = phi i64 [ %i.lp, %bb.bl ], [ 0, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.10.0.copyload, %bb.bl ], [ null, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread ]
  %.sroa.0553.0 = phi i64 [ %.sroa.speculated.i, %bb.bl ], [ 0, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit322.thread ] ; 2 uses
  %i.lu = icmp ne i64 %i.lt, 0                    ; 2 uses
  %.sroa.096.0.copyload = load i64, ptr %5, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store i64 25, ptr %13, align 8, !tbaa !72
  store ptr @.str.20, ptr %.sroa.24.0..sroa_idx.i344, align 8, !tbaa !76
  %i.lv = and i64 %.sroa.096.0.copyload, 65536
  %i.lw = icmp ne i64 %i.lv, 0
  %or.cond.i = select i1 %i.lu, i1 true, i1 %i.lw
  br i1 %or.cond.i, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.5, i32 noundef 321) #32
          to label %.noexc494 unwind label %bb.bu

.noexc494:                                        ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer8ValidateEbNS6_12PrintOptionsESt17basic_string_viewIcSt11char_traitsIcEEE3$_0NSt7__cxx1112basic_stringIcSA_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %13)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i unwind label %bb.br, !inline_history !131

_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i: ; preds = %.noexc494
  %i.lx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lx)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.bs

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.bq
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.br:                                            ; preds = %.noexc494
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.bs:                                            ; preds = %bb.bq, %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.ma = load ptr, ptr %7, align 8, !tbaa !132   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492: ; preds = %bb.bs
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !77
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.bt:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br i1 %i.lu, label %bb.bv, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.bu:                                            ; preds = %bb.bp
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.bv:                                            ; preds = %bb.bt
  %.sroa.22.0.copyload.i349 = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76 ; 5 uses
  %i.mg = icmp ugt i64 %i.lt, 6                   ; 4 uses
  br i1 %i.mg, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350: ; preds = %bb.bv
  %i.mh = load i32, ptr %.sroa.22.0.copyload.i349, align 1
  %i.mi = xor i32 %i.mh, 1635021663
  %i.mj = getelementptr i8, ptr %.sroa.22.0.copyload.i349, i64 3
  %i.mk = load i32, ptr %i.mj, align 1
  %i.ml = xor i32 %i.mk, 611611233
  %i.mm = or i32 %i.mi, %i.ml
  %i.mn = icmp ne i32 %i.mm, 0
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i353, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i353: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i349, i64 7 ; 2 uses
  store ptr %i.mq, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.mr = add i64 %i.lt, -7                       ; 2 uses
  store i64 %i.mr, ptr %22, align 8, !tbaa !128
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354: ; preds = %bb.bv, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i353
  %.sroa.22.0.copyload.i357 = phi ptr [ %.sroa.22.0.copyload.i349, %bb.bv ], [ %i.mq, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i353 ] ; 2 uses
  %.sroa.01.0.copyload.i355 = phi i64 [ %i.lt, %bb.bv ], [ %i.mr, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i353 ] ; 3 uses
  %i.ms = icmp ult i64 %.sroa.01.0.copyload.i355, 5
  br i1 %i.ms, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit362, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354
  %.0.i6.i3521514 = phi i1 [ %i.mg, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ], [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350 ] ; 3 uses
  %.sroa.01.0.copyload.i3551513 = phi i64 [ %.sroa.01.0.copyload.i355, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ], [ %i.lt, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350 ] ; 2 uses
  %.sroa.22.0.copyload.i3571512 = phi ptr [ %.sroa.22.0.copyload.i357, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ], [ %.sroa.22.0.copyload.i349, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i350 ] ; 4 uses
  %i.mt = load i32, ptr %.sroa.22.0.copyload.i3571512, align 1
  %i.mu = xor i32 %i.mt, 1684956511
  %i.mv = getelementptr i8, ptr %.sroa.22.0.copyload.i3571512, i64 4
  %i.mw = load i8, ptr %i.mv, align 1
  %i.mx = zext i8 %i.mw to i32
  %i.my = xor i32 %i.mx, 36
  %i.mz = or i32 %i.mu, %i.my
  %i.na = icmp ne i32 %i.mz, 0
  %i.nb = zext i1 %i.na to i32
  %i.nc = icmp eq i32 %i.nb, 0
  br i1 %i.nc, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit362

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i3571512, i64 5 ; 2 uses
  store ptr %i.nd, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !270
  %i.ne = add i64 %.sroa.01.0.copyload.i3551513, -5 ; 2 uses
  store i64 %i.ne, ptr %22, align 8, !tbaa !128
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit362

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit362: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361
  %.0.i6.i3521515 = phi i1 [ %.0.i6.i3521514, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358 ], [ %.0.i6.i3521514, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361 ], [ %i.mg, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ]
  %.sroa.079.0.copyload = phi i64 [ %.sroa.01.0.copyload.i3551513, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358 ], [ %i.ne, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361 ], [ %.sroa.01.0.copyload.i355, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ] ; 5 uses
  %.sroa.280.0.copyload = phi ptr [ %.sroa.22.0.copyload.i3571512, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358 ], [ %i.nd, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361 ], [ %.sroa.22.0.copyload.i357, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ] ; 3 uses
  %.0.i6.i360 = phi i1 [ %.0.i6.i3521514, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i358 ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i361 ], [ %i.mg, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit354 ]
  %i.nf = load i8, ptr %.sroa.2127.0..sroa_idx, align 8, !tbaa !293, !range !15, !noundef !16
  %i.ng = trunc nuw i8 %i.nf to i1                ; 2 uses
  %or.cond282 = and i1 %.0.i6.i360, %i.ng
  br i1 %or.cond282, label %bb.bw, label %bb.cy

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit362
  br i1 %.0.i6.i3521515, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.nh = load i8, ptr %i.aa, align 16, !tbaa !28, !range !15, !noundef !16
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %.preheader.i363, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit369

.preheader.i363:                                  ; preds = %bb.bx
  %i.nj = load i64, ptr %i.c, align 8, !tbaa !141
  %.not.i364 = icmp eq i64 %i.nj, 0
  br i1 %.not.i364, label %._crit_edge.i367, label %.lr.ph.i365

._crit_edge.i367:                                 ; preds = %.noexc368, %.preheader.i363
  store i8 0, ptr %i.aa, align 16, !tbaa !28
  br label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit369

.lr.ph.i365:                                      ; preds = %.preheader.i363, %.noexc368
  %.02.i366 = phi i64 [ %i.nk, %.noexc368 ], [ 0, %.preheader.i363 ]
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc368 unwind label %bb.cd

.noexc368:                                        ; preds = %.lr.ph.i365
  %i.nk = add nuw i64 %.02.i366, 1                ; 2 uses
  %i.nl = load i64, ptr %i.c, align 8, !tbaa !141
  %i.nm = icmp ult i64 %i.nk, %i.nl
  br i1 %i.nm, label %.lr.ph.i365, label %._crit_edge.i367, !llvm.loop !271

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit369: ; preds = %._crit_edge.i367, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0539)
  %i.nn = load i64, ptr %i.af, align 8, !tbaa !272 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0539, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !294
  %.not.i.i370 = icmp eq ptr %.sroa.8585.11160, %.sroa.15.11157
  br i1 %.not.i.i370, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit369
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8585.11160, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  %.sroa.6.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %.sroa.8585.11160, i64 16
  store i64 %i.nn, ptr %.sroa.6.0..sroa_idx540, align 8
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE9push_backEOS5_.exit

bb.bz:                                            ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit369
  %i.no = ptrtoint ptr %.sroa.8585.11160 to i64
  %i.np = ptrtoint ptr %.sroa.0582.11161 to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 4 uses
  %i.nr = icmp eq i64 %i.nq, 9223372036854775800
  br i1 %i.nr, label %bb.ca, label %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #29
          to label %.noexc372 unwind label %.loopexit.split-lp666

.noexc372:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bz
  %i.ns = sdiv exact i64 %i.nq, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ns, i64 1)
  %i.nt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ns ; 2 uses
  %i.nu = icmp ult i64 %i.nt, %i.ns
  %i.nv = call i64 @llvm.umin.i64(i64 %i.nt, i64 384307168202282325)
  %i.nw = select i1 %i.nu, i64 384307168202282325, i64 %i.nv ; 3 uses
  %.not.i.i.i.i371 = icmp ne i64 %i.nw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i371)
  %i.nx = mul nuw nsw i64 %i.nw, 24
  %i.ny = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nx) #30
          to label %.noexc373 unwind label %.loopexit665 ; 5 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.nq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0539, i64 16, i1 false)
  %.sroa.6.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i64 %i.nn, ptr %.sroa.6.0..sroa_idx542, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0582.11161, %.sroa.8585.11160
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc373, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i.i ], [ %i.ny, %.noexc373 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0582.11161, %.noexc373 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !295
  %i.oa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oa, %.sroa.8585.11160
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !299

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc373
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ny, %.noexc373 ], [ %i.ob, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0582.11161, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0582.11161, i64 noundef %i.nq) #31
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cb, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ny, i64 %i.nw
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.by
  %.sroa.15.9 = phi ptr [ %i.oc, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.15.11157, %bb.by ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.8585.11160, %bb.by ]
  %.sroa.0582.9 = phi ptr [ %i.ny, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0582.11161, %bb.by ] ; 3 uses
  %.sroa.8585.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0539)
  %i.od = add i64 %.02301164, 1                   ; 4 uses
  %i.oe = load ptr, ptr %i.db, align 8, !tbaa !118
  %i.of = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = sdiv exact i64 %i.oi, 24
  %i.ok = icmp ult i64 %i.od, %i.oj
  br i1 %i.ok, label %bb.cc, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.cc:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE9push_backEOS5_.exit
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %i.od ; 2 uses
  %.sroa.0536.0.copyload = load i64, ptr %i.ol, align 8, !tbaa !72 ; 3 uses
  %.sroa.7537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.sroa.7537.0.copyload = load ptr, ptr %.sroa.7537.0..sroa_idx, align 8, !tbaa !76 ; 3 uses
  %i.om = icmp eq i64 %.sroa.0536.0.copyload, 0
  br i1 %i.om, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377._crit_edge, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377.preheader

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377.preheader: ; preds = %bb.cc
  %scevgep = getelementptr i8, ptr %.sroa.7537.0.copyload, i64 %.sroa.0536.0.copyload
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377.preheader, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381
  %.sroa.7537.01153 = phi ptr [ %i.oo, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381 ], [ %.sroa.7537.0.copyload, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377.preheader ] ; 3 uses
  %.sroa.0536.01152 = phi i64 [ %i.op, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381 ], [ %.sroa.0536.0.copyload, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377.preheader ] ; 2 uses
  %lhsc630 = load i8, ptr %.sroa.7537.01153, align 1
  %i.on = icmp eq i8 %lhsc630, 32
  br i1 %i.on, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377._crit_edge

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.7537.01153, i64 1
  %i.op = add i64 %.sroa.0536.01152, -1           ; 2 uses
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377._crit_edge, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377, !llvm.loop !300

bb.cd:                                            ; preds = %.lr.ph.i365
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit665:                                     ; preds = %_ZNKSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit667 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp666:                            ; preds = %bb.ca
  %lpad.loopexit.split-lp668 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp666, %.loopexit665
  %lpad.phi669 = phi { ptr, i32 } [ %lpad.loopexit667, %.loopexit665 ], [ %lpad.loopexit.split-lp668, %.loopexit.split-lp666 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0539)
  br label %bb.ft

bb.cf:                                            ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377._crit_edge
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377._crit_edge: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377, %bb.cc
  %.sroa.0536.0.lcssa = phi i64 [ 0, %bb.cc ], [ %.sroa.0536.01152, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377 ], [ 0, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381 ]
  %.sroa.7537.0.lcssa = phi ptr [ %.sroa.7537.0.copyload, %bb.cc ], [ %.sroa.7537.01153, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i377 ], [ %scevgep, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit381 ]
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %.sroa.7537.0.lcssa, i64 noundef %.sroa.0536.0.lcssa)
          to label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit unwind label %bb.cf

bb.cg:                                            ; preds = %bb.bw
  %i.ot = load ptr, ptr %i.db, align 8, !tbaa !118
  %i.ou = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = icmp eq i64 %i.ox, 24
  %spec.select283 = select i1 %i.oy, i1 true, i1 %.12181165 ; 2 uses
  %i.oz = getelementptr inbounds i8, ptr %.sroa.8585.11160, i64 -24 ; 3 uses
  %.sroa.083.0.copyload = load i64, ptr %i.oz, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.8585.11160, i64 -16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.8585.11160, i64 -8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.pa = icmp eq i64 %.sroa.083.0.copyload, %.sroa.079.0.copyload
  br i1 %i.pa, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.pb = icmp eq i64 %.sroa.079.0.copyload, 0
  br i1 %i.pb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.ch
  %bcmp.i = call i32 @bcmp(ptr %.sroa.6.0.copyload, ptr %.sroa.280.0.copyload, i64 %.sroa.079.0.copyload)
  %i.pc = icmp eq i32 %bcmp.i, 0
  br i1 %i.pc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %bb.ci

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.ch
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.cg
  %i.pd = phi i1 [ false, %bb.cg ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  store i64 %.sroa.083.0.copyload, ptr %24, align 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx85, align 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx87, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !294
  %i.pe = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.pd, i64 %.sroa.096.0.copyload, i8 poison, ptr nonnull %24, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcS9_SaIcEEEEENS6_12PrintOptionsEE3$_1SF_JEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.cj unwind label %bb.ck     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br i1 %i.pd, label %bb.cl, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit

bb.ck:                                            ; preds = %bb.ci
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.ft

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %.sroa.073.0.copyload = load i64, ptr %22, align 8, !tbaa !72
  %.sroa.274.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx577, align 8, !tbaa !76
  %i.pg = load ptr, ptr %i.ax, align 16, !tbaa !301 ; 3 uses
  %i.ph = load ptr, ptr %i.ay, align 8, !tbaa !172 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE:bb.a

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.invoke, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit
  %.sroa.15.4 = phi ptr [ %.sroa.15.11157, %.invoke ], [ %.sroa.15.3, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ] ; 2 uses
  %.sroa.8585.4 = phi ptr [ %.sroa.8585.11160, %.invoke ], [ %.sroa.8585.3, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ] ; 2 uses
  %.sroa.0582.4 = phi ptr [ %.sroa.0582.11161, %.invoke ], [ %.sroa.0582.3, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ] ; 2 uses
  %.7237 = phi i64 [ %.02301164, %.invoke ], [ %.6236, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ]
  %.7224 = phi i1 [ %.12181165, %.invoke ], [ %.6223, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ] ; 2 uses
  %.11216 = phi i64 [ %.12061166, %.invoke ], [ %.10215, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE8pop_backEv.exit ] ; 2 uses
  %i.yd = add i64 %.7237, 1                       ; 2 uses
  %i.ye = load ptr, ptr %i.db, align 8, !tbaa !118
  %i.yf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = sdiv exact i64 %i.yi, 24
  %i.yk = icmp ult i64 %i.yd, %i.yj
  br i1 %i.yk, label %.lr.ph1167, label %._crit_edge1168, !llvm.loop !364

bb.fs:                                            ; preds = %.loopexit655, %.loopexit.split-lp656, %.loopexit650, %.loopexit.split-lp651, %bb.ef, %bb.en, %bb.eb, %bb.fj, %bb.fc, %bb.ez, %bb.dw, %bb.du, %bb.dt, %bb.df, %bb.dc
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi643, %bb.dt ], [ %i.th, %bb.dw ], [ %i.ra, %bb.df ], [ %i.qu, %bb.dc ], [ %lpad.phi638, %bb.du ], [ %i.tu, %bb.ef ], [ %lpad.loopexit.split-lp653, %.loopexit.split-lp651 ], [ %i.tp, %bb.eb ], [ %i.ue, %bb.en ], [ %i.we, %bb.ez ], [ %lpad.phi664, %bb.fj ], [ %i.wl, %bb.fc ], [ %lpad.loopexit652, %.loopexit650 ], [ %lpad.loopexit657, %.loopexit655 ], [ %lpad.loopexit.split-lp658, %.loopexit.split-lp656 ]
  call void @_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @_ZNSt14_Optional_baseIN6google8protobuf2io7Printer9ValueImplILb0EEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.ft

bb.ft:                                            ; preds = %.loopexit645, %.loopexit.split-lp646, %bb.bm, %bb.bn, %bb.bu, %bb.ck, %bb.cx, %bb.fs, %bb.cf, %bb.ce, %bb.cd, %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314, %bb.x, %bb.s
  %.sroa.15.6 = phi ptr [ %.sroa.15.11157, %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314 ], [ %.sroa.15.11157, %bb.bu ], [ %.sroa.15.11157, %bb.x ], [ %.sroa.15.11157, %bb.s ], [ %.sroa.15.11157, %bb.bm ], [ %.sroa.15.11157, %bb.bn ], [ %.sroa.8585.11160, %bb.ce ], [ %.sroa.15.9, %bb.cf ], [ %.sroa.15.11157, %bb.cd ], [ %.sroa.15.11157, %bb.cx ], [ %.sroa.15.11157, %bb.ck ], [ %.sroa.15.11157, %bb.fs ], [ %.sroa.15.11157, %.loopexit645 ], [ %.sroa.15.11157, %.loopexit.split-lp646 ]
  %.sroa.0582.6 = phi ptr [ %.sroa.0582.11161, %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314 ], [ %.sroa.0582.11161, %bb.bu ], [ %.sroa.0582.11161, %bb.x ], [ %.sroa.0582.11161, %bb.s ], [ %.sroa.0582.11161, %bb.bm ], [ %.sroa.0582.11161, %bb.bn ], [ %.sroa.0582.11161, %bb.ce ], [ %.sroa.0582.9, %bb.cf ], [ %.sroa.0582.11161, %bb.cd ], [ %.sroa.0582.11161, %bb.cx ], [ %.sroa.0582.11161, %bb.ck ], [ %.sroa.0582.11161, %bb.fs ], [ %.sroa.0582.11161, %.loopexit645 ], [ %.sroa.0582.11161, %.loopexit.split-lp646 ]
  %.pn269.pn.pn = phi { ptr, i32 } [ %.pn269, %_ZNSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit314 ], [ %i.mf, %bb.bu ], [ %i.ed, %bb.x ], [ %i.du, %bb.s ], [ %i.lr, %bb.bm ], [ %i.ls, %bb.bn ], [ %lpad.phi669, %bb.ce ], [ %i.os, %bb.cf ], [ %i.or, %bb.cd ], [ %.pn261.pn, %bb.cx ], [ %i.pf, %bb.ck ], [ %.pn255.pn.pn.pn, %bb.fs ], [ %lpad.loopexit647, %.loopexit645 ], [ %lpad.loopexit.split-lp648, %.loopexit.split-lp646 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.gg

._crit_edge1182:                                  ; preds = %._crit_edge1168, %bb.f
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.15.1.lcssa, %._crit_edge1168 ] ; 4 uses
  %.sroa.0582.0.lcssa = phi ptr [ null, %bb.f ], [ %.sroa.0582.1.lcssa, %._crit_edge1168 ] ; 6 uses
  %.0205.lcssa = phi i64 [ 0, %bb.f ], [ %.1206.lcssa, %._crit_edge1168 ]
  %.sroa.08.0.copyload = load i64, ptr %5, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  store i64 %1, ptr %35, align 8, !tbaa !72
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %2, ptr %.sroa.6180.0..sroa_idx, align 8, !tbaa !76
  %i.yl = icmp eq i64 %.0205.lcssa, %4
  %i.ym = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.yl, i64 %.sroa.08.0.copyload, i8 poison, ptr nonnull %35, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcS9_SaIcEEEEENS6_12PrintOptionsEE3$_4SF_JEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.fu unwind label %bb.fy     ; 0 uses

bb.fu:                                            ; preds = %._crit_edge1182
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.yn = load ptr, ptr %21, align 8, !tbaa !277
  %i.yo = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !277
  %i.yq = icmp eq ptr %i.yn, %i.yp
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  store ptr %0, ptr %36, align 8, !tbaa !365
  %i.yr = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %1, ptr %i.yr, align 8, !tbaa !72
  %.sroa.6180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %2, ptr %.sroa.6180.0..sroa_idx181, align 8, !tbaa !76
  %i.ys = invoke noundef zeroext i1 @_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(i1 noundef zeroext %i.yq, i64 %.sroa.08.0.copyload, i8 poison, ptr nonnull %36, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcS9_SaIcEEEEENS6_12PrintOptionsEE3$_5SF_JEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %bb.fv unwind label %bb.fz     ; 0 uses

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.yt = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.yu = load i8, ptr %i.yt, align 8, !tbaa !17, !range !15, !noundef !16
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.fw, label %bb.gb

bb.fw:                                            ; preds = %bb.fv
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.yx = load i8, ptr %i.yw, align 16, !tbaa !28, !range !15, !noundef !16
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit478 unwind label %bb.ga

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit478: ; preds = %bb.fx
  store i8 1, ptr %i.yw, align 16, !tbaa !28
  br label %bb.gb

bb.fy:                                            ; preds = %._crit_edge1182
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.gg

bb.fz:                                            ; preds = %bb.fu
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.gg

bb.ga:                                            ; preds = %bb.fx
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gb:                                            ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit478, %bb.fw, %bb.fv
  %.not.i.i.i479 = icmp eq ptr %.sroa.0582.0.lcssa, null
  br i1 %.not.i.i.i479, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.zc = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.zd = ptrtoint ptr %.sroa.0582.0.lcssa to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0582.0.lcssa, i64 noundef %i.ze) #31
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit: ; preds = %bb.gb, %bb.gc
  %i.zf = load ptr, ptr %21, align 8, !tbaa !367  ; 3 uses
  %i.zg = load ptr, ptr %i.yo, align 8, !tbaa !273 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zf, %i.zg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.zn, %_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %i.zf, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit ] ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !132 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i480: ; preds = %.lr.ph.i.i.i
  %i.zl = load i64, ptr %i.zj, align 8, !tbaa !77
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #31
  br label %_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i480
  %i.zn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i481 = icmp eq ptr %i.zn, %i.zg
  br i1 %.not.i.i.i481, label %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !368

_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !367
  br label %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit
  %i.zo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.zf, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit, label %bb.gd

bb.gd:                                            ; preds = %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exit.i
  %i.zp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !276
  %i.zr = ptrtoint ptr %i.zq to i64
  %i.zs = ptrtoint ptr %i.zo to i64
  %i.zt = sub i64 %i.zr, %i.zs
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.zt) #31
  br label %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_EvT_SA_RSaIT0_E.exit.i, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.zu = load ptr, ptr %20, align 8, !tbaa !135  ; 3 uses
  %i.zv = load ptr, ptr %i.w, align 8, !tbaa !96  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.zu, %i.zv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i483

.lr.ph.i.i.i.i483:                                ; preds = %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit, %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i484 = phi ptr [ %i.aac, %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i ], [ %i.zu, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit ] ; 3 uses
  %i.zw = load ptr, ptr %.05.i.i.i.i484, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.i.i.i.i483
  %i.zx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i484, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !116
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = ptrtoint ptr %i.zw to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef %i.aab) #31
  br label %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i: ; preds = %bb.ge, %.lr.ph.i.i.i.i483
  %i.aac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i484, i64 32 ; 2 uses
  %.not.i.i.i.i485 = icmp eq ptr %i.aac, %i.zv
  br i1 %.not.i.i.i.i485, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i483, !llvm.loop !136

_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf2io7Printer6Format4LineEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %20, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit
  %i.aad = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.zu, %_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aad, null
  br i1 %.not.i.i1.i.i, label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit", label %bb.gf

bb.gf:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aae = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !97
  %i.aag = ptrtoint ptr %i.aaf to i64
  %i.aah = ptrtoint ptr %i.aad to i64
  %i.aai = sub i64 %i.aag, %i.aah
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.aai) #31
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit"

"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit": ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer6Format4LineES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  store i64 %i.d, ptr %i.c, align 8, !tbaa !141
  ret void

bb.gg:                                            ; preds = %bb.n, %bb.ft, %bb.m, %bb.ga, %bb.fz, %bb.fy
  %.sroa.15.8 = phi ptr [ %.sroa.15.0.lcssa, %bb.fy ], [ %.sroa.15.01174, %bb.m ], [ %.sroa.15.0.lcssa, %bb.ga ], [ %.sroa.15.0.lcssa, %bb.fz ], [ %.sroa.15.11157, %bb.n ], [ %.sroa.15.6, %bb.ft ]
  %.sroa.0582.8 = phi ptr [ %.sroa.0582.0.lcssa, %bb.fy ], [ %.sroa.0582.01176, %bb.m ], [ %.sroa.0582.0.lcssa, %bb.ga ], [ %.sroa.0582.0.lcssa, %bb.fz ], [ %.sroa.0582.11161, %bb.n ], [ %.sroa.0582.6, %bb.ft ] ; 3 uses
  %.pn273.pn.pn = phi { ptr, i32 } [ %i.yz, %bb.fy ], [ %i.cx, %bb.m ], [ %i.zb, %bb.ga ], [ %i.za, %bb.fz ], [ %i.dr, %bb.n ], [ %.pn269.pn.pn, %bb.ft ]
  %.not.i.i.i486 = icmp eq ptr %.sroa.0582.8, null
  br i1 %.not.i.i.i486, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit487, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aaj = ptrtoint ptr %.sroa.15.8 to i64
  %i.aak = ptrtoint ptr %.sroa.0582.8 to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0582.8, i64 noundef %i.aal) #31
  br label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit487

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit487: ; preds = %bb.gg, %bb.gh
  call void @_ZNSt6vectorISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit487, %bb.h
  %.pn273.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn, %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmESaIS5_EED2Ev.exit487 ], [ %i.cc, %bb.h ]
  call void @_ZN6google8protobuf2io7Printer6FormatD2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %20) #28
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.g
  %.pn273.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn.pn, %bb.gi ], [ %i.cb, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit491"

"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcSA_SaIcEEEEENS7_12PrintOptionsEE3$_0ED2Ev.exit491": ; preds = %bb.gj, %bb.d
  %.pn273.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn.pn.pn, %bb.gj ], [ %i.v, %bb.d ]
  store i64 %i.d, ptr %i.c, align 8, !tbaa !141
  resume { ptr, i32 } %.pn273.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS7_3SubEEEbEUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !166, !range !15, !noundef !16
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !144
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !171, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit

bb.e:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -32 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !172
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151  ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #33
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_E14InvokeCallbackEv.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE8pop_backEv.exit.i.i, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer20GetSubstitutionRangeESt17basic_string_viewIcSt11char_traitsIcEENS2_12PrintOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.54") align 8 captures(none) %0, ptr noundef nonnull align 16 dereferenceable(296) %1, i64 %2, ptr %3, i64 %4, i8 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %class.anon.66, align 8            ; 5 uses
  store i64 %2, ptr %13, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE4findISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.f = icmp ne ptr %i.d, null                   ; 2 uses
  %i.g = and i64 %4, 65536
  %i.h = icmp ne i64 %i.g, 0                      ; 2 uses
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !76
  %.sroa.0.0.copyload = load i64, ptr %13, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.5, i32 noundef 321) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !369
  store i64 34, ptr %7, align 8, !noalias !369
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.47, ptr %i.i, align 8, !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !369
  store i64 %.sroa.0.0.copyload, ptr %8, align 8, !tbaa !72, !noalias !369
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !76, !noalias !369
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i unwind label %bb.d

_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !369
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.c, %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.m = load ptr, ptr %12, align 8, !tbaa !132   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !77
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #33
  unreachable

_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.019.0.copyload = load i64, ptr %i.r, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %i.s = icmp ule i64 %.sroa.019.0.copyload, %.sroa.6.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  store i64 %.sroa.019.0.copyload, ptr %14, align 8
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx22, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !294
  %or.cond.i12 = select i1 %i.s, i1 true, i1 %i.h
  br i1 %or.cond.i12, label %_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = inttoptr i64 %.sroa.6.0.copyload to ptr
  %i.v = inttoptr i64 %.sroa.019.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.5, i32 noundef 321) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !380
  store ptr %i.t, ptr %6, align 8, !tbaa !77, !noalias !380
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.w, align 8, !tbaa !393, !noalias !380
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.v, ptr %i.x, align 8, !tbaa !77, !noalias !380
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.y, align 8, !tbaa !393, !noalias !380
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.u, ptr %i.z, align 8, !tbaa !77, !noalias !380
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aa, align 8, !tbaa !393, !noalias !380
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.48, i64 61, ptr nonnull %6, i64 3)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i14 unwind label %bb.i

_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i14: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !380
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i14
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i17 unwind label %bb.j

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i17: ; preds = %bb.h
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  unreachable

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE4findISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_:bb.a
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !164
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !401

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !132
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_largeISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_largeISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_m.exit, !prof !173

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !400

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_largeISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_smallISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_smallISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSJ_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_largeISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10find_largeISt17basic_string_viewIcS7_EEENSI_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSJ_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer8AnnotateESt17basic_string_viewIcSt11char_traitsIcEES6_S6_RKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::optional.54", align 8  ; 6 uses
  %9 = alloca %"class.std::optional.54", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !281
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN6google8protobuf2io7Printer20GetSubstitutionRangeESt17basic_string_viewIcSt11char_traitsIcEENS2_12PrintOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.54") align 8 %8, ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, i64 282574488403968, i8 poison)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN6google8protobuf2io7Printer20GetSubstitutionRangeESt17basic_string_viewIcSt11char_traitsIcEENS2_12PrintOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.54") align 8 %9, ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %3, ptr %4, i64 282574488403968, i8 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !395, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !15
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %8, align 8, !tbaa !362    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !363  ; 2 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 16, !tbaa !281 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8, !tbaa !72 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !76 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.p, ptr %10, align 8, !tbaa !163
  %i.q = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.r = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #29
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !72
  %i.s = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.s, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %10, align 8, !tbaa !132
  %i.u = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.u, ptr %i.p, align 8, !tbaa !77
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !77
  store i8 %i.w, ptr %i.v, align 1, !tbaa !77
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !164
  %i.z = load ptr, ptr %10, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !282
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.k, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !77
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void

bb.l:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %10, align 8, !tbaa !132  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.p
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.l
  %i.al = load i64, ptr %i.p, align 8, !tbaa !77
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.114", align 8    ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !138, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i8, ptr %i.g, align 16, !tbaa !28, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.loopexit20

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %1, align 1, !tbaa !77
  %.not = icmp eq i8 %i.j, 10
  br i1 %.not, label %.loopexit20, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !141
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread, label %.lr.ph.i

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread: ; preds = %.preheader.i
  store i8 0, ptr %i.g, align 16, !tbaa !28
  br label %bb.d

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.02.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %.preheader.i ]
  tail call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %i.m = add nuw i64 %.02.i, 1                    ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !141
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.i, label %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit, !llvm.loop !271

_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit: ; preds = %.lr.ph.i
  %.pre = load i8, ptr %i.c, align 1, !tbaa !138, !range !15
  %i.p = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.g, align 16, !tbaa !28
  br i1 %i.p, label %bb.t, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit.thread, %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !194 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !194  ; 2 uses
  %.not1921 = icmp eq ptr %i.r, %i.t
  br i1 %.not1921, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit
  %.sroa.016.022 = phi ptr [ %i.r, %.lr.ph ], [ %i.as, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE30find_or_prepare_insert_non_sooIS9_EESA_INSI_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.022)
  %i.w = load i8, ptr %i.v, align 8, !tbaa !357, !range !15, !alias.scope !408, !noundef !16
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !408 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.y, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !163
  %i.z = load ptr, ptr %.sroa.016.022, align 8, !tbaa !132, !noalias !408 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !164, !noalias !408 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !408
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !72, !noalias !408
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !132
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !408
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !77
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.af = phi ptr [ %i.ad, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !77
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !77
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !408 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !164
  %i.aj = load ptr, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !132
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !408
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit: ; preds = %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRSF_EESN_IJEEEEEvNSI_8iteratorEDpOT_.exit.i.i.i
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.an = load i64, ptr %i.k, align 8, !tbaa !141
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !72
  %i.ap = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.aq = shufflevector <2 x i64> %i.ap, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ar = add <2 x i64> %i.ao, %i.aq
  store <2 x i64> %i.ar, ptr %i.am, align 8, !tbaa !72
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 32 ; 2 uses
  %.not19 = icmp eq ptr %i.as, %i.t
  br i1 %.not19, label %.loopexit20, label %bb.e

.loopexit20:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEixIS9_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISG_EPT_RSM_EclL_ZSt7declvalIRSG_EDTcl9__declvalISM_ELi0EEEvEEEEERKSM_.exit, %bb.d, %bb.c, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !259 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.au
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit20, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.au, %.loopexit20 ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !77
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.au, ptr %i.av, align 8, !tbaa !260
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %.loopexit20, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !409
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !409
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.i, label %.lr.ph24

.lr.ph24:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph24, %bb.s
  %.023 = phi i64 [ 0, %.lr.ph24 ], [ %i.cb, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !77  ; 2 uses
  store i8 %i.bk, ptr %i.b, align 1, !tbaa !77
  switch i8 %i.bk, label %bb.r [
    i8 40, label %bb.k
    i8 41, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !335
  %i.bm = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !335
  %i.bn = load ptr, ptr %i.bd, align 16, !tbaa !409
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !409 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !72
  %i.bs = icmp eq i64 %i.br, %i.bm
  br i1 %i.bs, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bd, align 16, !tbaa !409
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !409 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %.pre26 = load i64, ptr %i.bi, align 8, !tbaa !335 ; 3 uses
  br i1 %i.bv, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %i.by = icmp eq i64 %i.bx, %.pre26
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bw, ptr %i.bf, align 8, !tbaa !336
  %i.bz = add i64 %.pre26, -1
  store i64 %i.bz, ptr %i.bi, align 8, !tbaa !335
  br label %bb.s

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ca = add i64 %.pre26, -1
  store i64 %i.ca, ptr %i.bi, align 8, !tbaa !335
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.q, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cb = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !410

.loopexit:                                        ; preds = %bb.s, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load i8, ptr %i.cc, align 16, !tbaa !411, !range !15, !noundef !16
  %i.ce = load i8, ptr %i.c, align 1, !tbaa !138, !range !15, !noundef !16
  %i.cf = or i8 %i.ce, %i.cd
  store i8 %i.cf, ptr %i.c, align 1, !tbaa !138
  br label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf2io7Printer15IndentIfAtStartEv.exit, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer15IndentIfAtStartEv(ptr noundef nonnull align 16 dereferenceable(296) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !tbaa !28, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  store i8 0, ptr %i.a, align 16, !tbaa !28
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02 = phi i64 [ %i.f, %.lr.ph ], [ 0, %.preheader ]
  tail call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull @.str.2, i64 noundef 1)
  %i.f = add nuw i64 %.02, 1                      ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !141
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !271

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io7Printer17PrintCodegenTraceESt8optionalINS2_14SourceLocationEE(ptr noundef nonnull align 16 dereferenceable(296) %0, i16 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.c = load i8, ptr %i.b, align 1, !tbaa !142, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  %.val.i = load i8, ptr %i.a, align 16, !range !15
  %i.e = trunc nuw i8 %.val.i to i1
  %.0.i = select i1 %i.d, i1 %i.e, i1 false
  %i.f = and i16 %1, 256
  %i.g = icmp ne i16 %i.f, 0
  %or.cond = select i1 %.0.i, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = load i8, ptr %i.h, align 16, !tbaa !28, !range !15, !noundef !16
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 16, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !259 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !77
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !260
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  tail call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull @.str, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 9, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.33, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !412
  store ptr %i.u, ptr %2, align 8, !tbaa !77, !noalias !412
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.w, align 8, !tbaa !393, !noalias !412
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %4, ptr %i.x, align 8, !tbaa !77, !noalias !412
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.y, align 8, !tbaa !393, !noalias !412
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.z, align 8, !tbaa !77, !noalias !412
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aa, align 8, !tbaa !393, !noalias !412
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.14, i64 10, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !412
  %i.ab = load ptr, ptr %3, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !164
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.e

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d
  %i.ae = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store i8 1, ptr %i.h, align 16, !tbaa !28
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.e
  %i.an = load i64, ptr %i.al, align 8, !tbaa !77
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io7Printer27ValidateIndexLookupInBoundsEmmmNS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 %4, i8 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %class.anon.81, align 8             ; 6 uses
  %i.a = icmp ult i64 %1, %3                      ; 2 uses
  %i.b = and i64 %4, 65536
  %i.c = icmp ne i64 %i.b, 0
  %or.cond.i = select i1 %i.a, i1 true, i1 %i.c
  br i1 %or.cond.i, label %_ZN6google8protobuf2io7Printer8ValidateEbNS2_12PrintOptionsEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.5, i32 noundef 321) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.val.i = load i8, ptr %i.d, align 8, !noalias !415
  %i.e = add i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !420
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i = zext i8 %.val.val.i to i64
  %i.f = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !77, !noalias !420
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.g, align 8, !tbaa !393, !noalias !420
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = inttoptr i64 %i.e to ptr
  store ptr %i.i, ptr %i.h, align 8, !tbaa !77, !noalias !420
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !393, !noalias !420
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %i.k, align 8, !tbaa !77, !noalias !420
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.l, align 8, !tbaa !393, !noalias !420
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.49, i64 35, ptr nonnull %6, i64 3)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i unwind label %bb.d

_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !420
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.c, %_ZNK4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !132    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
end_hunk_4
begin_hunk_5_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEENS0_4SpanIKNSt7__cxx1112basic_stringIcS9_SaIcEEEEENS6_12PrintOptionsEE3$_5SF_JEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  store ptr %i.c, ptr %i.h, align 8, !tbaa !77, !noalias !665
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.i, align 8, !tbaa !393, !noalias !665
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.56, i64 51, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !665
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #23 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { cold }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !14, i64 7}
!9 = !{!"_ZTSN6google8protobuf2io7Printer12PrintOptionsE", !10, i64 0, !14, i64 2, !14, i64 3, !14, i64 4, !14, i64 5, !14, i64 6, !14, i64 7, !14, i64 8}
!10 = !{!"_ZTSSt8optionalIN6google8protobuf2io7Printer14SourceLocationEE", !11, i64 0}
!11 = !{!"_ZTSSt14_Optional_baseIN6google8protobuf2io7Printer14SourceLocationELb1ELb1EE", !12, i64 0}
!12 = !{!"_ZTSSt17_Optional_payloadIN6google8protobuf2io7Printer14SourceLocationELb1ELb1ELb1EE", !13, i64 0}
!13 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer14SourceLocationEE", !6, i64 0, !14, i64 1}
!14 = !{!"bool", !6, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!18, !14, i64 24}
!18 = !{!"_ZTSN6google8protobuf2io7Printer6FormatE", !19, i64 0, !14, i64 24}
!19 = !{!"_ZTSSt6vectorIN6google8protobuf2io7Printer6Format4LineESaIS5_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf2io7Printer6Format4LineESaIS5_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer6Format4LineESaIS5_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer6Format4LineESaIS5_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN6google8protobuf2io7Printer6Format4LineE", !24, i64 0}
!24 = !{!"any pointer", !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!29, !14, i64 112}
!29 = !{!"_ZTSN6google8protobuf2io7PrinterE", !30, i64 0, !33, i64 40, !32, i64 104, !14, i64 112, !14, i64 113, !32, i64 120, !41, i64 128, !46, i64 152, !51, i64 176, !56, i64 208, !59, i64 240, !67, i64 272}
!30 = !{!"_ZTSN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkE", !31, i64 0, !24, i64 8, !32, i64 16, !32, i64 24, !14, i64 32}
!31 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !24, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!"_ZTSN6google8protobuf2io7Printer7OptionsE", !6, i64 0, !34, i64 8, !35, i64 16, !35, i64 32, !32, i64 48, !37, i64 56}
!34 = !{!"p1 _ZTSN6google8protobuf2io19AnnotationCollectorE", !24, i64 0}
!35 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !32, i64 0, !36, i64 8}
!36 = !{!"p1 omnipotent char", !24, i64 0}
!37 = !{!"_ZTSSt8optionalIbE", !38, i64 0}
!38 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !39, i64 0}
!39 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !40, i64 0}
!40 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !14, i64 1}
!41 = !{!"_ZTSSt6vectorImSaImEE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseImSaImEE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 long", !24, i64 0}
!46 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEE", !24, i64 0}
!51 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !52, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_Vector_implE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEE", !24, i64 0}
!56 = !{!"_ZTSN4absl12lts_2025051212AnyInvocableIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !57, i64 0}
!57 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable4ImplIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !58, i64 0}
!58 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable8CoreImplILb0EvJSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !6, i64 0, !24, i64 16, !24, i64 24}
!59 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEE", !60, i64 0}
!60 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !61, i64 0}
!61 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !62, i64 0}
!62 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !63, i64 0}
!63 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !64, i64 0}
!64 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !65, i64 0}
!65 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !32, i64 0, !66, i64 8, !6, i64 16}
!66 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !32, i64 0}
!67 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0}
!72 = !{!32, !32, i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!75 = distinct !{!75, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!76 = !{!36, !36, i64 0}
!77 = !{!6, !6, i64 0}
!78 = !{!79, !32, i64 0}
!79 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEE", !32, i64 0, !80, i64 8, !35, i64 16, !81, i64 32, !82, i64 40, !83, i64 41}
!80 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEE5StateE", !6, i64 0}
!81 = !{!"p1 _ZTSN4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEE", !24, i64 0}
!82 = !{!"_ZTSN4absl12lts_202505126ByCharE", !6, i64 0}
!83 = !{!"_ZTSN4absl12lts_2025051210AllowEmptyE"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv: argument 0"}
!86 = distinct !{!86, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv"}
!87 = !{!79, !80, i64 8}
!88 = !{!79, !81, i64 32}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv: argument 0"}
!91 = distinct !{!91, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv"}
!92 = distinct !{!92, !26}
!93 = !{!23, !23, i64 0}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = !{!22, !23, i64 8}
!97 = !{!22, !23, i64 16}
!98 = !{!99, !32, i64 24}
!99 = !{!"_ZTSN6google8protobuf2io7Printer6Format4LineE", !100, i64 0, !32, i64 24}
!100 = !{!"_ZTSSt6vectorIN6google8protobuf2io7Printer6Format5ChunkESaIS5_EE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf2io7Printer6Format5ChunkESaIS5_EE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer6Format5ChunkESaIS5_EE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer6Format5ChunkESaIS5_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p1 _ZTSN6google8protobuf2io7Printer6Format5ChunkE", !24, i64 0}
!105 = !{!29, !6, i64 40}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!108 = distinct !{!108, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv: argument 0"}
!111 = distinct !{!111, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv: argument 0"}
!114 = distinct !{!114, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv"}
!115 = !{!104, !104, i64 0}
!116 = !{!103, !104, i64 16}
!117 = !{!14, !14, i64 0}
!118 = !{!103, !104, i64 8}
!119 = !{i64 0, i64 8, !72, i64 8, i64 8, !76, i64 16, i64 1, !117}
!120 = !{!121, !123}
!121 = distinct !{!121, !122, !"_ZSt19__relocate_object_aIN6google8protobuf2io7Printer6Format5ChunkES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!122 = distinct !{!122, !"_ZSt19__relocate_object_aIN6google8protobuf2io7Printer6Format5ChunkES5_SaIS5_EEvPT_PT0_RT1_"}
!123 = distinct !{!123, !122, !"_ZSt19__relocate_object_aIN6google8protobuf2io7Printer6Format5ChunkES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!124 = distinct !{!124, !26}
!125 = !{!103, !104, i64 0}
!126 = !{!127, !14, i64 16}
!127 = !{!"_ZTSN6google8protobuf2io7Printer6Format5ChunkE", !35, i64 0, !14, i64 16}
!128 = !{!35, !32, i64 0}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{null}
!132 = !{!133, !36, i64 0}
!133 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !32, i64 8, !6, i64 16}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!135 = !{!22, !23, i64 0}
!136 = distinct !{!136, !26}
!137 = !{!30, !31, i64 0}
!138 = !{!29, !14, i64 113}
!139 = !{!58, !24, i64 16}
!140 = !{!"branch_weights", i32 1, i32 1048575}
!141 = !{!29, !32, i64 104}
!142 = !{!40, !14, i64 1}
!143 = !{!49, !50, i64 0}
!144 = !{!49, !50, i64 8}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer9ValueImplILb0EEEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS9_SD_EEEE: argument 0"}
!147 = distinct !{!147, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer9ValueImplILb0EEEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS9_SD_EEEE"}
!148 = !{!149, !146}
!149 = distinct !{!149, !150, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_: argument 0"}
!150 = distinct !{!150, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_"}
!151 = !{!152, !24, i64 16}
!152 = !{!"_ZTSSt14_Function_base", !6, i64 0, !24, i64 16}
!153 = !{!149}
!154 = !{!155, !24, i64 24}
!155 = !{!"_ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEE", !152, i64 0, !24, i64 24}
!156 = distinct !{null, null}
!157 = !{!158, !14, i64 80}
!158 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer9ValueImplILb0EEEE", !6, i64 0, !14, i64 80}
!159 = distinct !{!159, !26}
!160 = !{!161, !6, i64 32}
!161 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !6, i64 0, !6, i64 32}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!163 = !{!134, !36, i64 0}
!164 = !{!133, !32, i64 8}
!165 = !{!29, !32, i64 88}
!166 = !{!167, !14, i64 0}
!167 = !{!"_ZTSN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS6_3SubEEEbEUlvE_EE", !14, i64 0, !6, i64 8}
!168 = !{!169, !170, i64 0}
!169 = !{!"_ZTSZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlvE_", !170, i64 0, !14, i64 8}
!170 = !{!"p1 _ZTSN6google8protobuf2io7PrinterE", !24, i64 0}
!171 = !{!169, !14, i64 8}
!172 = !{!54, !55, i64 8}
!173 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!174 = !{!49, !50, i64 16}
!175 = !{!24, !24, i64 0}
!176 = !{!177, !6, i64 32}
!177 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !6, i64 0, !6, i64 32}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE6insertEOSJ_IS9_SF_E: argument 0"}
!180 = distinct !{!180, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE6insertEOSJ_IS9_SF_E"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE7emplaceIJSJ_IS9_SF_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_: argument 0"}
!183 = distinct !{!183, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE7emplaceIJSJ_IS9_SF_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableEJSM_IS9_SF_EESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!186 = distinct !{!186, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableEJSM_IS9_SF_EESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SE_EEE19EmplaceDecomposableEJSK_IS8_SE_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!189 = distinct !{!189, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SE_EEE19EmplaceDecomposableEJSK_IS8_SE_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SG_EEE19EmplaceDecomposableEJSK_ISA_SG_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!192 = distinct !{!192, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SG_EEE19EmplaceDecomposableEJSK_ISA_SG_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!193 = !{!188, !185, !182, !179}
!194 = !{!71, !71, i64 0}
!195 = !{!196, !198}
!196 = distinct !{!196, !197, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEESI_SL_: argument 0"}
!197 = distinct !{!197, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEESI_SL_"}
!198 = distinct !{!198, !199, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEEOSF_ISH_SK_E: argument 0"}
!199 = distinct !{!199, !"_ZN4absl12lts_2025051218container_internal8PairArgsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEESt4pairISt5tupleIJOT_EESG_IJOT0_EEEOSF_ISH_SK_E"}
!200 = !{!191, !188, !185, !182, !179}
!201 = !{!202, !202, i64 0}
!202 = !{!"p1 _ZTSN6google8protobuf2io7Printer9ValueImplILb1EEE", !24, i64 0}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SH_EEE19EmplaceDecomposableEOSB_St5tupleIJOSH_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E: argument 0"}
!205 = distinct !{!205, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SH_EEE19EmplaceDecomposableEOSB_St5tupleIJOSH_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EEST_IJOSF_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_: argument 0"}
!208 = distinct !{!208, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EEST_IJOSF_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_"}
!209 = !{!210, !14, i64 16}
!210 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SG_EEE8iteratorEbE", !211, i64 0, !14, i64 16}
!211 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE8iteratorE", !24, i64 0, !6, i64 8}
!212 = !{!207, !204, !191, !188, !185, !182, !179}
!213 = !{!214, !14, i64 64}
!214 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE", !6, i64 0, !14, i64 64}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE6insertEOSI_IS9_SE_E: argument 0"}
!217 = distinct !{!217, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE6insertEOSI_IS9_SE_E"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE7emplaceIJSI_IS9_SE_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_: argument 0"}
!220 = distinct !{!220, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE7emplaceIJSI_IS9_SE_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESI_INSM_8iteratorEbEDpOSQ_"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableEJSL_IS9_SE_EESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_: argument 0"}
!223 = distinct !{!223, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableEJSL_IS9_SE_EESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOST_DpOSU_"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE5applyINS1_12raw_hash_setISE_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableEJSJ_IS8_SD_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_: argument 0"}
!226 = distinct !{!226, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE5applyINS1_12raw_hash_setISE_NS1_10StringHashENS1_8StringEqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableEJSJ_IS8_SD_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSQ_DpOSR_"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SF_EEE19EmplaceDecomposableEJSJ_ISA_SF_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_: argument 0"}
!229 = distinct !{!229, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSA_SF_EEE19EmplaceDecomposableEJSJ_ISA_SF_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSQ_DpOSR_"}
!230 = !{!231, !14, i64 16}
!231 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SF_EEE8iteratorEbE", !232, i64 0, !14, i64 16}
!232 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE8iteratorE", !24, i64 0, !6, i64 8}
!233 = !{!234, !236, !228, !225, !222, !219, !216}
!234 = distinct !{!234, !235, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESS_IJOSE_EEEEESI_INSM_8iteratorEbERKT_DpOT0_: argument 0"}
!235 = distinct !{!235, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJOS9_EESS_IJOSE_EEEEESI_INSM_8iteratorEbERKT_DpOT0_"}
!236 = distinct !{!236, !237, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SG_EEE19EmplaceDecomposableEOSB_St5tupleIJOSG_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E: argument 0"}
!237 = distinct !{!237, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SG_EEE19EmplaceDecomposableEOSB_St5tupleIJOSG_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISR_IJSV_EEEEclsr3stdE7declvalIT1_EEEEOSU_SK_ISY_SZ_E"}
!238 = !{!228, !225, !222, !219, !216}
!239 = !{!240, !240, i64 0}
!240 = !{!"p1 int", !24, i64 0}
!241 = !{!242, !240, i64 16}
!242 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !240, i64 0, !240, i64 8, !240, i64 16}
!243 = !{!242, !240, i64 0}
!244 = !{!65, !32, i64 0}
!245 = !{!246, !247, i64 0}
!246 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !247, i64 0}
!247 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEEE", !24, i64 0}
!248 = !{!66, !32, i64 0}
!249 = !{!54, !55, i64 16}
!250 = !{!251, !24, i64 24}
!251 = !{!"_ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEE", !152, i64 0, !24, i64 24}
!252 = !{!253, !254, i64 0}
!253 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !254, i64 0}
!254 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEEE", !24, i64 0}
!255 = !{!170, !170, i64 0}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZN4absl12lts_2025051211MakeCleanupIJEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS5_3SubEEEbEUlvE_EENS0_7CleanupINS0_16cleanup_internal3TagET0_EESE_: argument 0"}
!258 = distinct !{!258, !"_ZN4absl12lts_2025051211MakeCleanupIJEZN6google8protobuf2io7Printer8WithDefsENS0_4SpanIKNS5_3SubEEEbEUlvE_EENS0_7CleanupINS0_16cleanup_internal3TagET0_EESE_"}
!259 = !{!70, !71, i64 0}
!260 = !{!70, !71, i64 8}
!261 = distinct !{!261, !26}
!262 = !{!9, !14, i64 3}
!263 = !{!264, !265, i64 0}
!264 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !265, i64 0}
!265 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !24, i64 0}
!266 = distinct !{!266, !26}
!267 = !{!58, !24, i64 24}
!268 = distinct !{null}
!269 = !{!9, !14, i64 4}
!270 = !{!35, !36, i64 8}
!271 = distinct !{!271, !26}
!272 = !{!30, !32, i64 24}
!273 = !{!274, !275, i64 8}
!274 = !{!"_ZTSNSt12_Vector_baseISt4pairIS0_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_EE17_Vector_impl_dataE", !275, i64 0, !275, i64 8, !275, i64 16}
!275 = !{!"p1 _ZTSSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !24, i64 0}
!276 = !{!274, !275, i64 16}
!277 = !{!275, !275, i64 0}
!278 = !{!279, !32, i64 8}
!279 = !{!"_ZTSSt4pairIS_ImmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !280, i64 0, !133, i64 16}
!280 = !{!"_ZTSSt4pairImmE", !32, i64 0, !32, i64 8}
!281 = !{!29, !34, i64 48}
!282 = !{!283, !283, i64 0}
!283 = !{!"vtable pointer", !7, i64 0}
!284 = !{!9, !14, i64 6}
!285 = !{!286, !288, !290}
!286 = distinct !{!286, !287, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!287 = distinct !{!287, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!288 = distinct !{!288, !289, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!289 = distinct !{!289, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!290 = distinct !{!290, !291, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!291 = distinct !{!291, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!292 = distinct !{!292, !26}
!293 = !{!9, !14, i64 8}
!294 = !{i64 0, i64 8, !72, i64 8, i64 8, !76}
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"_ZSt19__relocate_object_aISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!297 = distinct !{!297, !"_ZSt19__relocate_object_aISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmES5_SaIS5_EEvPT_PT0_RT1_"}
!298 = distinct !{!298, !297, !"_ZSt19__relocate_object_aISt4pairISt17basic_string_viewIcSt11char_traitsIcEEmES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!299 = distinct !{!299, !26}
!300 = distinct !{!300, !26}
!301 = !{!54, !55, i64 0}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer16AnnotationRecordEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS8_SC_EEEE: argument 0"}
!304 = distinct !{!304, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer16AnnotationRecordEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS8_SC_EEEE"}
!305 = !{!306, !303}
!306 = distinct !{!306, !307, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEclESA_: argument 0"}
!307 = distinct !{!307, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEclESA_"}
!308 = distinct !{null}
!309 = distinct !{!309, !26}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer9ValueImplILb0EEEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS9_SD_EEEE: argument 0"}
!312 = distinct !{!312, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer9ValueImplILb0EEEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS9_SD_EEEE"}
!313 = !{!314, !311}
!314 = distinct !{!314, !315, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_: argument 0"}
!315 = distinct !{!315, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEclESB_"}
!316 = distinct !{null}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer16AnnotationRecordEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS8_SC_EEEE: argument 0"}
!319 = distinct !{!319, !"_ZN6google8protobuf2io12_GLOBAL__N_118LookupInFrameStackINS1_7Printer16AnnotationRecordEEESt8optionalIT_ESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanISt8functionIFS8_SC_EEEE"}
!320 = !{!321, !318}
!321 = distinct !{!321, !322, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEclESA_: argument 0"}
!322 = distinct !{!322, !"_ZNKSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEclESA_"}
!323 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!324 = !{!325, !24, i64 24}
!325 = !{!"_ZTSSt8functionIFbvEE", !152, i64 0, !24, i64 24}
!326 = distinct !{null}
!327 = !{!328, !14, i64 72}
!328 = !{!"_ZTSN6google8protobuf2io7Printer9ValueImplILb0EEE", !329, i64 0, !133, i64 40, !14, i64 72}
!329 = !{!"_ZTSSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE", !330, i64 0}
!330 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !331, i64 0}
!331 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !332, i64 0}
!332 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !333, i64 0}
!333 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !334, i64 0}
!334 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEE", !161, i64 0}
!335 = !{!29, !32, i64 120}
!336 = !{!44, !45, i64 8}
!337 = !{!44, !45, i64 16}
!338 = !{!44, !45, i64 0}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_: argument 0"}
!341 = distinct !{!341, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEE7emplaceIJRSt17basic_string_viewIcS7_ESB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESA_INSI_8iteratorEbEDpOSO_"}
end_hunk_5
