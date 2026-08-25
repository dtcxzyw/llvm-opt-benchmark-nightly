Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/datetime?download=true
inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt12_Destroy_auxILb0EE9__destroyIPN14arrow_vendored4date9time_zoneEEEvT_S6_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i.i.i
  %i.aa = load ptr, ptr %.05, align 8, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit

_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.af, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN14arrow_vendored4date9time_zoneEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date9time_zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i

_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #28
  br label %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt9once_flagEclEPS0_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !53

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN14arrow_vendored4date6detail15expanded_ttinfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %_ZNSt10unique_ptrISt9once_flagSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL9init_tzdbEv(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::basic_ifstream", align 8 ; 54 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 27 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.arrow_vendored::date::leap_second", align 8 ; 6 uses
  %19 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 18 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.arrow_vendored::date::leap_second", align 8 ; 6 uses
  %26 = alloca %"class.std::chrono::time_point", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %33 = alloca %"class.std::allocator", align 1   ; 3 uses
  %34 = alloca %"class.std::queue", align 8       ; 16 uses
  %35 = alloca %struct.stat, align 8              ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  %41 = alloca %"class.std::vector.3", align 16   ; 18 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #32 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.m, ptr noundef nonnull align 1 dereferenceable(7) @.str.32, i64 7, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 7, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  store i8 0, ptr %i.o, align 1, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  store ptr %i.l, ptr %0, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %34, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %34, i64 noundef 0)
          to label %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit unwind label %.thread

_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit: ; preds = %bb.a
  %i.q = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit, !prof !36

bb.b:                                             ; preds = %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30
  br label %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30
  br label %bb.jh

_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit: ; preds = %bb.d, %bb.b, %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %34, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11)
          to label %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE7emplaceIJRKS5_EEEDcDpOT_.exit unwind label %bb.j ; 0 uses

_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE7emplaceIJRKS5_EEEDcDpOT_.exit: ; preds = %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  %i.w = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 5 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !217
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !217  ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE7emplaceIJRKS5_EEEDcDpOT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %34, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %34, i64 64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.ao = phi ptr [ %i.z, %.lr.ph ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  store ptr %i.ab, ptr %36, align 8, !tbaa !38
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %36, align 8, !tbaa !30
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !31
  store i64 %i.aw, ptr %i.ab, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !39
  store i64 %i.ay, ptr %i.ac, align 8, !tbaa !39
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !30
  store i64 0, ptr %i.ax, align 8, !tbaa !39
  store i8 0, ptr %i.aq, align 8, !tbaa !31
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !222 ; 4 uses
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  %.not.i.i = icmp eq ptr %i.az, %i.bb
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !30 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.be = icmp eq ptr %i.bc, %i.bd                ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  br i1 %i.be, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !31
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #28
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !222
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.az, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  br label %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  br i1 %i.be, label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bk) #28
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !225
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef 512) #28
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !226
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.af, align 8, !tbaa !227
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !228 ; 3 uses
  store ptr %i.bo, ptr %i.ae, align 8, !tbaa !229
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  store ptr %i.bp, ptr %i.ad, align 8, !tbaa !230
  br label %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv.exit

_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv.exit: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.bi, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.bo, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.x, align 8, !tbaa !222
  %i.bq = load ptr, ptr %36, align 8, !tbaa !30
  %i.br = call noalias ptr @opendir(ptr noundef %i.bq) ; 3 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %bb.bi, label %.preheader, !llvm.loop !231

.thread:                                          ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.ji

bb.j:                                             ; preds = %_ZN14arrow_vendored4dateL10get_tz_dirB5cxx11Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

.loopexit.split-lp:                               ; preds = %bb.bl, %bb.bm, %bb.bn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.k:                                             ; preds = %.preheader
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.preheader:                                       ; preds = %_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv.exit, %.preheader.backedge
  %i.bv = invoke ptr @readdir(ptr noundef nonnull %i.br)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.l:                                             ; preds = %.preheader
  %.not30 = icmp eq ptr %i.bv, null
  br i1 %.not30, label %bb.bh, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 19 ; 18 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !31
  %i.by = icmp eq i8 %i.bx, 46
  br i1 %i.by, label %.preheader.backedge, label %bb.n

.preheader.backedge:                              ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  br label %.preheader, !llvm.loop !232

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.bw, align 1
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body98

bb.bs:                                            ; preds = %bb.bq, %bb.bo, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !245
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.im, ptr %13, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.in, align 8, !tbaa !39, !noalias !245
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.io, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ip = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !251
  %i.iq = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !251
  %i.ir = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.iq, i64 noundef %i.ip)
          to label %.noexc.i unwind label %bb.dm, !noalias !245 ; 6 uses

.noexc.i:                                         ; preds = %bb.bs
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 14 uses
  store ptr %i.is, ptr %12, align 8, !tbaa !38, !alias.scope !248, !noalias !245
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 5 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bt:                                            ; preds = %.noexc.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  %i.iz = add nuw nsw i64 %i.ix, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.is, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.iz, i1 false), !noalias !245
  br label %bb.bu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.it, ptr %12, align 8, !tbaa !30, !alias.scope !248, !noalias !245
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !31, !noalias !245
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !31, !alias.scope !248, !noalias !245
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.pre.i.i86 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !39, !noalias !245
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bt
  %i.jb = phi i64 [ %i.ix, %bb.bt ], [ %.pre.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 %i.jb, ptr %i.jd, align 8, !tbaa !39, !alias.scope !248, !noalias !245
  store ptr %i.iu, ptr %i.ir, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.jc, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.iu, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255 ; 5 uses
  %i.jf = icmp sgt i64 %i.je, 9223372036854775796
  br i1 %i.jf, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc77.i unwind label %bb.dn, !noalias !245

.noexc77.i:                                       ; preds = %bb.bv
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.jg = add nsw i64 %i.je, 11                   ; 3 uses
  %i.jh = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.is
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jj = icmp ult i64 %i.je, 16
  call void @llvm.assume(i1 %i.jj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jk = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !255
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96
  %i.jl = phi i64 [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i96 ]
  %.not.i.i.i.i = icmp ugt i64 %i.jg, %i.jl
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.jm, ptr noundef nonnull align 1 dereferenceable(11) @.str.30, i64 11, i1 false), !noalias !255
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.je, i64 noundef 0, ptr noundef nonnull @.str.30, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i unwind label %bb.dn, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.bx, %bb.bw
  store i64 %i.jg, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  %i.jn = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jg
  store i8 0, ptr %i.jo, align 1, !tbaa !31, !noalias !255
  %i.jp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.jp, ptr %11, align 8, !tbaa !38, !alias.scope !252, !noalias !245
  %i.jq = load ptr, ptr %12, align 8, !tbaa !30, !noalias !255 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.is
  br i1 %i.jr, label %bb.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.js = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 16
  call void @llvm.assume(i1 %i.jt)
  %i.ju = add nuw nsw i64 %i.js, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jp, ptr noundef nonnull align 8 dereferenceable(1) %i.is, i64 %i.ju, i1 false), !noalias !245
  br label %bb.bz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.jq, ptr %11, align 8, !tbaa !30, !alias.scope !252, !noalias !245
  %i.jv = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !255
  store i64 %i.jv, ptr %i.jp, align 8, !tbaa !31, !alias.scope !252, !noalias !245
  %.pre.i76.i = load i64, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i, %bb.by
  %i.jw = phi i64 [ %i.js, %bb.by ], [ %.pre.i76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i ]
  %i.jx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !39, !alias.scope !252, !noalias !245
  store ptr %i.is, ptr %12, align 8, !tbaa !30, !noalias !255
  store i64 0, ptr %i.jd, align 8, !tbaa !39, !noalias !255
  store i8 0, ptr %i.is, align 8, !tbaa !31, !noalias !255
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 4)
          to label %bb.ca unwind label %bb.do, !noalias !245

