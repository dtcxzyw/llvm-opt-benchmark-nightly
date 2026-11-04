Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/flat_hash_map_test?download=true
inline.NumInlined: 50283
inline.NumDeleted: 9586
loop-unroll.NumCompletelyUnrolled: 147
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 165
begin_hunk_0_@_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !383, !alias.scope !2395
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !383, !alias.scope !2394
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !138, !alias.scope !2395
  store i64 %i.an, ptr %i.al, align 8, !tbaa !138, !alias.scope !2394
  store ptr null, ptr %i.aj, align 8, !tbaa !383, !alias.scope !2395
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIiiEEE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !150, !alias.scope !2394
  %i.ao = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !150, !alias.scope !2395
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2396
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i19) #37, !noalias !2394, !inline_history !2386
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2387

_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %.lr.ph.i.i.i17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !380
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #40
  br label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !389
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !379
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !380
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt4pairIiiEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, i64 16), ptr %0, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !138
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #36, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.183, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.184, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !390
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.183, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.184, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !390
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, i64 16), ptr %0, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !383
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !138
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #36, !inline_history !386
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE19MatchAndExplainImplINS6_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = load <2 x i32>, ptr %i.a, align 8
  %i.d = icmp eq <2 x i32> %i.b, %i.c
  %3 = freeze <2 x i1> %i.d
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, -1
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE12DescribeImplINS6_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.216, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.217, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.215, i64 noundef 1) ; 0 uses
  tail call void @_ZN7testing8internal7PrintToIiiEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE16GetDescriberImplINS6_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal7PrintToIiiEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1, !tbaa !138
  %i.c = load ptr, ptr %1, align 8, !tbaa !150
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !205
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = load i32, ptr %0, align 4, !tbaa !166
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.k) ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.190, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !166
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !138
  %i.q = load ptr, ptr %1, align 8, !tbaa !150
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !205
  %.not.i7 = icmp eq i64 %i.v, 0
  br i1 %.not.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal31UnorderedElementsAreMatcherImplIRKSt6vectorISt4pairIiiESaIS4_EEE15AnalyzeElementsIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEENS0_11MatchMatrixET_SH_PS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISN_EEPNS_19MatchResultListenerE(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::MatchMatrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, ptr %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !146    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !135 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !138
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !147
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !204
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !150
  %.not63101 = icmp eq ptr %2, %3
  br i1 %.not63101, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge, label %.lr.ph107

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre142 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !379
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre144 = load ptr, ptr %.phi.trans.insert143, align 8, !tbaa !389
  br label %._crit_edge108

.lr.ph107:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %._crit_edge
  %.024106 = phi i64 [ 0, %.lr.ph107 ], [ %i.ar, %._crit_edge ]
  %.sroa.059.0105 = phi ptr [ %2, %.lr.ph107 ], [ %i.as, %._crit_edge ] ; 3 uses
  %.sroa.13.0104 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.13.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.9.0103 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.9.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.050.0102 = phi ptr [ null, %.lr.ph107 ], [ %.sroa.050.1.lcssa, %._crit_edge ] ; 3 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !204
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN7testing13PrintToStringISt4pairIiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.059.0105)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !147  ; 6 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !148
  %.not.i.i31 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !136
  %i.u = load ptr, ptr %8, align 8, !tbaa !135    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.n, align 8, !tbaa !139  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.y, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.r, align 8, !tbaa !135
  %i.z = load i64, ptr %i.m, align 8, !tbaa !138
  store i64 %i.z, ptr %i.t, align 8, !tbaa !138
  %.pre = load i64, ptr %i.n, align 8, !tbaa !139
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !139
  store ptr %i.m, ptr %8, align 8, !tbaa !135
  store i64 0, ptr %i.n, align 8, !tbaa !139
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:_ZN4absl12lts_2026052613flat_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEECI2NS2_12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJS3_S4_S9_EEEEmRKS3_RKS4_RKS9_.exit.preheader
  %i.fh = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.r, i64 noundef %i.fh, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i110)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.bx

bb.bx:                                            ; preds = %.noexc.i, %bb.bw
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.bv, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fk = load i64, ptr %6, align 8               ; 3 uses
  %i.fl = and i64 %i.fk, 255
  %i.fm = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %i.fm)
  %i.fn = and i64 %i.fk, 254
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit
  %i.fp = icmp ult i64 %i.fk, 562949953552384
  call void @llvm.assume(i1 %i.fp)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit120

bb.bz:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i112 unwind label %bb.ca

.noexc.i112:                                      ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.fq = load i64, ptr %6, align 8               ; 2 uses
  %i.fr = and i64 %i.fq, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i113 = shl nsw i64 -1, %i.fr ; 4 uses
  %i.fs = add nsw i64 %notmask.i.i.i.i.i.i113, 8589934591
  %i.ft = or i64 %i.fs, %notmask.i.i.i.i.i.i113
  %i.fu = icmp eq i64 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i64 %notmask.i.i.i.i.i.i113, -8589934593
  call void @llvm.assume(i1 %i.fw)
  %i.fx = and i64 %i.fq, 65536
  %.not.i.i.i.i.i114 = icmp ne i64 %i.fx, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i115 = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.fy = xor i64 %notmask.i.i.i.i.i.i113, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.h, i64 noundef %i.fy, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i115, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i114)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit120 unwind label %bb.ca

bb.ca:                                            ; preds = %.noexc.i112, %bb.bz
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit120: ; preds = %bb.by, %.noexc.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !585 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit120
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !586
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #40
  br label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit

_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit120, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.cc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit104, %bb.bj
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit104 ], [ %i.dv, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %.body

.body:                                            ; preds = %bb.af, %bb.av, %bb.bi, %bb.cc, %.body.i.i.i
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %.body.i.i.i ], [ %.pn48.pn.pn, %bb.cc ], [ %.pn44.pn.pn, %bb.bi ], [ %.pn37.pn.pn, %bb.av ], [ %.pn31.pn.pn, %bb.af ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.cd

bb.cd:                                            ; preds = %bb.m, %.body
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.m ], [ %.pn48.pn.pn.pn.pn, %.body ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #37
  %.pre127 = load ptr, ptr %i.e, align 8, !tbaa !585 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %.not.i.i.i.i121 = icmp eq ptr %.pre127, null
  br i1 %.not.i.i.i.i121, label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit122, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !586
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %.pre127 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.pre127, i64 noundef %i.gl) #40
  br label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit122

