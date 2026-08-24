Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fixture_test?download=true
inline.NumInlined: 254
inline.NumDeleted: 140
begin_hunk_0_@_ZN23MyFixture_Bar_Benchmark13BenchmarkCaseERN9benchmark5StateE:bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN23MyFixture_Bar_BenchmarkC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !15
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN9MyFixtureC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #17
  br label %_ZN9MyFixtureC2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %common.resume

_ZN9MyFixtureC2Ev.exit:                           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.l, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23MyFixture_Bar_Benchmark, i64 16), ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.m, ptr noundef nonnull align 1 dereferenceable(13) @.str.14, i64 13, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.o, align 1, !tbaa !15
  invoke void @_ZN9benchmark8internal9Benchmark7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN9MyFixtureC2Ev.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.m, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.e:                                             ; preds = %_ZN9MyFixtureC2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.e
  %i.w = load i64, ptr %i.m, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN9MyFixtureD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #16
  br label %common.resume
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @__const.main.arg0_default, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !58
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ]    ; 2 uses
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %i.a, ptr noundef nonnull %.0, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4
  %i.e = call noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef %i.d, ptr noundef nonnull %.0)
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() ; 0 uses
  call void @_ZN9benchmark8ShutdownEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.03 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.03
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef, ptr noundef) local_unnamed_addr #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark8ShutdownEv() local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23MyFixture_Foo_BenchmarkD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV9MyFixture, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9MyFixtureD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9MyFixtureD2Ev) #18, !inline_history !59
  unreachable

_ZN9MyFixtureD2Ev.exit:                           ; preds = %bb.a
  tail call void @_ZN9benchmark8internal9BenchmarkD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #16, !inline_history !59
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark7Fixture3RunERNS_5StateE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1)
  %i.d = load ptr, ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1)
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9MyFixture5SetUpERKN9benchmark5StateE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 16, !tbaa !46
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9MyFixture5SetUpERKN9benchmark5StateE) #18
  unreachable

_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a: ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19 ; 2 uses
  store i32 42, ptr %i.g, align 4, !tbaa !4
  %2 = load ptr, ptr %i.d, align 8, !tbaa !22     ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 4) #17
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i, %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit.a, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9MyFixture8TearDownERKN9benchmark5StateE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i32, ptr %i.a, align 16, !tbaa !46
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9MyFixture8TearDownERKN9benchmark5StateE) #18
  unreachable

_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit: ; preds = %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 4) #17
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEE5resetEPi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark7Fixture5SetUpERNS_5StateE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark7Fixture8TearDownERNS_5StateE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 64 dereferenceable(184) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9MyFixtureD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV9MyFixture, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9MyFixtureD2Ev) #18
  unreachable

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN9benchmark8internal9BenchmarkD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23MyFixture_Bar_BenchmarkD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV9MyFixture, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9MyFixtureD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 25, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9MyFixtureD2Ev) #18, !inline_history !59
  unreachable

_ZN9MyFixtureD2Ev.exit:                           ; preds = %bb.a
  tail call void @_ZN9benchmark8internal9BenchmarkD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #16, !inline_history !59
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #17
  ret void
}

declare void @_ZN9benchmark8internal9Benchmark7SetNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9MyFixtureD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN9benchmark8internal9BenchmarkD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224)) unnamed_addr #9

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.28", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.31", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !62

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #16 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %1, ptr %2, align 8, !tbaa !64, !alias.scope !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
end_hunk_0