bb.ca:                                            ; preds = %bb.bz
  %i.jy = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jp
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.ca
  %i.ka = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  %i.kc = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.is
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ke = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i
  %i.kg = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.im
  br i1 %i.kh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i
  %i.ki = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  %i.kk = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24    ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !noalias !245
  %i.kn = getelementptr inbounds i8, ptr %10, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !72, !noalias !245
  %i.kq = and i32 %i.kp, 5
  %.not.i86.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i86.i, label %bb.cb, label %bb.ef

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %41, i8 0, i64 24, i1 false), !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !245
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.kr, ptr %14, align 8, !tbaa !38, !noalias !245
  %i.ks = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.kt = load i64, ptr %i.kl, align 8, !noalias !245 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %10, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !72, !noalias !245
  %i.kx = and i32 %i.kw, 5
  %.not.i87383.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i87383.i, label %.lr.ph385.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

.lr.ph385.i:                                      ; preds = %bb.cb
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.lh = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !245 ; 2 uses
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !245
  %i.lj = getelementptr i8, ptr %i.lh, i64 -24
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.lo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !245 ; 2 uses
  %i.lp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !245
  %i.lq = getelementptr i8, ptr %i.lo, i64 -24
  %i.lr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %15, i64 120
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ec, %.lr.ph385.i
  %i.lt = phi ptr [ null, %.lr.ph385.i ], [ %i.uo, %bb.ec ] ; 14 uses
  %i.lu = phi ptr [ null, %.lr.ph385.i ], [ %i.up, %bb.ec ] ; 9 uses
  %i.lv = phi ptr [ null, %.lr.ph385.i ], [ %i.uq, %bb.ec ] ; 6 uses
  %i.lw = phi i64 [ %i.kt, %.lr.ph385.i ], [ %i.ut, %bb.ec ]
  %i.lx = getelementptr inbounds i8, ptr %10, i64 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 240
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i88.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i88.i, label %bb.cd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc89.i unwind label %.loopexit.split-lp.i, !noalias !245

.noexc89.i:                                       ; preds = %bb.cd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.cc
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mb = load i8, ptr %i.ma, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i1.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 67
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.cf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lz)
          to label %.noexc90.i unwind label %.loopexit.i, !noalias !245

.noexc90.i:                                       ; preds = %bb.cf
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !61, !noalias !245
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !245
  %i.mh = invoke noundef signext i8 %i.mg(ptr noundef nonnull align 8 dereferenceable(570) %i.lz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc90.i, %bb.ce
  %.0.i.i.i.i = phi i8 [ %i.md, %bb.ce ], [ %i.mh, %.noexc90.i ]
  %i.mi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %14, i8 noundef signext %.0.i.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.mj = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.ec, label %bb.cg

bb.cg:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ml = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !31, !noalias !245
  %.not59.i = icmp eq i8 %i.mm, 35
  br i1 %.not59.i, label %bb.ec, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 8)
          to label %bb.ci unwind label %bb.dq, !noalias !245

bb.ci:                                            ; preds = %bb.ch
  %i.mn = load ptr, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.mo = getelementptr i8, ptr %i.mn, i64 -24
  %i.mp = load i64, ptr %i.mo, align 8, !noalias !245
  %i.mq = getelementptr inbounds i8, ptr %15, i64 %i.mp ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store i32 5, ptr %i.mr, align 4, !tbaa !63, !noalias !245
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.mq, i32 noundef %i.mt)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i unwind label %bb.dr, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.ky, ptr %16, align 8, !tbaa !38, !noalias !245
  store i64 0, ptr %i.kz, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.mu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.cj unwind label %bb.ds, !noalias !245 ; 0 uses

bb.cj:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %.val.i = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %.val70.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val70.i
  %i.mw = icmp samesign eq i64 %.val70.i, 0
  br i1 %i.mw, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  br label %bb.ck

.lr.ph.i.i:                                       ; preds = %bb.cj, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %.val.i, %bb.cj ] ; 3 uses
  %i.mx = load i8, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.my = sext i8 %i.mx to i32
  %i.mz = call i32 @tolower(i32 noundef %i.my) #33, !noalias !245
  %i.na = trunc i32 %i.mz to i8
  store i8 %i.na, ptr %.sroa.01.04.i.i, align 1, !tbaa !31, !noalias !245
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 1 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.mv
  br i1 %i.nc, label %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i

_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i
  %.val72.pre.i = load i64, ptr %i.kz, align 8, !tbaa !39, !noalias !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30, !noalias !245
  store ptr %i.la, ptr %17, align 8, !tbaa !38, !noalias !245
  store i32 1885431148, ptr %i.la, align 8, !noalias !245
  store i64 4, ptr %i.lb, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.lc, align 4, !tbaa !31, !noalias !245
  %i.nd = icmp eq i64 %.val72.pre.i, 0
  br i1 %i.nd, label %bb.ck, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val72.pre.i, i64 4)
  %.val71.i = load ptr, ptr %16, align 8, !noalias !245
  %bcmp.i.i = call i32 @bcmp(ptr readonly %.val71.i, ptr nonnull readonly %i.la, i64 %.sroa.speculated.i.i), !noalias !245
  %.not.i.i.i90 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i.i.i90, label %bb.ck, label %bb.dv

bb.ck:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30, !noalias !245
  %i.ne = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.cl unwind label %bb.dt, !noalias !245 ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %.noexc106.i unwind label %bb.dt, !noalias !245 ; 0 uses