_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit122: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn54.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEEC1ERKSE_RKSD_EUlPvPKvE_vJSJ_SL_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x i32>, ptr %2, align 4, !tbaa !166
  store <2 x i32> %i.a, ptr %1, align 4, !tbaa !166
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.b)
  %i.c = load i64, ptr %4, align 8                ; 4 uses
  %i.d = icmp ult i64 %i.c, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.unshifted.i = xor i64 %i.c, %i.a
  %.not.i = icmp samesign ult i64 %.not.unshifted.i, 131072
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.e         ; 4 uses
  %i.f = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.g = or i64 %i.f, %notmask.i.i.i.i
  %i.h = icmp eq i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i64 %i.c, 255                        ; 2 uses
  %notmask.i.i.i17.i = shl nsw i64 -1, %i.k       ; 4 uses
  %i.l = add nsw i64 %notmask.i.i.i17.i, 8589934591
  %i.m = or i64 %i.l, %notmask.i.i.i17.i
  %i.n = icmp eq i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i64 %notmask.i.i.i17.i, -8589934593
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i64 %notmask.i.i.i.i, %notmask.i.i.i17.i ; 3 uses
  %spec.select.i = select i1 %i.q, ptr %3, ptr %4
  %spec.select32.i = select i1 %i.q, ptr %4, ptr %3 ; 2 uses
  %i.r = select i1 %i.q, i64 %i.c, i64 %i.a       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit, label %bb.c, !prof !169

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.r, 254
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 8 ; 2 uses
  br i1 %i.t, label %.lr.ph.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !138, !nonnull !130, !noundef !130 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !138 ; 2 uses
  %i.w = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 1, !tbaa !174
  %i.x = icmp slt i8 %i.w, -1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.lr.ph.i.preheader

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ]
  %i.z = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !174
  %i.ad = icmp slt i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !40

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.c
  %.sroa.9.040.i.ph = phi ptr [ %i.u, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.sroa.023.039.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sroa.9.040.i = phi ptr [ %.sroa.9.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.9.040.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.023.039.i = phi ptr [ %.sroa.023.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.023.039.i.ph, %.lr.ph.i.preheader ]
  %i.ae = tail call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.9.040.i) ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1
  %i.ai = load <2 x i32>, ptr %i.ah, align 4
  %i.aj = load <2 x i32>, ptr %.sroa.9.040.i, align 4
  %i.ak = icmp eq <2 x i32> %i.ai, %i.aj
  %5 = freeze <2 x i1> %i.ak
  %6 = bitcast <2 x i1> %5 to i2
  %7 = icmp eq i2 %6, -1
  br i1 %7, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.9.040.i, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.al, align 1, !tbaa !174 ; 2 uses
  %i.ao = icmp slt i8 %i.an, -1
  br i1 %i.ao, label %.lr.ph.i.i.i18.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i18.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i18.i
  %i.ap = phi ptr [ %i.as, %.lr.ph.i.i.i18.i ], [ %i.am, %bb.f ]
  %i.aq = phi ptr [ %i.ar, %.lr.ph.i.i.i18.i ], [ %i.al, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !174 ; 2 uses
  %i.au = icmp slt i8 %i.at, -1
  br i1 %i.au, label %.lr.ph.i.i.i18.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !40

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i18.i, %bb.f
  %.sroa.023.1.i = phi ptr [ %i.al, %bb.f ], [ %i.ar, %.lr.ph.i.i.i18.i ]
  %.sroa.9.1.i = phi ptr [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i.i.i18.i ]
  %i.av = phi i8 [ %i.an, %bb.f ], [ %i.at, %.lr.ph.i.i.i18.i ]
  %i.aw = icmp eq i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit, label %.lr.ph.i, !prof !169

_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %bb.b
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.g

.loopexit:                                        ; preds = %bb.e, %.lr.ph.i, %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052613flat_hash_mapIiiNS2_18container_internal19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052613flat_hash_mapIiiNS2_18container_internal19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !135    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !138
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.f = load ptr, ptr %5, align 8, !tbaa !135    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !138
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613flat_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !135    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !138
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.r = load ptr, ptr %5, align 8, !tbaa !135    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !138
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE10find_smallIiEENSC_8iteratorERS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !166
  %i.g = load i32, ptr %1, align 4, !tbaa !166
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE10find_smallIiEENSC_8iteratorERS9_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !138 ; 4 uses
  %i.j = and i64 %i.a, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.j
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = lshr i64 %i.a, 8
  %i.l = and i64 %i.k, 255
  %i.m = load i32, ptr %1, align 4, !tbaa !166    ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = xor i64 %i.l, %i.t
  %i.v = xor i64 %notmask.i.i.i.i.i, -1           ; 2 uses
  %i.w = lshr i64 %i.t, 57
  %i.x = trunc nuw nsw i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.y, align 8, !tbaa !138 ; 3 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7 = phi i64 [ %i.u, %bb.d ], [ %i.ay, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.628.0.i = and i64 %.pn.i7, %i.v          ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.628.0.i
  %i.ad = load <16 x i8>, ptr %i.ac, align 1, !tbaa !138 ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.aa, %i.ad
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag) #43, !srcloc !167 ; 2 uses
  %.not50.i = icmp eq i32 %i.ah, 0
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.019.051.i = phi i32 [ %i.as, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ai = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add nuw i64 %.sroa.628.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.v                     ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !166
  %i.ao = icmp eq i32 %i.an, %i.m
  br i1 %i.ao, label %.thread36.i, label %bb.f, !prof !168

.thread36.i:                                      ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE10find_largeIiEENSC_8iteratorERS9_m.exit

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_6InsertINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i67 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !12534
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i67, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i68

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i68: ; preds = %.noexc73, %bb.q, %bb.p
  %.sink17.i.i.i.i.i.i.i.i.i.i69 = phi ptr [ %i.cn, %.noexc73 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i.i.i.i.i.i70 = phi ptr [ %i.cp, %.noexc73 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i.i.i.i.i.i71 = phi i8 [ 1, %.noexc73 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i69, ptr %10, align 8, !alias.scope !12534
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i70, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i72, align 8, !alias.scope !12534
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i61

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc74 unwind label %bb.v

.noexc74:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i.i.i.i.i.i59 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre.i.i.i.i.i.i.i60 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i59, align 8, !tbaa !598, !range !129, !alias.scope !12535
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i61

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i61: ; preds = %.noexc74, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i68
  %i.cq = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i71, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i68 ], [ %.pre.i.i.i.i.i.i.i60, %.noexc74 ] ; 2 uses
  %i.cr = trunc nuw i8 %i.cq to i1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i62 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i62, align 8 ; 3 uses
  br i1 %i.cr, label %bb.w, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  br label %.thread118

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.b
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ba

bb.w:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i61
  %i.cu = load i32, ptr %9, align 4, !tbaa !166, !noalias !12536
  store i32 %i.cu, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i63, align 4, !tbaa !311
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i63, i64 4
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !12536
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !312
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store i8 %i.cq, ptr %11, align 8, !tbaa !220
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !315
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 0, ptr %i.cy, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %15, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !139
  store i64 %i.db, ptr %14, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cz, ptr %i.dc, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 55, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %14)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  %i.dd = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.aa
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !138
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.di = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.di, null
  br i1 %.not.i.i81, label %bb.ag, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !150
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #37, !inline_history !5
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit89

bb.ac:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ad:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ] ; 2 uses
  %i.dq = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.af
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !138
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ac
  %.pn29.pn = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn29, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dv = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !150
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ab
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ba

bb.ag:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %.pr117 = load ptr, ptr %i.cx, align 8, !tbaa !183 ; 4 uses
  %.not.i.i.i90 = icmp eq ptr %.pr117, null
  br i1 %.not.i.i.i90, label %.thread118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %.pr117, align 8, !tbaa !135 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr117, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91: ; preds = %bb.ah
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !138
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.pr117, i64 noundef 32) #40
  br label %.thread118

.thread118:                                       ; preds = %.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, %bb.ag
  %.sroa.5.0.copyload152 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i.i63, %.thread ], [ %.sroa.5.0.copyload, %bb.ag ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ee = load <2 x i32>, ptr %3, align 8, !noalias !12537
  %i.ef = load <2 x i32>, ptr %.sroa.5.0.copyload152, align 4, !noalias !12537
  %i.eg = icmp eq <2 x i32> %i.ee, %i.ef
  %19 = freeze <2 x i1> %i.eg
  %20 = bitcast <2 x i1> %19 to i2
  %21 = icmp eq i2 %20, -1
  br i1 %21, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

bb.aj:                                            ; preds = %.thread118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.333, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.5.0.copyload152)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97: ; preds = %bb.ai, %bb.aj
  %i.eh = load i8, ptr %16, align 8, !tbaa !220, !range !129, !noundef !130
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.au, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !183 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.el, null
  br i1 %.not.i.i98, label %_ZNK7testing15AssertionResult15failure_messageEv.exit99, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit99

_ZNK7testing15AssertionResult15failure_messageEv.exit99: ; preds = %bb.an, %bb.am
  %i.en = phi ptr [ %i.em, %bb.an ], [ @.str.204, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 56, ptr noundef %i.en)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.eo = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !150
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.as ], [ %i.et, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ev = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.at
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !150
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %bb.at, %bb.aq
  %.pn34.pn = phi { ptr, i32 } [ %i.es, %bb.aq ], [ %.pn34, %bb.at ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  br label %bb.az

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97, %_ZN7testing7MessageD2Ev.exit102
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !183 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i106, label %_ZN7testing15AssertionResultD2Ev.exit110, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !135 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.av
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !138
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit110

_ZN7testing15AssertionResultD2Ev.exit110:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fg = load i64, ptr %5, align 8               ; 3 uses
  %i.fh = and i64 %i.fg, 255
  %i.fi = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = and i64 %i.fg, 254
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  %i.fl = icmp ult i64 %i.fg, 562949953552384
  call void @llvm.assume(i1 %i.fl)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.ax:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %5, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.ay

.noexc.i:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.fm = load i64, ptr %5, align 8               ; 2 uses
  %i.fn = and i64 %i.fm, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fn    ; 4 uses
  %i.fo = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.fp = or i64 %i.fo, %notmask.i.i.i.i.i.i
  %i.fq = icmp eq i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.fs)
  %i.ft = and i64 %i.fm, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.ft, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.fu = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.fu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %.noexc.i, %bb.ax
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.aw, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.ak
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit89, %bb.v, %bb.u
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.az ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit89 ], [ %i.ct, %bb.v ], [ %i.cs, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.t
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.ba ], [ %.pn25.pn.pn, %bb.t ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN7testing13PrintToStringISt4pairIKiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %3)
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80 = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !12934, !nonnull !130, !noundef !130
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i82 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !12934
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.i82, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i83

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i83: ; preds = %.noexc88, %bb.q, %bb.p
  %.sink17.i.i.i.i.i.i.i.i.i.i.i84 = phi ptr [ %i.cn, %.noexc88 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i.i.i.i.i.i.i85 = phi ptr [ %i.cp, %.noexc88 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i86 = phi i8 [ 1, %.noexc88 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i.i84, ptr %3, align 8, !alias.scope !12934
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i.i85, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i87, align 8, !alias.scope !12934
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i71

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %.noexc89 unwind label %bb.w

.noexc89:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i.i.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i.i.i70 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i69, align 8, !tbaa !598, !range !129, !alias.scope !12935
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i71

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i71: ; preds = %.noexc89, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i83
  %i.cq = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i.i86, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i.i83 ], [ %.pre.i.i.i.i.i.i.i.i70, %.noexc89 ]
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i71
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i77 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i78 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i77, align 8, !alias.scope !12935 ; 2 uses
  %i.cs = load i32, ptr %10, align 4, !tbaa !166, !noalias !12936
  store i32 %i.cs, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i78, align 4, !tbaa !311
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i78, i64 4
  %i.cu = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !12936
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !312
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i71
  %.sroa.02.0.copyload.i72 = load ptr, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i74 = load ptr, ptr %.sroa.2.0..sroa_idx.i73, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.cv = icmp ne ptr %.sroa.02.0.copyload.i72, null ; 2 uses
  %i.cw = zext i1 %i.cv to i8
  store i8 %i.cw, ptr %11, align 8, !tbaa !220
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !315
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 1, ptr %i.cy, align 8, !tbaa !317
  br i1 %i.cv, label %.thread145, label %bb.x

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit64, %bb.b
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit64 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bc

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.s, %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr %15, align 8, !tbaa !135
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !139
  store i64 %i.dc, ptr %14, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.da, ptr %i.dd, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 69, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %14)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  %i.de = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.ab
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !138
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dj = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i96, label %bb.ah, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !150
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #37, !inline_history !5
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit104

bb.ad:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.ae:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn34 = phi { ptr, i32 } [ %i.dq, %bb.af ], [ %i.dp, %bb.ae ] ; 2 uses
  %i.dr = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ag
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !138
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.ad
  %.pn34.pn = phi { ptr, i32 } [ %i.do, %bb.ad ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn34, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dw = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i102 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i102, label %_ZN7testing7MessageD2Ev.exit104, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !150
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit104

_ZN7testing7MessageD2Ev.exit104:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.ac
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn34.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.bb

bb.ah:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %.pr144 = load ptr, ptr %i.cx, align 8, !tbaa !183 ; 4 uses
  %.not.i.i.i105 = icmp eq ptr %.pr144, null
  br i1 %.not.i.i.i105, label %.thread145, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load ptr, ptr %.pr144, align 8, !tbaa !135 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pr144, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106: ; preds = %bb.ai
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !138
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i107

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i107: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106
  call void @_ZdlPvm(ptr noundef nonnull %.pr144, i64 noundef 32) #40
  br label %.thread145

.thread145:                                       ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i107, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ef = load <2 x i32>, ptr %4, align 8, !noalias !12937
  %i.eg = load <2 x i32>, ptr %.sroa.2.0.copyload.i74, align 4, !noalias !12937
  %i.eh = icmp eq <2 x i32> %i.ef, %i.eg
  %19 = freeze <2 x i1> %i.eh
  %20 = bitcast <2 x i1> %19 to i2
  %21 = icmp eq i2 %20, -1
  br i1 %21, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread145
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit112 unwind label %bb.al

bb.ak:                                            ; preds = %.thread145
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.335, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.2.0.copyload.i74)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit112 unwind label %bb.al

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit112: ; preds = %bb.aj, %bb.ak
  %i.ei = load i8, ptr %16, align 8, !tbaa !220, !range !129, !noundef !130
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.av, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.am:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !183 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.em, null
  br i1 %.not.i.i113, label %_ZNK7testing15AssertionResult15failure_messageEv.exit114, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit114

_ZNK7testing15AssertionResult15failure_messageEv.exit114: ; preds = %bb.ao, %bb.an
  %i.eo = phi ptr [ %i.en, %bb.ao ], [ @.str.204, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 70, ptr noundef %i.eo)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit114
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ep = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.ep) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit120

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit114
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn40 = phi { ptr, i32 } [ %i.ev, %bb.at ], [ %i.eu, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ew = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i118, label %_ZN7testing7MessageD2Ev.exit120, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %bb.au
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !150
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit120

_ZN7testing7MessageD2Ev.exit120:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, %bb.au, %bb.ar
  %.pn40.pn = phi { ptr, i32 } [ %i.et, %bb.ar ], [ %.pn40, %bb.au ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  br label %bb.ba

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit112, %_ZN7testing7MessageD2Ev.exit117
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !183 ; 4 uses
  %.not.i.i121 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i121, label %_ZN7testing15AssertionResultD2Ev.exit125, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !135 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122: ; preds = %bb.aw
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !138
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit125

_ZN7testing15AssertionResultD2Ev.exit125:         ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.fh = load i64, ptr %6, align 8               ; 3 uses
  %i.fi = and i64 %i.fh, 255
  %i.fj = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %i.fj)
  %i.fk = and i64 %i.fh, 254
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit125
  %i.fm = icmp ult i64 %i.fh, 562949953552384
  call void @llvm.assume(i1 %i.fm)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.fn = load i64, ptr %6, align 8               ; 2 uses
  %i.fo = and i64 %i.fn, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fo    ; 4 uses
  %i.fp = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.fq = or i64 %i.fp, %notmask.i.i.i.i.i.i
  %i.fr = icmp eq i64 %i.fq, -1
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp ne i64 %i.fo, 0
  call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.ft)
  %i.fu = and i64 %i.fn, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.fu, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.fv = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.fv, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %.noexc.i, %bb.ay
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.ax, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120, %bb.al
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit120 ], [ %i.ek, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZN7testing7MessageD2Ev.exit104, %bb.w
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.ba ], [ %.pn34.pn.pn, %_ZN7testing7MessageD2Ev.exit104 ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.v
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.bb ], [ %.pn30.pn.pn, %bb.v ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintINS3_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i67 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !14695
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i67, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i68

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i68: ; preds = %.noexc73, %bb.q, %bb.p
  %.sink17.i.i.i.i.i.i.i.i.i69 = phi ptr [ %i.cn, %.noexc73 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i.i.i.i.i70 = phi ptr [ %i.cp, %.noexc73 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i.i.i.i.i71 = phi i8 [ 1, %.noexc73 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i69, ptr %10, align 8, !alias.scope !14695
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i70, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i72, align 8, !alias.scope !14695
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i61

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc74 unwind label %bb.v

.noexc74:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i.i.i.i.i59 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre.i.i.i.i.i.i60 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i59, align 8, !tbaa !598, !range !129, !alias.scope !14696
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i61

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i61: ; preds = %.noexc74, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i68
  %i.cq = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i71, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i68 ], [ %.pre.i.i.i.i.i.i60, %.noexc74 ] ; 2 uses
  %i.cr = trunc nuw i8 %i.cq to i1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i62 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i62, align 8 ; 3 uses
  br i1 %i.cr, label %bb.w, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  br label %.thread118

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.b
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ba

bb.w:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i61
  %i.cu = load i32, ptr %9, align 4, !tbaa !166, !noalias !14697
  store i32 %i.cu, ptr %.sroa.2.0.copyload.i.i.i.i.i.i63, align 4, !tbaa !311
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i63, i64 4
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !14697
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !312
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store i8 %i.cq, ptr %11, align 8, !tbaa !220
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !315
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 0, ptr %i.cy, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %15, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !139
  store i64 %i.db, ptr %14, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cz, ptr %i.dc, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 160, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %14)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  %i.dd = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.aa
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !138
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.di = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.di, null
  br i1 %.not.i.i81, label %bb.ag, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !150
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #37, !inline_history !5
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit89

bb.ac:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ad:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ] ; 2 uses
  %i.dq = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.af
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !138
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ac
  %.pn29.pn = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn29, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dv = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !150
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ab
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ba

bb.ag:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %.pr117 = load ptr, ptr %i.cx, align 8, !tbaa !183 ; 4 uses
  %.not.i.i.i90 = icmp eq ptr %.pr117, null
  br i1 %.not.i.i.i90, label %.thread118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %.pr117, align 8, !tbaa !135 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr117, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91: ; preds = %bb.ah
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !138
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.pr117, i64 noundef 32) #40
  br label %.thread118

