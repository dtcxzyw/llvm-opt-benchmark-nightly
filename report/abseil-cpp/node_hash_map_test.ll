Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/node_hash_map_test?download=true
inline.NumInlined: 21966
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !379, !alias.scope !2144
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !379, !alias.scope !2143
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !92, !alias.scope !2144
  store i64 %i.an, ptr %i.al, align 8, !tbaa !92, !alias.scope !2143
  store ptr null, ptr %i.aj, align 8, !tbaa !379, !alias.scope !2144
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKSt4pairIiiEEE, i64 16), ptr %.012.i.i.i18, align 8, !tbaa !104, !alias.scope !2143
  %i.ao = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !104, !alias.scope !2144
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !2145
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i19) #33, !noalias !2143, !inline_history !2135
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2136

_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %.lr.ph.i.i.i17 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !376
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #36
  br label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKSt4pairIiiEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !385
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !375
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !376
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MatcherIRKSt4pairIiiEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, i64 16), ptr %0, align 8, !tbaa !104
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !381
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !92
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit unwind label %bb.d, !inline_history !27

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32, !inline_history !382
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !386
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.180, i32 noundef 252)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.181, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !386
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, i64 16), ptr %0, align 8, !tbaa !104
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !381
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !379
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !381
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !92
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit unwind label %bb.d, !inline_history !27

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32, !inline_history !382
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE19MatchAndExplainImplINS6_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS6_S5_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = load <2 x i32>, ptr %i.a, align 8
  %i.d = icmp eq <2 x i32> %i.b, %i.c             ; 2 uses
  %3 = extractelement <2 x i1> %i.d, i64 0
  %4 = extractelement <2 x i1> %i.d, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE12DescribeImplINS6_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEvRKS6_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.183, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.184, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.182, i64 noundef 1) ; 0 uses
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
  store i8 40, ptr %i.b, align 1, !tbaa !92
  %i.c = load ptr, ptr %1, align 8, !tbaa !104
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !261
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
  %i.k = load i32, ptr %0, align 4, !tbaa !139
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.k) ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.199, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !139
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.o) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !92
  %i.q = load ptr, ptr %1, align 8, !tbaa !104
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !261
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
  %i.a = load ptr, ptr %4, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !92
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !241
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !104
  %.not63101 = icmp eq ptr %2, %3
  br i1 %.not63101, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge, label %.lr.ph107

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.._crit_edge108_crit_edge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre142 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !375
  %.phi.trans.insert143 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre144 = load ptr, ptr %.phi.trans.insert143, align 8, !tbaa !385
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
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !241
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing13PrintToStringISt4pairIiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.059.0105)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !101  ; 6 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !102
  %.not.i.i31 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !90
  %i.u = load ptr, ptr %8, align 8, !tbaa !89     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.n, align 8, !tbaa !93   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.y, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.u, ptr %i.r, align 8, !tbaa !89
  %i.z = load i64, ptr %i.m, align 8, !tbaa !92
  store i64 %i.z, ptr %i.t, align 8, !tbaa !92
  %.pre = load i64, ptr %i.n, align 8, !tbaa !93
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !93
  store ptr %i.m, ptr %8, align 8, !tbaa !89
  store i64 0, ptr %i.n, align 8, !tbaa !93
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:_ZN4absl12lts_2026052613node_hash_mapIiiNS0_18container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEECI2NS2_12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJS3_S4_S9_EEEEmRKS3_RKS4_RKS9_.exit.preheader
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #33
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn48 = phi { ptr, i32 } [ %i.ef, %bb.br ], [ %i.ee, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  %i.eg = load ptr, ptr %24, align 8, !tbaa !151  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.bs
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, %bb.bs, %bb.bp
  %.pn48.pn = phi { ptr, i32 } [ %i.ed, %bb.bp ], [ %.pn48, %bb.bs ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #33
  br label %bb.bw

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613node_hash_mapIiiNS4_18container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit102
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !149 ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.el, null
  br i1 %.not.i.i106, label %_ZN7testing15AssertionResultD2Ev.exit110, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !89 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107: ; preds = %bb.bu
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !92
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit110

_ZN7testing15AssertionResultD2Ev.exit110:         ; preds = %bb.bt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !463 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !464
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #36
  br label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit

_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit110, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.bj
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.du, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %.body

.body:                                            ; preds = %bb.af, %bb.av, %bb.bi, %bb.bw, %.body.i.i.i
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.t, %.body.i.i.i ], [ %.pn48.pn.pn, %bb.bw ], [ %.pn44.pn.pn, %bb.bi ], [ %.pn37.pn.pn, %bb.av ], [ %.pn31.pn.pn, %bb.af ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bx

bb.bx:                                            ; preds = %bb.m, %.body
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.m ], [ %.pn48.pn.pn.pn.pn, %.body ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  %.pre117 = load ptr, ptr %i.e, align 8, !tbaa !463 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not.i.i.i.i111 = icmp eq ptr %.pre117, null
  br i1 %.not.i.i.i.i111, label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit112, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !464
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %.pre117 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %.pre117, i64 noundef %i.fb) #36
  br label %_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit112

_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvED2Ev.exit112: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn54.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyIiiEEJNS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiiEEEEEC1ERKSE_RKSD_EUlPvPKvE_vJSJ_SL_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !310
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38 ; 2 uses
  %i.c = load i64, ptr %i.a, align 4
  store i64 %i.c, ptr %i.b, align 4
  store ptr %i.b, ptr %1, align 8, !tbaa !310
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperEQIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
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
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit, label %bb.c, !prof !157

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.r, 254
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 8 ; 2 uses
  br i1 %i.t, label %.lr.ph.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !92, !nonnull !84, !noundef !84 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !92 ; 2 uses
  %i.w = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 1, !tbaa !167
  %i.x = icmp slt i8 %i.w, -1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.lr.ph.i.preheader

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ]
  %i.z = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !167
  %i.ad = icmp slt i8 %i.ac, -1
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !39

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.c
  %.sroa.9.040.i.ph = phi ptr [ %i.u, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.sroa.023.039.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sroa.9.040.i = phi ptr [ %.sroa.9.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.9.040.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.023.039.i = phi ptr [ %.sroa.023.1.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ], [ %.sroa.023.039.i.ph, %.lr.ph.i.preheader ]
  %i.ae = load ptr, ptr %.sroa.9.040.i, align 8, !tbaa !310 ; 2 uses
  %i.af = tail call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(8) %i.ae) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = extractvalue { ptr, ptr } %i.af, 1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !310
  %i.ak = load <2 x i32>, ptr %i.aj, align 4
  %i.al = load <2 x i32>, ptr %i.ae, align 4
  %i.am = icmp eq <2 x i32> %i.ak, %i.al          ; 2 uses
  %5 = extractelement <2 x i1> %i.am, i64 0
  %6 = extractelement <2 x i1> %i.am, i64 1
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.9.040.i, i64 8 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !167 ; 2 uses
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i.i.i18.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i18.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i18.i
  %i.ar = phi ptr [ %i.au, %.lr.ph.i.i.i18.i ], [ %i.ao, %bb.f ]
  %i.as = phi ptr [ %i.at, %.lr.ph.i.i.i18.i ], [ %i.an, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !tbaa !167 ; 2 uses
  %i.aw = icmp slt i8 %i.av, -1
  br i1 %i.aw, label %.lr.ph.i.i.i18.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !39

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i18.i, %bb.f
  %.sroa.023.1.i = phi ptr [ %i.an, %bb.f ], [ %i.at, %.lr.ph.i.i.i18.i ]
  %.sroa.9.1.i = phi ptr [ %i.ao, %bb.f ], [ %i.au, %.lr.ph.i.i.i18.i ]
  %i.ax = phi i8 [ %i.ap, %bb.f ], [ %i.av, %.lr.ph.i.i.i18.i ]
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit, label %.lr.ph.i, !prof !157

_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %bb.b
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.g

.loopexit:                                        ; preds = %bb.e, %.lr.ph.i, %bb.a
  tail call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4absl12lts_2026052618container_internaleqERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEESE_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZN7testing13PrintToStringIN4absl12lts_2026052613node_hash_mapIiiNS2_18container_internal19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052613node_hash_mapIiiNS2_18container_internal19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !92
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.f = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !92
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052613node_hash_mapIiiNS3_18container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEEESD_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !92
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.r = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !92
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE4findIiEENSC_8iteratorERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE10find_smallIiEENSC_8iteratorERS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !310
  %i.g = load i32, ptr %i.f, align 4, !tbaa !139
  %i.h = load i32, ptr %1, align 4, !tbaa !139
  %i.i = icmp eq i32 %i.g, %i.h
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE10find_smallIiEENSC_8iteratorERS9_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !92 ; 4 uses
  %i.k = and i64 %i.a, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.k
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.l = lshr i64 %i.a, 8
  %i.m = and i64 %i.l, 255
  %i.n = load i32, ptr %1, align 4, !tbaa !139    ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw nsw i128 %i.q, 8779197792823184629 ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64                   ; 2 uses
  %i.v = xor i64 %i.m, %i.u
  %i.w = xor i64 %notmask.i.i.i.i.i, -1           ; 2 uses
  %i.x = lshr i64 %i.u, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.z, align 8, !tbaa !92 ; 3 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7 = phi i64 [ %i.v, %bb.d ], [ %i.ba, %bb.g ]
  %.sroa.13.0.i = phi i64 [ 0, %bb.d ], [ %i.az, %bb.g ]
  %.sroa.628.0.i = and i64 %.pn.i7, %i.w          ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.628.0.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !92 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ah) #39, !srcloc !163 ; 2 uses
  %.not50.i = icmp eq i32 %i.ai, 0
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.019.051.i = phi i32 [ %i.au, %bb.f ], [ %i.ai, %bb.e ] ; 3 uses
  %i.aj = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.051.i, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add nuw i64 %.sroa.628.0.i, %i.ak
  %i.am = and i64 %i.al, %i.w                     ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !310
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.aq = icmp eq i32 %i.ap, %i.n
  br i1 %i.aq, label %.thread36.i, label %bb.f, !prof !165

.thread36.i:                                      ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i) ]
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_6InsertINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i66, ptr %i.ct, align 8, !tbaa !475, !alias.scope !5708
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i56

