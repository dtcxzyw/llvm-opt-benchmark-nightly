Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb0ELm2ELm2EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_:bb.a
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal13view_iteratorINS2_16basic_sparse_setINS2_6entityESaIS6_EEELb0ELm2ELm2EEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13view_iteratorINS2_16basic_sparse_setINS2_6entityESaIS6_EEELb0ELm2ELm2EEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal13view_iteratorINS2_16basic_sparse_setINS2_6entityESaIS6_EEELb0ELm2ELm2EEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt8internal13view_iteratorINS2_16basic_sparse_setINS2_6entityESaIS6_EEELb0ELm2ELm2EEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.entt::internal::view_iterator.399") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 3 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !69
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store ptr %i.e, ptr %0, align 8, !tbaa !96
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.r, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %i.w, align 8, !tbaa !215
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EEC2ENS0_19sparse_set_iteratorISt6vectorIS3_S4_EEESt5arrayIPKS5_Lm2EESE_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit, %bb.e
  %i.y = phi i64 [ %i.ag, %bb.e ], [ %i.r, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !131
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !102
  %i.ae = tail call noundef zeroext i1 @_ZNK4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EE5validES3_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.ad) #26
  br i1 %i.ae, label %_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EEC2ENS0_19sparse_set_iteratorISt6vectorIS3_S4_EEESt5arrayIPKS5_Lm2EESE_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !110
  %i.ag = add nsw i64 %i.af, -1                   ; 3 uses
  store i64 %i.ag, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !110
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EEC2ENS0_19sparse_set_iteratorISt6vectorIS3_S4_EEESt5arrayIPKS5_Lm2EESE_m.exit, label %.lr.ph.i.i, !llvm.loop !26

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EEC2ENS0_19sparse_set_iteratorISt6vectorIS3_S4_EEESt5arrayIPKS5_Lm2EESE_m.exit

_ZN4entt8internal13view_iteratorINS_16basic_sparse_setINS_6entityESaIS3_EEELb0ELm2ELm2EEC2ENS0_19sparse_set_iteratorISt6vectorIS3_S4_EEESt5arrayIPKS5_Lm2EESE_m.exit: ; preds = %bb.e, %.lr.ph.i.i, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm2EE6offsetEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIPN4entt13basic_storageIdNS3_6entityESaIdEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !211, !noalias !2308
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIPN4entt13basic_storageIdNS2_6entityESaIdEEEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIPN4entt13basic_storageIdNS2_6entityESaIdEEEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN7testing8internal11CmpHelperEQIPN4entt13basic_storageIdNS2_6entityESaIdEEEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIPN4entt13basic_storageIdNS2_6entityESaIdEEEDnEENS_15AssertionResultEPKcSA_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIPKN4entt13basic_storageIfNS3_6entityESaIfEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !213, !noalias !2311
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIPKN4entt13basic_storageIfNS2_6entityESaIfEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIPKN4entt13basic_storageIfNS2_6entityESaIfEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN7testing8internal11CmpHelperEQIPKN4entt13basic_storageIfNS2_6entityESaIfEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIPKN4entt13basic_storageIfNS2_6entityESaIfEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEENS1_IdS2_SaIdEEENS1_IfS2_SaIfEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(416) dereferenceable(416) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN4entt13basic_storageIcNS_6entityESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4entt13basic_storageIdNS_6entityESaIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #26
  tail call void @_ZN4entt13basic_storageIfNS_6entityESaIfEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(312) %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN33ViewMultiStorage_SwapStorage_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.401", align 8    ; 34 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNSt11_Tuple_implILm0EJN4entt13basic_storageIiNS0_6entityESaIiEEENS1_IcS2_SaIcEEES4_S6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(416) %1)
  %i.g = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder)
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIPN4entt13basic_storageIiNS3_6entityESaIiEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit unwind label %bb.e