.thread118:                                       ; preds = %.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, %bb.ag
  %.sroa.5.0.copyload152 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i63, %.thread ], [ %.sroa.5.0.copyload, %bb.ag ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ee = load <2 x i32>, ptr %3, align 8, !noalias !14698
  %i.ef = load <2 x i32>, ptr %.sroa.5.0.copyload152, align 4, !noalias !14698
  %i.eg = icmp eq <2 x i32> %i.ee, %i.ef
  %19 = freeze <2 x i1> %i.eg
  %20 = bitcast <2 x i1> %19 to i2
  %21 = icmp eq i2 %20, -1
  br i1 %21, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

bb.aj:                                            ; preds = %.thread118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.333, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.5.0.copyload152)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97: ; preds = %bb.ai, %bb.aj
  %i.eh = load i8, ptr %16, align 8, !tbaa !220, !range !129, !noundef !130
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.au, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !183 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.el, null
  br i1 %.not.i.i98, label %_ZNK7testing15AssertionResult15failure_messageEv.exit99, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit99

_ZNK7testing15AssertionResult15failure_messageEv.exit99: ; preds = %bb.an, %bb.am
  %i.en = phi ptr [ %i.em, %bb.an ], [ @.str.204, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 161, ptr noundef %i.en)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.eo = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !150
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.as ], [ %i.et, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ev = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.at
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !150
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %bb.at, %bb.aq
  %.pn34.pn = phi { ptr, i32 } [ %i.es, %bb.aq ], [ %.pn34, %bb.at ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  br label %bb.az

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97, %_ZN7testing7MessageD2Ev.exit102
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !183 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i106, label %_ZN7testing15AssertionResultD2Ev.exit110, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !135 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.av
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !138
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit110

_ZN7testing15AssertionResultD2Ev.exit110:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fg = load i64, ptr %5, align 8               ; 3 uses
  %i.fh = and i64 %i.fg, 255
  %i.fi = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = and i64 %i.fg, 254
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  %i.fl = icmp ult i64 %i.fg, 562949953552384
  call void @llvm.assume(i1 %i.fl)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.ax:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %5, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.ay

.noexc.i:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.fm = load i64, ptr %5, align 8               ; 2 uses
  %i.fn = and i64 %i.fm, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fn    ; 4 uses
  %i.fo = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.fp = or i64 %i.fo, %notmask.i.i.i.i.i.i
  %i.fq = icmp eq i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.fs)
  %i.ft = and i64 %i.fm, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.ft, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.fu = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.fu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %.noexc.i, %bb.ax
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.aw, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.ak
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit89, %bb.v, %bb.u
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.az ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit89 ], [ %i.ct, %bb.v ], [ %i.cs, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.t
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.ba ], [ %.pn25.pn.pn, %bb.t ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceINS3_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a

bb.j:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ab = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit28, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27: ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.x

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i29, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.am = load i32, ptr %i.a, align 16, !tbaa !166
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !166
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw i64 %i.ap, 32
  %i.ar = zext i32 %i.am to i128
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !166
  %i.au = zext i32 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = zext i64 %i.av to i128
  %i.ax = shl nuw i128 %i.ar, 96
  %i.ay = shl nuw nsw i128 %i.aw, 32              ; 2 uses
  %i.az = trunc i128 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !166
  %i.bc = zext i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  %.masked.i.i.i.i.i.i.i = and i128 %i.ay, 79228162495817593519834398720
  %i.be = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.ax
  %i.bf = zext i64 %i.bd to i128
  %i.bg = add nuw nsw i128 %i.bf, 1442695040888963407 ; 2 uses
  %i.bh = add i128 %i.be, %i.bg
  %i.bi = lshr i128 %i.bh, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bi to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bj = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bk = shl nuw i128 %i.bj, 64
  %i.bl = and i128 %i.bg, 18446744073709551615
  %i.bm = or disjoint i128 %i.bk, %i.bl
  %i.bn = mul i128 %i.bm, 47026247687942121848144207491837523525
  %i.bo = add i128 %i.bn, 1442695040888963407     ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bp to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bq = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.br = shl nuw i128 %i.bq, 64
  %i.bs = and i128 %i.bo, 18446744073709551615
  %i.bt = or disjoint i128 %i.br, %i.bs
  %i.bu = mul i128 %i.bt, 47026247687942121848144207491837523525
  %i.bv = add i128 %i.bu, 1442695040888963407     ; 2 uses
  %i.bw = trunc i128 %i.bv to i64
  %i.bx = lshr i128 %i.bv, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.bx to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.by = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.bz = xor i64 %.narrow.i.i.i.i.i.i, %i.bw     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.bz, i64 %i.bz, i64 %i.by)
  %i.ca = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = load i32, ptr %4, align 8, !tbaa !166   ; 2 uses
  store i32 %i.cc, ptr %10, align 4, !tbaa !393
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !15059)
  call void @llvm.experimental.noalias.scope.decl(metadata !15060)
  call void @llvm.experimental.noalias.scope.decl(metadata !15061)
  call void @llvm.experimental.noalias.scope.decl(metadata !15062)
  call void @llvm.experimental.noalias.scope.decl(metadata !15063)
  call void @llvm.experimental.noalias.scope.decl(metadata !15064)
  call void @llvm.experimental.noalias.scope.decl(metadata !15065)
  %i.ce = load i64, ptr %6, align 8, !noalias !15066 ; 4 uses
  %i.cf = and i64 %i.ce, 254
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !15067)
  call void @llvm.experimental.noalias.scope.decl(metadata !15068)
  %i.ch = icmp ult i64 %i.ce, 562949953552384
  call void @llvm.assume(i1 %i.ch)
  %.not.i.i.i.i.i.i.i.i.i.i.i43 = icmp samesign ult i64 %i.ce, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = or disjoint i64 %i.ce, 131072
  store i64 %i.ci, ptr %6, align 8, !noalias !15069
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47

