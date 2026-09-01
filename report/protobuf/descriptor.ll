Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv:bb.a
  %.0 = phi ptr [ %i.g, %bb.f ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull ptr @"_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvENK3$_0clEv"() unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 15 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45 ; 8 uses
  invoke void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef null)
          to label %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit unwind label %bb.h

_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit: ; preds = %bb.a
  %i.b = tail call noundef nonnull align 1 dereferenceable(1) ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN6google8protobuf8internal3cpp20IsTrackingEnabledVarEvE19is_tracking_enabled) ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !639, !range !49, !noalias !1190, !noundef !51 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !639, !noalias !1190
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !274
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  %i.g = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.h, i8 0, i64 52, i1 false)
  store i32 %i.g, ptr %i.j, align 8, !tbaa !1193
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -32768, ptr %i.k, align 4, !tbaa !1199
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.i, align 4, !tbaa !1200
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.m, align 4, !tbaa !1201
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.289, i64 138), ptr %i.n, align 8, !tbaa !1202
  store ptr getelementptr inbounds nuw (i8, ptr @.str.289, i64 138), ptr %0, align 8, !tbaa !1203
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1204
  %i.q = invoke noundef ptr @_ZN6google8protobuf11MessageLite14_InternalParseEPKcPNS0_8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.289, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = icmp ne ptr %i.q, null
  %i.t = load i32, ptr %i.r, align 8
  %i.u = icmp eq i32 %i.t, 0
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit

bb.d:                                             ; preds = %_ZN6google8protobuf18FeatureSetDefaultsC2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  br label %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"

bb.f:                                             ; preds = %bb.c
  %i.x = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.f
  br i1 %i.x, label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  invoke void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.h, %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i" ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf12_GLOBAL__N_115DisableTrackingEvE3$_0ED2Ev.exit11.i": ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  store i8 %i.c, ptr %i.b, align 1, !tbaa !639
  br label %common.resume

_ZN6google8protobuf8internal17ParseNoReflectionESt17basic_string_viewIcSt11char_traitsIcEERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  store i8 %i.c, ptr %i.b, align 1, !tbaa !639
  ret ptr %i.a

bb.h:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #41
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool23ResolvesFeaturesForImplEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.226", align 8   ; 10 uses
  %3 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !622  ; 2 uses
  %.not3.i = icmp eq ptr %i.b, null
  br i1 %.not3.i, label %bb.b, label %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.f, !prof !640

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke fastcc noundef ptr @"_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvENK3$_0clEv"()
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef nonnull @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_ENUlPKvE_8__invokeES7_, ptr noundef nonnull %i.f)
          to label %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i unwind label %bb.g

_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i: ; preds = %bb.e
  store ptr %i.f, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16OnShutdownDeleteINS0_18FeatureSetDefaultsEEEPT_S5_.exit.i, %bb.c, %bb.b
  %i.g = load ptr, ptr @_ZZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec, align 8, !tbaa !622
  br label %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit

common.resume:                                    ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit23, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %.pn.pn, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit23 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEvE16cpp_default_spec) #40
  br label %common.resume

