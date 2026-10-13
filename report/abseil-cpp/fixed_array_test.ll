Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/fixed_array_test?download=true
inline.NumInlined: 9190
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIlmEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !100
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_152AllocatorSupportTest_CountCopyInlineAllocations_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_152AllocatorSupportTest_CountCopyInlineAllocations_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_152AllocatorSupportTest_CountCopyInlineAllocations_TestE, i64 16), ptr %i.a, align 8, !tbaa !56
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_152AllocatorSupportTest_CountCopyInlineAllocations_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_152AllocatorSupportTest_CountCopyInlineAllocations_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %1 = alloca %"class.absl::lts_20260526::FixedArray.461", align 8 ; 11 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::FixedArray.461", align 8 ; 12 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 0, ptr %i.b, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 2, ptr %i.f, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.g, align 8, !tbaa !348
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr %i.c, ptr %.sroa.578.0..sroa_idx, align 8, !tbaa !348
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !344
  store i32 1, ptr %1, align 8, !tbaa !76
  %.017.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %.017.i.i.ptr.1, align 4, !tbaa !76
  store i64 2, ptr %i.c, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %2, align 8, !tbaa !90, !range !91
  %i.i = trunc nuw i8 %.pre to i1
  br i1 %i.i, label %bb.l, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93   ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.l, null
  br i1 %.not.i.i26, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.m, %bb.e ], [ @.str.130, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 721, ptr noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.o = load ptr, ptr %3, align 8, !tbaa !99     ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.o, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.v = load ptr, ptr %3, align 8, !tbaa !99     ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.v, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.k
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  br label %bb.s

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93  ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !100
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !344 ; 9 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !101 ; 5 uses
  %.idx4.i = shl i64 %i.ah, 2                     ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx4.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !347
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !348
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !348
  %i.al = icmp ult i64 %i.ah, 5
  br i1 %i.al, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.am = icmp ugt i64 %i.ah, 2305843009213693951
  br i1 %i.am, label %.noexc.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i, !prof !106

.noexc.i.i.i.i.i.i:                               ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc32 unwind label %bb.t

.noexc32:                                         ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx4.i) #28
          to label %.noexc33 unwind label %bb.t   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc33
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !101
  %i.aq = add i64 %i.ap, %.idx4.i
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !101
  br label %.lr.ph.i.i.i