.noexc106.i:                                      ; preds = %bb.cl
  store ptr %i.ld, ptr %8, align 8, !tbaa !38, !alias.scope !256, !noalias !245
  store i64 0, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245
  store i8 0, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245
  %i.ng = load ptr, ptr %15, align 8, !tbaa !61, !noalias !259
  %i.nh = getelementptr i8, ptr %i.ng, i64 -24
  %i.ni = load i64, ptr %i.nh, align 8, !noalias !245
  %i.nj = getelementptr inbounds i8, ptr %15, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !72, !noalias !259
  %i.nm = and i32 %i.nl, 2
  %.not89.i.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not89.i.i.i, label %.lr.ph.i.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %.noexc106.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i
  %i.nn = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.cm unwind label %.loopexit.i.i, !noalias !245

bb.cm:                                            ; preds = %.lr.ph.i.i.i
  %i.no = call i32 @isalpha(i32 noundef %i.nn) #33, !noalias !245
  %.not.i.i101.i = icmp eq i32 %i.no, 0
  br i1 %.not.i.i101.i, label %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.np = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.co unwind label %.loopexit.i.i, !noalias !245

bb.co:                                            ; preds = %bb.cn
  %i.nq = trunc i32 %i.np to i8
  %i.nr = load i64, ptr %i.le, align 8, !tbaa !39, !alias.scope !256, !noalias !245 ; 5 uses
  %i.ns = add i64 %i.nr, 1                        ; 9 uses
  %i.nt = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !256, !noalias !245 ; 3 uses
  %i.nu = icmp eq ptr %i.nt, %i.ld
  br i1 %i.nu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i: ; preds = %bb.co
  %i.nv = icmp samesign ult i64 %i.nr, 16
  call void @llvm.assume(i1 %i.nv)
  %i.nw = icmp samesign ugt i64 %i.ns, 15
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i: ; preds = %bb.co
  %i.nx = load i64, ptr %i.ld, align 8, !tbaa !31, !alias.scope !256, !noalias !245 ; 2 uses
  %i.ny = icmp ugt i64 %i.ns, %i.nx
  br i1 %i.ny, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i
  %i.nz = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i105.i ], [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i ] ; 2 uses
  %i.oa = icmp slt i64 %i.ns, 0
  br i1 %i.oa, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #31
          to label %.noexc.i104.i unwind label %.loopexit.split-lp.i.i, !noalias !245

.noexc.i104.i:                                    ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i95
  %i.ob = icmp ugt i64 %i.ns, %i.nz
  br i1 %i.ob, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.oc = shl nuw i64 %i.nz, 1                    ; 2 uses
  %i.od = icmp ult i64 %i.ns, %i.oc
  br i1 %i.od, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oc, i64 9223372036854775807)
  br label %bb.ct
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
bb.dp:                                            ; preds = %.noexc152, %.noexc151, %.noexc150, %.noexc149, %.noexc148, %.noexc147, %.noexc146, %.noexc145, %bb.hg, %.noexc143, %bb.hf, %.noexc141, %.noexc140, %.noexc139, %.noexc138, %.noexc137, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc132, %.noexc131, %.invoke.i, %bb.gp, %bb.fw, %bb.ef
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc90.i, %bb.cf
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp.i:                             ; preds = %bb.cd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dq:                                            ; preds = %bb.ch
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dr:                                            ; preds = %bb.ci
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ds:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cl, %bb.ck
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit338.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dg
  %lpad.loopexit340.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp339.i:                          ; preds = %bb.dk
  %lpad.loopexit.split-lp341.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.split-lp339.i, %.loopexit338.i
  %lpad.phi342.i = phi { ptr, i32 } [ %lpad.loopexit340.i, %.loopexit338.i ], [ %lpad.loopexit.split-lp341.i, %.loopexit.split-lp339.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  br label %.body.i

.body.i:                                          ; preds = %bb.cx, %bb.du, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  %.pn62.i = phi { ptr, i32 } [ %lpad.phi342.i, %bb.du ], [ %i.tj, %bb.dt ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i ], [ %lpad.phi.i.i, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dz

bb.dv:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  %i.tk = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.tl = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.tk, i64 noundef %i.tl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ds, !noalias !245 ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  store i8 10, ptr %i.g, align 1, !tbaa !31, !noalias !245
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !61, !noalias !245
  %i.to = getelementptr i8, ptr %i.tn, i64 -24
  %i.tp = load i64, ptr %i.to, align 8, !noalias !245
  %i.tq = getelementptr inbounds i8, ptr %i.tm, i64 %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !158, !noalias !245
  %.not.i126.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i126.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.tt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tm, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.ds, !noalias !245 ; 0 uses

bb.dx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.tu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.tm, i8 noundef signext 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %bb.ds, !noalias !245 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245
  br label %bb.dy

bb.dy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i
  %i.tv = phi ptr [ %i.lt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sn, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tw = phi ptr [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.so, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.tx = phi ptr [ %i.lv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.sp, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i ]
  %i.ty = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.ky
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %bb.dy
  %i.ua = load i64, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !245
  store ptr %i.lh, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.uc = load i64, ptr %i.lj, align 8, !noalias !245
  %i.ud = getelementptr inbounds i8, ptr %15, i64 %i.uc
  store ptr %i.li, ptr %i.ud, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  %i.ue = load ptr, ptr %i.ll, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.lm
  br i1 %i.uf, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i
  %i.ug = load i64, ptr %i.lm, align 8, !tbaa !31, !noalias !245
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uh) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lk, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ln) #30, !noalias !245
  store ptr %i.lo, ptr %15, align 8, !tbaa !61, !noalias !245
  %i.ui = load i64, ptr %i.lq, align 8, !noalias !245
  %i.uj = getelementptr inbounds i8, ptr %15, i64 %i.ui
  store ptr %i.lp, ptr %i.uj, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.lr, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ls) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !245
  br label %bb.ec

bb.dz:                                            ; preds = %.body.i, %bb.ds
  %.pn62.pn.i = phi { ptr, i32 } [ %.pn62.i, %.body.i ], [ %i.ti, %bb.ds ]
  %i.uk = load ptr, ptr %16, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.ky
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %bb.dz
  %i.um = load i64, ptr %i.ky, align 8, !tbaa !31, !noalias !245
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.un) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30, !noalias !245
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, %bb.dr
  %.pn62.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i ], [ %i.th, %bb.dr ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %15) #30, !noalias !245
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dq
  %.pn62.pn.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.pn.i, %bb.ea ], [ %i.tg, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !245
  br label %bb.ed

bb.ec:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %bb.cg, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.uo = phi ptr [ %i.tv, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lt, %bb.cg ], [ %i.lt, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.up = phi ptr [ %i.tw, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lu, %bb.cg ], [ %i.lu, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.uq = phi ptr [ %i.tx, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i ], [ %i.lv, %bb.cg ], [ %i.lv, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ]
  %i.ur = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.us = getelementptr i8, ptr %i.ur, i64 -24
  %i.ut = load i64, ptr %i.us, align 8, !noalias !245 ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %10, i64 %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !72, !noalias !245
  %i.ux = and i32 %i.uw, 5
  %.not.i87.i = icmp eq i32 %i.ux, 0
  br i1 %.not.i87.i, label %bb.cc, label %._crit_edge386.i, !llvm.loop !274

._crit_edge386.i:                                 ; preds = %bb.ec
  %.pre389.i = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.uy = icmp eq ptr %.pre389.i, %i.kr
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i: ; preds = %._crit_edge386.i
  %i.uz = load i64, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %.pre389.i, i64 noundef %i.va) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i: ; preds = %bb.cb, %._crit_edge386.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !245
  br label %bb.hm

bb.ed:                                            ; preds = %bb.eb, %.loopexit.split-lp.i, %.loopexit.i
  %.pn62.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.pn.pn.i, %bb.eb ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.vb = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %i.kr
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i: ; preds = %bb.ed
  %i.vd = load i64, ptr %i.kr, align 8, !tbaa !31, !noalias !245
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.ve) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !245
  %.not.i.i.i142.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i142.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i
  %i.vf = ptrtoint ptr %i.lu to i64
  %i.vg = ptrtoint ptr %i.lt to i64
  %i.vh = sub i64 %i.vf, %i.vg
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.vh) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.kn, i32 noundef 0)
          to label %bb.eg unwind label %bb.dp, !noalias !245

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30, !noalias !245
  %i.vi = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8, !noalias !245
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %bb.eh, label %bb.el, !prof !36