bb.u:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.783") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc69 unwind label %bb.y

.noexc69:                                         ; preds = %bb.u
  %.phi.trans.insert.i.i.i.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i.i.i.i.i.i55 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i54, align 8, !tbaa !475, !range !83, !alias.scope !5709
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i56

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i56: ; preds = %.noexc69, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i63
  %i.cu = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i66, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i63 ], [ %.pre.i.i.i.i.i.i.i55, %.noexc69 ]
  %i.cv = trunc nuw i8 %i.cu to i1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i58 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i57, align 8 ; 2 uses
  br i1 %i.cv, label %bb.v, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  br label %.thread114

bb.v:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i56
  %i.cw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71 unwind label %bb.y ; 2 uses

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71: ; preds = %bb.v
  %i.cx = load <2 x i32>, ptr %8, align 8, !tbaa !139, !noalias !5710
  store <2 x i32> %i.cx, ptr %i.cw, align 4, !tbaa !139
  store ptr %i.cw, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i58, align 8, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !531, !range !83 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 %.pre, ptr %10, align 8, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !251
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.cz, align 8, !tbaa !253
  %i.da = icmp eq i8 %.pre, 0
  br i1 %i.da, label %.thread114, label %bb.z

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit50, %bb.d
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit50 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bb

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ba

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %14, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !93
  store i64 %i.df, ptr %13, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 55, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %13)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  %i.dh = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ad
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !92
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dm = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i77, label %bb.aj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #33, !inline_history !4
  br label %bb.aj

bb.ae:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.af:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ag:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn24 = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %i.ds, %bb.ag ] ; 2 uses
  %i.du = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ai
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !92
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.af
  %.pn24.pn = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn24, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dz = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.ae
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ae ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn24.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ba

bb.aj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %.pr113 = load ptr, ptr %i.cy, align 8, !tbaa !149 ; 4 uses
  %.not.i.i.i86 = icmp eq ptr %.pr113, null
  br i1 %.not.i.i.i86, label %.thread114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %.pr113, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pr113, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87: ; preds = %bb.ak
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !92
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87
  call void @_ZdlPvm(ptr noundef nonnull %.pr113, i64 noundef 32) #36
  br label %.thread114

.thread114:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, %bb.aj
  %.sroa.5.0.copyload149 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i.i58, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71.thread ], [ %.sroa.5.0.copyload, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_Li0EEES8_INSC_8iteratorEbERKT_.exit71 ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88 ], [ %.sroa.5.0.copyload, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.ei = load ptr, ptr %.sroa.5.0.copyload149, align 8, !tbaa !310 ; 2 uses
  %i.ej = load <2 x i32>, ptr %2, align 8, !noalias !5711
  %i.ek = load <2 x i32>, ptr %i.ei, align 4, !noalias !5711
  %i.el = icmp eq <2 x i32> %i.ej, %i.ek          ; 2 uses
  %18 = extractelement <2 x i1> %i.el, i64 0
  %19 = extractelement <2 x i1> %i.el, i64 1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread114
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

bb.am:                                            ; preds = %.thread114
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ei)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93: ; preds = %bb.al, %bb.am
  %i.em = load i8, ptr %15, align 8, !tbaa !148, !range !83, !noundef !84
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ax, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ao:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !149 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.aq, %bb.ap
  %i.es = phi ptr [ %i.er, %bb.aq ], [ @.str.160, %bb.ap ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 56, ptr noundef %i.es)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.et = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.et, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.as
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ax

