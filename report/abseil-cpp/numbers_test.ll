Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/numbers_test?download=true
inline.NumInlined: 12995
inline.NumDeleted: 1495
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_19MatchesRegexMatcherEEEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcRKT_:bb.a
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.z
  %.pn14 = phi { ptr, i32 } [ %i.cq, %bb.z ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #31
  br label %bb.aj

bb.aj:                                            ; preds = %.body46, %bb.ah
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.fh, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.body43, %bb.t
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.aj ], [ %.pn, %.body43 ], [ %i.bd, %bb.t ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #31
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.s
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ak ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.body35

.body35:                                          ; preds = %bb.r, %bb.m, %bb.al
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.al ], [ %i.bb, %bb.r ], [ %i.ar, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #31
  br label %bb.am

bb.am:                                            ; preds = %.body35, %bb.q
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

bb.an:                                            ; preds = %bb.f, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !28
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !80  ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !96
  %.not.i.i67 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.fq = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.fr = atomicrmw add ptr %i.fq, i32 -1 acq_rel, align 4
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ap, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.n, align 8, !tbaa !80
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !96
  %i.fw = load ptr, ptr %i.o, align 8, !tbaa !44
  invoke void %i.fv(ptr noundef %i.fw)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.aq, !inline_history !4

bb.aq:                                            ; preds = %bb.ap
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #32, !inline_history !97
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.an, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void

.body:                                            ; preds = %bb.g, %.body.i, %bb.am
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.am ], [ %i.z, %bb.g ], [ %i.v, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_19MatchesRegexMatcherEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !1
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !5
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit

_ZN7testing8internal19MatchesRegexMatcherD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno double %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %9 = insertelement <2 x double> poison, double %4, i64 0
  %10 = insertelement <2 x double> %9, double %3, i64 1 ; 2 uses
  %11 = bitcast <2 x double> %10 to <2 x i64>     ; 2 uses
  %12 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %10)
  %13 = sub <2 x i64> zeroinitializer, %11
  %14 = fneg <2 x double> %12
  %15 = bitcast <2 x double> %14 to <2 x i64>
  %16 = icmp slt <2 x i64> %11, zeroinitializer
  %17 = select <2 x i1> %16, <2 x i64> %13, <2 x i64> %15 ; 2 uses
  %18 = extractelement <2 x i64> %17, i64 0       ; 3 uses
  %19 = extractelement <2 x i64> %17, i64 1       ; 3 uses
  %.not.i.i = icmp ult i64 %19, %18
  %20 = sub nuw i64 %19, %18
  %21 = sub nuw i64 %18, %19
  %22 = select i1 %.not.i.i, i64 %21, i64 %20
  %i.a = icmp ult i64 %22, 5
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = load ptr, ptr %5, align 8, !tbaa !28
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %5, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 17, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.g ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEd.exit
  %i.i = load ptr, ptr %6, align 8, !tbaa !28
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %6, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 17, ptr %i.m, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, double noundef %4)
          to label %_ZNSolsEd.exit17 unwind label %bb.i ; 0 uses

_ZNSolsEd.exit17:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEd.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %8, align 8, !tbaa !43     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.u = load ptr, ptr %7, align 8, !tbaa !43     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !28
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 -24     ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %6, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !28
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !44
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #31
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !28
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %6, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.at) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  store ptr %i.z, ptr %5, align 8, !tbaa !28
  %i.au = load i64, ptr %i.ab, align 8
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !28
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !44
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit23

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit23: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i21
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #31
  store ptr %i.an, ptr %5, align 8, !tbaa !28
  %i.be = load i64, ptr %i.ap, align 8
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.be
  store ptr %i.ao, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.p