_ZN7testing8internal8EqHelper7CompareIPN4entt13basic_storageIiNS3_6entityESaIiEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit: ; preds = %bb.d
  %.pre.a = load i8, ptr %2, align 8, !tbaa !91, !range !92, !noundef !93
  %i.k = trunc nuw i8 %.pre.a to i1
  br i1 %i.k, label %.critedge112, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIPN4entt13basic_storageIiNS3_6entityESaIiEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i142, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %bb.g
  %i.p = phi ptr [ %i.o, %bb.h ], [ @.str.319, %bb.g ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1470, ptr noundef %i.p)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.q = load ptr, ptr %3, align 8, !tbaa !79     ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.q, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.j
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %i.q) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !94   ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.u, null
  br i1 %.not.i.i146, label %_ZN7testing15AssertionResultD2Ev.exit150, label %bb.k

bb.k:                                             ; preds = %_ZN7testing7MessageD2Ev.exit145
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !77
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit150

_ZN7testing15AssertionResultD2Ev.exit150:         ; preds = %_ZN7testing7MessageD2Ev.exit145, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.er

bb.l:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit153

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn70 = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %3, align 8, !tbaa !79    ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i151, label %_ZN7testing7MessageD2Ev.exit153, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.o
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit153

_ZN7testing7MessageD2Ev.exit153:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152, %bb.o, %bb.l
  %.pn70.pn = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %.pn70, %bb.o ], [ %.pn70, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %bb.r

.critedge112:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIPN4entt13basic_storageIiNS3_6entityESaIiEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !94 ; 4 uses
  %.not.i.i154 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i154, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i155: ; preds = %bb.p
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !77
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i155
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #27
  br label %bb.q

bb.q:                                             ; preds = %.critedge112, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIPKN4entt13basic_storageIcNS3_6entityESaIcEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.s

_ZN7testing8internal8EqHelper7CompareIPKN4entt13basic_storageIcNS3_6entityESaIcEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %bb.q
  %i.ao = load i8, ptr %5, align 8, !tbaa !91, !range !92, !noundef !93
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge114, label %bb.t

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit153, %bb.e
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %_ZN7testing7MessageD2Ev.exit153 ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.et

bb.s:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIPKN4entt13basic_storageIcNS3_6entityESaIcEEEDnTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i161, label %_ZNK7testing15AssertionResult15failure_messageEv.exit162, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit162

_ZNK7testing15AssertionResult15failure_messageEv.exit162: ; preds = %bb.v, %bb.u
  %i.au = phi ptr [ %i.at, %bb.v ], [ @.str.319, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1471, ptr noundef %i.au)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit162
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.av = load ptr, ptr %6, align 8, !tbaa !79    ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.av, null
  br i1 %.not.i.i163, label %_ZN7testing7MessageD2Ev.exit165, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164: ; preds = %bb.x
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit165

_ZN7testing7MessageD2Ev.exit165:                  ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 4 uses
  %.not.i.i166 = icmp eq ptr %i.az, null
  br i1 %.not.i.i166, label %_ZN7testing15AssertionResultD2Ev.exit170, label %bb.y

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit165
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN29View_PipeWithPlaceholder_Test8TestBodyEv:bb.a

.thread:                                          ; preds = %bb.g, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !99  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i: ; preds = %.thread
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !102 ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 1048575
  br i1 %i.bb, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread

bb.s:                                             ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i6.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i: ; preds = %bb.s
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !102
  %i.be = icmp ult i32 %i.bd, 1048575
  br i1 %i.be, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i, %bb.s, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i
  %i.bf = zext nneg i32 %i.ba to i64
  %i.bg = load i8, ptr %i.g, align 8, !tbaa !69
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit

bb.u:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !81
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit: ; preds = %bb.t, %bb.u
  %i.br = phi i64 [ %i.bi, %bb.t ], [ %i.bq, %bb.u ]
  %i.bs = icmp ule i64 %i.br, %i.bf               ; 2 uses
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %6, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !100
  br i1 %i.bs, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bv = load ptr, ptr %9, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1683, ptr noundef %i.bv)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  %i.bw = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.z
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !77
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cb = load ptr, ptr %7, align 8, !tbaa !79    ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(128) %i.cb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !94 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit91
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !76 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.aa
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !77
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit96

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %_ZN7testing7MessageD2Ev.exit91, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cq

bb.ab:                                            ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit102