bb.at:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn28 = phi { ptr, i32 } [ %i.ez, %bb.av ], [ %i.ey, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.fa = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.aw
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !104
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(128) %i.fa) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.aw, %bb.at
  %.pn28.pn = phi { ptr, i32 } [ %i.ex, %bb.at ], [ %.pn28, %bb.aw ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #33
  br label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93, %_ZN7testing7MessageD2Ev.exit98
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !149 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.ay
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.an
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.eo, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit85, %bb.y, %bb.x
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.az ], [ %.pn24.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %i.dc, %bb.y ], [ %i.db, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.w, %bb.b
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %bb.ba ], [ %.pn20.pn.pn, %bb.w ], [ %i.l, %bb.b ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZN7testing13PrintToStringISt4pairIKiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZN7testing13PrintToStringISt4pairIKiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageISt4pairIKiiES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageISt4pairIKiiES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageISt4pairIKiiES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !92
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.f = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !92
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageISt4pairIKiiES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %1 = alloca %"struct.std::pair.394", align 8    ; 10 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %3 = alloca %"class.absl::lts_20260526::node_hash_map.675", align 8 ; 11 uses
  %4 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.std::pair.394", align 4   ; 6 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  store i64 1, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.c, ptr %i.g, align 8, !tbaa !430
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.e, ptr %i.h, align 8, !tbaa !432
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !434
  %i.j = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSC_8iteratorENSC_14const_iteratorESH_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr null, ptr undef, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.m = icmp ne ptr %i.k, null                   ; 2 uses
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %4, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !251
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.p, align 8, !tbaa !253
  br i1 %i.m, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %8, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !93
  store i64 %i.t, ptr %7, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 65, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  %i.v = load ptr, ptr %8, align 8, !tbaa !89     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !92
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.aa = load ptr, ptr %5, align 8, !tbaa !151   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #33, !inline_history !4
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.j:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.m
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !92
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.an = load ptr, ptr %5, align 8, !tbaa !151   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.an, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.bj

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %.pr = load ptr, ptr %i.o, align 8, !tbaa !149  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %.pr, align 8, !tbaa !89  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.au = load i64, ptr %i.as, align 8, !tbaa !92
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #36
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !310 ; 2 uses
  %i.ax = load <2 x i32>, ptr %1, align 8, !noalias !5802
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !noalias !5802
  %i.az = icmp eq <2 x i32> %i.ax, %i.ay          ; 2 uses
  %21 = extractelement <2 x i1> %i.az, i64 0
  %22 = extractelement <2 x i1> %i.az, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %.thread
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.aw)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.ba = load i8, ptr %9, align 8, !tbaa !148, !range !83, !noundef !84
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !149 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.be, null
  br i1 %.not.i.i47, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bg = phi ptr [ %i.bf, %bb.u ], [ @.str.160, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 66, ptr noundef %i.bg)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bh = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.w
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.bh) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn25 = phi { ptr, i32 } [ %i.bn, %bb.z ], [ %i.bm, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bo = load ptr, ptr %10, align 8, !tbaa !151  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %bb.aa, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %i.bl, %bb.x ], [ %.pn25, %bb.aa ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #33
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit50
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !149 ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i54, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !89 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !92
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.bz = load i32, ptr %i.a, align 16, !tbaa !139
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !139
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw i64 %i.cc, 32
  %i.ce = zext i32 %i.bz to i128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !139
  %i.ch = zext i32 %i.cg to i64
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = zext i64 %i.ci to i128
  %i.ck = shl nuw i128 %i.ce, 96
  %i.cl = shl nuw nsw i128 %i.cj, 32              ; 2 uses
  %i.cm = trunc i128 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !139
  %i.cp = zext i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cm, %i.cp
  %.masked.i.i.i.i.i.i.i = and i128 %i.cl, 79228162495817593519834398720
  %i.cr = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.ck
  %i.cs = zext i64 %i.cq to i128
  %i.ct = add nuw nsw i128 %i.cs, 1442695040888963407 ; 2 uses
  %i.cu = add i128 %i.cr, %i.ct
  %i.cv = lshr i128 %i.cu, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cv to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cw = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.cx = shl nuw i128 %i.cw, 64
  %i.cy = and i128 %i.ct, 18446744073709551615
  %i.cz = or disjoint i128 %i.cx, %i.cy
  %i.da = mul i128 %i.cz, 47026247687942121848144207491837523525
  %i.db = add i128 %i.da, 1442695040888963407     ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.dc to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.dd = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.de = shl nuw i128 %i.dd, 64
  %i.df = and i128 %i.db, 18446744073709551615
  %i.dg = or disjoint i128 %i.de, %i.df
  %i.dh = mul i128 %i.dg, 47026247687942121848144207491837523525
  %i.di = add i128 %i.dh, 1442695040888963407     ; 2 uses
  %i.dj = trunc i128 %i.di to i64
  %i.dk = lshr i128 %i.di, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dk to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.dl = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dm = xor i64 %.narrow.i.i.i.i.i.i, %i.dj     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dm, i64 %i.dm, i64 %i.dl)
  %i.dn = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = load i32, ptr %1, align 8, !tbaa !139
  store i32 %i.dp, ptr %12, align 4, !tbaa !371
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !372
  %i.dr = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSC_8iteratorENSC_14const_iteratorESH_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.du = icmp ne ptr %i.ds, null                 ; 2 uses
  %i.dv = zext i1 %i.du to i8
  store i8 %i.dv, ptr %13, align 8, !tbaa !148
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !251
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 1, ptr %i.dx, align 8, !tbaa !253
  br i1 %i.du, label %.thread112, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit53, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %i.bc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bj

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr %17, align 8, !tbaa !89
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !93
  store i64 %i.eb, ptr %16, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dz, ptr %i.ec, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 69, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #33
  %i.ed = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.al
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !92
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.ei = load ptr, ptr %14, align 8, !tbaa !151  ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i63, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !104
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #33, !inline_history !4
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit71

bb.an:                                            ; preds = %bb.ai
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.ao:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #33
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.ep, %bb.ap ], [ %i.eo, %bb.ao ] ; 2 uses
  %i.eq = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.aq
  %i.et = load i64, ptr %i.er, align 8, !tbaa !92
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.an
  %.pn29.pn = phi { ptr, i32 } [ %i.en, %bb.an ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn29, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.ev = load ptr, ptr %14, align 8, !tbaa !151  ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !104
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.am
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.em, %bb.am ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.bi

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %.pr111 = load ptr, ptr %i.dw, align 8, !tbaa !149 ; 4 uses
  %.not.i.i.i72 = icmp eq ptr %.pr111, null
  br i1 %.not.i.i.i72, label %.thread112, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %.pr111, align 8, !tbaa !89 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pr111, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73: ; preds = %bb.as
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !92
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i74

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i74: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %.pr111, i64 noundef 32) #36
  br label %.thread112

.thread112:                                       ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i74, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  %i.fe = load ptr, ptr %i.dt, align 8, !tbaa !310 ; 2 uses
  %i.ff = load <2 x i32>, ptr %1, align 8, !noalias !5803
  %i.fg = load <2 x i32>, ptr %i.fe, align 4, !noalias !5803
  %i.fh = icmp eq <2 x i32> %i.ff, %i.fg          ; 2 uses
  %24 = extractelement <2 x i1> %i.fh, i64 0
  %25 = extractelement <2 x i1> %i.fh, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread112
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit79 unwind label %bb.av

bb.au:                                            ; preds = %.thread112
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fe)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit79 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit79: ; preds = %bb.at, %bb.au
  %i.fi = load i8, ptr %18, align 8, !tbaa !148, !range !83, !noundef !84
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !149 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i80, label %_ZNK7testing15AssertionResult15failure_messageEv.exit81, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit81

_ZNK7testing15AssertionResult15failure_messageEv.exit81: ; preds = %bb.ay, %bb.ax
  %i.fo = phi ptr [ %i.fn, %bb.ay ], [ @.str.160, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 70, ptr noundef %i.fo)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit81
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.fp = load ptr, ptr %19, align 8, !tbaa !151  ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i82, label %_ZN7testing7MessageD2Ev.exit84, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.ba
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !104
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit87

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit81
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #33
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn34 = phi { ptr, i32 } [ %i.fv, %bb.bd ], [ %i.fu, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.fw = load ptr, ptr %19, align 8, !tbaa !151  ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i85, label %_ZN7testing7MessageD2Ev.exit87, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.be
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !104
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit87

_ZN7testing7MessageD2Ev.exit87:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, %bb.be, %bb.bb
  %.pn34.pn = phi { ptr, i32 } [ %i.ft, %bb.bb ], [ %.pn34, %bb.be ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #33
  br label %bb.bh

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit79, %_ZN7testing7MessageD2Ev.exit84
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !149 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i88, label %_ZN7testing15AssertionResultD2Ev.exit92, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !89 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.bg
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !92
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit92

_ZN7testing15AssertionResultD2Ev.exit92:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.bh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit87, %bb.av
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit87 ], [ %i.fk, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN7testing7MessageD2Ev.exit71, %bb.ag
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bh ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit71 ], [ %i.dy, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.af, %_ZN7testing7MessageD2Ev.exit45, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bi ], [ %.pn25.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.q, %bb.c ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE6insertISA_TnNSt9enable_ifIXsr27IsDecomposableAndInsertableIRKT_EE5valueEiE4typeELi0EEENSC_8iteratorENSC_14const_iteratorESH_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.787", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair.783", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5831)
  %i.a = load i64, ptr %0, align 8, !noalias !5832 ; 4 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5834)
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 131072
  store i64 %i.e, ptr %0, align 8, !noalias !5835
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !310, !noalias !5835
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139, !noalias !5835
  %i.j = load i32, ptr %3, align 4, !tbaa !139, !noalias !5835
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !5835
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %4, align 8, !tbaa !472, !noalias !5835
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.m, align 8, !tbaa !191, !noalias !5835
  %i.n = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !5835 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !5835
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !92, !noalias !5835, !nonnull !84, !noundef !84
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !92, !noalias !5835
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 %.sink.i.i.i.i.i.i.i.i.i66, ptr %i.ct, align 8, !tbaa !475, !alias.scope !6428
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i56

bb.u:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.783") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc69 unwind label %bb.y

.noexc69:                                         ; preds = %bb.u
  %.phi.trans.insert.i.i.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i.i.i.i.i55 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i54, align 8, !tbaa !475, !range !83, !alias.scope !6429
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i56

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i56: ; preds = %.noexc69, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i63
  %i.cu = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i66, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i63 ], [ %.pre.i.i.i.i.i.i55, %.noexc69 ]
  %i.cv = trunc nuw i8 %i.cu to i1
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i57 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i58 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i57, align 8 ; 2 uses
  br i1 %i.cv, label %bb.v, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  br label %.thread114

