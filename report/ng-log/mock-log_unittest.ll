Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/mock-log_unittest?download=true
inline.NumInlined: 1698
inline.NumDeleted: 727
begin_hunk_0_@_ZN7testing8internal12PrintTupleToISt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EELm3EEEvRKT_St17integral_constantImXT0_EEPSo:bb.a
  ret void
}

declare void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21GetActionForArgumentsEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EEPSoSM_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !140
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !141  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.d), !inline_history !291
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !140
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !140
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.54, i64 noundef 14) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.55, i64 noundef 1) ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.r = load i64, ptr %i.m, align 8, !tbaa !47
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.q, i64 noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.56, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.57, i64 noundef 34) ; 0 uses
  tail call void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE23DescribeDefaultActionToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull %3)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %4)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.w = load i8, ptr %i.v, align 2, !tbaa !292, !range !138, !noundef !139
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.y = load i32, ptr %i.c, align 8, !tbaa !140
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !141  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.y), !inline_history !291
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 1, ptr %i.ae, align 4, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.54, i64 noundef 14) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.55, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ak, i64 noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.56, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.58, i64 noundef 13) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %3, align 8, !tbaa !17
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !41
  %i.ax = or i32 %i.aw, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.au, i32 noundef %i.ax)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #26
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aq, i64 noundef %i.ay) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k, %bb.l
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38, i64 noundef 4) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE16GetCurrentActionEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  ret ptr %.0
}

declare void @_ZNK7testing8internal15ExpectationBase25CheckActionCountIfNotDoneEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK7testing8internal15ExpectationBase28AllPrerequisitesAreSatisfiedEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = tail call noundef zeroext i1 @_ZN7testing8internal11TuplePrefixILm3EE7MatchesISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %3, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = icmp ne ptr %i.f, null
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.g)
  br i1 %i.h, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 233)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit

.body.i:                                          ; preds = %.noexc3.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.j

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %3), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit, %bb.a
  %i.n = phi i1 [ false, %bb.a ], [ %i.m, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7MatchesESF_.exit ]
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE28PrintTriedExpectationsLockedERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = ashr i64 %.fr, 4                         ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.32, i64 noundef 32) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h) ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.30, i64 noundef 1) ; 0 uses
  %i.l = icmp eq i64 %.fr, 16                     ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.33, ptr @.str.34
  %i.n = select i1 %i.l, i64 32, i64 30
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.m, i64 noundef %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.35, i64 noundef 2) ; 0 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = icmp ugt i64 %i.h, 1
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %3 = load ptr, ptr %i.a, align 8, !tbaa !163
  %4 = load ptr, ptr %3, align 8, !tbaa !118      ; 4 uses
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !53       ; 3 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.d, label %bb.e

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %.021.us = phi i64 [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.021.us
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.36, i64 noundef 19) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.021.us)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.37, i64 noundef 2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #26
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ac = load ptr, ptr %2, align 8, !tbaa !17
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %bb.c, %bb.b
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %i.t, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.ak = add nuw i64 %.021.us, 1                 ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !293

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.al = load ptr, ptr %2, align 8, !tbaa !17
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = or i32 %i.aq, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.as = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #26
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %7, i64 noundef %i.as) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %4, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  br label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !165
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.b, i32 noundef %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.30, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !48
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE20ExplainMatchResultToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.testing::ExpectationSet", align 8 ; 11 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4, !tbaa !137, !range !138, !noundef !139
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.39, i64 noundef 45) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 33) ; 0 uses
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.f, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN7testing8internal11TuplePrefixILm3EE7MatchesISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7testing8internal11TuplePrefixILm3EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.o = icmp ne ptr %i.n, null
  %i.p = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.o)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 233)
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc32
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.i