bb.g:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSolsEd.exit17
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.k:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.l:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !44
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bt = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !44
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #33
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_136stringtest_safe_strtou32_random_TestD0Ev:bb.a
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_136stringtest_safe_strtou32_random_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
  %i.d = load i32, ptr %i.a, align 16, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = zext i32 %i.d to i128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66
  %i.l = zext i32 %i.k to i64
  %i.m = or disjoint i64 %i.h, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = shl nuw i128 %i.i, 96
  %i.p = shl nuw nsw i128 %i.n, 32                ; 2 uses
  %i.q = trunc i128 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = zext i32 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t
  %.masked.i.i.i.i.i.i.i = and i128 %i.p, 79228162495817593519834398720
  %i.v = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.o
  %i.w = zext i64 %i.u to i128
  %i.x = add nuw nsw i128 %i.w, 1442695040888963407 ; 2 uses
  %i.y = add i128 %i.v, %i.x
  %i.z = lshr i128 %i.y, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.z to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.aa = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.ab = shl nuw i128 %i.aa, 64
  %i.ac = and i128 %i.x, 18446744073709551615
  %i.ad = or disjoint i128 %i.ab, %i.ac
  %i.ae = mul i128 %i.ad, 47026247687942121848144207491837523525
  %i.af = add i128 %i.ae, 1442695040888963407     ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = lshr i128 %i.af, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ah to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 17
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %bb.a
  %.0291.i = phi i64 [ 0, %bb.a ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  %.sroa.14.0290.i = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.a ], [ %.sroa.14.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  %.sroa.0208.0289.i = phi i64 [ %i.ag, %bb.a ], [ %.sroa.0208.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bp = zext i64 %.sroa.14.0290.i to i128
  %i.bq = shl nuw i128 %i.bp, 64
  %i.br = zext i64 %.sroa.0208.0289.i to i128
  %i.bs = or disjoint i128 %i.bq, %i.br
  %i.bt = mul i128 %i.bs, 47026247687942121848144207491837523525
  %i.bu = add i128 %i.bt, 1442695040888963407     ; 3 uses
  %i.bv = trunc i128 %i.bu to i64
  %i.bw = lshr i128 %i.bu, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.bw to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.bx = lshr i64 %.narrow.i.i.i.i.i.i.i, 58
  %i.by = xor i64 %.narrow.i.i.i.i.i.i.i, %i.bv   ; 2 uses
  %.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.by, i64 %i.by, i64 %i.bx)
  %i.bz = lshr i64 %.0.i.i.i.i.i.i.i.i, 32        ; 2 uses
  %i.ca = trunc nuw i64 %i.bz to i32              ; 2 uses
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !66
  %i.cb = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.cc = shl nuw i128 %i.cb, 64
  %i.cd = and i128 %i.bu, 18446744073709551615
  %i.ce = or disjoint i128 %i.cc, %i.cd
  %i.cf = mul i128 %i.ce, 47026247687942121848144207491837523525
  %i.cg = add i128 %i.cf, 1442695040888963407     ; 2 uses
  %i.ch = trunc i128 %i.cg to i64                 ; 3 uses
  %i.ci = lshr i128 %i.cg, 64
  %.tr.i.i.i.i.i.i176.i = trunc nuw i128 %i.ci to i64
  %.narrow.i.i.i.i.i.i177.i = add i64 %.tr.i.i.i.i.i.i176.i, 6364136223846793005 ; 4 uses
  %i.cj = lshr i64 %.narrow.i.i.i.i.i.i177.i, 58
  %i.ck = xor i64 %.narrow.i.i.i.i.i.i177.i, %i.ch ; 2 uses
  %.0.i.i.i.i.i.i.i178.i = call noundef i64 @llvm.fshr.i64(i64 %i.ck, i64 %i.ck, i64 %i.cj)
  %i.cl = zext i64 %.0.i.i.i.i.i.i.i178.i to i128
  %i.cm = mul nuw nsw i128 %i.cl, 35              ; 2 uses
  %extract15.i.i179.i = lshr i128 %i.cm, 64
  %extract.t16.i.i180.i = trunc nuw nsw i128 %extract15.i.i179.i to i32
  %i.cn = and i128 %i.cm, 18446744073709551600
  %or.cond.i = icmp eq i128 %i.cn, 0
  br i1 %or.cond.i, label %.lr.ph.i.i182.i, label %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i

.lr.ph.i.i182.i:                                  ; preds = %bb.b, %.lr.ph.i.i182.i
  %i.co = phi i64 [ %i.cv, %.lr.ph.i.i182.i ], [ %i.ch, %bb.b ]
  %.sroa.22.0.copyload.i.i232728.i.i183.i = phi i64 [ %.narrow.i.i.i.i25.i.i185.i, %.lr.ph.i.i182.i ], [ %.narrow.i.i.i.i.i.i177.i, %bb.b ]
  %i.cp = zext i64 %.sroa.22.0.copyload.i.i232728.i.i183.i to i128
  %i.cq = shl nuw i128 %i.cp, 64
  %i.cr = zext i64 %i.co to i128
  %i.cs = or disjoint i128 %i.cq, %i.cr
  %i.ct = mul i128 %i.cs, 47026247687942121848144207491837523525
  %i.cu = add i128 %i.ct, 1442695040888963407     ; 2 uses
  %i.cv = trunc i128 %i.cu to i64                 ; 3 uses
  %i.cw = lshr i128 %i.cu, 64
  %.tr.i.i.i.i24.i.i184.i = trunc nuw i128 %i.cw to i64
  %.narrow.i.i.i.i25.i.i185.i = add i64 %.tr.i.i.i.i24.i.i184.i, 6364136223846793005 ; 4 uses
  %i.cx = lshr i64 %.narrow.i.i.i.i25.i.i185.i, 58
  %i.cy = xor i64 %.narrow.i.i.i.i25.i.i185.i, %i.cv ; 2 uses
  %.0.i.i.i.i.i26.i.i186.i = call noundef i64 @llvm.fshr.i64(i64 %i.cy, i64 %i.cy, i64 %i.cx)
  %i.cz = zext i64 %.0.i.i.i.i.i26.i.i186.i to i128
  %i.da = mul nuw nsw i128 %i.cz, 35              ; 2 uses
  %i.db = and i128 %i.da, 18446744073709551600
  %i.dc = icmp eq i128 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i182.i, label %..loopexit_crit_edge.i.i187.i, !llvm.loop !14

..loopexit_crit_edge.i.i187.i:                    ; preds = %.lr.ph.i.i182.i
  %extract19.le.i.i188.i = lshr i128 %i.da, 64
  %extract.t20.le.i.i189.i = trunc nuw nsw i128 %extract19.le.i.i188.i to i32
  br label %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i

_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i: ; preds = %..loopexit_crit_edge.i.i187.i, %bb.b
  %.sroa.0208.2.i = phi i64 [ %i.ch, %bb.b ], [ %i.cv, %..loopexit_crit_edge.i.i187.i ]
  %.sroa.14.2.i = phi i64 [ %.narrow.i.i.i.i.i.i177.i, %bb.b ], [ %.narrow.i.i.i.i25.i.i185.i, %..loopexit_crit_edge.i.i187.i ]
  %.0.i181.i = phi i32 [ %extract.t16.i.i180.i, %bb.b ], [ %extract.t20.le.i.i189.i, %..loopexit_crit_edge.i.i187.i ]
  %i.dd = add nuw nsw i32 %.0.i181.i, 2           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %i.ai, ptr %1, align 8, !tbaa !88
  %i.de = icmp eq i64 %i.bz, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aj, i8 0, i64 9, i1 false)
  br i1 %i.de, label %_ZN4absl12lts_2026052616strings_internal4ItoaIjEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.preheader.i.i