bb.v:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i56
  %i.cw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71 unwind label %bb.y ; 2 uses

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71: ; preds = %bb.v
  %i.cx = load <2 x i32>, ptr %8, align 8, !tbaa !139, !noalias !6430
  store <2 x i32> %i.cx, ptr %i.cw, align 4, !tbaa !139
  store ptr %i.cw, ptr %.sroa.2.0.copyload.i.i.i.i.i.i58, align 8, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !531, !range !83 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 %.pre, ptr %10, align 8, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !251
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.cz, align 8, !tbaa !253
  %i.da = icmp eq i8 %.pre, 0
  br i1 %i.da, label %.thread114, label %bb.z

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit50, %bb.d
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit50 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bb

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ba

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %14, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !93
  store i64 %i.df, ptr %13, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 160, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %13)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  %i.dh = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ad
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !92
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dm = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i77, label %bb.aj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #33, !inline_history !4
  br label %bb.aj

bb.ae:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.af:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ag:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn24 = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %i.ds, %bb.ag ] ; 2 uses
  %i.du = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ai
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !92
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.af
  %.pn24.pn = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn24, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dz = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.ae
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ae ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn24.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ba

bb.aj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %.pr113 = load ptr, ptr %i.cy, align 8, !tbaa !149 ; 4 uses
  %.not.i.i.i86 = icmp eq ptr %.pr113, null
  br i1 %.not.i.i.i86, label %.thread114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %.pr113, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pr113, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87: ; preds = %bb.ak
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !92
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87
  call void @_ZdlPvm(ptr noundef nonnull %.pr113, i64 noundef 32) #36
  br label %.thread114

.thread114:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, %bb.aj
  %.sroa.5.0.copyload149 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i58, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71.thread ], [ %.sroa.5.0.copyload, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE7emplaceIJRSA_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES8_INSC_8iteratorEbEDpOSG_.exit71 ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88 ], [ %.sroa.5.0.copyload, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.ei = load ptr, ptr %.sroa.5.0.copyload149, align 8, !tbaa !310 ; 2 uses
  %i.ej = load <2 x i32>, ptr %2, align 8, !noalias !6431
  %i.ek = load <2 x i32>, ptr %i.ei, align 4, !noalias !6431
  %i.el = icmp eq <2 x i32> %i.ej, %i.ek          ; 2 uses
  %18 = extractelement <2 x i1> %i.el, i64 0
  %19 = extractelement <2 x i1> %i.el, i64 1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread114
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

bb.am:                                            ; preds = %.thread114
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ei)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93: ; preds = %bb.al, %bb.am
  %i.em = load i8, ptr %15, align 8, !tbaa !148, !range !83, !noundef !84
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ax, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ao:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !149 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.aq, %bb.ap
  %i.es = phi ptr [ %i.er, %bb.aq ], [ @.str.160, %bb.ap ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 161, ptr noundef %i.es)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.et = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.et, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.as
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ax

bb.at:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn28 = phi { ptr, i32 } [ %i.ez, %bb.av ], [ %i.ey, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.fa = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.aw
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !104
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(128) %i.fa) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.aw, %bb.at
  %.pn28.pn = phi { ptr, i32 } [ %i.ex, %bb.at ], [ %.pn28, %bb.aw ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #33
  br label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93, %_ZN7testing7MessageD2Ev.exit98
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !149 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.ay
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.an
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.eo, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit85, %bb.y, %bb.x
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.az ], [ %.pn24.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %i.dc, %bb.y ], [ %i.db, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.w, %bb.b
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %bb.ba ], [ %.pn20.pn.pn, %bb.w ], [ %i.l, %bb.b ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !104
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !113
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_11EmplaceHintEEENS0_5TypesINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_SH_EEEEEJEEEE8RegisterEPKcNS0_12CodeLocationEST_ST_iRKSt6vectorISH_SaISH_EE:bb.a
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

bb.al:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.dj
  br i1 %i.gs, label %_ZN7testing8internal12CodeLocationD2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.al
  %i.gt = load i64, ptr %i.dj, align 8, !tbaa !92
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #36
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

_ZN7testing8internal12CodeLocationD2Ev.exit85:    ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.ak ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83 ], [ %i.gq, %bb.al ] ; 2 uses
  %i.gv = load ptr, ptr %13, align 8, !tbaa !89   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !92
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ha = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.cy
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !92
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !92
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.hj = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.by
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !92
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.hn = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hp = load i64, ptr %i.bc, align 8, !tbaa !92
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.an
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ht = load i64, ptr %i.an, align 8, !tbaa !92
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !89    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.w
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hx = load i64, ptr %i.w, align 8, !tbaa !92
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %i.hz = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS3_13node_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS3_13node_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !104
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %1 = alloca %"struct.std::pair.394", align 8    ; 10 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %3 = alloca %"class.absl::lts_20260526::node_hash_map.675", align 8 ; 11 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"struct.std::pair.394", align 4    ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  store i64 1, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.c, ptr %i.g, align 8, !tbaa !430
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.e, ptr %i.h, align 8, !tbaa !432
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !434
  %i.j = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE12emplace_hintIJRSA_EEENSC_8iteratorENSC_14const_iteratorEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr null, ptr undef, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !310  ; 2 uses
  %i.n = load <2 x i32>, ptr %1, align 8, !noalias !6518
  %i.o = load <2 x i32>, ptr %i.m, align 4, !noalias !6518
  %i.p = icmp eq <2 x i32> %i.n, %i.o             ; 2 uses
  %11 = extractelement <2 x i1> %i.p, i64 0
  %12 = extractelement <2 x i1> %i.p, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.m)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.q = load i8, ptr %4, align 8, !tbaa !148, !range !83, !noundef !84
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %i.w, %bb.i ], [ @.str.160, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 172, ptr noundef %i.x)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.y = load ptr, ptr %5, align 8, !tbaa !151    ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ad, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.af = load ptr, ptr %5, align 8, !tbaa !151   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.af, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.o
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !149 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !92
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.aq = load i32, ptr %i.a, align 16, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = zext i32 %i.aq to i128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !139
  %i.ay = zext i32 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay
  %i.ba = zext i64 %i.az to i128
  %i.bb = shl nuw i128 %i.av, 96
  %i.bc = shl nuw nsw i128 %i.ba, 32              ; 2 uses
  %i.bd = trunc i128 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !139
  %i.bg = zext i32 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg
  %.masked.i.i.i.i.i.i.i = and i128 %i.bc, 79228162495817593519834398720
  %i.bi = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.bb
  %i.bj = zext i64 %i.bh to i128
  %i.bk = add nuw nsw i128 %i.bj, 1442695040888963407 ; 2 uses
  %i.bl = add i128 %i.bi, %i.bk
  %i.bm = lshr i128 %i.bl, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bn = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bo = shl nuw i128 %i.bn, 64
  %i.bp = and i128 %i.bk, 18446744073709551615
  %i.bq = or disjoint i128 %i.bo, %i.bp
  %i.br = mul i128 %i.bq, 47026247687942121848144207491837523525
  %i.bs = add i128 %i.br, 1442695040888963407     ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bt to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bu = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.bv = shl nuw i128 %i.bu, 64
  %i.bw = and i128 %i.bs, 18446744073709551615
  %i.bx = or disjoint i128 %i.bv, %i.bw
  %i.by = mul i128 %i.bx, 47026247687942121848144207491837523525
  %i.bz = add i128 %i.by, 1442695040888963407     ; 2 uses
  %i.ca = trunc i128 %i.bz to i64
  %i.cb = lshr i128 %i.bz, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.cb to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cc = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.cd = xor i64 %.narrow.i.i.i.i.i.i, %i.ca     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.cd, i64 %i.cd, i64 %i.cc)
  %i.ce = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = load i32, ptr %1, align 8, !tbaa !139
  store i32 %i.cg, ptr %7, align 4, !tbaa !371
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !372
  %i.ci = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE12emplace_hintIJRSA_EEENSC_8iteratorENSC_14const_iteratorEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %i.k, ptr nonnull %i.l, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cj = extractvalue { ptr, ptr } %i.ci, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !310 ; 2 uses
  %i.cl = load <2 x i32>, ptr %1, align 8, !noalias !6519
  %i.cm = load <2 x i32>, ptr %i.ck, align 4, !noalias !6519
  %i.cn = icmp eq <2 x i32> %i.cl, %i.cm          ; 2 uses
  %14 = extractelement <2 x i1> %i.cn, i64 0
  %15 = extractelement <2 x i1> %i.cn, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ck)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32: ; preds = %bb.t, %bb.u
  %i.co = load i8, ptr %8, align 8, !tbaa !148, !range !83, !noundef !84
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit25, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit25 ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.al

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !149 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i33, label %_ZNK7testing15AssertionResult15failure_messageEv.exit34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit34