bb.h:                                             ; preds = %.noexc32
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %5)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !294

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit: ; preds = %bb.i
  br i1 %i.u, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE15MatchAndExplainESF_PNS_19MatchResultListenerE.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.41, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.x = icmp ne ptr %i.w, null
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.x)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35: ; preds = %.noexc37
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.l:                                             ; preds = %.noexc37
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35, %.noexc36
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit unwind label %bb.r, !inline_history !166

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit: ; preds = %bb.m
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.42, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !45, !alias.scope !305
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !47, !alias.scope !305
  store i8 0, ptr %i.af, align 8, !tbaa !48, !alias.scope !305
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23, !noalias !305 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !305 ; 2 uses
  %i.al = icmp ugt ptr %i.ai, %i.ak
  %.08.i.i.i.i = select i1 %i.al, ptr %i.ai, ptr %i.ak ; 2 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_mock_log_unittest.cc:bb.a
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %__cxx_global_var_init.exit

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit10.i

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.j
  br i1 %i.am, label %_ZN7testing8internal12CodeLocationD2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i: ; preds = %bb.k
  %i.an = load i64, ptr %i.j, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit10.i

_ZN7testing8internal12CodeLocationD2Ev.exit10.i:  ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i ], [ %i.ak, %bb.k ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.e
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit10.i
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !48
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume

__cxx_global_var_init.exit:                       ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr %i.aa, ptr @_ZN12_GLOBAL__N_136ScopedMockLogTest_InterceptsLog_Test10test_info_E, align 8, !tbaa !564
  %i.at = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_136ScopedMockLogTest_InterceptsLog_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.au, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 54, ptr %i.b, align 8, !tbaa !54
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !53
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !54  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.av, ptr noundef nonnull align 1 dereferenceable(54) @.str.2, i64 54, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !45
  %i.ba = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !54
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i.i.i7, label %._crit_edge.i.i.i.i1

.noexc.i.i.i7:                                    ; preds = %__cxx_global_var_init.exit
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5.i unwind label %bb.t  ; 2 uses

.noexc5.i:                                        ; preds = %.noexc.i.i.i7
  store ptr %i.bd, ptr %0, align 8, !tbaa !53
  %i.be = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.be, ptr %i.az, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i1

._crit_edge.i.i.i.i1:                             ; preds = %.noexc5.i, %__cxx_global_var_init.exit
  %i.bf = phi ptr [ %i.bd, %.noexc5.i ], [ %i.az, %__cxx_global_var_init.exit ] ; 2 uses
  switch i64 %i.bb, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i1
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !48
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !48
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.ba, i64 %i.bb, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i1
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = load ptr, ptr %0, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 81, ptr %i.bl, align 8, !tbaa !562
  %i.bm = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bn = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 81)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bo = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 81)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29
          to label %bb.r unwind label %bb.u       ; 2 uses

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ScopedMockLogTest_LogDuringIntercept_TestEEE, i64 16), ptr %i.bp, align 8, !tbaa !17
  %i.bq = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bm, ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef nonnull %i.bp)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.az
  br i1 %i.bs, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2: ; preds = %bb.s
  %i.bt = load i64, ptr %i.az, align 8, !tbaa !48
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i3

_ZN7testing8internal12CodeLocationD2Ev.exit.i3:   ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2
  %i.bv = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.au
  br i1 %i.bw, label %__cxx_global_var_init.3.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i3
  %i.bx = load i64, ptr %i.au, align 8, !tbaa !48
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #27
  br label %__cxx_global_var_init.3.exit

bb.t:                                             ; preds = %.noexc.i.i.i7
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.az
  br i1 %i.cc, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.u
  %i.cd = load i64, ptr %i.az, align 8, !tbaa !48
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i

_ZN7testing8internal12CodeLocationD2Ev.exit8.i:   ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i ], [ %i.ca, %bb.u ]
  %i.cf = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.au
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i
  %i.ch = load i64, ptr %i.au, align 8, !tbaa !48
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

__cxx_global_var_init.3.exit:                     ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  store ptr %i.bq, ptr @_ZN12_GLOBAL__N_141ScopedMockLogTest_LogDuringIntercept_Test10test_info_E, align 8, !tbaa !564
  %i.cj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_141ScopedMockLogTest_LogDuringIntercept_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev, null}