bb.eh:                                            ; preds = %bb.eg
  %i.vk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  %.not.i143.i = icmp eq i32 %i.vk, 0
  br i1 %.not.i143.i, label %bb.el, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.ej unwind label %bb.ek, !noalias !245

bb.ej:                                            ; preds = %bb.ei
  %i.vl = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30, !noalias !245 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body144.i

bb.el:                                            ; preds = %bb.ej, %bb.eh, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30, !noalias !245
  %i.vn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.vn, ptr %22, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.vn, align 8, !tbaa !31, !noalias !245
  %i.vo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.vo, align 8, !tbaa !39, !noalias !245
  %i.vp = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.vp, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.vq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !278
  %i.vr = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !278
  %i.vs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef %i.vr, i64 noundef %i.vq)
          to label %.noexc150.i unwind label %bb.fd, !noalias !245 ; 6 uses

.noexc150.i:                                      ; preds = %bb.el
  %i.vt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 14 uses
  store ptr %i.vt, ptr %21, align 8, !tbaa !38, !alias.scope !275, !noalias !245
  %i.vu = load ptr, ptr %i.vs, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 16 ; 5 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %bb.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i

bb.em:                                            ; preds = %.noexc150.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.vz = icmp ult i64 %i.vy, 16
  call void @llvm.assume(i1 %i.vz)
  %i.wa = add nuw nsw i64 %i.vy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vt, ptr noundef nonnull align 8 dereferenceable(1) %i.vv, i64 %i.wa, i1 false), !noalias !245
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i: ; preds = %.noexc150.i
  store ptr %i.vu, ptr %21, align 8, !tbaa !30, !alias.scope !275, !noalias !245
  %i.wb = load i64, ptr %i.vv, align 8, !tbaa !31, !noalias !245
  store i64 %i.wb, ptr %i.vt, align 8, !tbaa !31, !alias.scope !275, !noalias !245
  %.phi.trans.insert.i148.i = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.pre.i149.i = load i64, ptr %.phi.trans.insert.i148.i, align 8, !tbaa !39, !noalias !245
  br label %bb.en

bb.en:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i, %bb.em
  %i.wc = phi i64 [ %i.vy, %bb.em ], [ %.pre.i149.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i ]
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  store i64 %i.wc, ptr %i.we, align 8, !tbaa !39, !alias.scope !275, !noalias !245
  store ptr %i.vv, ptr %i.vs, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.wd, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.vv, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !39, !noalias !282 ; 5 uses
  %i.wg = icmp sgt i64 %i.wf, 9223372036854775790
  br i1 %i.wg, label %bb.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc162.i unwind label %bb.fe, !noalias !245

.noexc162.i:                                      ; preds = %bb.eo
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i: ; preds = %bb.en
  %i.wh = add nsw i64 %i.wf, 17                   ; 3 uses
  %i.wi = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282 ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.vt
  br i1 %i.wj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i
  %i.wk = icmp ult i64 %i.wf, 16
  call void @llvm.assume(i1 %i.wk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i152.i
  %i.wl = load i64, ptr %i.vt, align 8, !tbaa !31, !noalias !282
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i
  %i.wm = phi i64 [ %i.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i153.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i161.i ]
  %.not.i.i.i155.i = icmp ugt i64 %i.wh, %i.wm
  br i1 %.not.i.i.i155.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.wn, ptr noundef nonnull align 1 dereferenceable(17) @.str.31, i64 17, i1 false), !noalias !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i154.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.wf, i64 noundef 0, ptr noundef nonnull @.str.31, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i unwind label %bb.fe, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i: ; preds = %bb.eq, %bb.ep
  store i64 %i.wh, ptr %i.we, align 8, !tbaa !39, !noalias !282
  %i.wo = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wh
  store i8 0, ptr %i.wp, align 1, !tbaa !31, !noalias !282
  %i.wq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store ptr %i.wq, ptr %20, align 8, !tbaa !38, !alias.scope !279, !noalias !245
  %i.wr = load ptr, ptr %21, align 8, !tbaa !30, !noalias !282 ; 3 uses
  %i.ws = icmp eq ptr %i.wr, %i.vt
  br i1 %i.ws, label %bb.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i
  %i.wt = load i64, ptr %i.we, align 8, !tbaa !39, !noalias !282 ; 3 uses
  %i.wu = icmp ult i64 %i.wt, 16
  call void @llvm.assume(i1 %i.wu)
  %i.wv = add nuw nsw i64 %i.wt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wq, ptr noundef nonnull align 8 dereferenceable(1) %i.vt, i64 %i.wv, i1 false), !noalias !245
  br label %bb.es

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158.i
  store ptr %i.wr, ptr %20, align 8, !tbaa !30, !alias.scope !279, !noalias !245
  %i.ww = load i64, ptr %i.vt, align 8, !tbaa !31, !noalias !282
  store i64 %i.ww, ptr %i.wq, align 8, !tbaa !31, !alias.scope !279, !noalias !245
  %.pre.i160.i = load i64, ptr %i.we, align 8, !tbaa !39, !noalias !282
  br label %bb.es