bb.p:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %5, ptr %i.ar, align 8, !tbaa !344
  %.not18.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not18.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit, label %.lr.ph.split.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc33, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.an, ptr %i.as, align 8, !tbaa !344
  %.pre82 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !345 ; 2 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %.pre82, null
  br i1 %.not.i.i.i.i7.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader, label %.lr.ph.split.i.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader: ; preds = %.lr.ph.i.i.i
  %i.at = add nsw i64 %.idx4.i, -4                ; 2 uses
  %i.au = lshr exact i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 44
  %12 = ptrtoaddr ptr %i.an to i64
  %13 = ptrtoaddr ptr %i.ag to i64
  %i.aw = sub i64 %13, %12
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.ax = shl i64 %n.vec, 2                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ag, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.ag, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !76
  %wide.load115 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !76
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !76
  store <4 x i32> %wide.load115, ptr %i.bc, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1756

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader, %middle.block
  %.020.us.i.i.i.ph = phi ptr [ %i.an, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.01519.us.i.i.i.ph = phi ptr [ %i.ag, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i
  %.020.us.i.i.i = phi ptr [ %i.bf, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i ], [ %.020.us.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137 ] ; 2 uses
  %.01519.us.i.i.i = phi ptr [ %i.bg, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i ], [ %.01519.us.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.preheader137 ] ; 2 uses
  %i.be = load i32, ptr %.01519.us.i.i.i, align 4, !tbaa !76
  store i32 %i.be, ptr %.020.us.i.i.i, align 4, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.us.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.01519.us.i.i.i, i64 4 ; 2 uses
  %.not.us.i.i.i = icmp eq ptr %i.bg, %i.ai
  br i1 %.not.us.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i, !llvm.loop !1757

.lr.ph.split.i.i.i:                               ; preds = %bb.p, %.lr.ph.i.i.i
  %.0.i.i.i9.i111 = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %5, %bb.p ] ; 4 uses
  %i.bh = phi ptr [ %.pre82, %.lr.ph.i.i.i ], [ %i.c, %bb.p ] ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !101
  %i.bi = add i64 %.idx4.i, -4                    ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check121 = icmp ult i64 %i.bi, 44
  %14 = ptrtoaddr ptr %.0.i.i.i9.i111 to i64
  %.0.i.i.i9.i111118 = ptrtoaddr ptr %i.ag to i64
  %i.bl = sub i64 %.0.i.i.i9.i111118, %14
  %diff.check119 = icmp ugt i64 %i.bl, -32
  %or.cond135 = select i1 %min.iters.check121, i1 true, i1 %diff.check119
  br i1 %or.cond135, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.split.i.i.i
  %n.vec123 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bm = shl i64 %n.vec123, 2                    ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.i.i.i9.i111, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.ag, i64 %i.bm
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body124 ] ; 2 uses
  %i.bp = shl i64 %index125, 2                    ; 2 uses
  %next.gep126 = getelementptr i8, ptr %.0.i.i.i9.i111, i64 %i.bp ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.ag, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <4 x i32>, ptr %next.gep127, align 4, !tbaa !76
  %wide.load129 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !76
  %i.br = getelementptr i8, ptr %next.gep126, i64 16
  store <4 x i32> %wide.load128, ptr %next.gep126, align 4, !tbaa !76
  store <4 x i32> %wide.load129, ptr %i.br, align 4, !tbaa !76
  %index.next130 = add nuw i64 %index125, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.bs, label %middle.block131, label %vector.body124, !llvm.loop !1758

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %i.bk, %n.vec123
  br i1 %cmp.n132, label %._crit_edge.split.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i, %middle.block131
  %.020.i.i.i.ph = phi ptr [ %.0.i.i.i9.i111, %.lr.ph.split.i.i.i ], [ %i.bn, %middle.block131 ]
  %.01519.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.split.i.i.i ], [ %i.bo, %middle.block131 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i

._crit_edge.split.i.i.i:                          ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i, %middle.block131
  %i.bt = add i64 %.idx4.i, -4
  %i.bu = lshr exact i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1
  %i.bw = add i64 %i.bv, %.promoted.i.i.i
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !101
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i
  %.020.i.i.i = phi ptr [ %i.by, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i ], [ %.020.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader ] ; 2 uses
  %.01519.i.i.i = phi ptr [ %i.bz, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i ], [ %.01519.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.preheader ] ; 2 uses
  %i.bx = load i32, ptr %.01519.i.i.i, align 4, !tbaa !76
  store i32 %i.bx, ptr %.020.i.i.i, align 4, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.01519.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.ai
  br i1 %.not.i.i.i, label %._crit_edge.split.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i, !llvm.loop !1759

_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i, %middle.block, %._crit_edge.split.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !101, !noalias !1768
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit36 unwind label %bb.u

bb.r:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_RKS4_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.143, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit36 unwind label %bb.u

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit36: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.cc = load i8, ptr %6, align 8, !tbaa !90, !range !91, !noundef !92
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ae, label %bb.v

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit30, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit30 ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ao

bb.t:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.am

bb.v:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !93 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i37, label %_ZNK7testing15AssertionResult15failure_messageEv.exit38, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit38

_ZNK7testing15AssertionResult15failure_messageEv.exit38: ; preds = %bb.x, %bb.w
  %i.cj = phi ptr [ %i.ci, %bb.x ], [ @.str.130, %bb.w ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 725, ptr noundef %i.cj)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit38
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ck = load ptr, ptr %7, align 8, !tbaa !99    ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i39, label %_ZN7testing7MessageD2Ev.exit41, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %bb.z
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ae

bb.aa:                                            ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit44

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit38
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn15 = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.cp, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cr = load ptr, ptr %7, align 8, !tbaa !99    ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i42, label %_ZN7testing7MessageD2Ev.exit44, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit44

_ZN7testing7MessageD2Ev.exit44:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43, %bb.ad, %bb.aa
  %.pn15.pn = phi { ptr, i32 } [ %i.co, %bb.aa ], [ %.pn15, %bb.ad ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.am

bb.ae:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit36, %_ZN7testing7MessageD2Ev.exit41
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !93 ; 4 uses
  %.not.i.i45 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i45, label %_ZN7testing15AssertionResultD2Ev.exit49, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !97 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46: ; preds = %bb.af
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !100
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i46
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit49

_ZN7testing15AssertionResultD2Ev.exit49:          ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !344 ; 3 uses
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !101 ; 2 uses
  %.not5.i = icmp eq i64 %i.de, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEED2Ev.exit, label %.lr.ph.i

end_hunk_0
begin_hunk_1_@_ZN7testing8internal16ContainerPrinter10PrintValueIN4absl12lts_2026052610FixedArrayIiLm4ENS4_18container_internal17CountingAllocatorIiEEEEvEEvRKT_PSo:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_153AllocatorSupportTest_PropagatesStatefulAllocator_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_153AllocatorSupportTest_PropagatesStatefulAllocator_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_153AllocatorSupportTest_PropagatesStatefulAllocator_TestE, i64 16), ptr %i.a, align 8, !tbaa !56
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_153AllocatorSupportTest_PropagatesStatefulAllocator_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_153AllocatorSupportTest_PropagatesStatefulAllocator_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2EmRKiRKS4_.exit:
  %i.a = alloca i64, align 8                      ; 11 uses
  %1 = alloca %"class.absl::lts_20260526::FixedArray.461", align 8 ; 9 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::FixedArray.461", align 8 ; 13 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i64 8, ptr %i.d, align 8, !tbaa !347
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !348
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.f = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  %i.g = load i64, ptr %i.a, align 8, !tbaa !101
  %i.h = add i64 %i.g, 32
  store i64 %i.h, ptr %i.a, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 32, ptr %i.b, align 8, !tbaa !101
  %i.j = load i64, ptr %i.a, align 8, !tbaa !101, !noalias !1971
  %i.k = icmp eq i64 %i.j, 32
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2EmRKiRKS4_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2EmRKiRKS4_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIlmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.253, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.c

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.l = load i8, ptr %2, align 8, !tbaa !90, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.t

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93   ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.p, null
  br i1 %.not.i.i31, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %i.q, %bb.f ], [ @.str.130, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 801, ptr noundef %i.r)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.s = load ptr, ptr %3, align 8, !tbaa !99     ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.s, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit35

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.z = load ptr, ptr %3, align 8, !tbaa !99     ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.z, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.l
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  br label %bb.t

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i36, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !100
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !344 ; 9 uses
  %i.al = load i64, ptr %i.d, align 8, !tbaa !101 ; 5 uses
  %.idx4.i.i = shl i64 %i.al, 2                   ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx4.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !347
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !348
  %i.ap = load <2 x ptr>, ptr %i.e, align 8, !tbaa !348
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !tbaa !348
  %i.aq = icmp ult i64 %i.al, 5
  br i1 %i.aq, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ar = icmp ugt i64 %i.al, 2305843009213693951
  br i1 %i.ar, label %.noexc.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i.i, !prof !106

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc37 unwind label %bb.u

