Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_test?download=true
inline.NumInlined: 17618
inline.NumDeleted: 3825
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZThn16_N34CordTest_ChecksummedEmptyCord_TestD0Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN47CordSanitizerTest_SanitizesCordFalseReport_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN56CrcCordTest_ChecksummedEmptyCordEstimateMemoryUsage_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN44CordThreeWayComparisonTest_CompareCords_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN58CordThreeWayComparisonTest_CompareCordsAndStringViews_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8ValuesInISt19_Bit_const_iteratorEENS_8internal14ParamGeneratorINSt15iterator_traitsIT_E10value_typeEEES5_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator") align 8 %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.144", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbEE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZNSt6vectorIbSaIbEEC2ISt19_Bit_const_iteratorvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  store ptr %i.a, ptr %0, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !85
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39
          to label %_ZN7testing8internal14ParamGeneratorIbEC2EPNS0_23ParamGeneratorInterfaceIbEE.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #38 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #38, !inline_history !2139
  invoke void @__cxa_rethrow() #37
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #42
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZN7testing8internal14ParamGeneratorIbEC2EPNS0_23ParamGeneratorInterfaceIbEE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.o, align 4, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !270
  store ptr %i.d, ptr %i.c, align 8, !tbaa !85
  ret void

bb.g:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2ISt19_Bit_const_iteratorvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !273
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !273
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !274
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !277
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.i = zext i32 %4 to i64                       ; 2 uses
  %i.j = add nsw i64 %i.h, %i.i                   ; 2 uses
  %i.k = zext i32 %2 to i64                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.j, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = add i64 %i.l, 63                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 2305843009213693944
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39
          to label %.noexc unwind label %bb.e     ; 4 uses

.noexc:                                           ; preds = %bb.b
  %i.q = lshr i64 %i.m, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  store ptr %i.r, ptr %i.d, align 8, !tbaa !277
  store ptr %i.p, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.s = sdiv i64 %i.l, 64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.s
  %i.u = and i64 %i.l, -9223372036854775745
  %i.v = icmp ugt i64 %i.u, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.t, i64 %storemerge.idx.i.i.i.i.i
  %i.w = trunc i64 %i.l to i32
  %i.x = and i32 %i.w, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.b, align 8
  store i32 %i.x, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i:     ; preds = %bb.a, %.noexc
  %i.y = phi ptr [ %i.p, %.noexc ], [ null, %bb.a ]
  %i.z = sub nsw i64 %i.i, %i.k
  %i.aa = add i64 %i.z, %i.h                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE19_M_initialize_rangeISt19_Bit_const_iteratorEEvT_S4_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ar, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.aa, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.y, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %2, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i ] ; 2 uses
  %i.ac = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !77
  %i.af = and i64 %i.ae, %i.ad
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  %i.ag = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.ah = shl nuw i64 1, %i.ag                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !77
  %i.aj = or i64 %i.ai, %i.ah
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ak = xor i64 %i.ah, -1
  %i.al = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !77
  %i.am = and i64 %i.al, %i.ak
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.am, %bb.d ], [ %i.aj, %bb.c ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !77
  %i.an = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.ao = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.ao, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.ao, i32 0, i32 %i.an
  %i.ap = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.aq = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.aq, i32 0, i32 %i.ap
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.aq, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i
  %i.ar = add nsw i64 %.020.i.i.i.i.i.i, -1
  %6 = icmp samesign ugt i64 %.020.i.i.i.i.i.i, 1
  br i1 %6, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE19_M_initialize_rangeISt19_Bit_const_iteratorEEvT_S4_St20forward_iterator_tag.exit, !llvm.loop !2140

_ZNSt6vectorIbSaIbEE19_M_initialize_rangeISt19_Bit_const_iteratorEEvT_S4_St20forward_iterator_tag.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  ret void

bb.e:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i8, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !277 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.az
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.ax) #40
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbEE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #40
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbEE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #40, !inline_history !2141
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbED2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIbE5BeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !287
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !288
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIbE3EndEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !274
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.e, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !288
  ret ptr %i.a
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKbSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIKbEclEPS0_.exit.i