bb.q:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !166, !noalias !15069
  %i.ck = icmp eq i32 %i.cj, %i.cc
  br i1 %i.ck, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !15069
  store ptr %i.g, ptr %2, align 8, !tbaa !595, !noalias !15069
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %10, ptr %i.cl, align 8, !tbaa !185, !noalias !15069
  %i.cm = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc52 unwind label %bb.y   ; 2 uses

.noexc52:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !15069
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i44 = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !15069, !nonnull !130, !noundef !130
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i44, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i46 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !15069
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i46, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47: ; preds = %.noexc52, %bb.q, %bb.p
  %.sink17.i.i.i.i.i.i.i.i.i.i48 = phi ptr [ %i.cn, %.noexc52 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i.i.i.i.i.i49 = phi ptr [ %i.cp, %.noexc52 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i.i.i.i.i.i50 = phi i8 [ 1, %.noexc52 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i48, ptr %3, align 8, !alias.scope !15069
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i.i.i.i.i49, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i51, align 8, !alias.scope !15069
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i35

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %.noexc53 unwind label %bb.y

.noexc53:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i.i.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i.i.i.i.i34 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i33, align 8, !tbaa !598, !range !129, !alias.scope !15070
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i35

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i35: ; preds = %.noexc53, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47
  %i.cq = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i50, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i47 ], [ %.pre.i.i.i.i.i.i.i34, %.noexc53 ]
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i35
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i42 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i41, align 8, !alias.scope !15070 ; 2 uses
  %i.cs = load i32, ptr %10, align 4, !tbaa !166, !noalias !15071
  store i32 %i.cs, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i42, align 4, !tbaa !311
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i42, i64 4
  %i.cu = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !15071
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !312
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i35, %bb.t
  %.sroa.2.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i38 = load ptr, ptr %.sroa.2.0..sroa_idx.i37, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.cv = load <2 x i32>, ptr %4, align 8, !noalias !15072
  %i.cw = load <2 x i32>, ptr %.sroa.2.0.copyload.i38, align 4, !noalias !15072
  %i.cx = icmp eq <2 x i32> %i.cv, %i.cw
  %14 = freeze <2 x i1> %i.cx
  %15 = bitcast <2 x i1> %14 to i2
  %16 = icmp eq i2 %15, -1
  br i1 %16, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57 unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.335, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.2.0.copyload.i38)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57 unwind label %bb.z

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57: ; preds = %bb.v, %bb.w
  %i.cy = load i8, ptr %11, align 8, !tbaa !220, !range !129, !noundef !130
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.aj, label %bb.aa

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit28, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit28 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aq

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.s, %bb.r
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !183 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i58, label %_ZNK7testing15AssertionResult15failure_messageEv.exit59, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit59

_ZNK7testing15AssertionResult15failure_messageEv.exit59: ; preds = %bb.ac, %bb.ab
  %i.df = phi ptr [ %i.de, %bb.ac ], [ @.str.204, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 175, ptr noundef %i.df)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit59
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dg = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !150
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit65

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit59
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn15 = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %i.dl, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dn = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.ai
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %bb.ai, %bb.af
  %.pn15.pn = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %.pn15, %bb.ai ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #37
  br label %bb.ao

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57, %_ZN7testing7MessageD2Ev.exit62
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !183 ; 4 uses
  %.not.i.i66 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i66, label %_ZN7testing15AssertionResultD2Ev.exit70, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !135 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.ak
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !138
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit70

_ZN7testing15AssertionResultD2Ev.exit70:          ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.dy = load i64, ptr %6, align 8               ; 3 uses
  %i.dz = and i64 %i.dy, 255
  %i.ea = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %i.ea)
  %i.eb = and i64 %i.dy, 254
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  %i.ed = icmp ult i64 %i.dy, 562949953552384
  call void @llvm.assume(i1 %i.ed)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.an

