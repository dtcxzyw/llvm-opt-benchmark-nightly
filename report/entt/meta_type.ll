Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_type?download=true
inline.NumInlined: 12374
inline.NumDeleted: 3212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4entt9meta_type11can_convertERKS0_:bb.a
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit: ; preds = %.lr.ph.i, %.critedge34, %.loopexit, %.critedge, %_ZNK4entt9meta_type13is_arithmeticEv.exit, %_ZNK4entt9meta_type7is_enumEv.exit, %_ZNK4entt9meta_type4infoEv.exit37, %_ZNK4entt9meta_type10fetch_nodeEv.exit39
  %i.bz = phi i1 [ false, %_ZNK4entt9meta_type10fetch_nodeEv.exit39 ], [ false, %.loopexit ], [ true, %_ZNK4entt9meta_type4infoEv.exit37 ], [ true, %_ZNK4entt9meta_type7is_enumEv.exit ], [ true, %_ZNK4entt9meta_type13is_arithmeticEv.exit ], [ true, %.critedge ], [ %i.bw, %.critedge34 ], [ true, %.lr.ph.i ]
  ret i1 %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_base_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !162, !noalias !458
  %i.b = load ptr, ptr %4, align 8, !tbaa !162, !noalias !458
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_base_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal19meta_range_iteratorINS2_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_base_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_base_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_baseEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_base_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type4baseEv(ptr dead_on_unwind noalias writable sret(%"struct.entt::iterable_adaptor.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread:   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !162
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit2:          ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  %.pr = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2
  %i.x = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit3:          ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread, %_ZNK4entt9meta_type10fetch_nodeEv.exit2, %bb.d
  %i.y = phi ptr [ %i.v, %bb.d ], [ %i.v, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.j, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.z = phi ptr [ %i.u, %bb.d ], [ %i.u, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.p, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %.pr, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.k, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162
  store ptr %i.z, ptr %0, align 8, !tbaa !162
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !162
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4entt9meta_type10fetch_nodeEv.exit3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_data_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !167, !noalias !461
  %i.b = load ptr, ptr %4, align 8, !tbaa !167, !noalias !461
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_data_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal19meta_range_iteratorINS2_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_data_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_data_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_dataEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_data_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type4dataEv(ptr dead_on_unwind noalias writable sret(%"struct.entt::iterable_adaptor.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread:   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !167
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit2:          ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  %.pr = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !167  ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2
  %i.x = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit3:          ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread, %_ZNK4entt9meta_type10fetch_nodeEv.exit2, %bb.d
  %i.y = phi ptr [ %i.v, %bb.d ], [ %i.v, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.j, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.z = phi ptr [ %i.u, %bb.d ], [ %i.u, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.p, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %.pr, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.k, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167
  store ptr %i.z, ptr %0, align 8, !tbaa !167
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !167
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4entt9meta_type10fetch_nodeEv.exit3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt9meta_dataES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %3, align 8, !noalias !464
  %i.b = load <2 x ptr>, ptr %4, align 8, !noalias !464
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %5 = freeze <2 x i1> %i.c
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt9meta_dataES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt9meta_dataES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt9meta_dataES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt9meta_dataES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4entt9meta_type4dataEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %1, i1 noundef zeroext %2) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %_ZN4entt9meta_dataC2Ev.exit

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4entt9meta_dataC2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt9meta_dataC2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN4entt9meta_dataC2Ev.exit:                      ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9meta_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !169
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4entt11meta_objectINS_8internal14meta_data_nodeEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt11meta_objectINS_8internal14meta_data_nodeEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZN4entt11meta_objectINS_8internal14meta_data_nodeEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal19meta_range_iteratorINS3_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS4_14meta_func_nodeESt6vectorIS9_SaIS9_EEEEEESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !172, !noalias !467
  %i.b = load ptr, ptr %4, align 8, !tbaa !172, !noalias !467
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_func_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal19meta_range_iteratorINS2_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_func_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_func_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt8internal19meta_range_iteratorINS2_9meta_funcEN9__gnu_cxx17__normal_iteratorIPKNS3_14meta_func_nodeESt6vectorIS8_SaIS8_EEEEEESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type4funcEv(ptr dead_on_unwind noalias writable sret(%"struct.entt::iterable_adaptor.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread:   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit2:          ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #29
  %.pr = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !172  ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !99   ; 3 uses
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %bb.d, label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2
  %i.x = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit3

_ZNK4entt9meta_type10fetch_nodeEv.exit3:          ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread, %_ZNK4entt9meta_type10fetch_nodeEv.exit2, %bb.d
  %i.y = phi ptr [ %i.v, %bb.d ], [ %i.v, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.j, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.z = phi ptr [ %i.u, %bb.d ], [ %i.u, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.p, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.aa = phi ptr [ %i.x, %bb.d ], [ %.pr, %_ZNK4entt9meta_type10fetch_nodeEv.exit2 ], [ %i.k, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !172
  store ptr %i.z, ptr %0, align 8, !tbaa !172
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !172
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4entt9meta_type10fetch_nodeEv.exit3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal8EqHelper7CompareIN4entt9meta_funcES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %3, align 8, !noalias !470
  %i.b = load <2 x ptr>, ptr %4, align 8, !noalias !470
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %5 = freeze <2 x i1> %i.c
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt9meta_funcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt9meta_funcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN7testing8internal11CmpHelperEQIN4entt9meta_funcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperEQIN4entt9meta_funcES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4entt9meta_type4funcEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4funcEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %1, i1 noundef zeroext %2) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !99
  br label %_ZN4entt9meta_funcC2Ev.exit

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.i = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4entt9meta_funcC2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt9meta_funcC2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN4entt9meta_funcC2Ev.exit:                      ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0 = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9meta_funcC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !174
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4entt11meta_objectINS_8internal14meta_func_nodeEEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZN4entt11meta_objectINS_8internal14meta_func_nodeEEC2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZN4entt11meta_objectINS_8internal14meta_func_nodeEEC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type9constructIJRPNS_8meta_anyEjEEES2_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.370", align 8   ; 22 uses
  %5 = alloca %"struct.std::array.371", align 8   ; 22 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #29
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 3 uses
  %.not31 = icmp eq ptr %i.h, null
  br i1 %.not31, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEPNS_8meta_anyEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.k, align 8, !tbaa !176
  store i32 -297351344, ptr %i.m, align 8, !tbaa !177
  store ptr null, ptr %i.l, align 8, !tbaa !143
  store i8 3, ptr %i.n, align 4, !tbaa !178
  store ptr %2, ptr %4, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.j, ptr %i.o, align 8, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !180
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEPS0_EEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 100
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEjEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.s, align 8, !tbaa !176
  store i32 -258466069, ptr %i.u, align 8, !tbaa !177
  store ptr null, ptr %i.t, align 8, !tbaa !143
  store i8 3, ptr %i.v, align 4, !tbaa !178
  store ptr %3, ptr %i.r, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.j, ptr %i.w, align 8, !tbaa !179
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr null, ptr %i.x, align 8, !tbaa !180
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEjEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.y, align 8, !tbaa !142
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182
  %i.ac = invoke noundef ptr @_ZNK4entt9meta_type6lookupImZNKS0_9constructIJRPNS_8meta_anyEjEEES3_DpOT_EUlvE_EEDaPNS_11meta_handleET_bT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i64 noundef 2, i1 noundef zeroext false, ptr %i.z, ptr %i.ab)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt11meta_handleD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %_ZN4entt11meta_handleD2Ev.exit.i unwind label %bb.f, !inline_history !3

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable

_ZN4entt11meta_handleD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i.i.1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.1.i, label %_ZNSt5arrayIN4entt11meta_handleELm2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4entt11meta_handleD2Ev.exit.i
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %_ZNSt5arrayIN4entt11meta_handleELm2EED2Ev.exit unwind label %bb.f, !inline_history !3

_ZNSt5arrayIN4entt11meta_handleELm2EED2Ev.exit:   ; preds = %_ZN4entt11meta_handleD2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_ZNSt5arrayIN4entt11meta_handleELm2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !184
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !99  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEPNS_8meta_anyEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.ak, align 8, !tbaa !176
  store i32 -297351344, ptr %i.am, align 8, !tbaa !177
  store ptr null, ptr %i.al, align 8, !tbaa !143
  store i8 2, ptr %i.an, align 4, !tbaa !178
  %i.ao = load ptr, ptr %2, align 8, !tbaa !131
  store ptr %i.ao, ptr %5, align 8, !tbaa !131
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !179
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !180
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEPS0_EEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.ar, align 8, !tbaa !142
end_hunk_0