bb.ac:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.ad:                                            ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn41 = phi { ptr, i32 } [ %i.co, %bb.ae ], [ %i.cn, %bb.ad ] ; 2 uses
  %i.cp = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.af
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !77
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ac
  %.pn41.pn = phi { ptr, i32 } [ %i.cm, %bb.ac ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn41, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cu = load ptr, ptr %7, align 8, !tbaa !79    ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.ab
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.ab ], [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn41.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cv

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread: ; preds = %.thread, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i, %.thread353, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cy = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8, !noalias !2632
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.ag, label %bb.ai, !prof !55

bb.ag:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread
  %i.da = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26, !noalias !2632
  %.not.i.i.i.i229 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i229, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder), !noalias !2632
  %i.db = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26, !noalias !2632 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26, !noalias !2632
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !103 ; 2 uses
  %.not255.a = icmp eq ptr %i.dc, %i.dd
  br i1 %.not255.a, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread, label %bb.aj

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i111: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i110
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 16), align 8, !tbaa !127
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 8), align 8, !tbaa !103 ; 2 uses
  %.not257.a = icmp eq ptr %i.de, %i.df
  br i1 %.not257.a, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i109, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i110

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i110: ; preds = %bb.aj
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !102 ; 2 uses
  %i.di = icmp ult i32 %i.dh, 1048575
  br i1 %i.di, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i111, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread

bb.ak:                                            ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i111
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i6.i114 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i6.i114, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i115

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i115: ; preds = %bb.ak
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !102
  %i.dl = icmp ult i32 %i.dk, 1048575
  br i1 %i.dl, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i115, %bb.ak, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i111
  %26 = zext nneg i32 %i.dh to i64
  %27 = load i8, ptr %i.g, align 8, !tbaa !69
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113
  %30 = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113.a

31:                                               ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = load ptr, ptr %32, align 8, !tbaa !81
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 2
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113.a

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113.a: ; preds = %29, %31
  %40 = phi i64 [ %30, %29 ], [ %39, %31 ]
  %i.dm = icmp ule i64 %40, %26                   ; 2 uses
  %i.dn = zext i1 %i.dm to i8
  store i8 %i.dn, ptr %10, align 8, !tbaa !91
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.do, align 8, !tbaa !100
  br i1 %i.dm, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.dp = load ptr, ptr %13, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1687, ptr noundef %i.dp)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  %i.dq = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ap
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !77
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dv = load ptr, ptr %11, align 8, !tbaa !79   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !94 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i122, label %_ZN7testing15AssertionResultD2Ev.exit126, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !76 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.aq
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !77
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit126

_ZN7testing15AssertionResultD2Ev.exit126:         ; preds = %_ZN7testing7MessageD2Ev.exit121, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cq

bb.ar:                                            ; preds = %bb.al
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit132

bb.as:                                            ; preds = %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.at:                                            ; preds = %bb.an
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ao
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn45 = phi { ptr, i32 } [ %i.ei, %bb.au ], [ %i.eh, %bb.at ] ; 2 uses
  %i.ej = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.av
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !77
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.as
  %.pn45.pn = phi { ptr, i32 } [ %i.eg, %bb.as ], [ %.pn45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %.pn45, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.eo = load ptr, ptr %11, align 8, !tbaa !79   ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i130, label %_ZN7testing7MessageD2Ev.exit132, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit132

_ZN7testing7MessageD2Ev.exit132:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.ar
  %.pn45.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.ar ], [ %.pn45.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn45.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cv

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i110, %bb.aj, %bb.ai, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i115, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i113.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.es = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef null)
          to label %bb.aw unwind label %bb.ay     ; 0 uses

bb.aw:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.et = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.eu = load ptr, ptr %i.e, align 8, !tbaa !103 ; 3 uses
  %.not258 = icmp eq ptr %i.et, %i.eu
  br i1 %.not258, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i139, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141.thread, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141.thread: ; preds = %bb.ax, %bb.aw
  store i8 0, ptr %14, align 8, !tbaa !91
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %i.ew, align 8, !tbaa !100
  br label %bb.az

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141: ; preds = %bb.ax
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !102
  %i.ey = icmp ult i32 %i.ex, 1048575             ; 2 uses
  %i.ez = zext i1 %i.ey to i8
  store i8 %i.ez, ptr %14, align 8, !tbaa !91
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %i.fa, align 8, !tbaa !100
  br i1 %i.ey, label %bb.bk, label %bb.az

