Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_set?download=true
inline.NumInlined: 8227
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7testing8internal11CmpHelperLEIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_:bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.336)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperGTIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !117
  %i.b = load ptr, ptr %4, align 8, !tbaa !117
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.337)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperGEIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !117
  %i.b = load ptr, ptr %4, align 8, !tbaa !117
  %.not.not = icmp ult ptr %i.a, %i.b
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.338)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN29DenseSet_ReverseIterator_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::dense_set.28", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 16 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 34 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %8 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %15 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %20 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %25 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %30 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %35 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %39 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %43 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %47 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %51 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %52 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %56 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %57 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %61 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %62 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %66 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %67 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %80 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %87 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %90 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %91 = alloca %"class.testing::Message", align 8 ; 7 uses
  %92 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %93 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %94 = alloca %"class.testing::Message", align 8 ; 7 uses
  %95 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.e, align 8, !tbaa !125
  invoke void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef 8)
          to label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i7.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, %bb.d, %bb.mi
  %common.resume.op = phi { ptr, i32 } [ %.pn229.pn.pn.pn.pn, %bb.mi ], [ %i.f, %bb.d ], [ %i.f, %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 3, ptr %i.a, align 4, !tbaa !107
  %i.t = invoke { ptr, i8 } @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE20insert_or_do_nothingIiEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit unwind label %bb.e ; 0 uses

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit: ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 17 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !469
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !469
  %i.y = ptrtoint ptr %i.x to i64
  %96 = ptrtoint ptr %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %i.y, ptr %3, align 8
  store i64 %96, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit: ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit
  %i.z = load i8, ptr %4, align 8, !tbaa !98, !range !101, !noundef !105
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.critedge, label %bb.g

bb.e:                                             ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.mi

bb.f:                                             ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.af, %bb.i ], [ @.str.319, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 296, ptr noundef %i.ag)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ah = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 4 uses
  %.not.i.i278 = icmp eq ptr %i.al, null
  br i1 %.not.i.i278, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !85
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.md

bb.m:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit281

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.as, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.au = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.au, null
  br i1 %.not.i.i279, label %_ZN7testing7MessageD2Ev.exit281, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280: ; preds = %bb.p
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit281

_ZN7testing7MessageD2Ev.exit281:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.u

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 4 uses
  %.not.i.i282 = icmp eq ptr %i.az, null
  br i1 %.not.i.i282, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283: ; preds = %bb.q
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !85
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 32) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !470 ; 2 uses
  store ptr %i.bf, ptr %8, align 8, !tbaa !88, !alias.scope !471
  %.sroa.0.0.copyload.i.i.i.i287 = load ptr, ptr %2, align 8, !tbaa !88, !noalias !472
  %i.bg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i287, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit291 unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.126, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit291 unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit291: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bh = load i8, ptr %7, align 8, !tbaa !98, !range !101, !noundef !105
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.critedge236, label %bb.w

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit281, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit281 ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.mh

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ak

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit291
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i292 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i292, label %_ZNK7testing15AssertionResult15failure_messageEv.exit293, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit293

_ZNK7testing15AssertionResult15failure_messageEv.exit293: ; preds = %bb.y, %bb.x
  %i.bn = phi ptr [ %i.bm, %bb.y ], [ @.str.319, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 297, ptr noundef %i.bn)
          to label %bb.z unwind label %bb.ad

end_hunk_0
begin_hunk_1_@_ZN29DenseSet_ReverseIterator_Test8TestBodyEv:bb.a
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit561

_ZNK7testing15AssertionResult15failure_messageEv.exit561: ; preds = %bb.hg, %bb.hf
  %i.sk = phi ptr [ %i.sj, %bb.hg ], [ @.str.319, %bb.hf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %64, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 315, ptr noundef %i.sk)
          to label %bb.hh unwind label %bb.hk

bb.hh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit561
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %bb.hi unwind label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  %i.sl = load ptr, ptr %63, align 8, !tbaa !87   ; 3 uses
  %.not.i.i562 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i562, label %_ZN7testing7MessageD2Ev.exit564, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563: ; preds = %bb.hi
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !46
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(128) %i.sl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit564

_ZN7testing7MessageD2Ev.exit564:                  ; preds = %bb.hi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.md

bb.hj:                                            ; preds = %bb.he
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit567

bb.hk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit561
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hh
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #26
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.pn193 = phi { ptr, i32 } [ %i.sr, %bb.hl ], [ %i.sq, %bb.hk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  %i.ss = load ptr, ptr %63, align 8, !tbaa !87   ; 3 uses
  %.not.i.i565 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i565, label %_ZN7testing7MessageD2Ev.exit567, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566: ; preds = %bb.hm
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !46
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(128) %i.ss) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit567