_ZN4absl12lts_2026052616strings_internal4ItoaIjEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i
  store i8 48, ptr %i.ai, align 8, !tbaa !44
  store i64 1, ptr %i.aj, align 8, !tbaa !89
  store i8 0, ptr %i.bo, align 1, !tbaa !44
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i

.preheader.i.i:                                   ; preds = %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i, %.noexc68.i
  %.02733.i.i = phi i32 [ %i.df, %.noexc68.i ], [ %i.ca, %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i ] ; 5 uses
  %i.df = udiv i32 %.02733.i.i, %i.dd             ; 2 uses
  %i.dg = mul i32 %i.df, %i.dd                    ; 2 uses
  %26 = icmp ugt i32 %.02733.i.i, %i.dg
  %.recomposed = urem i32 %.02733.i.i, %i.dd
  %27 = sub nuw i32 %i.dg, %.02733.i.i
  %28 = select i1 %26, i32 %.recomposed, i32 %27  ; 2 uses
  %29 = icmp slt i32 %28, 10
  %.v.i.i = select i1 %29, i32 48, i32 55
  %i.dh = add nsw i32 %.v.i.i, %28
  %i.di = trunc i32 %i.dh to i8
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.di)
          to label %.noexc68.i unwind label %bb.c ; 0 uses

.noexc68.i:                                       ; preds = %.preheader.i.i
  %.not.i.i = icmp ugt i32 %i.dd, %.02733.i.i
  br i1 %.not.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !2180

bb.c:                                             ; preds = %.preheader.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i: ; preds = %.noexc68.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !43
  %.pre293.i = load i64, ptr %i.aj, align 8, !tbaa !89
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i, %_ZN4absl12lts_2026052616strings_internal4ItoaIjEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %i.dl = phi i64 [ %.pre293.i, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i ], [ 1, %_ZN4absl12lts_2026052616strings_internal4ItoaIjEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ]
  %i.dm = phi ptr [ %.pre.i, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i ], [ %i.ai, %_ZN4absl12lts_2026052616strings_internal4ItoaIjEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.dn = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %i.dl, ptr %i.dm, ptr noundef nonnull %i.c, i32 noundef %i.dd)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i
  %i.do = zext i1 %i.dn to i8
  store i8 %i.do, ptr %2, align 8, !tbaa !54
  store ptr null, ptr %i.ak, align 8, !tbaa !122
  store i8 1, ptr %i.al, align 8, !tbaa !124
  br i1 %i.dn, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i, label %bb.f

bb.e:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.dq = load ptr, ptr %6, align 8, !tbaa !43
  %i.dr = load i64, ptr %i.am, align 8, !tbaa !89
  store i64 %i.dr, ptr %5, align 8
  store ptr %i.dq, ptr %i.an, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 1455, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  %i.ds = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ao
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.j
  %i.du = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.dw = load ptr, ptr %3, align 8, !tbaa !59    ; 3 uses
  %.not.i.i82.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i82.i, label %bb.p, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #31, !inline_history !2181
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90.i

bb.l:                                             ; preds = %bb.g
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