_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit: ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ %i.g, %bb.f ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !557
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %i.m = icmp eq i64 %i.l, 0
  %i.n = add i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = select i1 %i.m, ptr %i.i, ptr %i.p       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !554  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.idx = shl nsw i64 %i.t, 3
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %.idx
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, %.lr.ph
  %.sroa.027.044 = phi ptr [ %i.q, %.lr.ph ], [ %i.by, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.027.044, align 8, !tbaa !323 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not.i.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.z
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ac, null
  %i.ad = select i1 %.not.i.i21, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.ac
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit unwind label %bb.v

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit: ; preds = %bb.i
  %i.ae = invoke { ptr, ptr } @_ZNK6google8protobuf10FeatureSet11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(72) @_ZN6google8protobuf29_FeatureSet_default_instance_E)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit
  %i.af = extractvalue { ptr, ptr } %i.ae, 1
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %2, align 8, !tbaa !731   ; 4 uses
  %.val19 = load ptr, ptr %i.v, align 8, !tbaa !731 ; 4 uses
  %i.ag = ptrtoint ptr %.val19 to i64             ; 2 uses
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr i64 %i.ai, 5                       ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.al = and i64 %i.ai, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.al ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.058.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.bc, %bb.p ] ; 2 uses
  %.sroa.038.057.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.p ] ; 9 uses
  %i.am = load ptr, ptr %.sroa.038.057.i.i.i.i, align 8, !tbaa !337
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val1.i.i.i.i.i = load i32, ptr %i.an, align 4, !tbaa !343
  %i.ao = icmp eq i32 %.val1.i.i.i.i.i, %1
  br i1 %i.ao, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !337
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.val1.i22.i.i.i.i = load i32, ptr %i.ar, align 4, !tbaa !343
  %i.as = icmp eq i32 %.val1.i22.i.i.i.i, %1
  br i1 %i.as, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit58", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !337
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val1.i23.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !343
  %i.aw = icmp eq i32 %.val1.i23.i.i.i.i, %1
  br i1 %i.aw, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit56", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !337
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val1.i24.i.i.i.i = load i32, ptr %i.az, align 4, !tbaa !343
  %i.ba = icmp eq i32 %.val1.i24.i.i.i.i, %1
  br i1 %i.ba, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 32
  %i.bc = add nsw i64 %.058.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.058.i.i.i.i, 1
  br i1 %i.bd, label %bb.l, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !1205

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.p
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre66.i.i.i.i = sub i64 %i.ag, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %.pre-phi67.i.i.i.i = phi i64 [ %.pre66.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.038.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val, %bb.k ] ; 5 uses
  %i.be = ashr exact i64 %.pre-phi67.i.i.i.i, 3
  switch i64 %i.be, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit" [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = load ptr, ptr %.sroa.038.0.lcssa.i.i.i.i, align 8, !tbaa !337
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %.val1.i25.i.i.i.i = load i32, ptr %i.bg, align 4, !tbaa !343
  %i.bh = icmp eq i32 %.val1.i25.i.i.i.i, %1
  br i1 %i.bh, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.r
  %.sroa.038.1.i.i.i.i = phi ptr [ %i.bi, %bb.r ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.038.1.i.i.i.i, align 8, !tbaa !337
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val1.i26.i.i.i.i = load i32, ptr %i.bk, align 4, !tbaa !343
  %i.bl = icmp eq i32 %.val1.i26.i.i.i.i, %1
  br i1 %i.bl, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit", label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge64.i.i.i.i

._crit_edge._crit_edge64.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.s
  %.sroa.038.2.i.i.i.i = phi ptr [ %i.bm, %bb.s ], [ %.sroa.038.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.sroa.038.2.i.i.i.i, align 8, !tbaa !337
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val1.i27.i.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !343
  %i.bp = icmp eq i32 %.val1.i27.i.i.i.i, %1
  %spec.select.i.i.i.i = select i1 %i.bp, ptr %.sroa.038.2.i.i.i.i, ptr %.val19
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit": ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 24
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit56": ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 16
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit58": ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i, i64 8
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit": ; preds = %bb.l, %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit", %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit56", %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit58", %._crit_edge._crit_edge64.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.q, %._crit_edge.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge64.i.i.i.i ], [ %.val19, %._crit_edge.i.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i, %bb.q ], [ %i.bs, %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit58" ], [ %i.br, %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit56" ], [ %i.bq, %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i.i, %bb.l ]
  %.not64 = icmp ne ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val19 ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.bt = load ptr, ptr %2, align 8, !tbaa !733   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit"
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !735
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #41
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorIPKN6google8protobuf15FieldDescriptorESaIS7_EEZNKS4_14DescriptorPool23ResolvesFeaturesForImplEiE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESD_OT0_.exit", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.027.044, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.by, %i.u
  %or.cond.not = select i1 %.not64, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.h, label %._crit_edge

bb.u:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit, %bb.i, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %3) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.cb = load ptr, ptr %2, align 8, !tbaa !733   ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit23, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !735
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #41
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit23

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit23: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %common.resume

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit
  %.not.lcssa = phi i1 [ true, %_ZNK6google8protobuf14DescriptorPool21GetFeatureSetDefaultsEv.exit ], [ %.not64, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit ]
  ret i1 %.not.lcssa
}

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilderC2EPKNS0_14DescriptorPoolEPNS2_6TablesERNS2_18DeferredValidationEPNS2_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(396) initializes((0, 32), (104, 105), (112, 137)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(736) %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  store ptr %1, ptr %0, align 8, !tbaa !799
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !818
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !793
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !819
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.d, align 8, !tbaa !820
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.e, i8 0, i64 25, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.h, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i8, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i9, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.m, align 8, !tbaa !821
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 0, ptr %i.p, align 8, !tbaa !23
  store i8 0, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.s, align 8, !tbaa !23
  store i8 0, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 32, ptr %i.t, align 8, !tbaa !822
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(396) dereferenceable(396) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !73   ; 3 uses
  %i.o = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.t = load i64, ptr %i.s, align 8, !tbaa !79
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.n, ptr noundef %i.r, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #42
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  %i.af = and i64 %i.ae, 65536
  %i.ag = icmp ne i64 %i.af, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.z, ptr noundef %i.ac, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ag)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #42
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !73 ; 3 uses
  %i.al = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp ult i64 %i.ak, 2
  br i1 %i.am, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.ar = and i64 %i.aq, 65536
  %i.as = icmp ne i64 %i.ar, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.ak, ptr noundef %i.ao, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.as)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #42
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit4: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorENS5_17DescriptorBuilder12MessageHintsEEENS1_6HashEqIS8_vE4HashENSD_2EqESaISt4pairIKS8_SA_EEED2Ev.exit, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !73 ; 3 uses
  %i.ax = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp ult i64 %i.aw, 2
  br i1 %i.ay, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.bd = and i64 %i.bc, 65536
  %i.be = icmp ne i64 %i.bd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.aw, ptr noundef %i.ba, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.be)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #42
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit5: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit4, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EED2Ev.exit5
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #41
end_hunk_0