!1 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!2 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev, null}
!3 = distinct !{!3, !115}
!4 = distinct !{null, null}
!5 = distinct !{null, null}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !20, i64 0}
!22 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !21, i64 56}
!23 = !{!22, !19, i64 40}
!24 = !{!22, !19, i64 32}
!25 = !{!22, !19, i64 48}
!26 = !{!"_ZTSSo"}
!27 = !{!"_ZTSN5nglog12base_logging12LogStreamBufE", !22, i64 0}
!28 = !{!"long", !12, i64 0}
!29 = !{!"p1 _ZTSN5nglog10LogMessage9LogStreamE", !18, i64 0}
!30 = !{!"_ZTSN5nglog10LogMessage9LogStreamE", !26, i64 0, !27, i64 8, !28, i64 72, !29, i64 80}
!31 = !{!30, !28, i64 72}
!32 = !{!30, !29, i64 80}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !28, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!38 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !36, i64 48, !12, i64 64, !13, i64 192, !37, i64 200, !21, i64 208}
!39 = !{!"p1 _ZTSSo", !18, i64 0}
!40 = !{!"bool", !12, i64 0}
!41 = !{!38, !34, i64 32}
!42 = !{!13, !13, i64 0}
!43 = !{ptr @_ZN5nglog10LogMessage9LogStreamD1Ev}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!45 = !{!44, !19, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0, !28, i64 8, !12, i64 16}
!47 = !{!46, !28, i64 8}
!48 = !{!12, !12, i64 0}
!49 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!50 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE6VTableE", !18, i64 0}
!51 = !{!"_ZTSN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE", !49, i64 0, !50, i64 8, !12, i64 16}
!52 = !{!51, !50, i64 8}
!53 = !{!46, !19, i64 0}
!54 = !{!28, !28, i64 0}
!55 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !18, i64 0}
!56 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !49, i64 0, !55, i64 8, !12, i64 16}
!57 = !{!56, !55, i64 8}
!58 = !{!"_ZTSSt13__atomic_baseIiE", !13, i64 0}
!59 = !{!58, !13, i64 0}
!60 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !18, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"_ZTSN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE6VTableE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!63 = !{!62, !18, i64 24}
!64 = !{ptr @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev}
!65 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!66 = !{!65, !18, i64 24}
!67 = !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!68 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!69 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!72 = !{!71, !13, i64 8}
!73 = !{!71, !13, i64 12}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{ptr @_ZN5nglog13nglog_testing13ScopedMockLogD2Ev}
!76 = !{!"_ZTSN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !46, i64 0, !40, i64 32, !40, i64 33}
!77 = !{!76, !40, i64 32}
!78 = !{!76, !40, i64 33}
!79 = !{!"p1 _ZTSN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEE", !18, i64 0}
!80 = !{!"_ZTSN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm2EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !81, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EE", !80, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EE", !82, i64 0, !83, i64 24}
!85 = !{!"_ZTSN7testing7MatcherIN5nglog11LogSeverityEEE", !51, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EE", !85, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EE", !84, i64 0, !86, i64 48}
!88 = !{!"_ZTSSt5tupleIJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EE", !87, i64 0}
!89 = !{!"_ZTSN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEE", !79, i64 0, !88, i64 8}
!90 = !{!89, !79, i64 0}
!91 = !{!"any p2 pointer", !18, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIPKvSaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIPKvSaIS1_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIPKvSaIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIPKvSaIS1_EE", !94, i64 0}
!96 = !{!"p1 _ZTSSt10shared_ptrIN7testing8internal15ExpectationBaseEE", !18, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSN5nglog11LogSeverityE", !12, i64 0}
!99 = !{!"_ZTSN5nglog13nglog_testing13ScopedMockLog11MessageInfoE", !98, i64 0, !46, i64 8, !46, i64 40}
!100 = !{!99, !98, i64 0}
!101 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!92, !91, i64 0}
!104 = !{!92, !91, i64 8}
!105 = !{!92, !91, i64 16}
!106 = !{!18, !18, i64 0}
!107 = !{!"_ZTSSt14_Function_base", !12, i64 0, !18, i64 16}
!108 = !{!107, !18, i64 16}
!109 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE6VTableE", !18, i64 0}
!110 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE", !49, i64 0, !109, i64 8, !12, i64 16}
!111 = !{!110, !109, i64 8}
!112 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE6VTableE", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!113 = !{!112, !18, i64 24}
!114 = !{ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"p1 _ZTSN7testing8internal15ExpectationBaseE", !18, i64 0}
!117 = !{!"_ZTSSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0, !69, i64 8}
!118 = !{!117, !116, i64 0}
!119 = !{!"p1 _ZTSN7testing20CardinalityInterfaceE", !18, i64 0}
!120 = !{!"_ZTSSt12__shared_ptrIKN7testing20CardinalityInterfaceELN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0, !69, i64 8}
!121 = !{!"_ZTSSt10shared_ptrIKN7testing20CardinalityInterfaceEE", !120, i64 0}
!122 = !{!"_ZTSN7testing11CardinalityE", !121, i64 0}
!123 = !{!"_ZTSN7testing11Expectation4LessE"}
!124 = !{!"_ZTSSt20_Rb_tree_key_compareIN7testing11Expectation4LessEE", !123, i64 0}
!125 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!126 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!127 = !{!"_ZTSSt18_Rb_tree_node_base", !125, i64 0, !126, i64 8, !126, i64 16, !126, i64 24}
!128 = !{!"_ZTSSt15_Rb_tree_header", !127, i64 0, !28, i64 32}
!129 = !{!"_ZTSNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE13_Rb_tree_implIS4_Lb1EEE", !124, i64 0, !128, i64 8}
!130 = !{!"_ZTSSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE", !129, i64 0}
!131 = !{!"_ZTSSt3setIN7testing11ExpectationENS1_4LessESaIS1_EE", !130, i64 0}
!132 = !{!"_ZTSN7testing14ExpectationSetE", !131, i64 0}
!133 = !{!"_ZTSN7testing8internal15ExpectationBase6ClauseE", !12, i64 0}
!134 = !{!"_ZTSN7testing8internal9MutexBaseE", !12, i64 0, !40, i64 40, !28, i64 48}
!135 = !{!"_ZTSN7testing8internal5MutexE", !134, i64 0}
!136 = !{!"_ZTSN7testing8internal15ExpectationBaseE", !19, i64 8, !13, i64 16, !46, i64 24, !46, i64 56, !40, i64 88, !122, i64 96, !132, i64 112, !13, i64 160, !40, i64 164, !95, i64 168, !40, i64 192, !40, i64 193, !40, i64 194, !133, i64 196, !40, i64 200, !135, i64 208}
!137 = !{!136, !40, i64 164}
!138 = !{i8 0, i8 2}
!139 = !{}
!140 = !{!136, !13, i64 160}
!141 = !{!120, !119, i64 0}
!142 = !{!40, !40, i64 0}
!143 = !{!134, !40, i64 40}
!144 = !{!134, !28, i64 48}
!145 = !{!112, !18, i64 8}
!146 = !{!91, !91, i64 0}
!147 = !{!"_ZTSN7testing8internal21UntypedOnCallSpecBase6ClauseE", !12, i64 0}
!148 = !{!"_ZTSN7testing8internal21UntypedOnCallSpecBaseE", !19, i64 0, !13, i64 8, !147, i64 12}
!149 = !{!148, !19, i64 0}
!150 = !{!148, !13, i64 8}
!151 = !{!"_ZTSN7testing19MatchResultListenerE", !39, i64 8}
!152 = !{!151, !39, i64 8}
!153 = !{!112, !18, i64 0}
!154 = !{!"_ZTSSt10_Head_baseILm2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !101, i64 0}
!155 = !{!154, !101, i64 0}
!156 = !{i64 8}
!157 = !{!65, !18, i64 0}
!158 = !{!62, !18, i64 0}
!159 = !{!"_ZTSSt10_Head_baseILm1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !101, i64 0}
!160 = !{!159, !101, i64 0}
!161 = !{!98, !98, i64 0}
end_hunk_1