bb.es:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i, %bb.er
  %i.wx = phi ptr [ %i.wq, %bb.er ], [ %i.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i ]
  %i.wy = phi i64 [ %i.wt, %bb.er ], [ %.pre.i160.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i ]
  %i.wz = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !39, !alias.scope !279, !noalias !245
  store ptr %i.vt, ptr %21, align 8, !tbaa !30, !noalias !282
  store i64 0, ptr %i.we, align 8, !tbaa !39, !noalias !282
  store i8 0, ptr %i.vt, align 8, !tbaa !31, !noalias !282
  %i.xa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.xb = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.xa, ptr noundef %i.wx, i32 noundef 12)
          to label %.noexc166.i unwind label %bb.ff, !noalias !245

.noexc166.i:                                      ; preds = %bb.es
  %.not.i165.i = icmp eq ptr %i.xb, null
  %i.xc = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.xd = getelementptr i8, ptr %i.xc, i64 -24
  %i.xe = load i64, ptr %i.xd, align 8, !noalias !245
  %i.xf = getelementptr inbounds i8, ptr %10, i64 %i.xe ; 2 uses
  br i1 %.not.i165.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %.noexc166.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 32
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !72, !noalias !245
  %i.xi = or i32 %i.xh, 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.noexc166.i
  %.sink.i.i = phi i32 [ %i.xi, %bb.et ], [ 0, %.noexc166.i ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xf, i32 noundef %.sink.i.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i unwind label %bb.ff, !noalias !245

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i: ; preds = %bb.eu
  %i.xj = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.wq
  br i1 %i.xk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i
  %i.xl = load i64, ptr %i.wq, align 8, !tbaa !31, !noalias !245
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xm) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168.i
  %i.xn = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.vt
  br i1 %i.xo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i
  %i.xp = load i64, ptr %i.vt, align 8, !tbaa !31, !noalias !245
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xq) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i
  %i.xr = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.xs = icmp eq ptr %i.xr, %i.vn
  br i1 %i.xs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i
  %i.xt = load i64, ptr %i.vn, align 8, !tbaa !31, !noalias !245
  %i.xu = add i64 %i.xt, 1
  call void @_ZdlPvm(ptr noundef %i.xr, i64 noundef %i.xu) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  %i.xv = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.xw = getelementptr i8, ptr %i.xv, i64 -24    ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !noalias !245
  %i.xy = getelementptr inbounds i8, ptr %10, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 32
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !72, !noalias !245
  %i.yb = and i32 %i.ya, 5
  %.not.i177.i = icmp eq i32 %i.yb, 0
  br i1 %.not.i177.i, label %bb.ev, label %bb.fw

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %41, i8 0, i64 24, i1 false), !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30, !noalias !245
  %i.yc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.yc, ptr %23, align 8, !tbaa !38, !noalias !245
  %i.yd = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 0, ptr %i.yd, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.yc, align 8, !tbaa !31, !noalias !245
  %i.ye = load i64, ptr %i.xw, align 8, !noalias !245 ; 2 uses
  %i.yf = getelementptr inbounds i8, ptr %10, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = load i32, ptr %i.yg, align 8, !tbaa !72, !noalias !245
  %i.yi = and i32 %i.yh, 5
  %.not.i178382.i = icmp eq i32 %i.yi, 0
  br i1 %.not.i178382.i, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

.lr.ph.i:                                         ; preds = %bb.ev
  %i.yj = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.yl = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !245 ; 2 uses
  %i.ym = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !245
  %i.yn = getelementptr i8, ptr %i.yl, i64 -24
  %i.yo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.yq = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.ys = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !245 ; 2 uses
  %i.yt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !245
  %i.yu = getelementptr i8, ptr %i.ys, i64 -24
  %i.yv = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %24, i64 120
  br label %bb.ew

bb.ew:                                            ; preds = %.backedge.i, %.lr.ph.i
  %i.yx = phi ptr [ null, %.lr.ph.i ], [ %i.aco, %.backedge.i ] ; 14 uses
  %i.yy = phi ptr [ null, %.lr.ph.i ], [ %i.acp, %.backedge.i ] ; 9 uses
  %i.yz = phi ptr [ null, %.lr.ph.i ], [ %i.acq, %.backedge.i ] ; 6 uses
  %i.za = phi i64 [ %i.ye, %.lr.ph.i ], [ %i.act, %.backedge.i ]
  %i.zb = getelementptr inbounds i8, ptr %10, i64 %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 240
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !191, !noalias !245 ; 6 uses
  %.not.i.i.i179.i = icmp eq ptr %i.zd, null
  br i1 %.not.i.i.i179.i, label %bb.ex, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc184.i unwind label %.loopexit.split-lp344.i, !noalias !245

.noexc184.i:                                      ; preds = %bb.ex
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i: ; preds = %bb.ew
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 56
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i181.i = icmp eq i8 %i.zf, 0
  br i1 %.not.i1.i.i181.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 67
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zd)
          to label %.noexc185.i unwind label %.loopexit343.i, !noalias !245

.noexc185.i:                                      ; preds = %bb.ez
  %i.zi = load ptr, ptr %i.zd, align 8, !tbaa !61, !noalias !245
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 48
  %i.zk = load ptr, ptr %i.zj, align 8, !noalias !245
  %i.zl = invoke noundef signext i8 %i.zk(ptr noundef nonnull align 8 dereferenceable(570) %i.zd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i unwind label %.loopexit343.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i: ; preds = %.noexc185.i, %bb.ey
  %.0.i.i.i183.i = phi i8 [ %i.zh, %bb.ey ], [ %i.zl, %.noexc185.i ]
  %i.zm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef signext %.0.i.i.i183.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i unwind label %.loopexit343.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i
  %i.zn = load i64, ptr %i.yd, align 8, !tbaa !39, !noalias !245
  %i.zo = icmp eq i64 %i.zn, 0
  br i1 %i.zo, label %.backedge.i, label %bb.fa

bb.fa:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.zp = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !31, !noalias !245
  %.not.i88 = icmp eq i8 %i.zq, 35
  br i1 %.not.i88, label %.backedge.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 8)
          to label %bb.fc unwind label %bb.fg, !noalias !245