bb.m:                                             ; preds = %bb.h
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn41.i = phi { ptr, i32 } [ %i.ed, %bb.n ], [ %i.ec, %bb.m ] ; 2 uses
  %i.ee = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ao
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %bb.o
  %i.eg = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i, %bb.l
  %.pn41.pn.i = phi { ptr, i32 } [ %i.eb, %bb.l ], [ %.pn41.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i ], [ %.pn41.i, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ei = load ptr, ptr %3, align 8, !tbaa !59    ; 3 uses
  %.not.i.i88.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i88.i, label %_ZN7testing7MessageD2Ev.exit90.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #31, !inline_history !2181
  br label %_ZN7testing7MessageD2Ev.exit90.i

_ZN7testing7MessageD2Ev.exit90.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, %bb.k
  %.pn41.pn.pn.i = phi { ptr, i32 } [ %i.ea, %bb.k ], [ %.pn41.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ], [ %.pn41.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #31
  br label %bb.t

bb.p:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pr217.i = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 4 uses
  %.not.i.i.i91.i = icmp eq ptr %.pr217.i, null
  br i1 %.not.i.i.i91.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = load ptr, ptr %.pr217.i, align 8, !tbaa !43 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pr217.i, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i: ; preds = %bb.q
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !44
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr217.i, i64 noundef 32) #33
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i, %bb.p, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.er = load i32, ptr %i.c, align 4, !tbaa !66, !noalias !2187
  %i.es = load i32, ptr %i.b, align 4, !tbaa !66, !noalias !2187
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.u

bb.s:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.358, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.u

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %bb.s, %bb.r
  %i.eu = load i8, ptr %7, align 8, !tbaa !54, !range !55, !noundef !56
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ae, label %bb.v

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90.i, %bb.e
  %.pn41.pn.pn.pn.i = phi { ptr, i32 } [ %.pn41.pn.pn.i, %_ZN7testing7MessageD2Ev.exit90.i ], [ %i.dp, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.bv

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_136stringtest_safe_strtou64_random_TestD0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_136stringtest_safe_strtou64_random_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
  %i.d = load i32, ptr %i.a, align 16, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = zext i32 %i.d to i128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66
  %i.l = zext i32 %i.k to i64
  %i.m = or disjoint i64 %i.h, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = shl nuw i128 %i.i, 96
  %i.p = shl nuw nsw i128 %i.n, 32                ; 2 uses
  %i.q = trunc i128 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = zext i32 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t
  %.masked.i.i.i.i.i.i.i = and i128 %i.p, 79228162495817593519834398720
  %i.v = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.o
  %i.w = zext i64 %i.u to i128
  %i.x = add nuw nsw i128 %i.w, 1442695040888963407 ; 2 uses
  %i.y = add i128 %i.v, %i.x
  %i.z = lshr i128 %i.y, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.z to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.aa = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.ab = shl nuw i128 %i.aa, 64
  %i.ac = and i128 %i.x, 18446744073709551615
  %i.ad = or disjoint i128 %i.ab, %i.ac
  %i.ae = mul i128 %i.ad, 47026247687942121848144207491837523525
  %i.af = add i128 %i.ae, 1442695040888963407     ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = lshr i128 %i.af, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ah to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 17
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %bb.a
  %.0291.i = phi i64 [ 0, %bb.a ], [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  %.sroa.14.0290.i = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.a ], [ %.sroa.14.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  %.sroa.0208.0289.i = phi i64 [ %i.ag, %bb.a ], [ %.sroa.0208.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bp = zext i64 %.sroa.14.0290.i to i128
  %i.bq = shl nuw i128 %i.bp, 64
  %i.br = zext i64 %.sroa.0208.0289.i to i128
  %i.bs = or disjoint i128 %i.bq, %i.br
  %i.bt = mul i128 %i.bs, 47026247687942121848144207491837523525
  %i.bu = add i128 %i.bt, 1442695040888963407     ; 3 uses
  %i.bv = trunc i128 %i.bu to i64                 ; 2 uses
  %i.bw = lshr i128 %i.bu, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.bw to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 4 uses
  %i.bx = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.by = xor i64 %.narrow.i.i.i.i.i.i, %i.bv     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.by, i64 %i.by, i64 %i.bx) ; 2 uses
  store i64 %.0.i.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !98
  %i.bz = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.ca = shl nuw i128 %i.bz, 64
  %i.cb = and i128 %i.bu, 18446744073709551615
  %i.cc = or disjoint i128 %i.ca, %i.cb
  %i.cd = mul i128 %i.cc, 47026247687942121848144207491837523525
  %i.ce = add i128 %i.cd, 1442695040888963407     ; 2 uses
  %i.cf = trunc i128 %i.ce to i64                 ; 3 uses
  %i.cg = lshr i128 %i.ce, 64
  %.tr.i.i.i.i.i.i176.i = trunc nuw i128 %i.cg to i64
  %.narrow.i.i.i.i.i.i177.i = add i64 %.tr.i.i.i.i.i.i176.i, 6364136223846793005 ; 4 uses
  %i.ch = lshr i64 %.narrow.i.i.i.i.i.i177.i, 58
  %i.ci = xor i64 %.narrow.i.i.i.i.i.i177.i, %i.cf ; 2 uses
  %.0.i.i.i.i.i.i.i178.i = call noundef i64 @llvm.fshr.i64(i64 %i.ci, i64 %i.ci, i64 %i.ch)
  %i.cj = zext i64 %.0.i.i.i.i.i.i.i178.i to i128
  %i.ck = mul nuw nsw i128 %i.cj, 35              ; 2 uses
  %extract15.i.i179.i = lshr i128 %i.ck, 64
  %extract.t16.i.i180.i = trunc nuw nsw i128 %extract15.i.i179.i to i32
  %i.cl = and i128 %i.ck, 18446744073709551600
  %or.cond.i = icmp eq i128 %i.cl, 0
  br i1 %or.cond.i, label %.lr.ph.i.i182.i, label %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i

.lr.ph.i.i182.i:                                  ; preds = %bb.b, %.lr.ph.i.i182.i
  %i.cm = phi i64 [ %i.ct, %.lr.ph.i.i182.i ], [ %i.cf, %bb.b ]
  %.sroa.22.0.copyload.i.i232728.i.i183.i = phi i64 [ %.narrow.i.i.i.i25.i.i185.i, %.lr.ph.i.i182.i ], [ %.narrow.i.i.i.i.i.i177.i, %bb.b ]
  %i.cn = zext i64 %.sroa.22.0.copyload.i.i232728.i.i183.i to i128
  %i.co = shl nuw i128 %i.cn, 64
  %i.cp = zext i64 %i.cm to i128
  %i.cq = or disjoint i128 %i.co, %i.cp
  %i.cr = mul i128 %i.cq, 47026247687942121848144207491837523525
  %i.cs = add i128 %i.cr, 1442695040888963407     ; 2 uses
  %i.ct = trunc i128 %i.cs to i64                 ; 3 uses
  %i.cu = lshr i128 %i.cs, 64
  %.tr.i.i.i.i24.i.i184.i = trunc nuw i128 %i.cu to i64
  %.narrow.i.i.i.i25.i.i185.i = add i64 %.tr.i.i.i.i24.i.i184.i, 6364136223846793005 ; 4 uses
  %i.cv = lshr i64 %.narrow.i.i.i.i25.i.i185.i, 58
  %i.cw = xor i64 %.narrow.i.i.i.i25.i.i185.i, %i.ct ; 2 uses
  %.0.i.i.i.i.i26.i.i186.i = call noundef i64 @llvm.fshr.i64(i64 %i.cw, i64 %i.cw, i64 %i.cv)
  %i.cx = zext i64 %.0.i.i.i.i.i26.i.i186.i to i128
  %i.cy = mul nuw nsw i128 %i.cx, 35              ; 2 uses
  %i.cz = and i128 %i.cy, 18446744073709551600
  %i.da = icmp eq i128 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i182.i, label %..loopexit_crit_edge.i.i187.i, !llvm.loop !14

..loopexit_crit_edge.i.i187.i:                    ; preds = %.lr.ph.i.i182.i
  %extract19.le.i.i188.i = lshr i128 %i.cy, 64
  %extract.t20.le.i.i189.i = trunc nuw nsw i128 %extract19.le.i.i188.i to i32
  br label %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i

_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i: ; preds = %..loopexit_crit_edge.i.i187.i, %bb.b
  %.sroa.0208.2.i = phi i64 [ %i.cf, %bb.b ], [ %i.ct, %..loopexit_crit_edge.i.i187.i ]
  %.sroa.14.2.i = phi i64 [ %.narrow.i.i.i.i.i.i177.i, %bb.b ], [ %.narrow.i.i.i.i25.i.i185.i, %..loopexit_crit_edge.i.i187.i ]
  %.0.i181.i = phi i32 [ %extract.t16.i.i180.i, %bb.b ], [ %extract.t20.le.i.i189.i, %..loopexit_crit_edge.i.i187.i ]
  %i.db = add nuw nsw i32 %.0.i181.i, 2           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %i.ai, ptr %1, align 8, !tbaa !88
  %i.dc = icmp eq i64 %.narrow.i.i.i.i.i.i, %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aj, i8 0, i64 9, i1 false)
  br i1 %i.dc, label %_ZN4absl12lts_2026052616strings_internal4ItoaImEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i
  %i.dd = zext nneg i32 %i.db to i64              ; 4 uses
  br label %bb.c

_ZN4absl12lts_2026052616strings_internal4ItoaImEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i: ; preds = %_ZNSt24uniform_int_distributionIiEclIN4absl12lts_2026052614InsecureBitGenEEEiRT_RKNS0_10param_typeE.exit.i
  store i8 48, ptr %i.ai, align 8, !tbaa !44
  store i64 1, ptr %i.aj, align 8, !tbaa !89
  store i8 0, ptr %i.bo, align 1, !tbaa !44
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i

bb.c:                                             ; preds = %.noexc68.i, %.preheader.i.i
  %.02733.i.i = phi i64 [ %.0.i.i.i.i.i.i.i, %.preheader.i.i ], [ %i.de, %.noexc68.i ] ; 5 uses
  %i.de = udiv i64 %.02733.i.i, %i.dd             ; 2 uses
  %i.df = mul i64 %i.de, %i.dd                    ; 2 uses
  %26 = icmp ugt i64 %.02733.i.i, %i.df
  %.recomposed = urem i64 %.02733.i.i, %i.dd
  %27 = sub nuw i64 %i.df, %.02733.i.i
  %28 = select i1 %26, i64 %.recomposed, i64 %27
  %i.dg = trunc i64 %28 to i32                    ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 10
  %.v.i.i = select i1 %i.dh, i32 48, i32 55
  %i.di = add nsw i32 %.v.i.i, %i.dg
  %i.dj = trunc i32 %i.di to i8
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.dj)
          to label %.noexc68.i unwind label %bb.d ; 0 uses

.noexc68.i:                                       ; preds = %bb.c
  %.not.i.i = icmp ult i64 %.02733.i.i, %i.dd
  br i1 %.not.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i, label %bb.c, !llvm.loop !2188

bb.d:                                             ; preds = %bb.c
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i: ; preds = %.noexc68.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !43
  %.pre293.i = load i64, ptr %i.aj, align 8, !tbaa !89
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i, %_ZN4absl12lts_2026052616strings_internal4ItoaImEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i
  %i.dm = phi i64 [ %.pre293.i, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i ], [ 1, %_ZN4absl12lts_2026052616strings_internal4ItoaImEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ]
  %i.dn = phi ptr [ %.pre.i, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.loopexit.i ], [ %i.ai, %_ZN4absl12lts_2026052616strings_internal4ItoaImEEbT_iPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.do = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal18safe_strtou64_baseESt17basic_string_viewIcSt11char_traitsIcEEPmi(i64 %i.dm, ptr %i.dn, ptr noundef nonnull %i.c, i32 noundef %i.db)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %2, align 8, !tbaa !54
  store ptr null, ptr %i.ak, align 8, !tbaa !122
  store i8 1, ptr %i.al, align 8, !tbaa !124
  br i1 %i.do, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i, label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.dr = load ptr, ptr %6, align 8, !tbaa !43
  %i.ds = load i64, ptr %i.am, align 8, !tbaa !89
  store i64 %i.ds, ptr %5, align 8
  store ptr %i.dr, ptr %i.an, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 1455, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  %i.dt = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ao
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.k
  %i.dv = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.dx = load ptr, ptr %3, align 8, !tbaa !59    ; 3 uses
  %.not.i.i82.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i82.i, label %bb.q, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dx) #31, !inline_history !2189
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit90.i

bb.m:                                             ; preds = %bb.h
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

bb.n:                                             ; preds = %bb.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn41.i = phi { ptr, i32 } [ %i.ee, %bb.o ], [ %i.ed, %bb.n ] ; 2 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ao
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %bb.p
  %i.eh = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i, %bb.m
  %.pn41.pn.i = phi { ptr, i32 } [ %i.ec, %bb.m ], [ %.pn41.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i ], [ %.pn41.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ej = load ptr, ptr %3, align 8, !tbaa !59    ; 3 uses
  %.not.i.i88.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i88.i, label %_ZN7testing7MessageD2Ev.exit90.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ej) #31, !inline_history !2189
  br label %_ZN7testing7MessageD2Ev.exit90.i

_ZN7testing7MessageD2Ev.exit90.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, %bb.l
  %.pn41.pn.pn.i = phi { ptr, i32 } [ %i.eb, %bb.l ], [ %.pn41.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i ], [ %.pn41.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #31
  br label %bb.u

bb.q:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pr217.i = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 4 uses
  %.not.i.i.i91.i = icmp eq ptr %.pr217.i, null
  br i1 %.not.i.i.i91.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.en = load ptr, ptr %.pr217.i, align 8, !tbaa !43 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pr217.i, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i: ; preds = %bb.r
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !44
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #33
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i92.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr217.i, i64 noundef 32) #33
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i93.i, %bb.q, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.es = load i64, ptr %i.c, align 8, !tbaa !98, !noalias !2195
  %i.et = load i64, ptr %i.b, align 8, !tbaa !98, !noalias !2195
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.v

bb.t:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit95.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.594, ptr noundef nonnull @.str.358, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %bb.t, %bb.s
  %i.ev = load i8, ptr %7, align 8, !tbaa !54, !range !55, !noundef !56
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.af, label %bb.w

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit90.i, %bb.f
  %.pn41.pn.pn.pn.i = phi { ptr, i32 } [ %.pn41.pn.pn.i, %_ZN7testing7MessageD2Ev.exit90.i ], [ %i.dq, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.bw

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_numbers_test.cc:bb.a
  %i.crg = load i64, ptr %i.cpi, align 8, !tbaa !44
  br label %common.resume.sink.split

__cxx_global_var_init.105.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1061
  store ptr %i.cqh, ptr @_ZN12_GLOBAL__N_135FastHexToBufferZeroPad16_Smoke_Test10test_info_E, align 8, !tbaa !2919
  %i.crh = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_135FastHexToBufferZeroPad16_Smoke_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cri = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.cri, ptr %0, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cri, ptr noundef nonnull align 1 dereferenceable(15) @.str.109, i64 15, i1 false)
  %i.crj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.crj, align 8, !tbaa !89
  %i.crk = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.crk, align 1, !tbaa !44
  %i.crl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.crl, ptr %2, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 66, ptr %i.a, align 8, !tbaa !98
  %i.crm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i1070 unwind label %bb.op ; 3 uses

.noexc7.i1070:                                    ; preds = %__cxx_global_var_init.105.exit
  store ptr %i.crm, ptr %2, align 8, !tbaa !43
  %i.crn = load i64, ptr %i.a, align 8, !tbaa !98 ; 3 uses
  store i64 %i.crn, ptr %i.crl, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.crm, ptr noundef nonnull align 1 dereferenceable(66) @.str.2, i64 66, i1 false)
  %i.cro = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.crn, ptr %i.cro, align 8, !tbaa !89
  %i.crp = getelementptr inbounds nuw i8, ptr %i.crm, i64 %i.crn
  store i8 0, ptr %i.crp, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.crq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.crq, ptr %1, align 8, !tbaa !88
  %i.crr = load ptr, ptr %2, align 8, !tbaa !43   ; 2 uses
  %i.crs = icmp eq ptr %i.crr, %i.crl
  br i1 %i.crs, label %bb.oj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071

