Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/periodic_sampler_test?download=true
inline.NumInlined: 2713
inline.NumDeleted: 1001
begin_hunk_0_@_ZN7testing8internal18FormatFileLocationB5cxx11EPKci

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing19MatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24DummyMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16TypedExpectationIFivEE21GetActionForArgumentsEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJEEPSoSC_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !152
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.d), !inline_history !10
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !152
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !152
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.65, i64 noundef 14) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !89
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.66, i64 noundef 1) ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.r = load i64, ptr %i.m, align 8, !tbaa !89
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.q, i64 noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.67, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.68, i64 noundef 34) ; 0 uses
  tail call void @_ZNK7testing8internal14FunctionMockerIFivEE23DescribeDefaultActionToERKSt5tupleIJEEPSo(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %3)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %4)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.w = load i8, ptr %i.v, align 2, !tbaa !166, !range !128, !noundef !129
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.y = load i32, ptr %i.c, align 8, !tbaa !152
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.y), !inline_history !10
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 1, ptr %i.ae, align 4, !tbaa !151
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.65, i64 noundef 14) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.66, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ak, i64 noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.67, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.69, i64 noundef 13) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %3, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !42
  %i.ax = or i32 %i.aw, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.au, i32 noundef %i.ax)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #25
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aq, i64 noundef %i.ay) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k, %bb.l
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal16TypedExpectationIFivEE16GetCurrentActionEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  ret ptr %.0
}

declare void @_ZNK7testing8internal15ExpectationBase25CheckActionCountIfNotDoneEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK7testing8internal15ExpectationBase28AllPrerequisitesAreSatisfiedEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFivEE7MatchesERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %3, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = icmp ne ptr %i.c, null
  %i.e = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.d)
  br i1 %i.e, label %bb.b, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.b

.body.i:                                          ; preds = %.noexc3.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %3), !inline_history !352
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal14FunctionMockerIFivEE28PrintTriedExpectationsLockedERKSt5tupleIJEEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = ashr i64 %.fr, 4                         ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 32) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h) ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.45, i64 noundef 1) ; 0 uses
  %i.l = icmp eq i64 %.fr, 16                     ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.46, ptr @.str.47
  %i.n = select i1 %i.l, i64 32, i64 30
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.m, i64 noundef %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.48, i64 noundef 2) ; 0 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = icmp ugt i64 %i.h, 1
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %3 = load ptr, ptr %i.a, align 8, !tbaa !169
  %4 = load ptr, ptr %3, align 8, !tbaa !150      ; 4 uses
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !88       ; 3 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.d, label %bb.e

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %.021.us = phi i64 [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.021.us
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !150  ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.49, i64 noundef 19) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.021.us)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.50, i64 noundef 2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #25
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ac = load ptr, ptr %2, align 8, !tbaa !31
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %bb.c, %bb.b
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFivEE20ExplainMatchResultToERKSt5tupleIJEEPSo(ptr noundef nonnull align 8 dereferenceable(336) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.ak = add nuw i64 %.021.us, 1                 ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !353

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.al = load ptr, ptr %2, align 8, !tbaa !31
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !42
  %i.ar = or i32 %i.aq, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.as = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %7, i64 noundef %i.as) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFivEE20ExplainMatchResultToERKSt5tupleIJEEPSo(ptr noundef nonnull align 8 dereferenceable(336) %4, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  br label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !122
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.b, i32 noundef %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !89
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.45, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !49
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal16TypedExpectationIFivEE20ExplainMatchResultToERKSt5tupleIJEEPSo(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.testing::ExpectationSet", align 8 ; 11 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4, !tbaa !151, !range !128, !noundef !129
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.52, i64 noundef 45) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.53, i64 noundef 33) ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFivEE7MatchesERKSt5tupleIJEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  br i1 %i.f, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.m = icmp ne ptr %i.l, null
  %i.n = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.m)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
          to label %.noexc32 unwind label %bb.p

.noexc32:                                         ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc32
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.f:                                             ; preds = %.noexc32
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %5)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit unwind label %bb.p, !inline_history !354

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit: ; preds = %bb.g
  br i1 %i.s, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.54, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.v = icmp ne ptr %i.u, null
  %i.w = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.v)
          to label %.noexc36 unwind label %bb.p

.noexc36:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.w, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 246)
          to label %.noexc37 unwind label %bb.p

.noexc37:                                         ; preds = %bb.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35: ; preds = %.noexc37
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.k

bb.j:                                             ; preds = %.noexc37
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35, %.noexc36
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE10DescribeToEPSo.exit unwind label %bb.p, !inline_history !170

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE10DescribeToEPSo.exit: ; preds = %bb.k
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.55, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJEEE10DescribeToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !94, !alias.scope !365
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !89, !alias.scope !365
  store i8 0, ptr %i.ad, align 8, !tbaa !49, !alias.scope !365
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !172, !noalias !365 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !365 ; 2 uses
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  %.08.i.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ai ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !173, !noalias !365 ; 2 uses
  %i.am = ptrtoint ptr %.08.i.i.i.i to i64
  %i.an = ptrtoint ptr %i.al to i64