bb.ay:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit.thread
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.az:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141.thread, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141
  %i.fc = phi ptr [ %i.ew, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141.thread ], [ %i.fa, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load ptr, ptr %17, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1691, ptr noundef %i.fd)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  %i.fe = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bd
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !77
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.fj = load ptr, ptr %15, align 8, !tbaa !79   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !43
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !94 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.be

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !76 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.be
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !77
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %_ZN7testing7MessageD2Ev.exit147, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.cq

bb.bf:                                            ; preds = %bb.az
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.bg:                                            ; preds = %bb.ba
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.bh:                                            ; preds = %bb.bb
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bc
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn49 = phi { ptr, i32 } [ %i.fw, %bb.bi ], [ %i.fv, %bb.bh ] ; 2 uses
  %i.fx = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bj
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !77
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.bg
  %.pn49.pn = phi { ptr, i32 } [ %i.fu, %bb.bg ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn49, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.gc = load ptr, ptr %15, align 8, !tbaa !79   ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.bf
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.bf ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn49.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.cv

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i167: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i166
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 16), align 8, !tbaa !127
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 8), align 8, !tbaa !103 ; 2 uses
  %.not260 = icmp eq ptr %i.gg, %i.gh
  br i1 %.not260, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169, label %bb.bl

bb.bk:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE0EE8containsES2_.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.gi = load ptr, ptr %i.eu, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i165 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i165, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i166

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i166: ; preds = %bb.bk
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !102 ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 1048575
  br i1 %i.gk, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i167, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread

bb.bl:                                            ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i167
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i6.i171 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i6.i171, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i172

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i172: ; preds = %bb.bl
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !102
  %i.gn = icmp ult i32 %i.gm, 1048575
  br i1 %i.gn, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i172, %bb.bl, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i167
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = load i8, ptr %i.g, align 8, !tbaa !69
  %i.gq = icmp eq i8 %i.gp, 2
  br i1 %i.gq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169
  %i.gr = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173

bb.bn:                                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i169
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !80
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !81
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = ashr exact i64 %i.gy, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i172, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i166, %bb.bk
  store i8 0, ptr %18, align 8, !tbaa !91
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr null, ptr %i.ha, align 8, !tbaa !100
  br label %bb.bo

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173: ; preds = %bb.bm, %bb.bn
  %i.hb = phi i64 [ %i.gr, %bb.bm ], [ %i.gz, %bb.bn ]
  %i.hc = icmp ugt i64 %i.hb, %i.go               ; 2 uses
  %i.hd = zext i1 %i.hc to i8
  store i8 %i.hd, ptr %18, align 8, !tbaa !91
  %i.he = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr null, ptr %i.he, align 8, !tbaa !100
  br i1 %i.hc, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173
  %i.hf = phi ptr [ %i.ha, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173.thread ], [ %i.he, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.hg = load ptr, ptr %21, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1692, ptr noundef %i.hg)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  %i.hh = load ptr, ptr %21, align 8, !tbaa !76   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.bs
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !77
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.hm = load ptr, ptr %19, align 8, !tbaa !79   ; 3 uses
  %.not.i.i177 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i177, label %_ZN7testing7MessageD2Ev.exit179, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit179

_ZN7testing7MessageD2Ev.exit179:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.hq = load ptr, ptr %i.hf, align 8, !tbaa !94 ; 4 uses
  %.not.i.i180 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i180, label %_ZN7testing15AssertionResultD2Ev.exit184, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit179
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !76 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181: ; preds = %bb.bt
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !77
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit184

_ZN7testing15AssertionResultD2Ev.exit184:         ; preds = %_ZN7testing7MessageD2Ev.exit179, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.cq

bb.bu:                                            ; preds = %bb.bo
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit190