bb.oj:                                            ; preds = %.noexc7.i1070
  %i.crt = load i64, ptr %i.cro, align 8, !tbaa !89 ; 3 uses
  %i.cru = icmp ult i64 %i.crt, 16
  call void @llvm.assume(i1 %i.cru)
  %i.crv = add nuw nsw i64 %i.crt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.crq, ptr noundef nonnull align 8 dereferenceable(1) %i.crl, i64 %i.crv, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1073

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071: ; preds = %.noexc7.i1070
  store ptr %i.crr, ptr %1, align 8, !tbaa !43
  %i.crw = load i64, ptr %i.crl, align 8, !tbaa !44
  store i64 %i.crw, ptr %i.crq, align 8, !tbaa !44
  %.pre.i1072 = load i64, ptr %i.cro, align 8, !tbaa !89
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1073

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1073: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071, %bb.oj
  %i.crx = phi i64 [ %i.crt, %bb.oj ], [ %.pre.i1072, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071 ]
  %i.cry = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.crx, ptr %i.cry, align 8, !tbaa !89
  store ptr %i.crl, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.cro, align 8, !tbaa !89
  store i8 0, ptr %i.crl, align 8, !tbaa !44
  %i.crz = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2346, ptr %i.crz, align 8, !tbaa !2917
  %i.csa = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.ok unwind label %bb.oq