.noexc.i:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ee = load i64, ptr %6, align 8               ; 2 uses
  %i.ef = and i64 %i.ee, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ef    ; 4 uses
  %i.eg = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.eh = or i64 %i.eg, %notmask.i.i.i.i.i.i
  %i.ei = icmp eq i64 %i.eh, -1
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.ek)
  %i.el = and i64 %i.ee, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.el, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.em = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.em, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i, %bb.am
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.al, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit65, %bb.z
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %i.db, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.y
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.ao ], [ %i.da, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.x
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.ap ], [ %.pn.pn.pn, %bb.x ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i67 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !15423
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i67, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i68

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i68: ; preds = %.noexc73, %bb.q, %bb.p
  %.sink17.i.i.i.i.i69 = phi ptr [ %i.cn, %.noexc73 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i70 = phi ptr [ %i.cp, %.noexc73 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i71 = phi i8 [ 1, %.noexc73 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i69, ptr %10, align 8, !alias.scope !15423
  %.sroa.4.0..sroa_idx.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sink16.i.i.i.i.i70, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i72, align 8, !alias.scope !15423
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i61

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %.noexc74 unwind label %bb.v

.noexc74:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre.i.i60 = load i8, ptr %.phi.trans.insert.i.i59, align 8, !tbaa !598, !range !129, !alias.scope !15424
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i61

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i61: ; preds = %.noexc74, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i68
  %i.cq = phi i8 [ %.sink.i.i.i.i.i71, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i68 ], [ %.pre.i.i60, %.noexc74 ] ; 2 uses
  %i.cr = trunc nuw i8 %i.cq to i1
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i62, align 8 ; 3 uses
  br i1 %i.cr, label %bb.w, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  br label %.thread118

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.b
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bb

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ba

bb.w:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i61
  %i.cu = load i32, ptr %9, align 4, !tbaa !166, !noalias !15424
  store i32 %i.cu, ptr %.sroa.2.0.copyload.i.i63, align 4, !tbaa !311
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i63, i64 4
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !15424
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !312
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  store i8 %i.cq, ptr %11, align 8, !tbaa !220
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !315
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 0, ptr %i.cy, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %15, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !139
  store i64 %i.db, ptr %14, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.cz, ptr %i.dc, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 190, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %14)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  %i.dd = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.aa
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !138
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.di = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.di, null
  br i1 %.not.i.i81, label %bb.ag, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !150
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #37, !inline_history !5
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit89

bb.ac:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ad:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn29 = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %i.do, %bb.ad ] ; 2 uses
  %i.dq = load ptr, ptr %15, align 8, !tbaa !135  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.af
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !138
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ac
  %.pn29.pn = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn29, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dv = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !150
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ab
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ba

bb.ag:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %.pr117 = load ptr, ptr %i.cx, align 8, !tbaa !183 ; 4 uses
  %.not.i.i.i90 = icmp eq ptr %.pr117, null
  br i1 %.not.i.i.i90, label %.thread118, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %.pr117, align 8, !tbaa !135 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr117, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91: ; preds = %bb.ah
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !138
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.pr117, i64 noundef 32) #40
  br label %.thread118

.thread118:                                       ; preds = %.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92, %bb.ag
  %.sroa.5.0.copyload152 = phi ptr [ %.sroa.2.0.copyload.i.i63, %.thread ], [ %.sroa.5.0.copyload, %bb.ag ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i92 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ee = load <2 x i32>, ptr %3, align 8, !noalias !15425
  %i.ef = load <2 x i32>, ptr %.sroa.5.0.copyload152, align 4, !noalias !15425
  %i.eg = icmp eq <2 x i32> %i.ee, %i.ef
  %19 = freeze <2 x i1> %i.eg
  %20 = bitcast <2 x i1> %19 to i2
  %21 = icmp eq i2 %20, -1
  br i1 %21, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread118
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

bb.aj:                                            ; preds = %.thread118
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.333, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.5.0.copyload152)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97 unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97: ; preds = %bb.ai, %bb.aj
  %i.eh = load i8, ptr %16, align 8, !tbaa !220, !range !129, !noundef !130
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.au, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !183 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.el, null
  br i1 %.not.i.i98, label %_ZNK7testing15AssertionResult15failure_messageEv.exit99, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit99

_ZNK7testing15AssertionResult15failure_messageEv.exit99: ; preds = %bb.an, %bb.am
  %i.en = phi ptr [ %i.em, %bb.an ], [ @.str.204, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 191, ptr noundef %i.en)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.eo = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !150
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit105

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn34 = phi { ptr, i32 } [ %i.eu, %bb.as ], [ %i.et, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.ev = load ptr, ptr %17, align 8, !tbaa !210  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.at
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !150
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %bb.at, %bb.aq
  %.pn34.pn = phi { ptr, i32 } [ %i.es, %bb.aq ], [ %.pn34, %bb.at ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #37
  br label %bb.az

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit97, %_ZN7testing7MessageD2Ev.exit102
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !183 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i106, label %_ZN7testing15AssertionResultD2Ev.exit110, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !135 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.av
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !138
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit110

_ZN7testing15AssertionResultD2Ev.exit110:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fg = load i64, ptr %5, align 8               ; 3 uses
  %i.fh = and i64 %i.fg, 255
  %i.fi = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %i.fi)
  %i.fj = and i64 %i.fg, 254
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  %i.fl = icmp ult i64 %i.fg, 562949953552384
  call void @llvm.assume(i1 %i.fl)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.ax:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %5, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.ay

.noexc.i:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.fm = load i64, ptr %5, align 8               ; 2 uses
  %i.fn = and i64 %i.fm, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fn    ; 4 uses
  %i.fo = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.fp = or i64 %i.fo, %notmask.i.i.i.i.i.i
  %i.fq = icmp eq i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.fs)
  %i.ft = and i64 %i.fm, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.ft, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.fu = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.fu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %.noexc.i, %bb.ax
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.aw, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.ak
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit89, %bb.v, %bb.u
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.az ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit89 ], [ %i.ct, %bb.v ], [ %i.cs, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.t
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.ba ], [ %.pn25.pn.pn, %bb.t ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceINS3_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.ab = load ptr, ptr %8, align 8, !tbaa !210   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit28, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27: ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit28

_ZN7testing7MessageD2Ev.exit28:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.x

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183 ; 4 uses
  %.not.i.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i29, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.am = load i32, ptr %i.a, align 16, !tbaa !166
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !166
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw i64 %i.ap, 32
  %i.ar = zext i32 %i.am to i128
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !166
  %i.au = zext i32 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = zext i64 %i.av to i128
  %i.ax = shl nuw i128 %i.ar, 96
  %i.ay = shl nuw nsw i128 %i.aw, 32              ; 2 uses
  %i.az = trunc i128 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !166
  %i.bc = zext i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  %.masked.i.i.i.i.i.i.i = and i128 %i.ay, 79228162495817593519834398720
  %i.be = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.ax
  %i.bf = zext i64 %i.bd to i128
  %i.bg = add nuw nsw i128 %i.bf, 1442695040888963407 ; 2 uses
  %i.bh = add i128 %i.be, %i.bg
  %i.bi = lshr i128 %i.bh, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bi to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bj = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bk = shl nuw i128 %i.bj, 64
  %i.bl = and i128 %i.bg, 18446744073709551615
  %i.bm = or disjoint i128 %i.bk, %i.bl
  %i.bn = mul i128 %i.bm, 47026247687942121848144207491837523525
  %i.bo = add i128 %i.bn, 1442695040888963407     ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bp to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.bq = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.br = shl nuw i128 %i.bq, 64
  %i.bs = and i128 %i.bo, 18446744073709551615
  %i.bt = or disjoint i128 %i.br, %i.bs
  %i.bu = mul i128 %i.bt, 47026247687942121848144207491837523525
  %i.bv = add i128 %i.bu, 1442695040888963407     ; 2 uses
  %i.bw = trunc i128 %i.bv to i64
  %i.bx = lshr i128 %i.bv, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.bx to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.by = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.bz = xor i64 %.narrow.i.i.i.i.i.i, %i.bw     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.bz, i64 %i.bz, i64 %i.by)
  %i.ca = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = load i32, ptr %4, align 8, !tbaa !166   ; 2 uses
  store i32 %i.cc, ptr %10, align 4, !tbaa !393
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !15649)
  call void @llvm.experimental.noalias.scope.decl(metadata !15650)
  call void @llvm.experimental.noalias.scope.decl(metadata !15651)
  %i.ce = load i64, ptr %6, align 8, !noalias !15652 ; 4 uses
  %i.cf = and i64 %i.ce, 254
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !15653)
  call void @llvm.experimental.noalias.scope.decl(metadata !15654)
  %i.ch = icmp ult i64 %i.ce, 562949953552384
  call void @llvm.assume(i1 %i.ch)
  %.not.i.i.i.i.i.i.i43 = icmp samesign ult i64 %i.ce, 131072
  br i1 %.not.i.i.i.i.i.i.i43, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = or disjoint i64 %i.ce, 131072
  store i64 %i.ci, ptr %6, align 8, !noalias !15655
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47