bb.fc:                                            ; preds = %bb.fb
  %i.zr = load ptr, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.zs = getelementptr i8, ptr %i.zr, i64 -24
  %i.zt = load i64, ptr %i.zs, align 8, !noalias !245
  %i.zu = getelementptr inbounds i8, ptr %24, i64 %i.zt ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 28
  store i32 5, ptr %i.zv, align 4, !tbaa !63, !noalias !245
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.zu, i32 noundef %i.zx)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i unwind label %bb.fh, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i: ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30, !noalias !245
  %i.zy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSirsERl.exit.i unwind label %bb.fi, !noalias !245 ; 0 uses

_ZNSirsERl.exit.i:                                ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.zz = load i64, ptr %i.j, align 8, !tbaa !75, !noalias !245 ; 2 uses
  %.not336.i = icmp eq i64 %i.zz, 2272060800
  br i1 %.not336.i, label %bb.fp, label %bb.fj, !llvm.loop !283

bb.fd:                                            ; preds = %bb.el
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

bb.fe:                                            ; preds = %bb.eq, %bb.eo
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

bb.ff:                                            ; preds = %bb.eu, %bb.es
  %i.aac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aad = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.wq
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i: ; preds = %bb.ff
  %i.aaf = load i64, ptr %i.wq, align 8, !tbaa !31, !noalias !245
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i, %bb.fe
  %.pn39.i = phi { ptr, i32 } [ %i.aab, %bb.fe ], [ %i.aac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i ], [ %i.aac, %bb.ff ] ; 2 uses
  %i.aah = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.vt
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i
  %i.aaj = load i64, ptr %i.vt, align 8, !tbaa !31, !noalias !245
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i, %bb.fd
  %.pn39.pn.i = phi { ptr, i32 } [ %i.aaa, %bb.fd ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ]
  %i.aal = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aam = icmp eq ptr %i.aal, %i.vn
  br i1 %i.aam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i
  %i.aan = load i64, ptr %i.vn, align 8, !tbaa !31, !noalias !245
  %i.aao = add i64 %i.aan, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aao) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body144.i

.body144.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.ek
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %i.vm, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit343.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i, %.noexc185.i, %bb.ez
  %lpad.loopexit345.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

.loopexit.split-lp344.i:                          ; preds = %bb.ex
  %lpad.loopexit.split-lp346.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fg:                                            ; preds = %bb.fb
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fh:                                            ; preds = %bb.fc
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fj:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aas = add i64 %i.zz, -2208988800
  store i64 %i.aas, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fk unwind label %.loopexit348.i, !noalias !245

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i203.i = icmp eq ptr %i.yz, %i.yy
  br i1 %.not.i.i203.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aat = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aat, ptr %i.yz, align 8, !tbaa !75, !noalias !245
  %i.aau = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  store ptr %i.aau, ptr %i.yj, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

bb.fm:                                            ; preds = %bb.fk
  %i.aav = ptrtoint ptr %i.yy to i64              ; 2 uses
  %i.aaw = ptrtoint ptr %i.yx to i64              ; 3 uses
  %i.aax = sub i64 %i.aav, %i.aaw                 ; 4 uses
  %i.aay = icmp eq i64 %i.aax, 9223372036854775800
  br i1 %i.aay, label %bb.fn, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc216.i unwind label %.loopexit.split-lp349.i, !noalias !245

.noexc216.i:                                      ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i: ; preds = %bb.fm
  %i.aaz = ashr exact i64 %i.aax, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i205.i = call i64 @llvm.umax.i64(i64 %i.aaz, i64 1)
  %i.aba = add nsw i64 %.sroa.speculated.i.i.i.i205.i, %i.aaz ; 2 uses
  %i.abb = icmp ult i64 %i.aba, %i.aaz
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  call void @llvm.assume(i1 %.not.i.i.i.i206.i)
  %i.abe = shl nuw nsw i64 %i.abd, 3
  %i.abf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abe) #32
          to label %.noexc217.i unwind label %.loopexit348.i, !noalias !245 ; 9 uses

.noexc217.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aax
  %i.abh = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.abh, ptr %i.abg, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i207.i = icmp eq ptr %i.yx, %i.yy
  br i1 %.not10.i.i.i.i.i.i207.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader

.lr.ph.i.i.i.i.i.i208.i.preheader:                ; preds = %.noexc217.i
  %i.abi = ptrtoaddr ptr %i.abf to i64
  %i.abj = add i64 %i.aav, -8
  %i.abk = sub i64 %i.abj, %i.aaw                 ; 2 uses
  %i.abl = lshr i64 %i.abk, 3
  %i.abm = add nuw nsw i64 %i.abl, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.abk, 24
  %i.abn = sub i64 %i.aaw, %i.abi
  %diff.check = icmp ugt i64 %i.abn, -32
  %or.cond533 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond533, label %.lr.ph.i.i.i.i.i.i208.i.preheader535, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader
  %n.vec = and i64 %i.abm, 4611686018427387900    ; 3 uses
  %i.abo = shl i64 %n.vec, 3                      ; 2 uses
  %i.abp = getelementptr i8, ptr %i.abf, i64 %i.abo ; 2 uses
  %i.abq = getelementptr i8, ptr %i.yx, i64 %i.abo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abr = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.abf, i64 %i.abr ; 2 uses
  %next.gep513 = getelementptr i8, ptr %i.yx, i64 %i.abr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abs = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep513, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load514 = load <2 x i64>, ptr %i.abs, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load514, ptr %i.abt, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abu = icmp eq i64 %index.next, %n.vec
  br i1 %i.abu, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader535