_ZN7testing7MessageD2Ev.exit567:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566, %bb.hm, %bb.hj
  %.pn193.pn = phi { ptr, i32 } [ %i.sp, %bb.hj ], [ %.pn193, %bb.hm ], [ %.pn193, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  br label %bb.hp

bb.hn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_.exit559
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #26
  %.sroa.0.0.copyload.i.i568 = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i569 = load ptr, ptr %3, align 8, !tbaa !88
  %i.sw = ptrtoint ptr %.sroa.0.0.copyload.i.i568 to i64
  %i.sx = ptrtoint ptr %.sroa.0.0.copyload.i2.i569 to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = ashr exact i64 %i.sy, 4
  %i.ta = sub nsw i64 0, %i.sz
  %i.tb = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload.i.i568, i64 %i.ta
  store ptr %i.tb, ptr %66, align 8, !tbaa !88, !alias.scope !503
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.tc = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !504 ; 2 uses
  %i.td = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !504
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.tg
  store ptr %i.th, ptr %67, align 8, !tbaa !88, !alias.scope !505
  invoke void @_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESB_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSL_RKSD_RKSE_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %65, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.125, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.ti = load i8, ptr %65, align 8, !tbaa !98, !range !101, !noundef !105
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.ia, label %bb.hr

bb.hp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit567, %bb.hd
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %_ZN7testing7MessageD2Ev.exit567 ], [ %i.sg, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.mh

bb.hq:                                            ; preds = %bb.hn
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  br label %bb.ic

bb.hr:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hs unwind label %bb.hw

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  %i.tl = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i570 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i570, label %_ZNK7testing15AssertionResult15failure_messageEv.exit571, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit571

_ZNK7testing15AssertionResult15failure_messageEv.exit571: ; preds = %bb.ht, %bb.hs
  %i.to = phi ptr [ %i.tn, %bb.ht ], [ @.str.319, %bb.hs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef %i.to)
          to label %bb.hu unwind label %bb.hx

bb.hu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit571
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hv unwind label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %i.tp = load ptr, ptr %68, align 8, !tbaa !87   ; 3 uses
  %.not.i.i572 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i572, label %_ZN7testing7MessageD2Ev.exit574, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573: ; preds = %bb.hv
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !46
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(128) %i.tp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit574

_ZN7testing7MessageD2Ev.exit574:                  ; preds = %bb.hv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.md

bb.hw:                                            ; preds = %bb.hr
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit577

bb.hx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit571
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hu
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #26
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.pn197 = phi { ptr, i32 } [ %i.tv, %bb.hy ], [ %i.tu, %bb.hx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %i.tw = load ptr, ptr %68, align 8, !tbaa !87   ; 3 uses
  %.not.i.i575 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i575, label %_ZN7testing7MessageD2Ev.exit577, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576: ; preds = %bb.hz
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !46
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8
  call void %i.tz(ptr noundef nonnull align 8 dereferenceable(128) %i.tw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit577

_ZN7testing7MessageD2Ev.exit577:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576, %bb.hz, %bb.hw
  %.pn197.pn = phi { ptr, i32 } [ %i.tt, %bb.hw ], [ %.pn197, %bb.hz ], [ %.pn197, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  br label %bb.ic

bb.ia:                                            ; preds = %bb.ho
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #26
  %i.ua = load i64, ptr %3, align 8, !tbaa !88, !noalias !506
  %i.ub = inttoptr i64 %i.ua to ptr
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -8
  %i.ud = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !507
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -8
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %70, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.127, ptr noundef nonnull align 4 dereferenceable(4) %i.uc, ptr noundef nonnull align 4 dereferenceable(4) %i.ue)
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.uf = load i8, ptr %70, align 8, !tbaa !98, !range !101, !noundef !105
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.in, label %bb.ie

bb.ic:                                            ; preds = %_ZN7testing7MessageD2Ev.exit577, %bb.hq
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit577 ], [ %i.tk, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.mh

bb.id:                                            ; preds = %bb.ia
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ie:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.if unwind label %bb.ij

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #26
  %i.ui = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i578 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i578, label %_ZNK7testing15AssertionResult15failure_messageEv.exit579, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit579

_ZNK7testing15AssertionResult15failure_messageEv.exit579: ; preds = %bb.ig, %bb.if
  %i.ul = phi ptr [ %i.uk, %bb.ig ], [ @.str.319, %bb.if ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 318, ptr noundef %i.ul)
          to label %bb.ih unwind label %bb.ik

bb.ih:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit579
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.ii unwind label %bb.il

bb.ii:                                            ; preds = %bb.ih
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  %i.um = load ptr, ptr %71, align 8, !tbaa !87   ; 3 uses
  %.not.i.i580 = icmp eq ptr %i.um, null
  br i1 %.not.i.i580, label %_ZN7testing7MessageD2Ev.exit582, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581: ; preds = %bb.ii
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !46
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(128) %i.um) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit582

_ZN7testing7MessageD2Ev.exit582:                  ; preds = %bb.ii, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  br label %bb.md

bb.ij:                                            ; preds = %bb.ie
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit585

bb.ik:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit579
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.il:                                            ; preds = %bb.ih
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #26
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.pn201 = phi { ptr, i32 } [ %i.us, %bb.il ], [ %i.ur, %bb.ik ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  %i.ut = load ptr, ptr %71, align 8, !tbaa !87   ; 3 uses
  %.not.i.i583 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i583, label %_ZN7testing7MessageD2Ev.exit585, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584: ; preds = %bb.im
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !46
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(128) %i.ut) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit585

_ZN7testing7MessageD2Ev.exit585:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584, %bb.im, %bb.ij
  %.pn201.pn = phi { ptr, i32 } [ %i.uq, %bb.ij ], [ %.pn201, %bb.im ], [ %.pn201, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  br label %bb.ip

bb.in:                                            ; preds = %bb.ib
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #26
  %i.ux = load i64, ptr %3, align 8, !tbaa !88, !noalias !508
  %i.uy = inttoptr i64 %i.ux to ptr
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -8
  %i.va = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !509
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -8
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %73, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.128, ptr noundef nonnull align 4 dereferenceable(4) %i.uz, ptr noundef nonnull align 4 dereferenceable(4) %i.vb)
          to label %bb.io unwind label %bb.iq

bb.io:                                            ; preds = %bb.in
  %i.vc = load i8, ptr %73, align 8, !tbaa !98, !range !101, !noundef !105
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.ja, label %bb.ir

bb.ip:                                            ; preds = %_ZN7testing7MessageD2Ev.exit585, %bb.id
  %.pn201.pn.pn = phi { ptr, i32 } [ %.pn201.pn, %_ZN7testing7MessageD2Ev.exit585 ], [ %i.uh, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  br label %bb.mh

bb.iq:                                            ; preds = %bb.in
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.ir:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.is unwind label %bb.iw

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #26
  %i.vf = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i586 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i586, label %_ZNK7testing15AssertionResult15failure_messageEv.exit587, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit587

_ZNK7testing15AssertionResult15failure_messageEv.exit587: ; preds = %bb.it, %bb.is
  %i.vi = phi ptr [ %i.vh, %bb.it ], [ @.str.319, %bb.is ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef %i.vi)
          to label %bb.iu unwind label %bb.ix

bb.iu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit587
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.iv unwind label %bb.iy

bb.iv:                                            ; preds = %bb.iu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  %i.vj = load ptr, ptr %74, align 8, !tbaa !87   ; 3 uses
  %.not.i.i588 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i588, label %_ZN7testing7MessageD2Ev.exit590, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589: ; preds = %bb.iv
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !46
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(128) %i.vj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit590

_ZN7testing7MessageD2Ev.exit590:                  ; preds = %bb.iv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  br label %bb.md

bb.iw:                                            ; preds = %bb.ir
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit593

bb.ix:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit587
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iu
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #26
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.pn205 = phi { ptr, i32 } [ %i.vp, %bb.iy ], [ %i.vo, %bb.ix ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  %i.vq = load ptr, ptr %74, align 8, !tbaa !87   ; 3 uses
  %.not.i.i591 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i591, label %_ZN7testing7MessageD2Ev.exit593, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592: ; preds = %bb.iz
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !46
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(128) %i.vq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit593

_ZN7testing7MessageD2Ev.exit593:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592, %bb.iz, %bb.iw
  %.pn205.pn = phi { ptr, i32 } [ %i.vn, %bb.iw ], [ %.pn205, %bb.iz ], [ %.pn205, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  br label %bb.jc

bb.ja:                                            ; preds = %bb.io
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #26
  invoke void @_ZN7testing8internal11CmpHelperLTISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.vu = load i8, ptr %76, align 8, !tbaa !98, !range !101, !noundef !105
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.jn, label %bb.je

bb.jc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit593, %bb.iq
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn, %_ZN7testing7MessageD2Ev.exit593 ], [ %i.ve, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  br label %bb.mh

bb.jd:                                            ; preds = %bb.ja
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.je:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.jf unwind label %bb.jj

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #26
  %i.vx = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i594 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i594, label %_ZNK7testing15AssertionResult15failure_messageEv.exit595, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit595

_ZNK7testing15AssertionResult15failure_messageEv.exit595: ; preds = %bb.jg, %bb.jf
  %i.wa = phi ptr [ %i.vz, %bb.jg ], [ @.str.319, %bb.jf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 321, ptr noundef %i.wa)
          to label %bb.jh unwind label %bb.jk

bb.jh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit595
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ji unwind label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.wb = load ptr, ptr %77, align 8, !tbaa !87   ; 3 uses
  %.not.i.i596 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i596, label %_ZN7testing7MessageD2Ev.exit598, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597: ; preds = %bb.ji
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !46
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(128) %i.wb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit598

_ZN7testing7MessageD2Ev.exit598:                  ; preds = %bb.ji, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #26
  br label %bb.md

bb.jj:                                            ; preds = %bb.je
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit601

bb.jk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit595
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jh
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #26
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.pn209 = phi { ptr, i32 } [ %i.wh, %bb.jl ], [ %i.wg, %bb.jk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.wi = load ptr, ptr %77, align 8, !tbaa !87   ; 3 uses
  %.not.i.i599 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i599, label %_ZN7testing7MessageD2Ev.exit601, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600: ; preds = %bb.jm
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !46
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(128) %i.wi) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit601

_ZN7testing7MessageD2Ev.exit601:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600, %bb.jm, %bb.jj
  %.pn209.pn = phi { ptr, i32 } [ %i.wf, %bb.jj ], [ %.pn209, %bb.jm ], [ %.pn209, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #26
end_hunk_1
begin_hunk_2_@_ZN29DenseSet_ReverseIterator_Test8TestBodyEv:bb.a
bb.ke:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.kf unwind label %bb.kj

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #26
  %i.xn = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i610 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i610, label %_ZNK7testing15AssertionResult15failure_messageEv.exit611, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit611

_ZNK7testing15AssertionResult15failure_messageEv.exit611: ; preds = %bb.kg, %bb.kf
  %i.xq = phi ptr [ %i.xp, %bb.kg ], [ @.str.319, %bb.kf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 324, ptr noundef %i.xq)
          to label %bb.kh unwind label %bb.kk

bb.kh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit611
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.ki unwind label %bb.kl

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  %i.xr = load ptr, ptr %84, align 8, !tbaa !87   ; 3 uses
  %.not.i.i612 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i612, label %_ZN7testing7MessageD2Ev.exit614, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613: ; preds = %bb.ki
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !46
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  call void %i.xu(ptr noundef nonnull align 8 dereferenceable(128) %i.xr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit614

_ZN7testing7MessageD2Ev.exit614:                  ; preds = %bb.ki, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  br label %bb.md

bb.kj:                                            ; preds = %bb.ke
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit617

bb.kk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit611
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kl:                                            ; preds = %bb.kh
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #26
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.pn217 = phi { ptr, i32 } [ %i.xx, %bb.kl ], [ %i.xw, %bb.kk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  %i.xy = load ptr, ptr %84, align 8, !tbaa !87   ; 3 uses
  %.not.i.i615 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i615, label %_ZN7testing7MessageD2Ev.exit617, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616: ; preds = %bb.km
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !46
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(128) %i.xy) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit617

_ZN7testing7MessageD2Ev.exit617:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616, %bb.km, %bb.kj
  %.pn217.pn = phi { ptr, i32 } [ %i.xv, %bb.kj ], [ %.pn217, %bb.km ], [ %.pn217, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.yc = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !512
  store ptr %i.yc, ptr %87, align 8, !tbaa !88, !alias.scope !513
  invoke void @_ZN7testing8internal11CmpHelperGEISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %86, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.126, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %bb.ko unwind label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  %i.yd = load i8, ptr %86, align 8, !tbaa !98, !range !101, !noundef !105
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.la, label %bb.kr

bb.kp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit617, %bb.kd
  %.pn217.pn.pn = phi { ptr, i32 } [ %.pn217.pn, %_ZN7testing7MessageD2Ev.exit617 ], [ %i.xm, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  br label %bb.mh

bb.kq:                                            ; preds = %bb.kn
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  br label %bb.ld

bb.kr:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.ks unwind label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #26
  %i.yg = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i618 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i618, label %_ZNK7testing15AssertionResult15failure_messageEv.exit619, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit619

_ZNK7testing15AssertionResult15failure_messageEv.exit619: ; preds = %bb.kt, %bb.ks
  %i.yj = phi ptr [ %i.yi, %bb.kt ], [ @.str.319, %bb.ks ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %89, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 325, ptr noundef %i.yj)
          to label %bb.ku unwind label %bb.kx

bb.ku:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit619
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.kv unwind label %bb.ky

bb.kv:                                            ; preds = %bb.ku
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  %i.yk = load ptr, ptr %88, align 8, !tbaa !87   ; 3 uses
  %.not.i.i620 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i620, label %_ZN7testing7MessageD2Ev.exit622, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621: ; preds = %bb.kv
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !46
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(128) %i.yk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit622

_ZN7testing7MessageD2Ev.exit622:                  ; preds = %bb.kv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.md

bb.kw:                                            ; preds = %bb.kr
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit625

bb.kx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit619
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.ky:                                            ; preds = %bb.ku
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #26
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %.pn221 = phi { ptr, i32 } [ %i.yq, %bb.ky ], [ %i.yp, %bb.kx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  %i.yr = load ptr, ptr %88, align 8, !tbaa !87   ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i623, label %_ZN7testing7MessageD2Ev.exit625, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624: ; preds = %bb.kz
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !46
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(128) %i.yr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit625

_ZN7testing7MessageD2Ev.exit625:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624, %bb.kz, %bb.kw
  %.pn221.pn = phi { ptr, i32 } [ %i.yo, %bb.kw ], [ %.pn221, %bb.kz ], [ %.pn221, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  br label %bb.ld

bb.la:                                            ; preds = %bb.ko
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 1, ptr %i.b, align 4, !tbaa !107
  %i.yv = invoke { ptr, i8 } @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE20insert_or_do_nothingIiEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.lb unwind label %bb.le     ; 0 uses

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.yw = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !514 ; 2 uses
  %i.yx = ptrtoint ptr %i.yw to i64
  store i64 %i.yx, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #26
  %i.yy = getelementptr inbounds i8, ptr %i.yw, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 1, ptr %i.c, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %90, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.102, ptr noundef nonnull align 4 dereferenceable(4) %i.yy, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.lc unwind label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.yz = load i8, ptr %90, align 8, !tbaa !98, !range !101, !noundef !105
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.lp, label %bb.lg

bb.ld:                                            ; preds = %_ZN7testing7MessageD2Ev.exit625, %bb.kq
  %.pn221.pn.pn = phi { ptr, i32 } [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit625 ], [ %i.yf, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.mh

bb.le:                                            ; preds = %bb.la
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.mh

bb.lf:                                            ; preds = %bb.lb
  %i.zc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.lr

bb.lg:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %bb.lh unwind label %bb.ll

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #26
  %i.zd = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i628 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i628, label %_ZNK7testing15AssertionResult15failure_messageEv.exit629, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit629

_ZNK7testing15AssertionResult15failure_messageEv.exit629: ; preds = %bb.li, %bb.lh
  %i.zg = phi ptr [ %i.zf, %bb.li ], [ @.str.319, %bb.lh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %92, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 330, ptr noundef %i.zg)
          to label %bb.lj unwind label %bb.lm

bb.lj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit629
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %bb.lk unwind label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26
  %i.zh = load ptr, ptr %91, align 8, !tbaa !87   ; 3 uses
  %.not.i.i630 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i630, label %_ZN7testing7MessageD2Ev.exit632, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631: ; preds = %bb.lk
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !46
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8
  call void %i.zk(ptr noundef nonnull align 8 dereferenceable(128) %i.zh) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit632

_ZN7testing7MessageD2Ev.exit632:                  ; preds = %bb.lk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  br label %bb.md

bb.ll:                                            ; preds = %bb.lg
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit635

bb.lm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit629
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.ln:                                            ; preds = %bb.lj
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #26
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.pn225 = phi { ptr, i32 } [ %i.zn, %bb.ln ], [ %i.zm, %bb.lm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26
  %i.zo = load ptr, ptr %91, align 8, !tbaa !87   ; 3 uses
  %.not.i.i633 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i633, label %_ZN7testing7MessageD2Ev.exit635, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634: ; preds = %bb.lo
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !46
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(128) %i.zo) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit635

_ZN7testing7MessageD2Ev.exit635:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634, %bb.lo, %bb.ll
  %.pn225.pn = phi { ptr, i32 } [ %i.zl, %bb.ll ], [ %.pn225, %bb.lo ], [ %.pn225, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  br label %bb.lr

bb.lp:                                            ; preds = %bb.lc
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #26
  %i.zs = load i64, ptr %3, align 8, !tbaa !88, !noalias !515
  %i.zt = inttoptr i64 %i.zs to ptr
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 3, ptr %i.d, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %93, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, ptr noundef nonnull align 4 dereferenceable(4) %i.zu, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.lq unwind label %bb.ls

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.zv = load i8, ptr %93, align 8, !tbaa !98, !range !101, !noundef !105
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %bb.mc, label %bb.lt

bb.lr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit635, %bb.lf
  %.pn225.pn.pn = phi { ptr, i32 } [ %.pn225.pn, %_ZN7testing7MessageD2Ev.exit635 ], [ %i.zc, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  br label %bb.mh

bb.ls:                                            ; preds = %bb.lp
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.mg

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.lu unwind label %bb.ly

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #26
  %i.zy = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i636 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i.i636, label %_ZNK7testing15AssertionResult15failure_messageEv.exit637, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit637

_ZNK7testing15AssertionResult15failure_messageEv.exit637: ; preds = %bb.lv, %bb.lu
  %i.aab = phi ptr [ %i.aaa, %bb.lv ], [ @.str.319, %bb.lu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %95, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 331, ptr noundef %i.aab)
          to label %bb.lw unwind label %bb.lz

bb.lw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit637
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.lx unwind label %bb.ma

bb.lx:                                            ; preds = %bb.lw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  %i.aac = load ptr, ptr %94, align 8, !tbaa !87  ; 3 uses
  %.not.i.i638 = icmp eq ptr %i.aac, null
  br i1 %.not.i.i638, label %_ZN7testing7MessageD2Ev.exit640, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639: ; preds = %bb.lx
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !46
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8
  call void %i.aaf(ptr noundef nonnull align 8 dereferenceable(128) %i.aac) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit640

_ZN7testing7MessageD2Ev.exit640:                  ; preds = %bb.lx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #26
  br label %bb.mc

bb.ly:                                            ; preds = %bb.lt
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit643

bb.lz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit637
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lw
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #26
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.pn229 = phi { ptr, i32 } [ %i.aai, %bb.ma ], [ %i.aah, %bb.lz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
end_hunk_2
begin_hunk_3_@_ZN7testing8internal11CmpHelperLEISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_:bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_SD_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.336)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperGTISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8, !tbaa !88
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %3, align 8, !tbaa !88
  %i.a = icmp ugt ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_SD_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.337)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperGEISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8, !tbaa !88
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %3, align 8, !tbaa !88
  %.not.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPSt4pairImiEEEESA_EENS_15AssertionResultEPKcSD_RKT_RKT0_SD_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.338)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34DenseSet_ConstReverseIterator_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::dense_set.28", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::reverse_iterator.60", align 8 ; 16 uses
  %3 = alloca %"class.std::reverse_iterator.60", align 8 ; 34 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %8 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %15 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %16 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %20 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %21 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %25 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %26 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %30 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %31 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %35 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %39 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %43 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %47 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %50 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %51 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %52 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %56 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %57 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %61 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %62 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %66 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %67 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %80 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %81 = alloca %"class.testing::Message", align 8 ; 7 uses
  %82 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %83 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %84 = alloca %"class.testing::Message", align 8 ; 7 uses
  %85 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %87 = alloca %"class.std::reverse_iterator.60", align 8 ; 5 uses
  %88 = alloca %"class.testing::Message", align 8 ; 7 uses
  %89 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %90 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %91 = alloca %"class.testing::Message", align 8 ; 7 uses
  %92 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %93 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %94 = alloca %"class.testing::Message", align 8 ; 7 uses
  %95 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.e, align 8, !tbaa !125
  invoke void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef 8)
          to label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i7.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, %bb.d, %bb.mi
  %common.resume.op = phi { ptr, i32 } [ %.pn229.pn.pn.pn.pn, %bb.mi ], [ %i.f, %bb.d ], [ %i.f, %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 3, ptr %i.a, align 4, !tbaa !107
  %i.t = invoke { ptr, i8 } @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE20insert_or_do_nothingIiEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit unwind label %bb.e ; 0 uses

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit: ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 17 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !615
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !615
  %i.y = ptrtoint ptr %i.x to i64
  %96 = ptrtoint ptr %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %i.y, ptr %3, align 8
  store i64 %96, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit: ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit
  %i.z = load i8, ptr %4, align 8, !tbaa !98, !range !101, !noundef !105
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.critedge, label %bb.g

bb.e:                                             ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEEC2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.mi

bb.f:                                             ; preds = %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE7emplaceIJiEEESt4pairINS_8internal18dense_set_iteratorIPS8_ImiEEEbEDpOT_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.af, %bb.i ], [ @.str.319, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 349, ptr noundef %i.ag)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ah = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !100 ; 4 uses
  %.not.i.i278 = icmp eq ptr %i.al, null
  br i1 %.not.i.i278, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !85
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.md

bb.m:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit281

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.as, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.au = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.au, null
  br i1 %.not.i.i279, label %_ZN7testing7MessageD2Ev.exit281, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280: ; preds = %bb.p
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit281

_ZN7testing7MessageD2Ev.exit281:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.u

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 4 uses
  %.not.i.i282 = icmp eq ptr %i.az, null
  br i1 %.not.i.i282, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !84 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283: ; preds = %bb.q
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !85
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 32) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !616 ; 2 uses
  store ptr %i.bf, ptr %8, align 8, !tbaa !88, !alias.scope !617
  %.sroa.0.0.copyload.i.i.i.i287 = load ptr, ptr %2, align 8, !tbaa !88, !noalias !618
  %i.bg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i287, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit291 unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESB_EENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.132, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit291 unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit291: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bh = load i8, ptr %7, align 8, !tbaa !98, !range !101, !noundef !105
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.critedge236, label %bb.w

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit281, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit281 ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.mh

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ak

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit291
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i292 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i292, label %_ZNK7testing15AssertionResult15failure_messageEv.exit293, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit293

_ZNK7testing15AssertionResult15failure_messageEv.exit293: ; preds = %bb.y, %bb.x
  %i.bn = phi ptr [ %i.bm, %bb.y ], [ @.str.319, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 350, ptr noundef %i.bn)
          to label %bb.z unwind label %bb.ad

end_hunk_3
begin_hunk_4_@_ZN34DenseSet_ConstReverseIterator_Test8TestBodyEv:bb.a
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit561

_ZNK7testing15AssertionResult15failure_messageEv.exit561: ; preds = %bb.hg, %bb.hf
  %i.sk = phi ptr [ %i.sj, %bb.hg ], [ @.str.319, %bb.hf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %64, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 368, ptr noundef %i.sk)
          to label %bb.hh unwind label %bb.hk

bb.hh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit561
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %bb.hi unwind label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  %i.sl = load ptr, ptr %63, align 8, !tbaa !87   ; 3 uses
  %.not.i.i562 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i562, label %_ZN7testing7MessageD2Ev.exit564, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563: ; preds = %bb.hi
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !46
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(128) %i.sl) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit564

_ZN7testing7MessageD2Ev.exit564:                  ; preds = %bb.hi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i563
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.md

bb.hj:                                            ; preds = %bb.he
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit567

bb.hk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit561
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hh
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #26
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.pn193 = phi { ptr, i32 } [ %i.sr, %bb.hl ], [ %i.sq, %bb.hk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  %i.ss = load ptr, ptr %63, align 8, !tbaa !87   ; 3 uses
  %.not.i.i565 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i565, label %_ZN7testing7MessageD2Ev.exit567, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566: ; preds = %bb.hm
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !46
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(128) %i.ss) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit567

_ZN7testing7MessageD2Ev.exit567:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566, %bb.hm, %bb.hj
  %.pn193.pn = phi { ptr, i32 } [ %i.sp, %bb.hj ], [ %.pn193, %bb.hm ], [ %.pn193, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i566 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  br label %bb.hp

bb.hn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_.exit559
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %60) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #26
  %.sroa.0.0.copyload.i.i568 = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.0.0.copyload.i2.i569 = load ptr, ptr %3, align 8, !tbaa !88
  %i.sw = ptrtoint ptr %.sroa.0.0.copyload.i.i568 to i64
  %i.sx = ptrtoint ptr %.sroa.0.0.copyload.i2.i569 to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = ashr exact i64 %i.sy, 4
  %i.ta = sub nsw i64 0, %i.sz
  %i.tb = getelementptr inbounds [16 x i8], ptr %.sroa.0.0.copyload.i.i568, i64 %i.ta
  store ptr %i.tb, ptr %66, align 8, !tbaa !88, !alias.scope !649
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.tc = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !650 ; 2 uses
  %i.td = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !650
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = sub i64 %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.tg
  store ptr %i.th, ptr %67, align 8, !tbaa !88, !alias.scope !651
  invoke void @_ZN7testing8internal8EqHelper7CompareISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESC_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSM_RKSE_RKSF_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %65, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.131, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %bb.ho unwind label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.ti = load i8, ptr %65, align 8, !tbaa !98, !range !101, !noundef !105
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.ia, label %bb.hr

bb.hp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit567, %bb.hd
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %_ZN7testing7MessageD2Ev.exit567 ], [ %i.sg, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.mh

bb.hq:                                            ; preds = %bb.hn
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  br label %bb.ic

bb.hr:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hs unwind label %bb.hw

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  %i.tl = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i570 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i570, label %_ZNK7testing15AssertionResult15failure_messageEv.exit571, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit571

_ZNK7testing15AssertionResult15failure_messageEv.exit571: ; preds = %bb.ht, %bb.hs
  %i.to = phi ptr [ %i.tn, %bb.ht ], [ @.str.319, %bb.hs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef %i.to)
          to label %bb.hu unwind label %bb.hx

bb.hu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit571
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.hv unwind label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %i.tp = load ptr, ptr %68, align 8, !tbaa !87   ; 3 uses
  %.not.i.i572 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i572, label %_ZN7testing7MessageD2Ev.exit574, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573: ; preds = %bb.hv
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !46
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(128) %i.tp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit574

_ZN7testing7MessageD2Ev.exit574:                  ; preds = %bb.hv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.md

bb.hw:                                            ; preds = %bb.hr
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit577

bb.hx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit571
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hu
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #26
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.pn197 = phi { ptr, i32 } [ %i.tv, %bb.hy ], [ %i.tu, %bb.hx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %i.tw = load ptr, ptr %68, align 8, !tbaa !87   ; 3 uses
  %.not.i.i575 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i575, label %_ZN7testing7MessageD2Ev.exit577, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576: ; preds = %bb.hz
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !46
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8
  call void %i.tz(ptr noundef nonnull align 8 dereferenceable(128) %i.tw) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit577

_ZN7testing7MessageD2Ev.exit577:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576, %bb.hz, %bb.hw
  %.pn197.pn = phi { ptr, i32 } [ %i.tt, %bb.hw ], [ %.pn197, %bb.hz ], [ %.pn197, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i576 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  br label %bb.ic

bb.ia:                                            ; preds = %bb.ho
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #26
  %i.ua = load i64, ptr %3, align 8, !tbaa !88, !noalias !652
  %i.ub = inttoptr i64 %i.ua to ptr
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -8
  %i.ud = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !653
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -8
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %70, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.133, ptr noundef nonnull align 4 dereferenceable(4) %i.uc, ptr noundef nonnull align 4 dereferenceable(4) %i.ue)
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.uf = load i8, ptr %70, align 8, !tbaa !98, !range !101, !noundef !105
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.in, label %bb.ie

bb.ic:                                            ; preds = %_ZN7testing7MessageD2Ev.exit577, %bb.hq
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit577 ], [ %i.tk, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.mh

bb.id:                                            ; preds = %bb.ia
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ie:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.if unwind label %bb.ij

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #26
  %i.ui = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i578 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i578, label %_ZNK7testing15AssertionResult15failure_messageEv.exit579, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit579

_ZNK7testing15AssertionResult15failure_messageEv.exit579: ; preds = %bb.ig, %bb.if
  %i.ul = phi ptr [ %i.uk, %bb.ig ], [ @.str.319, %bb.if ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 371, ptr noundef %i.ul)
          to label %bb.ih unwind label %bb.ik

bb.ih:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit579
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.ii unwind label %bb.il

bb.ii:                                            ; preds = %bb.ih
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  %i.um = load ptr, ptr %71, align 8, !tbaa !87   ; 3 uses
  %.not.i.i580 = icmp eq ptr %i.um, null
  br i1 %.not.i.i580, label %_ZN7testing7MessageD2Ev.exit582, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581: ; preds = %bb.ii
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !46
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(128) %i.um) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit582

_ZN7testing7MessageD2Ev.exit582:                  ; preds = %bb.ii, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  br label %bb.md

bb.ij:                                            ; preds = %bb.ie
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit585

bb.ik:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit579
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.il:                                            ; preds = %bb.ih
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #26
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.pn201 = phi { ptr, i32 } [ %i.us, %bb.il ], [ %i.ur, %bb.ik ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  %i.ut = load ptr, ptr %71, align 8, !tbaa !87   ; 3 uses
  %.not.i.i583 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i583, label %_ZN7testing7MessageD2Ev.exit585, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584: ; preds = %bb.im
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !46
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(128) %i.ut) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit585

_ZN7testing7MessageD2Ev.exit585:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584, %bb.im, %bb.ij
  %.pn201.pn = phi { ptr, i32 } [ %i.uq, %bb.ij ], [ %.pn201, %bb.im ], [ %.pn201, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i584 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  br label %bb.ip

bb.in:                                            ; preds = %bb.ib
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %70) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #26
  %i.ux = load i64, ptr %3, align 8, !tbaa !88, !noalias !654
  %i.uy = inttoptr i64 %i.ux to ptr
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -8
  %i.va = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !655
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -8
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %73, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.134, ptr noundef nonnull align 4 dereferenceable(4) %i.uz, ptr noundef nonnull align 4 dereferenceable(4) %i.vb)
          to label %bb.io unwind label %bb.iq

bb.io:                                            ; preds = %bb.in
  %i.vc = load i8, ptr %73, align 8, !tbaa !98, !range !101, !noundef !105
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.ja, label %bb.ir

bb.ip:                                            ; preds = %_ZN7testing7MessageD2Ev.exit585, %bb.id
  %.pn201.pn.pn = phi { ptr, i32 } [ %.pn201.pn, %_ZN7testing7MessageD2Ev.exit585 ], [ %i.uh, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  br label %bb.mh

bb.iq:                                            ; preds = %bb.in
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.ir:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.is unwind label %bb.iw

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #26
  %i.vf = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i586 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i586, label %_ZNK7testing15AssertionResult15failure_messageEv.exit587, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit587

_ZNK7testing15AssertionResult15failure_messageEv.exit587: ; preds = %bb.it, %bb.is
  %i.vi = phi ptr [ %i.vh, %bb.it ], [ @.str.319, %bb.is ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 372, ptr noundef %i.vi)
          to label %bb.iu unwind label %bb.ix

bb.iu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit587
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.iv unwind label %bb.iy

bb.iv:                                            ; preds = %bb.iu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  %i.vj = load ptr, ptr %74, align 8, !tbaa !87   ; 3 uses
  %.not.i.i588 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i588, label %_ZN7testing7MessageD2Ev.exit590, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589: ; preds = %bb.iv
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !46
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(128) %i.vj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit590

_ZN7testing7MessageD2Ev.exit590:                  ; preds = %bb.iv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  br label %bb.md

bb.iw:                                            ; preds = %bb.ir
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit593

bb.ix:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit587
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iu
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #26
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.pn205 = phi { ptr, i32 } [ %i.vp, %bb.iy ], [ %i.vo, %bb.ix ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  %i.vq = load ptr, ptr %74, align 8, !tbaa !87   ; 3 uses
  %.not.i.i591 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i591, label %_ZN7testing7MessageD2Ev.exit593, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592: ; preds = %bb.iz
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !46
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(128) %i.vq) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit593

_ZN7testing7MessageD2Ev.exit593:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592, %bb.iz, %bb.iw
  %.pn205.pn = phi { ptr, i32 } [ %i.vn, %bb.iw ], [ %.pn205, %bb.iz ], [ %.pn205, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i592 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  br label %bb.jc

bb.ja:                                            ; preds = %bb.io
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %73) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #26
  invoke void @_ZN7testing8internal11CmpHelperLTISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESB_EENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %76, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.vu = load i8, ptr %76, align 8, !tbaa !98, !range !101, !noundef !105
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.jn, label %bb.je

bb.jc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit593, %bb.iq
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn, %_ZN7testing7MessageD2Ev.exit593 ], [ %i.ve, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  br label %bb.mh

bb.jd:                                            ; preds = %bb.ja
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.je:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.jf unwind label %bb.jj

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #26
  %i.vx = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i594 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i594, label %_ZNK7testing15AssertionResult15failure_messageEv.exit595, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit595

_ZNK7testing15AssertionResult15failure_messageEv.exit595: ; preds = %bb.jg, %bb.jf
  %i.wa = phi ptr [ %i.vz, %bb.jg ], [ @.str.319, %bb.jf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 374, ptr noundef %i.wa)
          to label %bb.jh unwind label %bb.jk

bb.jh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit595
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ji unwind label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.wb = load ptr, ptr %77, align 8, !tbaa !87   ; 3 uses
  %.not.i.i596 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i596, label %_ZN7testing7MessageD2Ev.exit598, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597: ; preds = %bb.ji
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !46
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(128) %i.wb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit598

_ZN7testing7MessageD2Ev.exit598:                  ; preds = %bb.ji, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i597
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #26
  br label %bb.md

bb.jj:                                            ; preds = %bb.je
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit601

bb.jk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit595
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jh
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #26
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.pn209 = phi { ptr, i32 } [ %i.wh, %bb.jl ], [ %i.wg, %bb.jk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  %i.wi = load ptr, ptr %77, align 8, !tbaa !87   ; 3 uses
  %.not.i.i599 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i599, label %_ZN7testing7MessageD2Ev.exit601, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600: ; preds = %bb.jm
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !46
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(128) %i.wi) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit601

_ZN7testing7MessageD2Ev.exit601:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600, %bb.jm, %bb.jj
  %.pn209.pn = phi { ptr, i32 } [ %i.wf, %bb.jj ], [ %.pn209, %bb.jm ], [ %.pn209, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i600 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %76) #26
end_hunk_4
begin_hunk_5_@_ZN34DenseSet_ConstReverseIterator_Test8TestBodyEv:bb.a
bb.ke:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.kf unwind label %bb.kj

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #26
  %i.xn = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i610 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i610, label %_ZNK7testing15AssertionResult15failure_messageEv.exit611, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit611

_ZNK7testing15AssertionResult15failure_messageEv.exit611: ; preds = %bb.kg, %bb.kf
  %i.xq = phi ptr [ %i.xp, %bb.kg ], [ @.str.319, %bb.kf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef %i.xq)
          to label %bb.kh unwind label %bb.kk

bb.kh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit611
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %bb.ki unwind label %bb.kl

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  %i.xr = load ptr, ptr %84, align 8, !tbaa !87   ; 3 uses
  %.not.i.i612 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i612, label %_ZN7testing7MessageD2Ev.exit614, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613: ; preds = %bb.ki
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !46
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  call void %i.xu(ptr noundef nonnull align 8 dereferenceable(128) %i.xr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit614

_ZN7testing7MessageD2Ev.exit614:                  ; preds = %bb.ki, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  br label %bb.md

bb.kj:                                            ; preds = %bb.ke
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit617

bb.kk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit611
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kl:                                            ; preds = %bb.kh
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #26
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.pn217 = phi { ptr, i32 } [ %i.xx, %bb.kl ], [ %i.xw, %bb.kk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  %i.xy = load ptr, ptr %84, align 8, !tbaa !87   ; 3 uses
  %.not.i.i615 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i615, label %_ZN7testing7MessageD2Ev.exit617, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616: ; preds = %bb.km
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !46
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(128) %i.xy) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit617

_ZN7testing7MessageD2Ev.exit617:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616, %bb.km, %bb.kj
  %.pn217.pn = phi { ptr, i32 } [ %i.xv, %bb.kj ], [ %.pn217, %bb.km ], [ %.pn217, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i616 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kb
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %83) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.yc = load ptr, ptr %i.u, align 8, !tbaa !75, !noalias !658
  store ptr %i.yc, ptr %87, align 8, !tbaa !88, !alias.scope !659
  invoke void @_ZN7testing8internal11CmpHelperGEISt16reverse_iteratorIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEEESB_EENS_15AssertionResultEPKcSE_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %86, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.132, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %bb.ko unwind label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  %i.yd = load i8, ptr %86, align 8, !tbaa !98, !range !101, !noundef !105
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.la, label %bb.kr

bb.kp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit617, %bb.kd
  %.pn217.pn.pn = phi { ptr, i32 } [ %.pn217.pn, %_ZN7testing7MessageD2Ev.exit617 ], [ %i.xm, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  br label %bb.mh

bb.kq:                                            ; preds = %bb.kn
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  br label %bb.ld

bb.kr:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.ks unwind label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #26
  %i.yg = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i618 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i618, label %_ZNK7testing15AssertionResult15failure_messageEv.exit619, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit619

_ZNK7testing15AssertionResult15failure_messageEv.exit619: ; preds = %bb.kt, %bb.ks
  %i.yj = phi ptr [ %i.yi, %bb.kt ], [ @.str.319, %bb.ks ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %89, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 378, ptr noundef %i.yj)
          to label %bb.ku unwind label %bb.kx

bb.ku:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit619
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %bb.kv unwind label %bb.ky

bb.kv:                                            ; preds = %bb.ku
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  %i.yk = load ptr, ptr %88, align 8, !tbaa !87   ; 3 uses
  %.not.i.i620 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i620, label %_ZN7testing7MessageD2Ev.exit622, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621: ; preds = %bb.kv
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !46
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(128) %i.yk) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit622

_ZN7testing7MessageD2Ev.exit622:                  ; preds = %bb.kv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i621
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.md

bb.kw:                                            ; preds = %bb.kr
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit625

bb.kx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit619
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.ky:                                            ; preds = %bb.ku
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #26
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %.pn221 = phi { ptr, i32 } [ %i.yq, %bb.ky ], [ %i.yp, %bb.kx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  %i.yr = load ptr, ptr %88, align 8, !tbaa !87   ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i623, label %_ZN7testing7MessageD2Ev.exit625, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624: ; preds = %bb.kz
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !46
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(128) %i.yr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit625

_ZN7testing7MessageD2Ev.exit625:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624, %bb.kz, %bb.kw
  %.pn221.pn = phi { ptr, i32 } [ %i.yo, %bb.kw ], [ %.pn221, %bb.kz ], [ %.pn221, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i624 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  br label %bb.ld

bb.la:                                            ; preds = %bb.ko
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 1, ptr %i.b, align 4, !tbaa !107
  %i.yv = invoke { ptr, i8 } @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEE20insert_or_do_nothingIiEEDaOT_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.lb unwind label %bb.le     ; 0 uses

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.yw = load ptr, ptr %i.w, align 8, !tbaa !102, !noalias !660 ; 2 uses
  %i.yx = ptrtoint ptr %i.yw to i64
  store i64 %i.yx, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #26
  %i.yy = getelementptr inbounds i8, ptr %i.yw, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 1, ptr %i.c, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %90, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.102, ptr noundef nonnull align 4 dereferenceable(4) %i.yy, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.lc unwind label %bb.lf

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.yz = load i8, ptr %90, align 8, !tbaa !98, !range !101, !noundef !105
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.lp, label %bb.lg

bb.ld:                                            ; preds = %_ZN7testing7MessageD2Ev.exit625, %bb.kq
  %.pn221.pn.pn = phi { ptr, i32 } [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit625 ], [ %i.yf, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  br label %bb.mh

bb.le:                                            ; preds = %bb.la
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.mh

bb.lf:                                            ; preds = %bb.lb
  %i.zc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.lr

bb.lg:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %bb.lh unwind label %bb.ll

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #26
  %i.zd = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i628 = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i628, label %_ZNK7testing15AssertionResult15failure_messageEv.exit629, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit629

_ZNK7testing15AssertionResult15failure_messageEv.exit629: ; preds = %bb.li, %bb.lh
  %i.zg = phi ptr [ %i.zf, %bb.li ], [ @.str.319, %bb.lh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %92, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 383, ptr noundef %i.zg)
          to label %bb.lj unwind label %bb.lm

bb.lj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit629
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %bb.lk unwind label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26
  %i.zh = load ptr, ptr %91, align 8, !tbaa !87   ; 3 uses
  %.not.i.i630 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i630, label %_ZN7testing7MessageD2Ev.exit632, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631: ; preds = %bb.lk
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !46
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8
  call void %i.zk(ptr noundef nonnull align 8 dereferenceable(128) %i.zh) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit632

_ZN7testing7MessageD2Ev.exit632:                  ; preds = %bb.lk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  br label %bb.md

bb.ll:                                            ; preds = %bb.lg
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit635

bb.lm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit629
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.ln:                                            ; preds = %bb.lj
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #26
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.pn225 = phi { ptr, i32 } [ %i.zn, %bb.ln ], [ %i.zm, %bb.lm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26
  %i.zo = load ptr, ptr %91, align 8, !tbaa !87   ; 3 uses
  %.not.i.i633 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i633, label %_ZN7testing7MessageD2Ev.exit635, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634: ; preds = %bb.lo
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !46
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(128) %i.zo) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit635

_ZN7testing7MessageD2Ev.exit635:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634, %bb.lo, %bb.ll
  %.pn225.pn = phi { ptr, i32 } [ %i.zl, %bb.ll ], [ %.pn225, %bb.lo ], [ %.pn225, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i634 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  br label %bb.lr

bb.lp:                                            ; preds = %bb.lc
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #26
  %i.zs = load i64, ptr %3, align 8, !tbaa !88, !noalias !661
  %i.zt = inttoptr i64 %i.zs to ptr
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 3, ptr %i.d, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %93, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.100, ptr noundef nonnull align 4 dereferenceable(4) %i.zu, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.lq unwind label %bb.ls

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.zv = load i8, ptr %93, align 8, !tbaa !98, !range !101, !noundef !105
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %bb.mc, label %bb.lt

bb.lr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit635, %bb.lf
  %.pn225.pn.pn = phi { ptr, i32 } [ %.pn225.pn, %_ZN7testing7MessageD2Ev.exit635 ], [ %i.zc, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  br label %bb.mh

bb.ls:                                            ; preds = %bb.lp
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.mg

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.lu unwind label %bb.ly

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #26
  %i.zy = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i636 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i.i636, label %_ZNK7testing15AssertionResult15failure_messageEv.exit637, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit637

_ZNK7testing15AssertionResult15failure_messageEv.exit637: ; preds = %bb.lv, %bb.lu
  %i.aab = phi ptr [ %i.aaa, %bb.lv ], [ @.str.319, %bb.lu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %95, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 384, ptr noundef %i.aab)
          to label %bb.lw unwind label %bb.lz

bb.lw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit637
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef nonnull align 8 dereferenceable(8) %94)
          to label %bb.lx unwind label %bb.ma

bb.lx:                                            ; preds = %bb.lw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  %i.aac = load ptr, ptr %94, align 8, !tbaa !87  ; 3 uses
  %.not.i.i638 = icmp eq ptr %i.aac, null
  br i1 %.not.i.i638, label %_ZN7testing7MessageD2Ev.exit640, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639: ; preds = %bb.lx
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !46
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8
  call void %i.aaf(ptr noundef nonnull align 8 dereferenceable(128) %i.aac) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit640

_ZN7testing7MessageD2Ev.exit640:                  ; preds = %bb.lx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i639
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #26
  br label %bb.mc

bb.ly:                                            ; preds = %bb.lt
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit643

bb.lz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit637
  %i.aah = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lw
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #26
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.pn229 = phi { ptr, i32 } [ %i.aai, %bb.ma ], [ %i.aah, %bb.lz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
end_hunk_5
begin_hunk_6_@_ZN29DenseSet_EraseFromBucket_Test8TestBodyEv:bb.a

bb.er:                                            ; preds = %.critedge638
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !84 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i906

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i906: ; preds = %bb.er
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !85
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i906
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef 32) #27
  br label %bb.es

bb.es:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i907, %.critedge638
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  %i.pr = load ptr, ptr %i.dp, align 8, !tbaa !137
  %i.ps = load ptr, ptr %1, align 8, !tbaa !77
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !106 ; 2 uses
  %i.pv = icmp eq i64 %i.pu, -1
  br i1 %i.pv, label %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914.thread, label %.lr.ph.i.i910

_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914.thread: ; preds = %bb.es
  store i64 0, ptr %i.p, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  store i32 4, ptr %i.q, align 4, !tbaa !107
  br label %bb.eu

.lr.ph.i.i910:                                    ; preds = %bb.es, %.lr.ph.i.i910
  %.05.i.i911 = phi i64 [ %i.py, %.lr.ph.i.i910 ], [ 0, %bb.es ]
  %.sroa.2.04.i.i912 = phi i64 [ %i.px, %.lr.ph.i.i910 ], [ %i.pu, %bb.es ]
  %i.pw = getelementptr inbounds [16 x i8], ptr %i.pr, i64 %.sroa.2.04.i.i912
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !141 ; 2 uses
  %i.py = add nuw nsw i64 %.05.i.i911, 1          ; 3 uses
  %i.pz = icmp eq i64 %i.px, -1
  br i1 %i.pz, label %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914, label %.lr.ph.i.i910, !llvm.loop !12

_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914: ; preds = %.lr.ph.i.i910
  store i64 %i.py, ptr %i.p, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  store i32 4, ptr %i.q, align 4, !tbaa !107
  %i.qa = icmp eq i64 %i.py, 4
  br i1 %i.qa, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit917 unwind label %bb.ew

bb.eu:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914.thread, %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit914
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %32, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.157, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit917 unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit917: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  %i.qb = load i8, ptr %32, align 8, !tbaa !98, !range !101, !noundef !105
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %.critedge640, label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit904, %bb.eg
  %.pn407.pn.pn = phi { ptr, i32 } [ %.pn407.pn, %_ZN7testing7MessageD2Ev.exit904 ], [ %i.oo, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.acl

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  br label %bb.fr

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit917
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ey unwind label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.qe = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i918 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i918, label %_ZNK7testing15AssertionResult15failure_messageEv.exit919, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit919

_ZNK7testing15AssertionResult15failure_messageEv.exit919: ; preds = %bb.ez, %bb.ey
  %i.qh = phi ptr [ %i.qg, %bb.ez ], [ @.str.319, %bb.ey ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 688, ptr noundef %i.qh)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit919
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.qi = load ptr, ptr %33, align 8, !tbaa !87   ; 3 uses
  %.not.i.i920 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i920, label %_ZN7testing7MessageD2Ev.exit922, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921: ; preds = %bb.fb
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !46
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(128) %i.qi) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit922

_ZN7testing7MessageD2Ev.exit922:                  ; preds = %bb.fb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i921
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.qm = load ptr, ptr %i.qe, align 8, !tbaa !100 ; 4 uses
  %.not.i.i923 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i923, label %_ZN7testing15AssertionResultD2Ev.exit927, label %bb.fc

bb.fc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit922
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !84 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924: ; preds = %bb.fc
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !85
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i924
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit927

_ZN7testing15AssertionResultD2Ev.exit927:         ; preds = %_ZN7testing7MessageD2Ev.exit922, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i925
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.aci

bb.fd:                                            ; preds = %bb.ex
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit930

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit919
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fa
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #26
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn413 = phi { ptr, i32 } [ %i.qu, %bb.ff ], [ %i.qt, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.qv = load ptr, ptr %33, align 8, !tbaa !87   ; 3 uses
  %.not.i.i928 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i928, label %_ZN7testing7MessageD2Ev.exit930, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929: ; preds = %bb.fg
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !46
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(128) %i.qv) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit930

_ZN7testing7MessageD2Ev.exit930:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929, %bb.fg, %bb.fd
  %.pn413.pn = phi { ptr, i32 } [ %i.qs, %bb.fd ], [ %.pn413, %bb.fg ], [ %.pn413, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i929 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #26
  br label %bb.fr

.critedge640:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit917
  %i.qz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !100 ; 4 uses
  %.not.i.i931 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i931, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.critedge640
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !84 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 16 ; 2 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i933, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i932

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i932: ; preds = %bb.fh
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !85
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rf) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i933

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i933: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i932
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef 32) #27
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i933, %.critedge640
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.rg = load ptr, ptr %i.dp, align 8, !tbaa !137 ; 2 uses
  %i.rh = load ptr, ptr %i.dq, align 8, !tbaa !139 ; 3 uses
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rg to i64               ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj
  %172 = getelementptr inbounds i8, ptr %i.rh, i64 -48
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %173, %i.rj
  %i.rl = ashr exact i64 %174, 4                  ; 2 uses
  %i.rm = ashr exact i64 %i.rk, 4                 ; 2 uses
  %.not15.i = icmp eq i64 %i.rm, %i.rl
  %.pre = load ptr, ptr %i.cc, align 8, !tbaa !103
  %.pre1820 = load ptr, ptr %1, align 8, !tbaa !77 ; 3 uses
  %.pre1821 = ptrtoint ptr %.pre to i64
  %.pre1822 = ptrtoint ptr %.pre1820 to i64
  %.pre1824 = sub i64 %.pre1821, %.pre1822        ; 2 uses
  %.pre1826 = ashr exact i64 %.pre1824, 3         ; 2 uses
  br i1 %.not15.i, label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseENS_8internal18dense_set_iteratorIPKSt4pairImmEEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fi
  %175 = add nsw i64 %.pre1826, -1                ; 2 uses
  br label %bb.fj

bb.fj:                                            ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i, %.lr.ph.i
  %i.rn = phi ptr [ %i.rh, %.lr.ph.i ], [ %i.st, %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i ] ; 5 uses
  %.016.i = phi i64 [ %i.rm, %.lr.ph.i ], [ %i.ro, %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i ]
  %i.ro = add i64 %.016.i, -1                     ; 3 uses
  %i.rp = getelementptr inbounds nuw [16 x i8], ptr %i.rg, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !106 ; 2 uses
  %i.rs = and i64 %i.rr, %175
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.pre1820, i64 %i.rs
  %i.ru = load ptr, ptr %i.dp, align 8            ; 3 uses
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fl, %bb.fj
  %.012.i.i = phi ptr [ %i.rt, %bb.fj ], [ %i.rw, %bb.fl ] ; 2 uses
  %i.rv = load i64, ptr %.012.i.i, align 8, !tbaa !106 ; 4 uses
  %.not.i.i936 = icmp eq i64 %i.rv, -1
  br i1 %.not.i.i936, label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.ru, i64 %i.rv ; 5 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !106
  %i.rz = icmp eq i64 %i.ry, %i.rr
  br i1 %i.rz, label %bb.fm, label %bb.fk, !llvm.loop !14

bb.fm:                                            ; preds = %bb.fl
  %i.sa = load i64, ptr %i.rw, align 8, !tbaa !141
  store i64 %i.sa, ptr %.012.i.i, align 8, !tbaa !106
  %i.sb = ptrtoint ptr %i.rn to i64
  %i.sc = ptrtoint ptr %i.ru to i64
  %i.sd = sub i64 %i.sb, %i.sc
  %i.se = ashr exact i64 %i.sd, 4
  %i.sf = add nsw i64 %i.se, -1                   ; 3 uses
  %.not.i.i.i937 = icmp eq i64 %i.rv, %i.sf
  br i1 %.not.i.i.i937, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.sh = getelementptr inbounds i8, ptr %i.rn, i64 -16
  %i.si = getelementptr inbounds i8, ptr %i.rn, i64 -8 ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !106
  %i.sk = and i64 %i.sj, %175
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %.pre1820, i64 %i.sk ; 2 uses
  %i.sm = load i64, ptr %i.sh, align 8, !tbaa !106
  store i64 %i.sm, ptr %i.rw, align 8, !tbaa !141
  %i.sn = load i64, ptr %i.si, align 8, !tbaa !106
  store i64 %i.sn, ptr %i.sg, align 8, !tbaa !142
  %i.so = load i64, ptr %i.sl, align 8, !tbaa !106 ; 2 uses
  %.not1011.i.i.i = icmp eq i64 %i.so, %i.sf
  br i1 %.not1011.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fn, %.lr.ph.i.i.i
  %i.sp = phi i64 [ %i.sr, %.lr.ph.i.i.i ], [ %i.so, %bb.fn ]
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.ru, i64 %i.sp ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !106 ; 2 uses
  %.not10.i.i.i = icmp eq i64 %i.sr, %i.sf
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.fn
  %.0.lcssa.i.i.i = phi ptr [ %i.sl, %bb.fn ], [ %i.sq, %.lr.ph.i.i.i ]
  store i64 %i.rv, ptr %.0.lcssa.i.i.i, align 8, !tbaa !106
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge.i.i.i, %bb.fm
  %i.ss = getelementptr inbounds i8, ptr %i.rn, i64 -16 ; 2 uses
  store ptr %i.ss, ptr %i.dq, align 8, !tbaa !139
  br label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i

_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i: ; preds = %bb.fk, %bb.fo
  %i.st = phi ptr [ %i.ss, %bb.fo ], [ %i.rn, %bb.fk ]
  %.not.i = icmp eq i64 %i.ro, %i.rl
  br i1 %.not.i, label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseENS_8internal18dense_set_iteratorIPKSt4pairImmEEESC_.exit, label %bb.fj, !llvm.loop !16

_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseENS_8internal18dense_set_iteratorIPKSt4pairImmEEESC_.exit: ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseERKm.exit.i, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  store i64 %.pre1826, ptr %i.r, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  store i64 16, ptr %i.s, align 8, !tbaa !106
  %i.su = icmp eq i64 %.pre1824, 128
  br i1 %i.su, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseENS_8internal18dense_set_iteratorIPKSt4pairImmEEESC_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit940 unwind label %bb.fs

bb.fq:                                            ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5eraseENS_8internal18dense_set_iteratorIPKSt4pairImmEEESC_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %35, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.217, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit940 unwind label %bb.fs

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit940: ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  %i.sv = load i8, ptr %35, align 8, !tbaa !98, !range !101, !noundef !105
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %.critedge642, label %bb.ft

bb.fr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit930, %bb.ew
  %.pn413.pn.pn = phi { ptr, i32 } [ %.pn413.pn, %_ZN7testing7MessageD2Ev.exit930 ], [ %i.qd, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.acl

bb.fs:                                            ; preds = %bb.fq, %bb.fp
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  br label %bb.gh

bb.ft:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit940
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.fu unwind label %bb.fz

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  %i.sy = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i941 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i941, label %_ZNK7testing15AssertionResult15failure_messageEv.exit942, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit942

_ZNK7testing15AssertionResult15failure_messageEv.exit942: ; preds = %bb.fv, %bb.fu
  %i.tb = phi ptr [ %i.ta, %bb.fv ], [ @.str.319, %bb.fu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 692, ptr noundef %i.tb)
          to label %bb.fw unwind label %bb.ga

bb.fw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit942
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.tc = load ptr, ptr %36, align 8, !tbaa !87   ; 3 uses
  %.not.i.i943 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i943, label %_ZN7testing7MessageD2Ev.exit945, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i944

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i944: ; preds = %bb.fx
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !46
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8
  call void %i.tf(ptr noundef nonnull align 8 dereferenceable(128) %i.tc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit945

_ZN7testing7MessageD2Ev.exit945:                  ; preds = %bb.fx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i944
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.tg = load ptr, ptr %i.sy, align 8, !tbaa !100 ; 4 uses
  %.not.i.i946 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i946, label %_ZN7testing15AssertionResultD2Ev.exit950, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit945
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !84 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i948, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i947

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i947: ; preds = %bb.fy
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !85
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i948

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i948: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i947
  call void @_ZdlPvm(ptr noundef nonnull %i.tg, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit950

_ZN7testing15AssertionResultD2Ev.exit950:         ; preds = %_ZN7testing7MessageD2Ev.exit945, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i948
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.aci

bb.fz:                                            ; preds = %bb.ft
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit953

bb.ga:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit942
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fw
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #26
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.pn417 = phi { ptr, i32 } [ %i.to, %bb.gb ], [ %i.tn, %bb.ga ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.tp = load ptr, ptr %36, align 8, !tbaa !87   ; 3 uses
  %.not.i.i951 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i951, label %_ZN7testing7MessageD2Ev.exit953, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952: ; preds = %bb.gc
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !46
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(128) %i.tp) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit953

_ZN7testing7MessageD2Ev.exit953:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952, %bb.gc, %bb.fz
  %.pn417.pn = phi { ptr, i32 } [ %i.tm, %bb.fz ], [ %.pn417, %bb.gc ], [ %.pn417, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #26
  br label %bb.gh

.critedge642:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit940
  %i.tt = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !100 ; 4 uses
  %.not.i.i954 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i954, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.critedge642
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !84 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i956, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i955: ; preds = %bb.gd
  %i.ty = load i64, ptr %i.tw, align 8, !tbaa !85
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i956

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i956: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i955
  call void @_ZdlPvm(ptr noundef nonnull %i.tu, i64 noundef 32) #27
  br label %bb.ge

bb.ge:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i956, %.critedge642
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.ua = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.ub = load ptr, ptr %i.dp, align 8, !tbaa !137
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = sub i64 %i.uc, %i.ud                    ; 2 uses
  %i.uf = ashr exact i64 %i.ue, 4
  store i64 %i.uf, ptr %i.t, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #26
  store i32 9, ptr %i.u, align 4, !tbaa !107
  %i.ug = icmp eq i64 %i.ue, 144
  br i1 %i.ug, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit961 unwind label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.221, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit961 unwind label %bb.gi

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit961: ; preds = %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  %i.uh = load i8, ptr %38, align 8, !tbaa !98, !range !101, !noundef !105
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %.critedge644, label %bb.gj

bb.gh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit953, %bb.fs
  %.pn417.pn.pn = phi { ptr, i32 } [ %.pn417.pn, %_ZN7testing7MessageD2Ev.exit953 ], [ %i.sx, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.acl

bb.gi:                                            ; preds = %bb.gg, %bb.gf
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  br label %bb.gx

bb.gj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit961
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.gk unwind label %bb.gp

end_hunk_6