bb.q:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !166, !noalias !15655
  %i.ck = icmp eq i32 %i.cj, %i.cc
  br i1 %i.ck, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !15655
  store ptr %i.g, ptr %2, align 8, !tbaa !595, !noalias !15655
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %10, ptr %i.cl, align 8, !tbaa !185, !noalias !15655
  %i.cm = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc52 unwind label %bb.y   ; 2 uses

.noexc52:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !15655
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i44 = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !15655, !nonnull !130, !noundef !130
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i44, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i46 = load ptr, ptr %i.co, align 8, !tbaa !138, !noalias !15655
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i46, i64 %i.cm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47: ; preds = %.noexc52, %bb.q, %bb.p
  %.sink17.i.i.i.i.i.i48 = phi ptr [ %i.cn, %.noexc52 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.p ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.q ]
  %.sink16.i.i.i.i.i.i49 = phi ptr [ %i.cp, %.noexc52 ], [ %i.j, %bb.p ], [ %i.j, %bb.q ]
  %.sink.i.i.i.i.i.i50 = phi i8 [ 1, %.noexc52 ], [ 1, %bb.p ], [ 0, %bb.q ]
  store ptr %.sink17.i.i.i.i.i.i48, ptr %3, align 8, !alias.scope !15655
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i.i.i49, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i51, align 8, !alias.scope !15655
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i35

bb.s:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1166") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc53 unwind label %bb.y

.noexc53:                                         ; preds = %bb.s
  %.phi.trans.insert.i.i.i33 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i34 = load i8, ptr %.phi.trans.insert.i.i.i33, align 8, !tbaa !598, !range !129, !alias.scope !15656
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i35

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i35: ; preds = %.noexc53, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47
  %i.cq = phi i8 [ %.sink.i.i.i.i.i.i50, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i47 ], [ %.pre.i.i.i34, %.noexc53 ]
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i35
  %.sroa.2.0..sroa_idx.i.i.i41 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i42 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i41, align 8, !alias.scope !15656 ; 2 uses
  %i.cs = load i32, ptr %10, align 4, !tbaa !166, !noalias !15656
  store i32 %i.cs, ptr %.sroa.2.0.copyload.i.i.i42, align 4, !tbaa !311
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i42, i64 4
  %i.cu = load i32, ptr %i.cd, align 4, !tbaa !166, !noalias !15656
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !312
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i35, %bb.t
  %.sroa.2.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i38 = load ptr, ptr %.sroa.2.0..sroa_idx.i37, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.cv = load <2 x i32>, ptr %4, align 8, !noalias !15657
  %i.cw = load <2 x i32>, ptr %.sroa.2.0.copyload.i38, align 4, !noalias !15657
  %i.cx = icmp eq <2 x i32> %i.cv, %i.cw
  %14 = freeze <2 x i1> %i.cx
  %15 = bitcast <2 x i1> %14 to i2
  %16 = icmp eq i2 %15, -1
  br i1 %16, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57 unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.335, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.2.0.copyload.i38)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57 unwind label %bb.z

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57: ; preds = %bb.v, %bb.w
  %i.cy = load i8, ptr %11, align 8, !tbaa !220, !range !129, !noundef !130
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.aj, label %bb.aa

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit28, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit28 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aq

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.s, %bb.r
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !183 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i58, label %_ZNK7testing15AssertionResult15failure_messageEv.exit59, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit59

_ZNK7testing15AssertionResult15failure_messageEv.exit59: ; preds = %bb.ac, %bb.ab
  %i.df = phi ptr [ %i.de, %bb.ac ], [ @.str.204, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 205, ptr noundef %i.df)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit59
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dg = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !150
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit65

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit59
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn15 = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %i.dl, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.dn = load ptr, ptr %12, align 8, !tbaa !210  ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i63, label %_ZN7testing7MessageD2Ev.exit65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.ai
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %bb.ai, %bb.af
  %.pn15.pn = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %.pn15, %bb.ai ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #37
  br label %bb.ao

bb.aj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit57, %_ZN7testing7MessageD2Ev.exit62
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !183 ; 4 uses
  %.not.i.i66 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i66, label %_ZN7testing15AssertionResultD2Ev.exit70, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !135 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.ak
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !138
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit70

_ZN7testing15AssertionResultD2Ev.exit70:          ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.dy = load i64, ptr %6, align 8               ; 3 uses
  %i.dz = and i64 %i.dy, 255
  %i.ea = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %i.ea)
  %i.eb = and i64 %i.dy, 254
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  %i.ed = icmp ult i64 %i.dy, 562949953552384
  call void @llvm.assume(i1 %i.ed)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  store ptr %6, ptr %1, align 8, !tbaa !456
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.an

.noexc.i:                                         ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %i.ee = load i64, ptr %6, align 8               ; 2 uses
  %i.ef = and i64 %i.ee, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ef    ; 4 uses
  %i.eg = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.eh = or i64 %i.eg, %notmask.i.i.i.i.i.i
  %i.ei = icmp eq i64 %i.eh, -1
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.ek)
  %i.el = and i64 %i.ee, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.el, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.em = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_5AllocIcEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull %i.i, i64 noundef %i.em, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i, %bb.am
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.al, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.ao:                                            ; preds = %_ZN7testing7MessageD2Ev.exit65, %bb.z
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %i.db, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.y
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.ao ], [ %i.da, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.x
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.ap ], [ %.pn.pn.pn, %bb.x ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_5EraseINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.gc = load ptr, ptr %16, align 8, !tbaa !135
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !139
  store i64 %i.ge, ptr %15, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.gc, ptr %i.gf, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 2, i64 92, ptr nonnull @.str.82, i32 noundef 239, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %15)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  %i.gg = load ptr, ptr %16, align 8, !tbaa !135  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !138
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.gl = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i121, label %_ZN7testing7MessageD2Ev.exit123, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !150
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit123