bb.bv:                                            ; preds = %bb.bp
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.bw:                                            ; preds = %bb.bq
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.br
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn53 = phi { ptr, i32 } [ %i.hz, %bb.bx ], [ %i.hy, %bb.bw ] ; 2 uses
  %i.ia = load ptr, ptr %21, align 8, !tbaa !76   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.by
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !77
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.bv
  %.pn53.pn = phi { ptr, i32 } [ %i.hx, %bb.bv ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %.pn53, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.if = load ptr, ptr %19, align 8, !tbaa !79   ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.if, null
  br i1 %.not.i.i188, label %_ZN7testing7MessageD2Ev.exit190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !43
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit190

_ZN7testing7MessageD2Ev.exit190:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %bb.bu
  %.pn53.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.bu ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn53.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.cv

bb.bz:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm1ELm1EE8containsES2_.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ij = load atomic i8, ptr @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder acquire, align 8, !noalias !2633
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %bb.ca, label %select.unfold.i.1.i236, !prof !55

bb.ca:                                            ; preds = %bb.bz
  %i.il = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26, !noalias !2633
  %.not.i.i.i.i237 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i.i237, label %select.unfold.i.1.i236, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder), !noalias !2633
  %i.im = call i32 @__cxa_atexit(ptr nonnull @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev, ptr nonnull @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, ptr nonnull @__dso_handle) #26, !noalias !2633 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder) #26, !noalias !2633
  br label %select.unfold.i.1.i236

select.unfold.i.1.i236:                           ; preds = %bb.cb, %bb.ca, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.in = load ptr, ptr %i.m, align 8, !tbaa !127
  %i.io = load ptr, ptr %i.e, align 8, !tbaa !103 ; 2 uses
  %.not261 = icmp eq ptr %i.in, %i.io
  br i1 %.not261, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread, label %bb.cc

_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i203: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i199
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 16), align 8, !tbaa !127
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt8internal16view_placeholderITkNS_17cvref_unqualifiedENS_16basic_sparse_setINS_6entityESaIS3_EEEEEPKT_vE11placeholder, i64 8), align 8, !tbaa !103 ; 2 uses
  %.not263 = icmp eq ptr %i.ip, %i.iq
  br i1 %.not263, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205, label %bb.cd

bb.cc:                                            ; preds = %select.unfold.i.1.i236
  %i.ir = load ptr, ptr %i.io, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i198, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i199

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i199: ; preds = %bb.cc
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !102 ; 2 uses
  %i.it = icmp ult i32 %i.is, 1048575
  br i1 %i.it, label %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i203, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread

bb.cd:                                            ; preds = %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i203
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i6.i207 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i6.i207, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i208

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i208: ; preds = %bb.cd
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !102
  %i.iw = icmp ult i32 %i.iv, 1048575
  br i1 %i.iw, label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i208, %bb.cd, %_ZN4entt8internal6all_ofIPKPKNS_16basic_sparse_setINS_6entityESaIS3_EEES9_S3_EEbT_T0_T1_.exit.preheader.i203
  %41 = zext nneg i32 %i.is to i64
  %42 = load i8, ptr %i.g, align 8, !tbaa !69
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %44, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205.a

44:                                               ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205
  %45 = load i64, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205.a: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = load ptr, ptr %46, align 8, !tbaa !81
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 2
  br label %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i7.i208, %select.unfold.i.1.i236, %bb.cc, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i199
  store i8 0, ptr %22, align 8, !tbaa !91
  %i.ix = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %i.ix, align 8, !tbaa !100
  br label %bb.ce

_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209: ; preds = %44, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205.a
  %54 = phi i64 [ %45, %44 ], [ %53, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread.i.i205.a ]
  %55 = icmp ugt i64 %54, %41                     ; 2 uses
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %22, align 8, !tbaa !91
  %57 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %57, align 8, !tbaa !100
  br i1 %55, label %_ZN7testing15AssertionResultD2Ev.exit226, label %bb.ce