_ZNK7testing15AssertionResult15failure_messageEv.exit34: ; preds = %bb.aa, %bb.z
  %i.cv = phi ptr [ %i.cu, %bb.aa ], [ @.str.160, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 175, ptr noundef %i.cv)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.cw = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i35, label %_ZN7testing7MessageD2Ev.exit37, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36: ; preds = %bb.ac
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit37

_ZN7testing7MessageD2Ev.exit37:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit40

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn15 = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %i.db, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.dd = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit40, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.ag
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit40

_ZN7testing7MessageD2Ev.exit40:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, %bb.ag, %bb.ad
  %.pn15.pn = phi { ptr, i32 } [ %i.da, %bb.ad ], [ %.pn15, %bb.ag ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32, %_ZN7testing7MessageD2Ev.exit37
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !149 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.di, null
  br i1 %.not.i.i41, label %_ZN7testing15AssertionResultD2Ev.exit45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !89 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42: ; preds = %bb.ai
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !92
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit45

_ZN7testing15AssertionResultD2Ev.exit45:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit40, %bb.x
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZN7testing7MessageD2Ev.exit40 ], [ %i.cr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.w
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.aj ], [ %i.cq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.v, %bb.e
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.ak ], [ %.pn.pn.pn, %bb.v ], [ %i.s, %bb.e ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE12emplace_hintIJRSA_EEENSC_8iteratorENSC_14const_iteratorEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.787", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair.783", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6544)
  %i.a = load i64, ptr %0, align 8, !noalias !6545 ; 4 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6547)
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 131072
  store i64 %i.e, ptr %0, align 8, !noalias !6548
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !310, !noalias !6548
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139, !noalias !6548
  %i.j = load i32, ptr %3, align 4, !tbaa !139, !noalias !6548
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !6548
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 %.sink.i.i.i.i.i66, ptr %i.ct, align 8, !tbaa !475, !alias.scope !6660
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i56

bb.u:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_largeIiEES8_INSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.783") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %.noexc69 unwind label %bb.y

.noexc69:                                         ; preds = %bb.u
  %.phi.trans.insert.i.i54 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i55 = load i8, ptr %.phi.trans.insert.i.i54, align 8, !tbaa !475, !range !83, !alias.scope !6661
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i56

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i56: ; preds = %.noexc69, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i63
  %i.cu = phi i8 [ %.sink.i.i.i.i.i66, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i63 ], [ %.pre.i.i55, %.noexc69 ]
  %i.cv = trunc nuw i8 %i.cu to i1
  %.sroa.2.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i58 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i57, align 8 ; 2 uses
  br i1 %i.cv, label %bb.v, label %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  br label %.thread114

bb.v:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE22find_or_prepare_insertIiEES8_INSC_8iteratorEbERKT_.exit.i.i56
  %i.cw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71 unwind label %bb.y ; 2 uses

_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71: ; preds = %bb.v
  %i.cx = load <2 x i32>, ptr %8, align 8, !tbaa !139, !noalias !6661
  store <2 x i32> %i.cx, ptr %i.cw, align 4, !tbaa !139
  store ptr %i.cw, ptr %.sroa.2.0.copyload.i.i58, align 8, !tbaa !310
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !531, !range !83 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 %.pre, ptr %10, align 8, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !251
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 0, ptr %i.cz, align 8, !tbaa !253
  %i.da = icmp eq i8 %.pre, 0
  br i1 %i.da, label %.thread114, label %bb.z

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit50, %bb.d
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit50 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bb

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ba

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load ptr, ptr %14, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !93
  store i64 %i.df, ptr %13, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 190, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %13)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  %i.dh = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ad
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !92
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dm = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i77, label %bb.aj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #33, !inline_history !4
  br label %bb.aj