end_hunk_0
begin_hunk_1_@_ZN7testing8internal16TypedExpectationIFliEE21GetActionForArgumentsEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJiEEPSoSC_:bb.a
  %i.r = load i64, ptr %i.m, align 8, !tbaa !89
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.q, i64 noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.67, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.68, i64 noundef 34) ; 0 uses
  tail call void @_ZNK7testing8internal14FunctionMockerIFliEE23DescribeDefaultActionToERKSt5tupleIJiEEPSo(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull %3)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %4)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.w = load i8, ptr %i.v, align 2, !tbaa !166, !range !128, !noundef !129
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.y = load i32, ptr %i.c, align 8, !tbaa !152
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.y), !inline_history !10
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 1, ptr %i.ae, align 4, !tbaa !151
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.65, i64 noundef 14) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.66, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ak, i64 noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.67, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.69, i64 noundef 13) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %3, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !42
  %i.ax = or i32 %i.aw, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.au, i32 noundef %i.ax)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #25
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.aq, i64 noundef %i.ay) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k, %bb.l
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal16TypedExpectationIFliEE16GetCurrentActionEPKNS0_14FunctionMockerIS2_EERKSt5tupleIJiEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFliEE7MatchesERKSt5tupleIJiEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = icmp ne ptr %i.d, null
  %i.f = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.e)
  br i1 %i.f, label %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit, label %.noexc3.i.i.i

.noexc3.i.i.i:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %.body.i.i.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %.noexc3.i.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit

common.resume:                                    ; preds = %.body.i, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %.body.i.i.i ], [ %i.s, %.body.i ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %.noexc3.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit: ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %5), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %3, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp ne ptr %i.o, null
  %i.q = call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.p)
  br i1 %i.q, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE7MatchesES5_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE7MatchesES5_.exit

.body.i:                                          ; preds = %.noexc3.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE7MatchesES5_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %3), !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE7MatchesES5_.exit, %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit
  %i.w = phi i1 [ false, %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit ], [ %i.v, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE7MatchesES5_.exit ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal14FunctionMockerIFliEE28PrintTriedExpectationsLockedERKSt5tupleIJiEEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = ashr i64 %.fr, 4                         ; 3 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.44, i64 noundef 32) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h) ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.45, i64 noundef 1) ; 0 uses
  %i.l = icmp eq i64 %.fr, 16                     ; 2 uses
  %i.m = select i1 %i.l, ptr @.str.46, ptr @.str.47
  %i.n = select i1 %i.l, i64 32, i64 30
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.m, i64 noundef %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.48, i64 noundef 2) ; 0 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = icmp ugt i64 %i.h, 1
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %3 = load ptr, ptr %i.a, align 8, !tbaa !169
  %4 = load ptr, ptr %3, align 8, !tbaa !150      ; 4 uses
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !88       ; 3 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.d, label %bb.e

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %.021.us = phi i64 [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.021.us
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !150  ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  tail call void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.49, i64 noundef 19) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.021.us)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.50, i64 noundef 2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #25
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ac = load ptr, ptr %2, align 8, !tbaa !31
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %bb.c, %bb.b
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFliEE20ExplainMatchResultToERKSt5tupleIJiEEPSo(ptr noundef nonnull align 8 dereferenceable(352) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %i.t, ptr noundef nonnull %2)
  %i.ak = add nuw i64 %.021.us, 1                 ; 2 uses
  %exitcond24.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !391

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph.split.preheader
  %i.al = load ptr, ptr %2, align 8, !tbaa !31
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !42
  %i.ar = or i32 %i.aq, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.as = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %7, i64 noundef %i.as) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 4) ; 0 uses
  tail call void @_ZNK7testing8internal16TypedExpectationIFliEE20ExplainMatchResultToERKSt5tupleIJiEEPSo(ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %2)
  tail call void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %4, ptr noundef nonnull %2)
  br label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal16TypedExpectationIFliEE20ExplainMatchResultToERKSt5tupleIJiEEPSo(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %7 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.testing::ExpectationSet", align 8 ; 11 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i8, ptr %i.a, align 4, !tbaa !151, !range !128, !noundef !129
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.52, i64 noundef 45) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.53, i64 noundef 33) ; 0 uses
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFliEE7MatchesERKSt5tupleIJiEE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.f, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp ne ptr %i.j, null
  %i.l = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.k)
  br i1 %i.l, label %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit, label %.noexc3.i.i.i

.noexc3.i.i.i:                                    ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %.body.i.i.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %.noexc3.i.i.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit

common.resume:                                    ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %.body.i.i.i ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn26, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i:                                      ; preds = %.noexc3.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit: ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %6), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit
  call void @_ZN7testing8internal11TuplePrefixILm1EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIiEEEES4_IJiEEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN7testing8internal12TupleMatchesISt5tupleIJNS_7MatcherIiEEEES2_IJiEEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !164
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.x = icmp ne ptr %i.w, null
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.x)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 234)
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.g
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc32
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.i

bb.h:                                             ; preds = %.noexc32
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !190
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull %7)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit unwind label %bb.r, !inline_history !392

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit: ; preds = %bb.i
  br i1 %i.ad, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, label %bb.j

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE15MatchAndExplainES5_PNS_19MatchResultListenerE.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.54, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ag)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.ah, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef 246)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %bb.k
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.34, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35: ; preds = %.noexc37
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.m

bb.l:                                             ; preds = %.noexc37
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i35, %.noexc36
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !188
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE10DescribeToEPSo.exit unwind label %bb.r, !inline_history !191

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE10DescribeToEPSo.exit: ; preds = %bb.m
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.55, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJiEEE10DescribeToEPSo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !94, !alias.scope !403
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !89, !alias.scope !403
  store i8 0, ptr %i.ao, align 8, !tbaa !49, !alias.scope !403
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !172, !noalias !403 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !noalias !403 ; 2 uses
  %i.au = icmp ugt ptr %i.ar, %i.at
  %.08.i.i.i.i = select i1 %i.au, ptr %i.ar, ptr %i.at ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !173, !noalias !403 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