_ZNKSt14default_deleteIKbEclEPS0_.exit.i:         ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #40
  br label %_ZNSt10unique_ptrIKbSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIKbSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKbEclEPS0_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorE, i64 16), ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorD2Ev.exit, label %_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i

_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i:       ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #40, !inline_history !2142
  br label %_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorD2Ev.exit

_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIbE8Iterator13BaseGeneratorEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal30ValuesInIteratorRangeGeneratorIbE8Iterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !274
  %i.d = icmp eq i32 %i.b, 63
  br i1 %i.d, label %bb.b, label %_ZNSt19_Bit_const_iteratorppEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !274
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.e, align 8, !tbaa !273
  br label %_ZNSt19_Bit_const_iteratorppEv.exit

_ZNSt19_Bit_const_iteratorppEv.exit:              ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131  ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !131
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIKbSt14default_deleteIS0_EE5resetEPS0_.exit, label %_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i

_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i:       ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 1) #40
  br label %_ZNSt10unique_ptrIKbSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrIKbSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %_ZNSt19_Bit_const_iteratorppEv.exit, %_ZNKSt14default_deleteIKbEclEPS0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIbE8Iterator5CloneEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_4CordEEESaIS8_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  %i.aut = ptrtoint ptr %i.aus to i64
  %i.auu = ptrtoint ptr %i.aur to i64
  %i.auv = sub i64 %i.aut, %i.auu
  call void @_ZdlPvm(ptr noundef nonnull %i.aur, i64 noundef %i.auv) #40
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit767

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit767: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i764, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  br i1 %.8118, label %bb.ba, label %.loopexit

bb.ll:                                            ; preds = %.body771, %bb.di, %.body814, %bb.gc, %bb.ld
  %.pn158.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn158.pn.pn.pn.pn.pn.pn, %bb.ld ], [ %.pn141.pn.pn, %bb.di ], [ %.pn133.pn.pn.pn.pn.pn.pn, %bb.gc ], [ %.pn131, %.body814 ], [ %.pn128.pn, %.body771 ]
  call void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %62) #38
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.bd
  %.pn158.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn158.pn.pn.pn.pn.pn.pn.pn, %bb.ll ], [ %i.iy, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #38
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge899:                                   ; preds = %bb.ba, %.preheader
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_4CordEEESaIS8_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISI_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j, %bb.m, %._crit_edge899
  %lpad.loopexit.split-lp1207 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit767, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %._crit_edge899, %_ZN7testing15AssertionResultD2Ev.exit203
  %i.auw = load ptr, ptr %57, align 8, !tbaa !367 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.auw, %i.auy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.avf, %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i ], [ %i.auw, %.loopexit ] ; 3 uses
  %i.auz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !350 ; 3 uses
  %.not.i.i.i.i.i.i.i768 = icmp eq ptr %i.auz, null
  br i1 %.not.i.i.i.i.i.i.i768, label %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i, label %bb.ln

bb.ln:                                            ; preds = %.lr.ph.i.i.i
  %i.ava = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !354
  %i.avc = ptrtoint ptr %i.avb to i64
  %i.avd = ptrtoint ptr %i.auz to i64
  %i.ave = sub i64 %i.avc, %i.avd
  call void @_ZdlPvm(ptr noundef nonnull %i.auz, i64 noundef %i.ave) #40
  br label %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i