_ZN7testing7MessageD2Ev.exit123:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.gp = load ptr, ptr %i.ga, align 8, !tbaa !183 ; 4 uses
  %.not.i.i.i124 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i124, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit123
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.av
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !138
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit123, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.cm

bb.aw:                                            ; preds = %bb.aq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.ax:                                            ; preds = %bb.ar
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.ay:                                            ; preds = %bb.as
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.at
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn56 = phi { ptr, i32 } [ %i.gy, %bb.az ], [ %i.gx, %bb.ay ] ; 2 uses
  %i.gz = load ptr, ptr %16, align 8, !tbaa !135  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.ba
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !138
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.ax
  %.pn56.pn = phi { ptr, i32 } [ %i.gw, %bb.ax ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn56, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.he = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.he, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !150
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.aw
  %.pn56.pn.pn = phi { ptr, i32 } [ %i.gv, %bb.aw ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn56.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ct

bb.bb:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 1, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not5.i.i = icmp eq ptr %.sroa.0206.0.lcssa, %.sroa.10211.0.lcssa ; 2 uses
  br i1 %.not5.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, label %.lr.ph.i.i136

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread: ; preds = %bb.bb
  store i64 0, ptr %i.b, align 8, !tbaa !137
  br label %bb.bd

.lr.ph.i.i136:                                    ; preds = %bb.bb
  %i.hi = load <2 x i32>, ptr %.sroa.6.0.i109, align 4 ; 3 uses
  %i.hj = add i64 %.sroa.10211.0.lcssa402, -8
  %i.hk = sub i64 %i.hj, %.sroa.0206.0.lcssa401   ; 2 uses
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = add nuw nsw i64 %i.hl, 1                ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.hk, 24
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph.i.i136
  %n.vec406 = and i64 %i.hm, 4611686018427387900  ; 3 uses
  %i.hn = shl i64 %n.vec406, 3
  %i.ho = getelementptr i8, ptr %.sroa.0206.0.lcssa, i64 %i.hn
  %broadcast.splat = shufflevector <2 x i32> %i.hi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat408 = shufflevector <2 x i32> %i.hi, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %vector.ph405
  %index410 = phi i64 [ 0, %vector.ph405 ], [ %index.next418, %vector.body409 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph405 ], [ %i.hz, %vector.body409 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph405 ], [ %i.ia, %vector.body409 ]
  %i.hp = shl i64 %index410, 3                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %.sroa.0206.0.lcssa, i64 %i.hp
  %i.hq = getelementptr i8, ptr %.sroa.0206.0.lcssa, i64 %i.hp
  %next.gep413 = getelementptr i8, ptr %i.hq, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep412, align 4 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec414 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec415 = load <4 x i32>, ptr %next.gep413, align 4 ; 2 uses
  %strided.vec416 = shufflevector <4 x i32> %wide.vec415, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec417 = shufflevector <4 x i32> %wide.vec415, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.hr = icmp eq <2 x i32> %strided.vec, %broadcast.splat
  %i.hs = icmp eq <2 x i32> %strided.vec416, %broadcast.splat
  %i.ht = icmp eq <2 x i32> %strided.vec414, %broadcast.splat408
  %i.hu = icmp eq <2 x i32> %strided.vec417, %broadcast.splat408
  %i.hv = select <2 x i1> %i.hr, <2 x i1> %i.ht, <2 x i1> zeroinitializer
  %i.hw = select <2 x i1> %i.hs, <2 x i1> %i.hu, <2 x i1> zeroinitializer
  %i.hx = zext <2 x i1> %i.hv to <2 x i64>
  %i.hy = zext <2 x i1> %i.hw to <2 x i64>
  %i.hz = add <2 x i64> %vec.phi, %i.hx           ; 2 uses
  %i.ia = add <2 x i64> %vec.phi411, %i.hy        ; 2 uses
  %index.next418 = add nuw i64 %index410, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next418, %n.vec406
  br i1 %i.ib, label %middle.block419, label %vector.body409, !llvm.loop !15844

middle.block419:                                  ; preds = %vector.body409
  %bin.rdx = add <2 x i64> %i.ia, %i.hz
  %i.ic = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n420 = icmp eq i64 %i.hm, %n.vec406
  br i1 %cmp.n420, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph.i.i136, %middle.block419
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i136 ], [ %i.ic, %middle.block419 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.0206.0.lcssa, %.lr.ph.i.i136 ], [ %i.ho, %middle.block419 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph403 ], [ %.07.i.i.ph, %scalar.ph403.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.ig, %scalar.ph403 ], [ %.sroa.03.06.i.i.ph, %scalar.ph403.preheader ] ; 2 uses
  %i.id = load <2 x i32>, ptr %.sroa.03.06.i.i, align 4
  %i.ie = icmp eq <2 x i32> %i.id, %i.hi
  %25 = freeze <2 x i1> %i.ie
  %26 = bitcast <2 x i1> %25 to i2
  %27 = icmp eq i2 %26, -1
  %i.if = zext i1 %27 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.if ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.ig, %.sroa.10211.0.lcssa
  br i1 %.not.i.i137, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph403, !llvm.loop !15845

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit: ; preds = %scalar.ph403, %middle.block419
  %spec.select.i.i.lcssa = phi i64 [ %i.ic, %middle.block419 ], [ %spec.select.i.i, %scalar.ph403 ] ; 2 uses
  store i64 %spec.select.i.i.lcssa, ptr %i.b, align 8, !tbaa !137
  %i.ih = icmp eq i64 %spec.select.i.i.lcssa, 1
  br i1 %i.ih, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.be

bb.bd:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.342, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.be

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ii = load i8, ptr %17, align 8, !tbaa !220, !range !129, !noundef !130
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.bo, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.bv

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.il = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !183 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.im, null
  br i1 %.not.i.i140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit141, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit141

_ZNK7testing15AssertionResult15failure_messageEv.exit141: ; preds = %bb.bh, %bb.bg
  %i.io = phi ptr [ %i.in, %bb.bh ], [ @.str.204, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 240, ptr noundef %i.io)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.ip = load ptr, ptr %18, align 8, !tbaa !210  ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.bj
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !150
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(128) %i.ip) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit144

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit147

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #37
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn62 = phi { ptr, i32 } [ %i.iv, %bb.bm ], [ %i.iu, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.iw = load ptr, ptr %18, align 8, !tbaa !210  ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.bn
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !150
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(128) %i.iw) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %bb.bn, %bb.bk
  %.pn62.pn = phi { ptr, i32 } [ %i.it, %bb.bk ], [ %.pn62, %bb.bn ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #37
  br label %bb.bv

bb.bo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit144
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !183 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !135 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.bp
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !138
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.jh = ptrtoint ptr %.sroa.10211.0.lcssa to i64
  %i.ji = ptrtoint ptr %.sroa.0206.0.lcssa to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 5 uses
  %i.jk = icmp ugt i64 %i.jj, 9223372036854775800
  br i1 %i.jk, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit152
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.218) #39
          to label %.noexc155 unwind label %bb.bw

.noexc155:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit152
  br i1 %.not5.i.i, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr null, i64 %i.jj
  br label %bb.bq

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #42
          to label %.noexc156 unwind label %bb.bw ; 4 uses