bb.ae:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.af:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ag:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn24 = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %i.ds, %bb.ag ] ; 2 uses
  %i.du = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ai
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !92
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.af
  %.pn24.pn = phi { ptr, i32 } [ %i.dr, %bb.af ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn24, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.dz = load ptr, ptr %11, align 8, !tbaa !151  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.ae
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ae ], [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn24.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ba

bb.aj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %.pr113 = load ptr, ptr %i.cy, align 8, !tbaa !149 ; 4 uses
  %.not.i.i.i86 = icmp eq ptr %.pr113, null
  br i1 %.not.i.i.i86, label %.thread114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %.pr113, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.pr113, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87: ; preds = %bb.ak
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !92
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i87
  call void @_ZdlPvm(ptr noundef nonnull %.pr113, i64 noundef 32) #36
  br label %.thread114

.thread114:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88, %bb.aj
  %.sroa.5.0.copyload149 = phi ptr [ %.sroa.2.0.copyload.i.i58, %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71.thread ], [ %.sroa.5.0.copyload, %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS4_JS5_S6_SB_EE14const_iteratorEEE5valueEiE4typeELi0EEES8_INSI_8iteratorEbERS9_DpOT1_.exit71 ], [ %.sroa.5.0.copyload, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i88 ], [ %.sroa.5.0.copyload, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.ei = load ptr, ptr %.sroa.5.0.copyload149, align 8, !tbaa !310 ; 2 uses
  %i.ej = load <2 x i32>, ptr %2, align 8, !noalias !6662
  %i.ek = load <2 x i32>, ptr %i.ei, align 4, !noalias !6662
  %i.el = icmp eq <2 x i32> %i.ej, %i.ek          ; 2 uses
  %18 = extractelement <2 x i1> %i.el, i64 0
  %19 = extractelement <2 x i1> %i.el, i64 1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread114
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

bb.am:                                            ; preds = %.thread114
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ei)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93 unwind label %bb.an

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93: ; preds = %bb.al, %bb.am
  %i.em = load i8, ptr %15, align 8, !tbaa !148, !range !83, !noundef !84
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ax, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ao:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !149 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.aq, %bb.ap
  %i.es = phi ptr [ %i.er, %bb.aq ], [ @.str.160, %bb.ap ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 191, ptr noundef %i.es)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.et = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.et, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.as
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.ax

bb.at:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #33
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn28 = phi { ptr, i32 } [ %i.ez, %bb.av ], [ %i.ey, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.fa = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.aw
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !104
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(128) %i.fa) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.aw, %bb.at
  %.pn28.pn = phi { ptr, i32 } [ %i.ex, %bb.at ], [ %.pn28, %bb.aw ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #33
  br label %bb.az

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit93, %_ZN7testing7MessageD2Ev.exit98
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !149 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.ay
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.an
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.eo, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit85, %bb.y, %bb.x
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.az ], [ %.pn24.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %i.dc, %bb.y ], [ %i.db, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.w, %bb.b
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %bb.ba ], [ %.pn20.pn.pn, %bb.w ], [ %i.l, %bb.b ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.252, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.255, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.256, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !104
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !113
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.257, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_14TryEmplaceHintEEENS0_5TypesINS3_13node_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_SH_EEEEEJEEEE8RegisterEPKcNS0_12CodeLocationEST_ST_iRKSt6vectorISH_SaISH_EE:bb.a
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

bb.al:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.dj
  br i1 %i.gs, label %_ZN7testing8internal12CodeLocationD2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.al
  %i.gt = load i64, ptr %i.dj, align 8, !tbaa !92
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #36
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

_ZN7testing8internal12CodeLocationD2Ev.exit85:    ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.ak ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83 ], [ %i.gq, %bb.al ] ; 2 uses
  %i.gv = load ptr, ptr %13, align 8, !tbaa !89   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !92
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ha = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.cy
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !92
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !92
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.hj = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.by
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !92
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.hn = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hp = load i64, ptr %i.bc, align 8, !tbaa !92
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.an
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ht = load i64, ptr %i.an, align 8, !tbaa !92
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !89    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.w
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hx = load i64, ptr %i.w, align 8, !tbaa !92
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %i.hz = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !92
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS3_13node_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS3_13node_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !104
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %1 = alloca %"struct.std::pair.394", align 8    ; 11 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %3 = alloca %"class.absl::lts_20260526::node_hash_map.675", align 8 ; 11 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"struct.std::pair.394", align 4    ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  %i.e = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !91
  store i64 1, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.c, ptr %i.g, align 8, !tbaa !430
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.e, ptr %i.h, align 8, !tbaa !432
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !434
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiEEENS1_12raw_hash_setIS4_JS5_S6_SB_EE8iteratorENSG_14const_iteratorERS9_DpOT1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr null, ptr undef, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !310  ; 2 uses
  %i.o = load <2 x i32>, ptr %1, align 8, !noalias !6729
  %i.p = load <2 x i32>, ptr %i.n, align 4, !noalias !6729
  %i.q = icmp eq <2 x i32> %i.o, %i.p             ; 2 uses
  %11 = extractelement <2 x i1> %i.q, i64 0
  %12 = extractelement <2 x i1> %i.q, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.n)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.r = load i8, ptr %4, align 8, !tbaa !148, !range !83, !noundef !84
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.y = phi ptr [ %i.x, %bb.i ], [ @.str.160, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 202, ptr noundef %i.y)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.z = load ptr, ptr %5, align 8, !tbaa !151    ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.z, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ag = load ptr, ptr %5, align 8, !tbaa !151   ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.o
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #33
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.al, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !92
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ar = load i32, ptr %i.a, align 16, !tbaa !139
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = zext i32 %i.ar to i128
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !139
  %i.az = zext i32 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = shl nuw i128 %i.aw, 96
  %i.bd = shl nuw nsw i128 %i.bb, 32              ; 2 uses
  %i.be = trunc i128 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = zext i32 %i.bg to i64
  %i.bi = or disjoint i64 %i.be, %i.bh
  %.masked.i.i.i.i.i.i.i = and i128 %i.bd, 79228162495817593519834398720
  %i.bj = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.bc
  %i.bk = zext i64 %i.bi to i128
  %i.bl = add nuw nsw i128 %i.bk, 1442695040888963407 ; 2 uses
  %i.bm = add i128 %i.bj, %i.bl
  %i.bn = lshr i128 %i.bm, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bn to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bo = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bp = shl nuw i128 %i.bo, 64
  %i.bq = and i128 %i.bl, 18446744073709551615
  %i.br = or disjoint i128 %i.bp, %i.bq
  %i.bs = mul i128 %i.br, 47026247687942121848144207491837523525
  %i.bt = add i128 %i.bs, 1442695040888963407     ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bu to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bv = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.bw = shl nuw i128 %i.bv, 64
  %i.bx = and i128 %i.bt, 18446744073709551615
  %i.by = or disjoint i128 %i.bw, %i.bx
  %i.bz = mul i128 %i.by, 47026247687942121848144207491837523525
  %i.ca = add i128 %i.bz, 1442695040888963407     ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = lshr i128 %i.ca, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.cc to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cd = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.ce = xor i64 %.narrow.i.i.i.i.i.i, %i.cb     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ce, i64 %i.ce, i64 %i.cd)
  %i.cf = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = load i32, ptr %1, align 8, !tbaa !139
  store i32 %i.ch, ptr %7, align 4, !tbaa !371
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !372
  %i.cj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiEEENS1_12raw_hash_setIS4_JS5_S6_SB_EE8iteratorENSG_14const_iteratorERS9_DpOT1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %i.l, ptr nonnull %i.m, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.ci)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ck = extractvalue { ptr, ptr } %i.cj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !310 ; 2 uses
  %i.cm = load <2 x i32>, ptr %1, align 8, !noalias !6730
  %i.cn = load <2 x i32>, ptr %i.cl, align 4, !noalias !6730
  %i.co = icmp eq <2 x i32> %i.cm, %i.cn          ; 2 uses
  %14 = extractelement <2 x i1> %i.co, i64 0
  %15 = extractelement <2 x i1> %i.co, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.308, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.cl)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32: ; preds = %bb.t, %bb.u
  %i.cp = load i8, ptr %8, align 8, !tbaa !148, !range !83, !noundef !84
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit25, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit25 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.al

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !149 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i33, label %_ZNK7testing15AssertionResult15failure_messageEv.exit34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit34

_ZNK7testing15AssertionResult15failure_messageEv.exit34: ; preds = %bb.aa, %bb.z
  %i.cw = phi ptr [ %i.cv, %bb.aa ], [ @.str.160, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 205, ptr noundef %i.cw)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.cx = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i35, label %_ZN7testing7MessageD2Ev.exit37, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36: ; preds = %bb.ac
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit37

_ZN7testing7MessageD2Ev.exit37:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit40

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit34
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn15 = phi { ptr, i32 } [ %i.dd, %bb.af ], [ %i.dc, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.de = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.de, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit40, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.ag
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit40

_ZN7testing7MessageD2Ev.exit40:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, %bb.ag, %bb.ad
  %.pn15.pn = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %.pn15, %bb.ag ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit32, %_ZN7testing7MessageD2Ev.exit37
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !149 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i41, label %_ZN7testing15AssertionResultD2Ev.exit45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !89 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42: ; preds = %bb.ai
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !92
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit45

_ZN7testing15AssertionResultD2Ev.exit45:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit40, %bb.x
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZN7testing7MessageD2Ev.exit40 ], [ %i.cs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.w
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.aj ], [ %i.cr, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.v, %bb.e
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.ak ], [ %.pn.pn.pn, %bb.v ], [ %i.t, %bb.e ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE11try_emplaceIiLi0EJRiEEENS1_12raw_hash_setIS4_JS5_S6_SB_EE8iteratorENSG_14const_iteratorERS9_DpOT1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.787", align 8 ; 5 uses
  %6 = alloca %"struct.std::pair.783", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6743)
  %i.a = load i64, ptr %0, align 8, !noalias !6744 ; 4 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6746)
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 131072
  store i64 %i.e, ptr %0, align 8, !noalias !6747
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !310, !noalias !6747
  %i.i = load i32, ptr %i.h, align 4, !tbaa !139, !noalias !6747
  %i.j = load i32, ptr %3, align 4, !tbaa !139, !noalias !6747
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE28find_or_prepare_insert_smallIiEES8_INSC_8iteratorEbERKT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !6747
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %5, align 8, !tbaa !472, !noalias !6747
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.m, align 8, !tbaa !191, !noalias !6747
  %i.n = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_19StatefulTestingHashEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !6747 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_5EraseINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.gu = load ptr, ptr %12, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !93
  store i64 %i.gw, ptr %11, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.gu, ptr %i.gx, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, i64 92, ptr nonnull @.str.82, i32 noundef 239, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  %i.gy = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !92
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.hd = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !104
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.hh = load ptr, ptr %i.gs, align 8, !tbaa !149 ; 4 uses
  %.not.i.i.i122 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i122, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !89 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aw
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !92
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #36
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit121, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.cn

bb.ax:                                            ; preds = %bb.ar
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit128

bb.ay:                                            ; preds = %bb.as
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.az:                                            ; preds = %bb.at
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn55 = phi { ptr, i32 } [ %i.hq, %bb.ba ], [ %i.hp, %bb.az ] ; 2 uses
  %i.hr = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.bb
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !92
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %bb.ay
  %.pn55.pn = phi { ptr, i32 } [ %i.ho, %bb.ay ], [ %.pn55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn55, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.hw = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i126 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i126, label %_ZN7testing7MessageD2Ev.exit128, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !104
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.hw) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit128

_ZN7testing7MessageD2Ev.exit128:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.ax
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.ax ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn55.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.cr

bb.bc:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.a, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %.not5.i.i = icmp eq ptr %.sroa.0201.0.lcssa, %.sroa.10206.0.lcssa ; 2 uses
  br i1 %.not5.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, label %.lr.ph.i.i134

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread: ; preds = %bb.bc
  store i64 0, ptr %i.b, align 8, !tbaa !91
  br label %bb.be