.lr.ph.i.i.i.i.i.i208.i.preheader535:             ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader, %middle.block
  %.012.i.i.i.i.i.i209.i.ph = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abp, %middle.block ]
  %.0911.i.i.i.i.i.i210.i.ph = phi ptr [ %i.yx, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i208.i

.lr.ph.i.i.i.i.i.i208.i:                          ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader535, %.lr.ph.i.i.i.i.i.i208.i
  %.012.i.i.i.i.i.i209.i = phi ptr [ %i.abx, %.lr.ph.i.i.i.i.i.i208.i ], [ %.012.i.i.i.i.i.i209.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader535 ] ; 2 uses
  %.0911.i.i.i.i.i.i210.i = phi ptr [ %i.abw, %.lr.ph.i.i.i.i.i.i208.i ], [ %.0911.i.i.i.i.i.i210.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader535 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abv = load i64, ptr %.0911.i.i.i.i.i.i210.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abv, ptr %.012.i.i.i.i.i.i209.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.abw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i210.i, i64 8 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i209.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i211.i = icmp eq ptr %i.abw, %i.yy
  br i1 %.not.i.i.i.i.i.i211.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i: ; preds = %.lr.ph.i.i.i.i.i.i208.i, %middle.block, %.noexc217.i
  %.0.lcssa.i.i.i.i.i.i213.i = phi ptr [ %i.abf, %.noexc217.i ], [ %i.abp, %middle.block ], [ %i.abx, %.lr.ph.i.i.i.i.i.i208.i ]
  %i.aby = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i213.i, i64 8 ; 2 uses
  %.not.i23.i.i.i214.i = icmp eq ptr %i.yx, null
  br i1 %.not.i23.i.i.i214.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.aax) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i: ; preds = %bb.fo, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  store ptr %i.abf, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.aby, ptr %i.yj, align 8, !tbaa !260, !alias.scope !245
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.abd ; 2 uses
  store ptr %i.abz, ptr %i.yk, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, %bb.fl
  %i.aca = phi ptr [ %i.abf, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.yx, %bb.fl ]
  %i.acb = phi ptr [ %i.abz, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.yy, %bb.fl ]
  %i.acc = phi ptr [ %i.aby, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.aau, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i, %_ZNSirsERl.exit.i
  %i.acd = phi ptr [ %i.aca, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yx, %_ZNSirsERl.exit.i ]
  %i.ace = phi ptr [ %i.acb, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yy, %_ZNSirsERl.exit.i ]
  %i.acf = phi ptr [ %i.acc, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yz, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.yl, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.acg = load i64, ptr %i.yn, align 8, !noalias !245
  %i.ach = getelementptr inbounds i8, ptr %24, i64 %i.acg
  store ptr %i.ym, ptr %i.ach, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yo, align 8, !tbaa !61, !noalias !245
  %i.aci = load ptr, ptr %i.yp, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acj = icmp eq ptr %i.aci, %i.yq
  br i1 %i.acj, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i: ; preds = %bb.fp
  %i.ack = load i64, ptr %i.yq, align 8, !tbaa !31, !noalias !245
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acl) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yo, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yr) #30, !noalias !245
  store ptr %i.ys, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.acm = load i64, ptr %i.yu, align 8, !noalias !245
  %i.acn = getelementptr inbounds i8, ptr %24, i64 %i.acm
  store ptr %i.yt, ptr %i.acn, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.yv, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yw) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, %bb.fa, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.aco = phi ptr [ %i.acd, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yx, %bb.fa ], [ %i.yx, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acp = phi ptr [ %i.ace, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yy, %bb.fa ], [ %i.yy, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acq = phi ptr [ %i.acf, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yz, %bb.fa ], [ %i.yz, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acr = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acs = getelementptr i8, ptr %i.acr, i64 -24
  %i.act = load i64, ptr %i.acs, align 8, !noalias !245 ; 2 uses
  %i.acu = getelementptr inbounds i8, ptr %10, i64 %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !72, !noalias !245
  %i.acx = and i32 %i.acw, 5
  %.not.i178.i = icmp eq i32 %i.acx, 0
  br i1 %.not.i178.i, label %bb.ew, label %._crit_edge.i, !llvm.loop !283

.loopexit348.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i, %bb.fj
  %lpad.loopexit350.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

.loopexit.split-lp349.i:                          ; preds = %bb.fn
  %lpad.loopexit.split-lp351.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fq:                                            ; preds = %.loopexit.split-lp349.i, %.loopexit348.i
  %lpad.phi352.i = phi { ptr, i32 } [ %lpad.loopexit350.i, %.loopexit348.i ], [ %lpad.loopexit.split-lp351.i, %.loopexit.split-lp349.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fi
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi352.i, %bb.fq ], [ %i.aar, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fh
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fr ], [ %i.aaq, %bb.fh ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fg
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fs ], [ %i.aap, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fu

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i89 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acy = icmp eq ptr %.pre.i89, %i.yc
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %._crit_edge.i
  %i.acz = load i64, ptr %i.yc, align 8, !tbaa !31, !noalias !245
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %.pre.i89, i64 noundef %i.ada) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %bb.ev, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hm

bb.fu:                                            ; preds = %bb.ft, %.loopexit.split-lp344.i, %.loopexit343.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.ft ], [ %lpad.loopexit345.i, %.loopexit343.i ], [ %lpad.loopexit.split-lp346.i, %.loopexit.split-lp344.i ] ; 2 uses
  %i.adb = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.yc
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %bb.fu
  %i.add = load i64, ptr %i.yc, align 8, !tbaa !31, !noalias !245
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %.not.i.i.i228.i = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i228.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  %i.adf = ptrtoint ptr %i.yy to i64
  %i.adg = ptrtoint ptr %i.yx to i64
  %i.adh = sub i64 %i.adf, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.adh) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xy, i32 noundef 0)
          to label %bb.fx unwind label %bb.dp, !noalias !245

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30, !noalias !245
  %i.adi = load atomic i8, ptr @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11 acquire, align 8, !noalias !245
  %i.adj = icmp eq i8 %i.adi, 0
  br i1 %i.adj, label %bb.fy, label %bb.gc, !prof !36

bb.fy:                                            ; preds = %bb.fx
  %i.adk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  %.not.i230.i = icmp eq i32 %i.adk, 0
  br i1 %.not.i230.i, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke fastcc void @_ZN14arrow_vendored4dateL15discover_tz_dirB5cxx11Ev()
          to label %bb.ga unwind label %bb.gb, !noalias !245

bb.ga:                                            ; preds = %bb.fz
  %i.adl = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, ptr nonnull @__dso_handle) #30, !noalias !245 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fz
  %i.adm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11) #30, !noalias !245
  br label %.body231.i

bb.gc:                                            ; preds = %bb.ga, %bb.fy, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30, !noalias !245
  %i.adn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.adn, ptr %29, align 8, !tbaa !38, !noalias !245
  store i8 47, ptr %i.adn, align 8, !tbaa !31, !noalias !245
  %i.ado = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.ado, align 8, !tbaa !39, !noalias !245
  %i.adp = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.adp, align 1, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.adq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, i64 8), align 8, !tbaa !39, !noalias !296
  %i.adr = load ptr, ptr @_ZZN14arrow_vendored4dateL10get_tz_dirB5cxx11EvE6tz_dirB5cxx11, align 8, !tbaa !30, !noalias !296
  %i.ads = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef %i.adr, i64 noundef %i.adq)
          to label %.noexc237.i unwind label %bb.gm, !noalias !245 ; 6 uses

.noexc237.i:                                      ; preds = %bb.gc
  %i.adt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 14 uses
  store ptr %i.adt, ptr %28, align 8, !tbaa !38, !alias.scope !293, !noalias !245
  %i.adu = load ptr, ptr %i.ads, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 5 uses
  %i.adw = icmp eq ptr %i.adu, %i.adv
  br i1 %i.adw, label %bb.gd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i