bb.ok:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1073
  %i.csb = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 2346)
          to label %bb.ol unwind label %bb.oq

bb.ol:                                            ; preds = %bb.ok
  %i.csc = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 2346)
          to label %bb.om unwind label %bb.oq

bb.om:                                            ; preds = %bb.ol
  %i.csd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %bb.on unwind label %bb.oq     ; 2 uses

bb.on:                                            ; preds = %bb.om
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131FastIntToBuffer_WritesNull_TestEEE, i64 16), ptr %i.csd, align 8, !tbaa !28
  %i.cse = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.csa, ptr noundef %i.csb, ptr noundef %i.csc, ptr noundef nonnull %i.csd)
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.csf = load ptr, ptr %1, align 8, !tbaa !43   ; 2 uses
  %i.csg = icmp eq ptr %i.csf, %i.crq
  br i1 %i.csg, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i1080, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1079

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1079: ; preds = %bb.oo
  %i.csh = load i64, ptr %i.crq, align 8, !tbaa !44
  %i.csi = add i64 %i.csh, 1
  call void @_ZdlPvm(ptr noundef %i.csf, i64 noundef %i.csi) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i1080

_ZN7testing8internal12CodeLocationD2Ev.exit.i1080: ; preds = %bb.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1079
  %i.csj = load ptr, ptr %2, align 8, !tbaa !43   ; 2 uses
  %i.csk = icmp eq ptr %i.csj, %i.crl
  br i1 %i.csk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1082, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1081

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1081: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i1080
  %i.csl = load i64, ptr %i.crl, align 8, !tbaa !44
  %i.csm = add i64 %i.csl, 1
  call void @_ZdlPvm(ptr noundef %i.csj, i64 noundef %i.csm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1082

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1082: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i1080, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1081
  %i.csn = load ptr, ptr %0, align 8, !tbaa !43   ; 2 uses
  %i.cso = icmp eq ptr %i.csn, %i.cri
  br i1 %i.cso, label %__cxx_global_var_init.108.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1083

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1083: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1082
  %i.csp = load i64, ptr %i.cri, align 8, !tbaa !44
  %i.csq = add i64 %i.csp, 1
  call void @_ZdlPvm(ptr noundef %i.csn, i64 noundef %i.csq) #33
  br label %__cxx_global_var_init.108.exit

bb.op:                                            ; preds = %__cxx_global_var_init.105.exit
  %i.csr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1065

bb.oq:                                            ; preds = %bb.on, %bb.om, %bb.ol, %bb.ok, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1073
  %i.css = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cst = load ptr, ptr %1, align 8, !tbaa !43   ; 2 uses
  %i.csu = icmp eq ptr %i.cst, %i.crq
  br i1 %i.csu, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1074: ; preds = %bb.oq
  %i.csv = load i64, ptr %i.crq, align 8, !tbaa !44
  %i.csw = add i64 %i.csv, 1
  call void @_ZdlPvm(ptr noundef %i.cst, i64 noundef %i.csw) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075

_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075: ; preds = %bb.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1074
  %i.csx = load ptr, ptr %2, align 8, !tbaa !43   ; 2 uses
  %i.csy = icmp eq ptr %i.csx, %i.crl
  br i1 %i.csy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1065, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1076

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1076: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075
  %i.csz = load i64, ptr %i.crl, align 8, !tbaa !44
  %i.cta = add i64 %i.csz, 1
  call void @_ZdlPvm(ptr noundef %i.csx, i64 noundef %i.cta) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1065: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1076, %bb.op
  %.pn.i1066 = phi { ptr, i32 } [ %i.csr, %bb.op ], [ %i.css, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1076 ], [ %i.css, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1075 ] ; 2 uses
  %i.ctb = load ptr, ptr %0, align 8, !tbaa !43   ; 2 uses
  %i.ctc = icmp eq ptr %i.ctb, %i.cri
  br i1 %i.ctc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1067

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1067: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1065
  %i.ctd = load i64, ptr %i.cri, align 8, !tbaa !44
  br label %common.resume.sink.split

__cxx_global_var_init.108.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1082, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1083
  store ptr %i.cse, ptr @_ZN12_GLOBAL__N_131FastIntToBuffer_WritesNull_Test10test_info_E, align 8, !tbaa !2919
  %i.cte = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_131FastIntToBuffer_WritesNull_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { cold }
attributes #38 = { cold nounwind }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev, null, null, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{!6, !74}
!7 = distinct !{!7, !74}
!8 = distinct !{!8, !74}
!9 = distinct !{!9, !74}
!10 = distinct !{null, null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null, null, null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{!14, !74}
!15 = distinct !{!15, !74}
!16 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPcED2Ev, null}
!17 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKcED2Ev, null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"vtable pointer", !22, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"long", !23, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !23, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !23, i64 0}
!32 = !{!"any pointer", !23, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !29, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !33, i64 40, !34, i64 48, !23, i64 64, !24, i64 192, !35, i64 200, !37, i64 208}
!39 = !{!38, !31, i64 32}
!40 = !{!"p1 omnipotent char", !32, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !29, i64 8, !23, i64 16}
!43 = !{!42, !40, i64 0}
!44 = !{!23, !23, i64 0}
!45 = !{!"bool", !23, i64 0}
!46 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!47 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !46, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !47, i64 0}
!49 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !49, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !50, i64 0}
!52 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !51, i64 0}
!53 = !{!"_ZTSN7testing15AssertionResultE", !45, i64 0, !52, i64 8}
!54 = !{!53, !45, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!46, !46, i64 0}
!58 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !32, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTSN7testing8internal2REE", !32, i64 0}
!61 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!62 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0}
!63 = !{!"_ZTSSt12__shared_ptrIKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !62, i64 8}
!64 = !{!63, !60, i64 0}
!65 = !{!62, !61, i64 0}
!66 = !{!24, !24, i64 0}
!67 = !{!"_ZTSSt10shared_ptrIKN7testing8internal2REEE", !63, i64 0}
!68 = !{!"_ZTSN7testing8internal19MatchesRegexMatcherE", !67, i64 0, !45, i64 16}
!69 = !{!68, !45, i64 16}
!70 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 8, !24, i64 12}
!71 = !{!70, !24, i64 8}
!72 = !{!70, !24, i64 12}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"double", !23, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!78 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !32, i64 0}
!79 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !77, i64 0, !78, i64 8, !23, i64 16}
!80 = !{!79, !78, i64 8}
!81 = !{!"p1 _ZTSSo", !32, i64 0}
!82 = !{!"_ZTSN7testing19MatchResultListenerE", !81, i64 8}
!83 = !{!82, !81, i64 8}
!84 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!85 = !{!84, !32, i64 0}
!86 = !{!84, !32, i64 8}
!87 = !{ptr @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo}
!88 = !{!41, !40, i64 0}
!89 = !{!42, !29, i64 8}
!90 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56}
!91 = !{!90, !40, i64 40}
!92 = !{!90, !40, i64 32}
!93 = !{ptr @_ZN7testing25StringMatchResultListenerD2Ev}
!94 = !{!"_ZTSSi", !29, i64 8}
!95 = !{!94, !29, i64 8}
!96 = !{!84, !32, i64 24}
!97 = !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!98 = !{!29, !29, i64 0}
!99 = !{!"_ZTSSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !60, i64 16}
!100 = !{!99, !60, i64 16}
!101 = !{!32, !32, i64 0}
!102 = !{!"_ZTSSt13__atomic_baseIiE", !24, i64 0}
!103 = !{!102, !24, i64 0}
!104 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !32, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!38, !29, i64 8}
!107 = !{!40, !40, i64 0}
!108 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!109 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!110 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!111 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!112 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !81, i64 216, !23, i64 224, !45, i64 225, !108, i64 232, !109, i64 240, !110, i64 248, !111, i64 256}
!113 = !{!112, !81, i64 216}
!114 = !{!112, !23, i64 224}
!115 = !{!112, !45, i64 225}
!116 = !{!"_ZTSN4absl12lts_2026052616strings_internal13OStringStream9StreambufE", !90, i64 0, !46, i64 64}
!117 = !{!116, !46, i64 64}
!118 = !{ptr @_ZN4absl12lts_2026052616strings_internal13OStringStreamD1Ev}
!119 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !29, i64 0, !40, i64 8}
!120 = !{!119, !29, i64 0}
!121 = !{!119, !40, i64 8}
!122 = !{!47, !46, i64 0}
!123 = !{!"_ZTSN7testing8internal26AssertionResultExpectationE", !53, i64 0, !45, i64 16}
!124 = !{!123, !45, i64 16}
!125 = !{!38, !29, i64 16}
!126 = !{!"short", !23, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"__int128", !23, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"float", !23, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!38, !30, i64 24}
!133 = !{!30, !30, i64 0}
!134 = !{!"_ZTSN4absl12lts_2026052616strings_internal16uint32_test_caseE", !40, i64 0, !45, i64 8, !24, i64 12, !24, i64 16}
!135 = !{!134, !24, i64 12}
!136 = !{!45, !45, i64 0}
!137 = !{!134, !40, i64 0}
!138 = !{!"_ZTSN4absl12lts_2026052616strings_internal16uint64_test_caseE", !40, i64 0, !45, i64 8, !24, i64 12, !29, i64 16}
!139 = !{!138, !24, i64 12}
!140 = !{!138, !40, i64 0}
!141 = !{!"p1 long", !32, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"p1 _ZTSSt6vectorIfSaIfEE", !32, i64 0}
!144 = !{!"p1 _ZTSN12_GLOBAL__N_143SimpleDtoaTest_ExhaustiveFloatToBuffer_TestE", !32, i64 0}
!145 = !{!"_ZTSZN12_GLOBAL__N_143SimpleDtoaTest_ExhaustiveFloatToBuffer_Test8TestBodyEvE3$_0", !141, i64 0, !143, i64 8, !144, i64 16}
!146 = !{!"_ZTSSt14_Rb_tree_color", !23, i64 0}
!147 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !32, i64 0}
!148 = !{!"_ZTSSt18_Rb_tree_node_base", !146, i64 0, !147, i64 8, !147, i64 16, !147, i64 24}
!149 = !{!"_ZTSSt15_Rb_tree_header", !148, i64 0, !29, i64 32}
!150 = !{!149, !147, i64 16}
!151 = !{!147, !147, i64 0}
!152 = !{!149, !29, i64 32}
!153 = !{!149, !147, i64 8}
!154 = !{!"p1 float", !32, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
end_hunk_3