.lr.ph.i.i134:                                    ; preds = %bb.bc
  %i.ia = load ptr, ptr %.sroa.6.0.i107, align 8, !tbaa !310
  %i.ib = load <2 x i32>, ptr %i.ia, align 4      ; 3 uses
  %i.ic = add i64 %.sroa.10206.0.lcssa403, -8
  %i.id = sub i64 %i.ic, %.sroa.0201.0.lcssa402   ; 2 uses
  %i.ie = lshr i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.id, 24
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i134
  %n.vec407 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.ig = shl i64 %n.vec407, 3
  %i.ih = getelementptr i8, ptr %.sroa.0201.0.lcssa, i64 %i.ig
  %broadcast.splat = shufflevector <2 x i32> %i.ib, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat409 = shufflevector <2 x i32> %i.ib, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next419, %vector.body410 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph406 ], [ %i.is, %vector.body410 ]
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph406 ], [ %i.it, %vector.body410 ]
  %i.ii = shl i64 %index411, 3                    ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.sroa.0201.0.lcssa, i64 %i.ii
  %i.ij = getelementptr i8, ptr %.sroa.0201.0.lcssa, i64 %i.ii
  %next.gep414 = getelementptr i8, ptr %i.ij, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep413, align 4 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec415 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec416 = load <4 x i32>, ptr %next.gep414, align 4 ; 2 uses
  %strided.vec417 = shufflevector <4 x i32> %wide.vec416, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec418 = shufflevector <4 x i32> %wide.vec416, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ik = icmp eq <2 x i32> %strided.vec, %broadcast.splat
  %i.il = icmp eq <2 x i32> %strided.vec417, %broadcast.splat
  %i.im = icmp eq <2 x i32> %strided.vec415, %broadcast.splat409
  %i.in = icmp eq <2 x i32> %strided.vec418, %broadcast.splat409
  %i.io = select <2 x i1> %i.ik, <2 x i1> %i.im, <2 x i1> zeroinitializer
  %i.ip = select <2 x i1> %i.il, <2 x i1> %i.in, <2 x i1> zeroinitializer
  %i.iq = zext <2 x i1> %i.io to <2 x i64>
  %i.ir = zext <2 x i1> %i.ip to <2 x i64>
  %i.is = add <2 x i64> %vec.phi, %i.iq           ; 2 uses
  %i.it = add <2 x i64> %vec.phi412, %i.ir        ; 2 uses
  %index.next419 = add nuw i64 %index411, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next419, %n.vec407
  br i1 %i.iu, label %middle.block420, label %vector.body410, !llvm.loop !6811

middle.block420:                                  ; preds = %vector.body410
  %bin.rdx = add <2 x i64> %i.it, %i.is
  %i.iv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n421 = icmp eq i64 %i.if, %n.vec407
  br i1 %cmp.n421, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %.lr.ph.i.i134, %middle.block420
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i134 ], [ %i.iv, %middle.block420 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.0201.0.lcssa, %.lr.ph.i.i134 ], [ %i.ih, %middle.block420 ]
  br label %scalar.ph404

scalar.ph404:                                     ; preds = %scalar.ph404.preheader, %scalar.ph404
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph404 ], [ %.07.i.i.ph, %scalar.ph404.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.iz, %scalar.ph404 ], [ %.sroa.03.06.i.i.ph, %scalar.ph404.preheader ] ; 2 uses
  %i.iw = load <2 x i32>, ptr %.sroa.03.06.i.i, align 4
  %i.ix = icmp eq <2 x i32> %i.iw, %i.ib          ; 2 uses
  %21 = extractelement <2 x i1> %i.ix, i64 0
  %22 = extractelement <2 x i1> %i.ix, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  %i.iy = zext i1 %23 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.iy ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8 ; 2 uses
  %.not.i.i135 = icmp eq ptr %i.iz, %.sroa.10206.0.lcssa
  br i1 %.not.i.i135, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph404, !llvm.loop !6812

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit: ; preds = %scalar.ph404, %middle.block420
  %spec.select.i.i.lcssa = phi i64 [ %i.iv, %middle.block420 ], [ %spec.select.i.i, %scalar.ph404 ] ; 2 uses
  store i64 %spec.select.i.i.lcssa, ptr %i.b, align 8, !tbaa !91
  %i.ja = icmp eq i64 %spec.select.i.i.lcssa, 1
  br i1 %i.ja, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bf

bb.be:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.315, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bf

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.jb = load i8, ptr %13, align 8, !tbaa !148, !range !83, !noundef !84
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bp, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.bw

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.je = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !149 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i138, label %_ZNK7testing15AssertionResult15failure_messageEv.exit139, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit139