.noexc37:                                         ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx4.i.i) #28
          to label %.noexc38 unwind label %bb.u   ; 2 uses

.noexc38:                                         ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i.i
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc38
  %i.au = load i64, ptr %i.at, align 8, !tbaa !101
  %i.av = add i64 %i.au, %.idx4.i.i
  store i64 %i.av, ptr %i.at, align 8, !tbaa !101
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %.noexc38
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !344
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !345
  br label %.lr.ph.i.i.i.i

bb.q:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %5, ptr %i.ax, align 8, !tbaa !344
  %.not18.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not18.i.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.thread.i.i
  %i.ay = phi ptr [ %.pre.i, %.thread.i.i ], [ %.sroa.2.0.copyload.i.i.i, %bb.q ] ; 3 uses
  %.0.i.i.i9.i.i = phi ptr [ %i.as, %.thread.i.i ], [ %5, %bb.q ] ; 8 uses
  %.not.i.i.i.i7.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i7.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.az = add i64 %.idx4.i.i, -4                  ; 2 uses
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check124 = icmp ult i64 %i.az, 44
  %12 = ptrtoaddr ptr %.0.i.i.i9.i.i to i64
  %13 = ptrtoaddr ptr %i.ak to i64
  %i.bc = sub i64 %13, %12
  %diff.check122 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check124, i1 true, i1 %diff.check122
  br i1 %or.cond, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140, label %vector.ph125