bb.gd:                                            ; preds = %.noexc237.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !39, !noalias !245 ; 3 uses
  %i.adz = icmp ult i64 %i.ady, 16
  call void @llvm.assume(i1 %i.adz)
  %i.aea = add nuw nsw i64 %i.ady, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adt, ptr noundef nonnull align 8 dereferenceable(1) %i.adv, i64 %i.aea, i1 false), !noalias !245
  br label %bb.ge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i: ; preds = %.noexc237.i
  store ptr %i.adu, ptr %28, align 8, !tbaa !30, !alias.scope !293, !noalias !245
  %i.aeb = load i64, ptr %i.adv, align 8, !tbaa !31, !noalias !245
  store i64 %i.aeb, ptr %i.adt, align 8, !tbaa !31, !alias.scope !293, !noalias !245
  %.phi.trans.insert.i235.i = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %.pre.i236.i = load i64, ptr %.phi.trans.insert.i235.i, align 8, !tbaa !39, !noalias !245
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i, %bb.gd
  %i.aec = phi i64 [ %i.ady, %bb.gd ], [ %.pre.i236.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i ]
  %i.aed = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.aee = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  store i64 %i.aec, ptr %i.aee, align 8, !tbaa !39, !alias.scope !293, !noalias !245
  store ptr %i.adv, ptr %i.ads, align 8, !tbaa !30, !noalias !245
  store i64 0, ptr %i.aed, align 8, !tbaa !39, !noalias !245
  store i8 0, ptr %i.adv, align 8, !tbaa !31, !noalias !245
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !39, !noalias !300 ; 5 uses
  %i.aeg = icmp sgt i64 %i.aef, 9223372036854775798
  br i1 %i.aeg, label %bb.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i239.i

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #31
          to label %.noexc249.i unwind label %bb.gn, !noalias !245

.noexc249.i:                                      ; preds = %bb.gf
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i239.i: ; preds = %bb.ge
  %i.aeh = add nsw i64 %i.aef, 9                  ; 3 uses
  %i.aei = load ptr, ptr %28, align 8, !tbaa !30, !noalias !300 ; 2 uses
  %i.aej = icmp eq ptr %i.aei, %i.adt
  br i1 %i.aej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i248.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i248.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i239.i
  %i.aek = icmp ult i64 %i.aef, 16
  call void @llvm.assume(i1 %i.aek)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i241.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i239.i
  %i.ael = load i64, ptr %i.adt, align 8, !tbaa !31, !noalias !300
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i241.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i241.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i248.i
  %i.aem = phi i64 [ %i.ael, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i248.i ]
  %.not.i.i.i242.i = icmp ugt i64 %i.aeh, %i.aem
  br i1 %.not.i.i.i242.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i241.i
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aen, ptr noundef nonnull align 1 dereferenceable(9) @.str.39, i64 9, i1 false), !noalias !300
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.i

bb.gh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i241.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %i.aef, i64 noundef 0, ptr noundef nonnull @.str.39, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.i unwind label %bb.gn, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.i: ; preds = %bb.gh, %bb.gg
  store i64 %i.aeh, ptr %i.aee, align 8, !tbaa !39, !noalias !300
  %i.aeo = load ptr, ptr %28, align 8, !tbaa !30, !noalias !300
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.aeh
  store i8 0, ptr %i.aep, align 1, !tbaa !31, !noalias !300
  %i.aeq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 8 uses
  store ptr %i.aeq, ptr %27, align 8, !tbaa !38, !alias.scope !297, !noalias !245
  %i.aer = load ptr, ptr %28, align 8, !tbaa !30, !noalias !300 ; 3 uses
  %i.aes = icmp eq ptr %i.aer, %i.adt
  br i1 %i.aes, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i

bb.gi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.i
  %i.aet = load i64, ptr %i.aee, align 8, !tbaa !39, !noalias !300 ; 3 uses
  %i.aeu = icmp ult i64 %i.aet, 16
  call void @llvm.assume(i1 %i.aeu)
  %i.aev = add nuw nsw i64 %i.aet, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aeq, ptr noundef nonnull align 8 dereferenceable(1) %i.adt, i64 %i.aev, i1 false), !noalias !245
  br label %bb.gj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245.i
  store ptr %i.aer, ptr %27, align 8, !tbaa !30, !alias.scope !297, !noalias !245
  %i.aew = load i64, ptr %i.adt, align 8, !tbaa !31, !noalias !300
  store i64 %i.aew, ptr %i.aeq, align 8, !tbaa !31, !alias.scope !297, !noalias !245
  %.pre.i247.i = load i64, ptr %i.aee, align 8, !tbaa !39, !noalias !300
  br label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i, %bb.gi
  %i.aex = phi ptr [ %i.aeq, %bb.gi ], [ %i.aer, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i ]
  %i.aey = phi i64 [ %i.aet, %bb.gi ], [ %.pre.i247.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i ]
  %i.aez = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.aey, ptr %i.aez, align 8, !tbaa !39, !alias.scope !297, !noalias !245
  store ptr %i.adt, ptr %28, align 8, !tbaa !30, !noalias !300
  store i64 0, ptr %i.aee, align 8, !tbaa !39, !noalias !300
  store i8 0, ptr %i.adt, align 8, !tbaa !31, !noalias !300
  %i.afa = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.xa, ptr noundef %i.aex, i32 noundef 12)
          to label %.noexc254.i unwind label %bb.go, !noalias !245

.noexc254.i:                                      ; preds = %bb.gj
  %.not.i252.i = icmp eq ptr %i.afa, null
  %i.afb = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8, !noalias !245
  %i.afe = getelementptr inbounds i8, ptr %10, i64 %i.afd ; 2 uses
  br i1 %.not.i252.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %.noexc254.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !72, !noalias !245
  %i.afh = or i32 %i.afg, 4
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %.noexc254.i
  %.sink.i253.i = phi i32 [ %i.afh, %bb.gk ], [ 0, %.noexc254.i ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.afe, i32 noundef %.sink.i253.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit256.i unwind label %bb.go, !noalias !245

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit256.i: ; preds = %bb.gl
  %i.afi = load ptr, ptr %27, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.aeq
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit256.i
  %i.afk = load i64, ptr %i.aeq, align 8, !tbaa !31, !noalias !245
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i: ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit256.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.i
  %i.afm = load ptr, ptr %28, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %i.adt
  br i1 %i.afn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i
  %i.afo = load i64, ptr %i.adt, align 8, !tbaa !31, !noalias !245
  %i.afp = add i64 %i.afo, 1
  call void @_ZdlPvm(ptr noundef %i.afm, i64 noundef %i.afp) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i

end_hunk_3