.noexc156:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jj
  %i.jo = and i64 %i.jj, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jm, ptr align 4 %.sroa.0206.0.lcssa, i64 %i.jo, i1 false), !noalias !15856
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.jm, i64 %i.jo
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc156
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.jm, %.noexc156 ]
  %.sink.i = phi ptr [ %i.jl, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.jn, %.noexc156 ]
  %.0.lcssa.i.i.i.i.i.i.i.i154 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc156 ]
  store i32 3, ptr %21, align 8, !tbaa !591, !alias.scope !15857
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.jp, align 8, !tbaa !585, !alias.scope !15857
  %i.jq = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i154, ptr %i.jq, align 8, !tbaa !592, !alias.scope !15857
  %i.jr = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.jr, align 8, !tbaa !586, !alias.scope !15857
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZN4absl12lts_2026052618container_internal5itemsINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEESt6vectorIS7_INT_8key_typeENSD_11mapped_typeEESaISG_EERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.434") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_32UnorderedElementsAreArrayMatcherISt4pairIKiiEEEEclISt6vectorIS3_IiiESaISA_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.301, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.js = load ptr, ptr %22, align 8, !tbaa !357  ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit158, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jt = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !359
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_8EraseKeyINS0_13flat_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
bb.ae:                                            ; preds = %.noexc86
  %i.dg = load i64, ptr %3, align 8
  %i.dh = and i64 %i.dg, 254
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit unwind label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.de, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit unwind label %bb.ak

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit: ; preds = %.noexc86, %bb.af, %bb.ag
  %.0.i = phi i64 [ 0, %.noexc86 ], [ 1, %bb.af ], [ 1, %bb.ag ] ; 2 uses
  store i64 %.0.i, ptr %i.b, align 8, !tbaa !137
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !166, !noalias !16230
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp eq i64 %.0.i, %i.dk
  br i1 %i.dl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ak

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.344, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ak

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.dm = load i8, ptr %12, align 8, !tbaa !220, !range !129, !noundef !130
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.au, label %bb.al

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit75
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit80 ], [ %.pn36.pn.pn, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.cp

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ba

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !183 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i91, label %_ZNK7testing15AssertionResult15failure_messageEv.exit92, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit92

_ZNK7testing15AssertionResult15failure_messageEv.exit92: ; preds = %bb.an, %bb.am
  %i.ds = phi ptr [ %i.dr, %bb.an ], [ @.str.204, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 262, ptr noundef %i.ds)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.dt = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.ap
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !150
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(128) %i.dt) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit98

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn44 = phi { ptr, i32 } [ %i.dz, %bb.as ], [ %i.dy, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.ea = load ptr, ptr %13, align 8, !tbaa !210  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.at
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !150
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %bb.at, %bb.aq
  %.pn44.pn = phi { ptr, i32 } [ %i.dx, %bb.aq ], [ %.pn44, %bb.at ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  br label %bb.ba

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit95
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !183 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !135 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.av
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !138
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 0, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.el = load i64, ptr %3, align 8               ; 3 uses
  %i.em = icmp ult i64 %i.el, 562949953552384
  call void @llvm.assume(i1 %i.em)
  %.not.i.i104 = icmp samesign ult i64 %i.el, 131072
  br i1 %.not.i.i104, label %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread, label %bb.aw, !prof !169

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit103
  %i.en = and i64 %i.el, 254
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.eo, label %.lr.ph.i.i105, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ep, align 8, !tbaa !138, !nonnull !130, !noundef !130 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.eq, align 8, !tbaa !138 ; 2 uses
  %i.er = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !174
  %i.es = icmp slt i8 %i.er, -1
  br i1 %i.es, label %.lr.ph.i.i, label %.lr.ph.i.i105

.lr.ph.i.i:                                       ; preds = %bb.ax, %.lr.ph.i.i
  %i.et = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.ax ]
  %i.eu = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ax ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 1, !tbaa !174
  %i.ey = icmp slt i8 %i.ex, -1
  br i1 %i.ey, label %.lr.ph.i.i, label %.lr.ph.i.i105, !llvm.loop !40

_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread: ; preds = %_ZN7testing15AssertionResultD2Ev.exit103
  store i64 0, ptr %i.d, align 8, !tbaa !137
  br label %bb.ay

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i, %bb.aw, %bb.ax
  %.sroa.6.0.i.ph = phi ptr [ %i.ep, %bb.aw ], [ %.sroa.0.0.copyload.i.i.i, %bb.ax ], [ %i.ew, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.aw ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ax ], [ %i.ev, %.lr.ph.i.i ]
  %i.ez = load <2 x i32>, ptr %.sroa.0169.2, align 4
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %.lr.ph.i.i105
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i105 ], [ %spec.select.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.7.09.i.i = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.i.i105 ], [ %.sroa.7.1.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.sroa.03.08.i.i = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.i.i105 ], [ %.sroa.03.1.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.fa = load <2 x i32>, ptr %.sroa.7.09.i.i, align 4
  %i.fb = icmp eq <2 x i32> %i.fa, %i.ez
  %23 = freeze <2 x i1> %i.fb
  %24 = bitcast <2 x i1> %23 to i2
  %25 = icmp eq i2 %24, -1
  %i.fc = zext i1 %25 to i64
  %spec.select.i.i = add nuw nsw i64 %.010.i.i, %i.fc ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 1 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i, i64 8 ; 2 uses
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !174 ; 2 uses
  %i.fg = icmp slt i8 %i.ff, -1
  br i1 %i.fg, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i, %.lr.ph.i.i.i.i
  %i.fh = phi ptr [ %i.fk, %.lr.ph.i.i.i.i ], [ %i.fe, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i.i.i ], [ %i.fd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fl = load i8, ptr %i.fj, align 1, !tbaa !174 ; 2 uses
  %i.fm = icmp slt i8 %i.fl, -1
  br i1 %i.fm, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !40

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i
  %.sroa.03.1.i.i = phi ptr [ %i.fd, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.fj, %.lr.ph.i.i.i.i ]
  %.sroa.7.1.i.i = phi ptr [ %i.fe, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.fk, %.lr.ph.i.i.i.i ]
  %i.fn = phi i8 [ %i.ff, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.fl, %.lr.ph.i.i.i.i ]
  %i.fo = icmp eq i8 %i.fn, -1
  br i1 %i.fo, label %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i, !prof !169, !llvm.loop !16221

_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !137
  %i.fp = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.fp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread, %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bb

bb.az:                                            ; preds = %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.345, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bb

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.fq = load i8, ptr %15, align 8, !tbaa !220, !range !129, !noundef !130
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.bl, label %bb.bc

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98, %bb.ak
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit98 ], [ %i.do, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.cp

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.bs

bb.bc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !183 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i109, label %_ZNK7testing15AssertionResult15failure_messageEv.exit110, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !135
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit110

_ZNK7testing15AssertionResult15failure_messageEv.exit110: ; preds = %bb.be, %bb.bd
  %i.fw = phi ptr [ %i.fv, %bb.be ], [ @.str.204, %bb.bd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 263, ptr noundef %i.fw)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.fx = load ptr, ptr %16, align 8, !tbaa !210  ; 3 uses
  %.not.i.i111 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i111, label %_ZN7testing7MessageD2Ev.exit113, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112: ; preds = %bb.bg
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !150
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit113

_ZN7testing7MessageD2Ev.exit113:                  ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit116

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn48 = phi { ptr, i32 } [ %i.gd, %bb.bj ], [ %i.gc, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.ge = load ptr, ptr %16, align 8, !tbaa !210  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.bk
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !150
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(128) %i.ge) #37, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115, %bb.bk, %bb.bh
  %.pn48.pn = phi { ptr, i32 } [ %i.gb, %bb.bh ], [ %.pn48, %bb.bk ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #37
  br label %bb.bs

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit113
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !183 ; 4 uses
  %.not.i.i117 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i117, label %_ZN7testing15AssertionResultD2Ev.exit121, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !135 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118: ; preds = %bb.bm
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !138
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit121

_ZN7testing15AssertionResultD2Ev.exit121:         ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0169.2, i64 8 ; 2 uses
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.ao, %i.gq                    ; 5 uses
  %i.gs = icmp ugt i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.218) #39
          to label %.noexc124 unwind label %bb.bt

.noexc124:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  %.not.i.i.i.i.i122 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, %.sroa.0169.2
  br i1 %.not.i.i.i.i.i122, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr null, i64 %i.gr
  br label %bb.bn

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.gu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #42
          to label %.noexc125 unwind label %bb.bt ; 4 uses

.noexc125:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gr
  %i.gw = and i64 %i.gr, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gu, ptr nonnull align 4 %i.gp, i64 %i.gw, i1 false), !noalias !16231
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.gu, i64 %i.gw
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc125
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.gu, %.noexc125 ]
  %.sink.i = phi ptr [ %i.gt, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.gv, %.noexc125 ]
  %.0.lcssa.i.i.i.i.i.i.i.i123 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc125 ]
  store i32 3, ptr %19, align 8, !tbaa !591, !alias.scope !16232
  %i.gx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.gx, align 8, !tbaa !585, !alias.scope !16232
end_hunk_9
