inline.NumInlined: 317
inline.NumDeleted: 183
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp18hasDynamicPropertyENS_19DynamicPropertyTypeE:bb.a
  br i1 %i.u, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0 = phi i1 [ %i.d, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.29", align 8 ; 5 uses
  %.not = icmp eq i32 %2, 6
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.f, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !28, !noalias !104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load ptr, ptr %i.j, align 8, !tbaa !13, !noalias !104
  call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val, ptr %.val5)
  %i.k = load ptr, ptr %3, align 8, !tbaa !57
  tail call void @_ZNK16OpenColorIO_v2_521GradingHueCurveOpData18getDynamicPropertyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %i.k) #16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !18
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #16, !inline_history !96
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #16, !inline_history !96
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #16
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.p:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.g, %bb.h ], [ %i.a, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.b, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_52Op22replaceDynamicPropertyENS_19DynamicPropertyTypeERSt10shared_ptrINS_25DynamicPropertyDoubleImplEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.10)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_52Op22replaceDynamicPropertyENS_19DynamicPropertyTypeERSt10shared_ptrINS_33DynamicPropertyGradingPrimaryImplEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.11)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_52Op22replaceDynamicPropertyENS_19DynamicPropertyTypeERSt10shared_ptrINS_34DynamicPropertyGradingRGBCurveImplEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.12)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp22replaceDynamicPropertyENS_19DynamicPropertyTypeERSt10shared_ptrINS_34DynamicPropertyGradingHueCurveImplEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.8", align 8 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.8", align 8 ; 3 uses
  %.not = icmp eq i32 %1, 6
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.f, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.i = load ptr, ptr %2, align 8, !tbaa !145, !noalias !142 ; 4 uses
  %.not.not.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2IS1_EERKS_IT_EPS1_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.i, ptr %3, align 8, !tbaa !145, !alias.scope !142
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13, !noalias !142 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !13, !alias.scope !142
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !142
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !142
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3, !noalias !142
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2IS1_EERKS_IT_EPS1_.exit.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !142
  br label %bb.m

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split: ; preds = %bb.k
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !142 ; 0 uses
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !145 ; 2 uses
  %i.r = icmp eq ptr %.pr.pre, null
  br i1 %i.r, label %bb.m, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2IS1_EERKS_IT_EPS1_.exit.i, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.8)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
          to label %bb.as unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.s) #16
  br label %bb.aq

bb.p:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread: ; preds = %bb.j, %bb.l, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split
  %.pr29 = phi ptr [ %.pr.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split ], [ %i.i, %bb.l ], [ %i.i, %bb.j ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !28, !noalias !146 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.w, align 8            ; 4 uses
  %i.x = icmp eq ptr %.val, null
  br i1 %i.x, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread
  %i.y = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_521GradingHueCurveOpDataE, i64 0) #16, !noalias !151 ; 4 uses
  %.not.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i.i = icmp eq ptr %.val9, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !151
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !151
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3, !noalias !151
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit

bb.u:                                             ; preds = %bb.s
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4, !noalias !151 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !145
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread
  %i.ae = phi ptr [ %.pr29, %bb.t ], [ %.pr29, %bb.r ], [ %.pre, %bb.u ], [ %.pr29, %bb.q ], [ %.pr29, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread ]
  %.sroa.0.0 = phi ptr [ %i.y, %bb.t ], [ %i.y, %bb.r ], [ %i.y, %bb.u ], [ null, %bb.q ], [ null, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread ]
  %.sroa.6.0 = phi ptr [ %.val9, %bb.t ], [ null, %bb.r ], [ %.val9, %bb.u ], [ null, %bb.q ], [ null, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplES1_ESt10shared_ptrIT_ERKS2_IT0_E.exitthread-pre-split.thread ] ; 8 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !145
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !13  ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i10 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit, %bb.w, %bb.x
  call void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData22replaceDynamicPropertyESt10shared_ptrINS_34DynamicPropertyGradingHueCurveImplEE(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0.0, ptr noundef nonnull %4) #16
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.an, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !18
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #16, !inline_history !158
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #16, !inline_history !158
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i11 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.aq, %bb.ab ], [ %i.ba, %bb.ac ]
  %i.bb = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bb, label %bb.ad, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEEC2ERKS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  %.not.i.i12 = icmp eq ptr %.sroa.6.0, null
  br i1 %.not.i.i12, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bc, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !18
  %i.bh = load ptr, ptr %.sroa.6.0, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0) #16, !inline_history !23
  %i.bk = load ptr, ptr %.sroa.6.0, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0) #16, !inline_history !23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i13 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i13, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

bb.ai:                                            ; preds = %bb.ag
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i15 = phi i32 [ %i.bf, %bb.ah ], [ %i.bp, %bb.ai ]
  %i.bq = icmp eq i32 %.0.i.i.i.i15, 1
  br i1 %i.bq, label %bb.aj, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i14, %bb.aj
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !13  ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.bs, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !18
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #16, !inline_history !158
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #16, !inline_history !158
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

bb.am:                                            ; preds = %bb.ak
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i17 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.ao:                                            ; preds = %bb.am
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i19 = phi i32 [ %i.bv, %bb.an ], [ %i.cf, %bb.ao ]
  %i.cg = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.cg, label %bb.ap, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20, !prof !22

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20

_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.aq:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.t, %bb.o ], [ %i.u, %bb.p ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ar

.sink.split:                                      ; preds = %bb.d, %bb.h
  %.sink = phi ptr [ %i.g, %bb.h ], [ %i.a, %bb.d ]
  %.pn7.ph = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.b, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #16
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.aq
  %.pn7 = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %.pn7.ph, %.sink.split ]
  resume { ptr, i32 } %.pn7

bb.as:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_52Op22replaceDynamicPropertyENS_19DynamicPropertyTypeERSt10shared_ptrINS_30DynamicPropertyGradingToneImplEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.13)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp23removeDynamicPropertiesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28, !noalias !146, !nonnull !90, !noundef !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 8 uses
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_521GradingHueCurveOpDataE, i64 0) #16, !noalias !159 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 7 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !159
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !159
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3, !noalias !159
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !159 ; 0 uses
  br label %bb.e

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit.thread: ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData21removeDynamicPropertyEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN16OpenColorIO_v2_521GradingHueCurveOpData21removeDynamicPropertyEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #16
  %i.i = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !18
  %i.m = load ptr, ptr %.val1, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %.val1) #16, !inline_history !23
  %i.p = load ptr, ptr %.val1, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val1) #16, !inline_history !23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.u = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.h ], [ %i.u, %bb.i ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val1) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv.exit.thread, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp8getCPUOpEb(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.54") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.29", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !28, !noalias !104
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !13, !noalias !104
  call fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val, ptr %.val2)
  invoke void @_ZN16OpenColorIO_v2_529GetGradingHueCurveCPURendererERSt10shared_ptrIKNS_21GradingHueCurveOpDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !18
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !inline_history !96
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !inline_history !96
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.i:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.t
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingHueCurveOp12hueCurveDataEv(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 16)) %0, ptr %.8.val, ptr %.16.val) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %.16.val, null    ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 8 ; 3 uses
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !104
  %.not.i.i.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 4, !tbaa !3, !noalias !104
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.a, align 4, !tbaa !3, !noalias !104
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit

end_hunk_0