bb.ce:                                            ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209
  %i.iy = phi ptr [ %i.ix, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209.thread ], [ %57, %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.cg unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.iz = load ptr, ptr %25, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1696, ptr noundef %i.iz)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #26
  %i.ja = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ci
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !77
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.jf = load ptr, ptr %23, align 8, !tbaa !79   ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i213, label %bb.co, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #26, !inline_history !0
  br label %bb.co

bb.cj:                                            ; preds = %bb.ce
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit221

bb.ck:                                            ; preds = %bb.cf
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.cl:                                            ; preds = %bb.cg
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ch
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #26
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn57 = phi { ptr, i32 } [ %i.jm, %bb.cm ], [ %i.jl, %bb.cl ] ; 2 uses
  %i.jn = load ptr, ptr %25, align 8, !tbaa !76   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.cn
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !77
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.ck
  %.pn57.pn = phi { ptr, i32 } [ %i.jk, %bb.ck ], [ %.pn57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn57, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.js = load ptr, ptr %23, align 8, !tbaa !79   ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.js, null
  br i1 %.not.i.i219, label %_ZN7testing7MessageD2Ev.exit221, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !43
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit221

_ZN7testing7MessageD2Ev.exit221:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.cj
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.cj ], [ %.pn57.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn57.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.cv

bb.co:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %.pr = load ptr, ptr %i.iy, align 8, !tbaa !94  ; 4 uses
  %.not.i.i222 = icmp eq ptr %.pr, null
  br i1 %.not.i.i222, label %_ZN7testing15AssertionResultD2Ev.exit226, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jw = load ptr, ptr %.pr, align 8, !tbaa !76  ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223: ; preds = %bb.cp
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !77
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit226

_ZN7testing15AssertionResultD2Ev.exit226:         ; preds = %_ZNK4entt17basic_common_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELb0ELm2ELm1EE8containsES2_.exit209, %bb.co, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZN7testing15AssertionResultD2Ev.exit152, %_ZN7testing15AssertionResultD2Ev.exit184, %_ZN7testing15AssertionResultD2Ev.exit96, %_ZN7testing15AssertionResultD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !43
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %i.kc = load ptr, ptr %i.m, align 8, !tbaa !114 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cq, %bb.cs
  %.sroa.08.012.i.i = phi ptr [ %i.kf, %bb.cs ], [ %i.kb, %bb.cq ] ; 3 uses
  %i.ke = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i227, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 16384) #27, !inline_history !115
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !99
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.kc
  br i1 %i.kg, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.cs, %bb.cq
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i228 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i228, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !116
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #27, !inline_history !115
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i:   ; preds = %bb.ct, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.ko = load ptr, ptr %i.e, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !117
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.ko to i64
  %i.kt = sub i64 %i.kr, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.kt) #27, !inline_history !115
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit132, %bb.ay, %_ZN7testing7MessageD2Ev.exit158, %_ZN7testing7MessageD2Ev.exit190, %_ZN7testing7MessageD2Ev.exit221, %_ZN7testing7MessageD2Ev.exit102, %_ZN7testing7MessageD2Ev.exit79
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit79 ], [ %.pn41.pn.pn, %_ZN7testing7MessageD2Ev.exit102 ], [ %.pn57.pn.pn, %_ZN7testing7MessageD2Ev.exit221 ], [ %.pn53.pn.pn, %_ZN7testing7MessageD2Ev.exit190 ], [ %.pn49.pn.pn, %_ZN7testing7MessageD2Ev.exit158 ], [ %i.fb, %bb.ay ], [ %.pn45.pn.pn, %_ZN7testing7MessageD2Ev.exit132 ]
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn57.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.08.012.i = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.08.012.i, align 8, !tbaa !99 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16384) #27
  store ptr null, ptr %.sroa.08.012.i, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit, label %.lr.ph.i

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit:     ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit, %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4entt6entityESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN38ViewSingleStorage_Functionalities_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN33ViewSingleStorage_Conversion_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN34ViewSingleStorage_InvalidView_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN35ViewSingleStorage_Constructors_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN29ViewSingleStorage_Handle_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN36ViewSingleStorage_ElementAccess_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN31ViewSingleStorage_Contains_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN28ViewSingleStorage_Empty_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

end_hunk_1