_ZNK7testing15AssertionResult15failure_messageEv.exit139: ; preds = %bb.bi, %bb.bh
  %i.jh = phi ptr [ %i.jg, %bb.bi ], [ @.str.160, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 240, ptr noundef %i.jh)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit139
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.ji = load ptr, ptr %14, align 8, !tbaa !151  ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %bb.bk
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !104
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(128) %i.ji) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bg
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit145

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit139
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #33
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn60 = phi { ptr, i32 } [ %i.jo, %bb.bn ], [ %i.jn, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.jp = load ptr, ptr %14, align 8, !tbaa !151  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.bo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !104
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(128) %i.jp) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %bb.bo, %bb.bl
  %.pn60.pn = phi { ptr, i32 } [ %i.jm, %bb.bl ], [ %.pn60, %bb.bo ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #33
  br label %bb.bw

bb.bp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit142
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !149 ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i146, label %_ZN7testing15AssertionResultD2Ev.exit150, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !89 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.bq
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !92
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit150

_ZN7testing15AssertionResultD2Ev.exit150:         ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.ka = ptrtoint ptr %.sroa.10206.0.lcssa to i64
  %i.kb = ptrtoint ptr %.sroa.0201.0.lcssa to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 5 uses
  %i.kd = icmp ugt i64 %i.kc, 9223372036854775800
  br i1 %i.kd, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit150
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #35
          to label %.noexc153 unwind label %bb.bx

.noexc153:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit150
  br i1 %.not5.i.i, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr null, i64 %i.kc
  br label %bb.br

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #38
          to label %.noexc154 unwind label %bb.bx ; 4 uses

.noexc154:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kc
  %i.kh = and i64 %i.kc, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kf, ptr align 4 %.sroa.0201.0.lcssa, i64 %i.kh, i1 false), !noalias !6823
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.kf, i64 %i.kh
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc154
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.kf, %.noexc154 ]
  %.sink.i = phi ptr [ %i.ke, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.kg, %.noexc154 ]
  %.0.lcssa.i.i.i.i.i.i.i.i152 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc154 ]
  store i32 3, ptr %17, align 8, !tbaa !469, !alias.scope !6824
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.ki, align 8, !tbaa !463, !alias.scope !6824
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i152, ptr %i.kj, align 8, !tbaa !470, !alias.scope !6824
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.kk, align 8, !tbaa !464, !alias.scope !6824
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  invoke void @_ZN4absl12lts_2026052618container_internal5itemsINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEESt6vectorIS7_INT_8key_typeENSD_11mapped_typeEESaISG_EERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.486") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_32UnorderedElementsAreArrayMatcherISt4pairIKiiEEEEclISt6vectorIS3_IiiESaISA_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.273, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.kl = load ptr, ptr %18, align 8, !tbaa !350  ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit156, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !352
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_8EraseKeyINS0_13node_hash_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE8TestBodyEv:bb.a
  %i.dz = load i64, ptr %2, align 8
  %i.ea = and i64 %i.dz, 254
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit unwind label %bb.am

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.dv, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit unwind label %bb.am

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit: ; preds = %.noexc86, %bb.ah, %bb.ai
  %.0.i = phi i64 [ 0, %.noexc86 ], [ 1, %bb.ah ], [ 1, %bb.ai ] ; 2 uses
  store i64 %.0.i, ptr %i.b, align 8, !tbaa !91
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !139, !noalias !6958
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i64 %.0.i, %i.ed
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.am

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE5eraseIiEEmRS9_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.318, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.am

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ef = load i8, ptr %8, align 8, !tbaa !148, !range !83, !noundef !84
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.aw, label %bb.an

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit75
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit80 ], [ %.pn36.pn.pn, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.co

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.bc

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !149 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i91, label %_ZNK7testing15AssertionResult15failure_messageEv.exit92, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit92

_ZNK7testing15AssertionResult15failure_messageEv.exit92: ; preds = %bb.ap, %bb.ao
  %i.el = phi ptr [ %i.ek, %bb.ap ], [ @.str.160, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 262, ptr noundef %i.el)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.em = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.em, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.ar
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !104
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit98

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit92
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #33
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn44 = phi { ptr, i32 } [ %i.es, %bb.au ], [ %i.er, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.et = load ptr, ptr %9, align 8, !tbaa !151   ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.et, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.av
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %bb.av, %bb.as
  %.pn44.pn = phi { ptr, i32 } [ %i.eq, %bb.as ], [ %.pn44, %bb.av ], [ %.pn44, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  br label %bb.bc

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit95
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !149 ; 4 uses
  %.not.i.i99 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit103, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !89 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100: ; preds = %bb.ax
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !92
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit103

_ZN7testing15AssertionResultD2Ev.exit103:         ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.fe = load i64, ptr %2, align 8               ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 562949953552384
  call void @llvm.assume(i1 %i.ff)
  %.not.i.i104 = icmp samesign ult i64 %i.fe, 131072
  br i1 %.not.i.i104, label %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread, label %bb.ay, !prof !157

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit103
  %i.fg = and i64 %i.fe, 254
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.fh, label %.lr.ph.i.i105, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.fi, align 8, !tbaa !92, !nonnull !84, !noundef !84 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.fj, align 8, !tbaa !92 ; 2 uses
  %i.fk = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !167
  %i.fl = icmp slt i8 %i.fk, -1
  br i1 %i.fl, label %.lr.ph.i.i, label %.lr.ph.i.i105

.lr.ph.i.i:                                       ; preds = %bb.az, %.lr.ph.i.i
  %i.fm = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.az ]
  %i.fn = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.az ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fq = load i8, ptr %i.fo, align 1, !tbaa !167
  %i.fr = icmp slt i8 %i.fq, -1
  br i1 %i.fr, label %.lr.ph.i.i, label %.lr.ph.i.i105, !llvm.loop !39

_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread: ; preds = %_ZN7testing15AssertionResultD2Ev.exit103
  store i64 0, ptr %i.d, align 8, !tbaa !91
  br label %bb.ba

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i, %bb.ay, %bb.az
  %.sroa.6.0.i.ph = phi ptr [ %i.fi, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i, %bb.az ], [ %i.fp, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.az ], [ %i.fo, %.lr.ph.i.i ]
  %i.fs = load <2 x i32>, ptr %.sroa.0170.2, align 4
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, %.lr.ph.i.i105
  %.010.i.i = phi i64 [ 0, %.lr.ph.i.i105 ], [ %spec.select.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %.sroa.7.09.i.i = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph.i.i105 ], [ %.sroa.7.1.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  %.sroa.03.08.i.i = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph.i.i105 ], [ %.sroa.03.1.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ]
  %i.ft = load ptr, ptr %.sroa.7.09.i.i, align 8, !tbaa !310
  %i.fu = load <2 x i32>, ptr %i.ft, align 4
  %i.fv = icmp eq <2 x i32> %i.fu, %i.fs          ; 2 uses
  %19 = extractelement <2 x i1> %i.fv, i64 0
  %20 = extractelement <2 x i1> %i.fv, i64 1
  %21 = select i1 %19, i1 %20, i1 false
  %i.fw = zext i1 %21 to i64
  %spec.select.i.i = add nuw nsw i64 %.010.i.i, %i.fw ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 1 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.7.09.i.i, i64 8 ; 2 uses
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !167 ; 2 uses
  %i.ga = icmp slt i8 %i.fz, -1
  br i1 %i.ga, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i, %.lr.ph.i.i.i.i
  %i.gb = phi ptr [ %i.ge, %.lr.ph.i.i.i.i ], [ %i.fy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ]
  %i.gc = phi ptr [ %i.gd, %.lr.ph.i.i.i.i ], [ %i.fx, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !167 ; 2 uses
  %i.gg = icmp slt i8 %i.gf, -1
  br i1 %i.gg, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !39

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i
  %.sroa.03.1.i.i = phi ptr [ %i.fx, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.gd, %.lr.ph.i.i.i.i ]
  %.sroa.7.1.i.i = phi ptr [ %i.fy, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.ge, %.lr.ph.i.i.i.i ]
  %i.gh = phi i8 [ %i.fz, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i ], [ %i.gf, %.lr.ph.i.i.i.i ]
  %i.gi = icmp eq i8 %i.gh, -1
  br i1 %i.gi, label %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iteratorppEv.exit.i.i, !prof !157, !llvm.loop !6949

_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiiEEJNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !91
  %i.gj = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.gj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit.thread, %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bd

bb.bb:                                            ; preds = %_ZSt5countIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17NodeHashMapPolicyIiiEEJNS2_19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEE8iteratorESB_ENSt15iterator_traitsIT_E15difference_typeESG_SG_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.319, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bd

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.gk = load i8, ptr %11, align 8, !tbaa !148, !range !83, !noundef !84
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.bn, label %bb.be

bb.bc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98, %bb.am
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZN7testing7MessageD2Ev.exit98 ], [ %i.eh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.co

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.bu

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !149 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.go, null
  br i1 %.not.i.i109, label %_ZNK7testing15AssertionResult15failure_messageEv.exit110, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !89
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit110

_ZNK7testing15AssertionResult15failure_messageEv.exit110: ; preds = %bb.bg, %bb.bf
  %i.gq = phi ptr [ %i.gp, %bb.bg ], [ @.str.160, %bb.bf ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 263, ptr noundef %i.gq)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bi unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.gr = load ptr, ptr %12, align 8, !tbaa !151  ; 3 uses
  %.not.i.i111 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i111, label %_ZN7testing7MessageD2Ev.exit113, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112: ; preds = %bb.bi
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !104
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(128) %i.gr) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit113

_ZN7testing7MessageD2Ev.exit113:                  ; preds = %bb.bi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bn

bb.bj:                                            ; preds = %bb.be
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit116

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #33
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn48 = phi { ptr, i32 } [ %i.gx, %bb.bl ], [ %i.gw, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.gy = load ptr, ptr %12, align 8, !tbaa !151  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.bm
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !104
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(128) %i.gy) #33, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115, %bb.bm, %bb.bj
  %.pn48.pn = phi { ptr, i32 } [ %i.gv, %bb.bj ], [ %.pn48, %bb.bm ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #33
  br label %bb.bu

bb.bn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit113
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !149 ; 4 uses
  %.not.i.i117 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i117, label %_ZN7testing15AssertionResultD2Ev.exit121, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !89 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118: ; preds = %bb.bo
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !92
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i118
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit121

_ZN7testing15AssertionResultD2Ev.exit121:         ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0170.2, i64 8 ; 2 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.bf, %i.hk                    ; 5 uses
  %i.hm = icmp ugt i64 %i.hl, 9223372036854775800
  br i1 %i.hm, label %.noexc.i.i.i, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #35
          to label %.noexc124 unwind label %bb.bv

.noexc124:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  %.not.i.i.i.i.i122 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, %.sroa.0170.2
  br i1 %.not.i.i.i.i.i122, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr null, i64 %i.hl
  br label %bb.bp

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #38
          to label %.noexc125 unwind label %bb.bv ; 4 uses

.noexc125:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl
  %i.hq = and i64 %i.hl, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ho, ptr nonnull align 4 %i.hj, i64 %i.hq, i1 false), !noalias !6959
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ho, i64 %i.hq
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc125
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.ho, %.noexc125 ]
  %.sink.i = phi ptr [ %i.hn, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.hp, %.noexc125 ]
  %.0.lcssa.i.i.i.i.i.i.i.i123 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc125 ]
  store i32 3, ptr %15, align 8, !tbaa !469, !alias.scope !6960
  %i.hr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.hr, align 8, !tbaa !463, !alias.scope !6960
end_hunk_9