vector.ph125:                                     ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader
  %n.vec126 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec126, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %.0.i.i.i9.i.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ak, i64 %i.bd
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %i.bg = shl i64 %index128, 2                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.0.i.i.i9.i.i, i64 %i.bg ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.ak, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <4 x i32>, ptr %next.gep130, align 4, !tbaa !76
  %wide.load132 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !76
  %i.bi = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %wide.load131, ptr %next.gep129, align 4, !tbaa !76
  store <4 x i32> %wide.load132, ptr %i.bi, align 4, !tbaa !76
  %index.next133 = add nuw i64 %index128, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.bj, label %middle.block134, label %vector.body127, !llvm.loop !1959

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.bb, %n.vec126
  br i1 %cmp.n135, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader, %middle.block134
  %.020.us.i.i.i.i.ph = phi ptr [ %.0.i.i.i9.i.i, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader ], [ %i.be, %middle.block134 ]
  %.01519.us.i.i.i.i.ph = phi ptr [ %i.ak, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader ], [ %i.bf, %middle.block134 ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i
  %.020.us.i.i.i.i = phi ptr [ %i.bl, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i ], [ %.020.us.i.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140 ] ; 2 uses
  %.01519.us.i.i.i.i = phi ptr [ %i.bm, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i ], [ %.01519.us.i.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i.preheader140 ] ; 2 uses
  %i.bk = load i32, ptr %.01519.us.i.i.i.i, align 4, !tbaa !76
  store i32 %i.bk, ptr %.020.us.i.i.i.i, align 4, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %.020.us.i.i.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01519.us.i.i.i.i, i64 4 ; 2 uses
  %.not.us.i.i.i.i = icmp eq ptr %i.bm, %i.am
  br i1 %.not.us.i.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i, !llvm.loop !1960

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !101
  %i.bn = add i64 %.idx4.i.i, -4                  ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 44
  %14 = ptrtoaddr ptr %.0.i.i.i9.i.i to i64
  %15 = ptrtoaddr ptr %i.ak to i64
  %i.bq = sub i64 %15, %14
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond138 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond138, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.i.i.i
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %.0.i.i.i9.i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ak, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i9.i.i, i64 %i.bu ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.ak, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !76
  %wide.load119 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !76
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !76
  store <4 x i32> %wide.load119, ptr %i.bw, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1961

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.i.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i, %middle.block
  %.020.i.i.i.i.ph = phi ptr [ %.0.i.i.i9.i.i, %.lr.ph.split.i.i.i.i ], [ %i.bs, %middle.block ]
  %.01519.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.split.i.i.i.i ], [ %i.bt, %middle.block ]
  br label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i

._crit_edge.split.i.i.i.i:                        ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i, %middle.block
  %i.by = add i64 %.idx4.i.i, -4
  %i.bz = lshr exact i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1
  %i.cb = add i64 %i.ca, %.promoted.i.i.i.i
  store i64 %i.cb, ptr %i.ay, align 8, !tbaa !101
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit

_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.cd, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i ], [ %.020.i.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader ] ; 2 uses
  %.01519.i.i.i.i = phi ptr [ %i.ce, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i ], [ %.01519.i.i.i.i.ph, %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i.preheader ] ; 2 uses
  %i.cc = load i32, ptr %.01519.i.i.i.i, align 4, !tbaa !76
  store i32 %i.cc, ptr %.020.i.i.i.i, align 4, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.am
  br i1 %.not.i.i.i.i, label %._crit_edge.split.i.i.i.i, label %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.i.i.i.i, !llvm.loop !1962

_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit: ; preds = %_ZNSt16allocator_traitsIN4absl12lts_2026052618container_internal17CountingAllocatorIiEEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS4_PT_DpOS9_.exit.us.i.i.i.i, %middle.block134, %._crit_edge.split.i.i.i.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 64, ptr %i.c, align 8, !tbaa !101
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !101, !noalias !1972
  %i.cg = icmp eq i64 %i.cf, 64
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit41 unwind label %bb.v

bb.s:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm4ENS0_18container_internal17CountingAllocatorIiEEEC2ERKS5_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIlmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.265, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit41 unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit41: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ch = load i8, ptr %6, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.af, label %bb.w

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bc

bb.u:                                             ; preds = %_ZNSt16allocator_traitsISaIiEE8allocateERS0_mPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.ai

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !93 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i42, label %_ZNK7testing15AssertionResult15failure_messageEv.exit43, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !97
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit43

_ZNK7testing15AssertionResult15failure_messageEv.exit43: ; preds = %bb.y, %bb.x
  %i.co = phi ptr [ %i.cn, %bb.y ], [ @.str.130, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 804, ptr noundef %i.co)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit43
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cp = load ptr, ptr %7, align 8, !tbaa !99    ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i44, label %_ZN7testing7MessageD2Ev.exit46, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit49

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit43
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn19 = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cu, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cw = load ptr, ptr %7, align 8, !tbaa !99    ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48, %bb.ae, %bb.ab
  %.pn19.pn = phi { ptr, i32 } [ %i.ct, %bb.ab ], [ %.pn19, %bb.ae ], [ %.pn19, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.ai

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit41, %_ZN7testing7MessageD2Ev.exit46
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !93 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.db, null
  br i1 %.not.i.i50, label %_ZN7testing15AssertionResultD2Ev.exit54, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !97 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51: ; preds = %bb.ag
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !100
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit54

_ZN7testing15AssertionResultD2Ev.exit54:          ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !344, !noalias !1973
  %i.dj = load i64, ptr %i.an, align 8, !tbaa !101, !noalias !1973 ; 3 uses
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !344, !noalias !1973
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !101, !noalias !1973
end_hunk_1