_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i: ; preds = %bb.ln, %.lr.ph.i.i.i
  %i.avf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i769 = icmp eq ptr %i.avf, %i.auy
  br i1 %.not.i.i.i769, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EEEvPSF_.exit.i.i.i
  %.pr.i = load ptr, ptr %57, align 8, !tbaa !367
  br label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exit.i

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exitthread-pre-split.i, %.loopexit
  %i.avg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exitthread-pre-split.i ], [ %i.auw, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.avg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_4CordEEESaIS8_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISI_EESaISK_EED2Ev.exit, label %bb.lo

bb.lo:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exit.i
  %i.avh = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !353
  %i.avj = ptrtoint ptr %i.avi to i64
  %i.avk = ptrtoint ptr %i.avg to i64
  %i.avl = sub i64 %i.avj, %i.avk
  call void @_ZdlPvm(ptr noundef nonnull %i.avg, i64 noundef %i.avl) #40
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_4CordEEESaIS8_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISI_EESaISK_EED2Ev.exit

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_4CordEEESaIS8_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISI_EESaISK_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKNS2_4CordEEESaIS9_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISJ_EESL_EvSF_SF_RSaISI_E.exit.i, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit187, %bb.lm, %bb.az
  %.pn168.pn = phi { ptr, i32 } [ %.pn168, %bb.az ], [ %.pn124.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit187 ], [ %.pn158.pn.pn.pn.pn.pn.pn.pn.pn, %bb.lm ], [ %lpad.loopexit.split-lp1207, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_4CordEEESaIS8_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISI_EESaISK_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %57) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #38
  resume { ptr, i32 } %.pn168.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613hash_internal17ContainerAsVectorISt16initializer_listINS0_4CordEEE2DoERKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.538") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !3249   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3250 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not24 = icmp eq i64 %i.c, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %.025 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit ] ; 10 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.025, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !3251
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !346
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.549) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 576460752303423487)
  %i.s = select i1 %i.q, i64 576460752303423487, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39
          to label %.noexc10 unwind label %.loopexit ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %.025, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %.sroa.6.0..sroa_idx12, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc10, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !3252
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3247

_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc10
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc10 ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.m) #40
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.y, ptr %i.e, align 8, !tbaa !3251
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !346
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.pre, %bb.c ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ]
  %i.ac = phi ptr [ %i.u, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.025, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %2 = phi i64 [ %i.m, %.loopexit ], [ 9223372036854775792, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %2) #40
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EED2Ev.exit

_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit, %bb.a
  %.lcssa21 = phi ptr [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorISt7variantIJPKN4absl12lts_202605264CordEEESaIS6_EE9push_backEOS6_.exit ]
  store ptr %.lcssa21, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !89
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !28
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !86
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !221    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !219  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !78
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !221
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !220
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvE7CompareERKS3_S5_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.a = load ptr, ptr %0, align 8, !tbaa !113, !noalias !3261
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113, !noalias !3261
  call void @_ZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr %i.a, ptr %i.c, i64 0, ptr nonnull @.str.57)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.d = load ptr, ptr %1, align 8, !tbaa !113, !noalias !3262
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113, !noalias !3262
  invoke void @_ZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.d, ptr %i.f, i64 0, ptr nonnull @.str.57)
          to label %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit unwind label %bb.c

_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !76   ; 8 uses
  %i.k = icmp eq i64 %i.h, %i.j
  %.pre38 = load ptr, ptr %3, align 8, !tbaa !74  ; 5 uses
  br i1 %i.k, label %bb.b, label %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28_crit_edge

_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28_crit_edge: ; preds = %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !74
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

bb.b:                                             ; preds = %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr %i.m, ptr %.pre38, i64 %i.h)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.p = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !78
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.o

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28: ; preds = %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = phi ptr [ %.pre, %_ZN4absl12lts_202605267StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28_crit_edge ], [ %i.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.v = icmp eq i64 %i.j, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28
  %i.w = icmp ult i64 %i.h, %i.j
  br i1 %i.w, label %bb.e, label %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.d
  %i.x = sub nuw i64 %i.h, %i.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %bcmp.i.i = call i32 @bcmp(ptr %i.y, ptr %.pre38, i64 %i.j)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.h, 0
  br i1 %i.aa, label %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19.thread, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %bb.e
  %i.ab = icmp ult i64 %i.j, %i.h
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19

_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19: ; preds = %.thread
  %i.ac = sub nuw i64 %i.j, %i.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre38, i64 %i.ac
  %bcmp.i.i17 = call i32 @bcmp(ptr %i.ad, ptr %i.u, i64 %i.h)
  %bcmp.i.i17.fr = freeze i32 %bcmp.i.i17
  %i.ae = icmp eq i32 %bcmp.i.i17.fr, 0
  br i1 %i.ae, label %_ZN4absl12lts_202605268EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit19.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
end_hunk_1
