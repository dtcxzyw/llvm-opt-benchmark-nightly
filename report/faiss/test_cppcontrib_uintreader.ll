Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_cppcontrib_uintreader?download=true
inline.NumInlined: 12916
inline.NumDeleted: 887
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumUnrolled: 189
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci:bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef 547)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI38testCppcontribUintreader_Test8bit_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI38testCppcontribUintreader_Test8bit_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV38testCppcontribUintreader_Test8bit_Test, i64 16), ptr %i.a, align 8, !tbaa !13
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #17
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z18TestUintReaderBitsILl8EEvv() local_unnamed_addr #2 comdat {
bb.a:
  tail call void @_Z14TestUintReaderILl1ELl8EEvv()
  tail call void @_Z14TestUintReaderILl2ELl8EEvv()
  tail call void @_Z14TestUintReaderILl3ELl8EEvv()
  tail call void @_Z14TestUintReaderILl4ELl8EEvv()
  tail call void @_Z14TestUintReaderILl5ELl8EEvv()
  tail call void @_Z14TestUintReaderILl6ELl8EEvv()
  tail call void @_Z14TestUintReaderILl7ELl8EEvv()
  tail call void @_Z14TestUintReaderILl8ELl8EEvv()
  tail call void @_Z14TestUintReaderILl9ELl8EEvv()
  tail call void @_Z14TestUintReaderILl10ELl8EEvv()
  tail call void @_Z14TestUintReaderILl11ELl8EEvv()
  tail call void @_Z14TestUintReaderILl12ELl8EEvv()
  tail call void @_Z14TestUintReaderILl13ELl8EEvv()
  tail call void @_Z14TestUintReaderILl14ELl8EEvv()
  tail call void @_Z14TestUintReaderILl15ELl8EEvv()
  tail call void @_Z14TestUintReaderILl16ELl8EEvv()
  tail call void @_Z14TestUintReaderILl17ELl8EEvv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14TestUintReaderILl1ELl8EEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::linear_congruential_engine", align 8 ; 14 uses
  %1 = alloca %"class.std::uniform_int_distribution", align 8 ; 25 uses
  %2 = alloca %"struct.faiss::BitstringReader", align 8 ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store i64 1, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i64 0, ptr %1, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 256, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 7 uses
  store i8 0, ptr %i.d, align 1
  %i.e = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit:         ; preds = %bb.a
  %i.f = trunc i64 %i.e to i8
  store i8 %i.f, ptr %i.d, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.d, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.8, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.7, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.6, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.5, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.4, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.3, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.2, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.1, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.h, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ], [ %i.m, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.1 ], [ %i.r, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.2 ], [ %i.w, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.3 ], [ %i.ab, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.4 ], [ %i.ag, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.5 ], [ %i.al, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.6 ], [ %i.aq, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.7 ], [ %i.av, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.8 ]
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit16

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.d) #17
  %i.h = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.h, align 1
  %i.i = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.1 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.1:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.j = load i8, ptr %i.h, align 1, !tbaa !30
  %i.k = trunc i64 %i.i to i8
  %i.l = or i8 %i.j, %i.k
  store i8 %i.l, ptr %i.h, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.h, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.1 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.1: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.h) #17
  %i.m = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.m, align 1
  %i.n = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.2 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.2:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.1
  %i.o = load i8, ptr %i.m, align 1, !tbaa !30
  %i.p = trunc i64 %i.n to i8
  %i.q = or i8 %i.o, %i.p
  store i8 %i.q, ptr %i.m, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.m, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.2 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.2: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.m) #17
  %i.r = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.r, align 1
  %i.s = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.3 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.3:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.2
  %i.t = load i8, ptr %i.r, align 1, !tbaa !30
  %i.u = trunc i64 %i.s to i8
  %i.v = or i8 %i.t, %i.u
  store i8 %i.v, ptr %i.r, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.r, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.3 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.3: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.r) #17
  %i.w = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.w, align 1
  %i.x = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.4 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.4:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.3
  %i.y = load i8, ptr %i.w, align 1, !tbaa !30
  %i.z = trunc i64 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.w, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.4 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.4: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.w) #17
  %i.ab = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.ab, align 1
  %i.ac = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.5 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.5:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.4
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ae = trunc i64 %i.ac to i8
  %i.af = or i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.ab, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.5 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.5: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #17
  %i.ag = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.ag, align 1
  %i.ah = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.6 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.6:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.5
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.aj = trunc i64 %i.ah to i8
  %i.ak = or i8 %i.ai, %i.aj
  store i8 %i.ak, ptr %i.ag, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.ag, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.6 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.6: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #17
  %i.al = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.al, align 1
  %i.am = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.7 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.7:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.6
  %i.an = load i8, ptr %i.al, align 1, !tbaa !30
  %i.ao = trunc i64 %i.am to i8
  %i.ap = or i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.al, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.7 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.7: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.al) #17
  %i.aq = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.aq, align 1
  %i.ar = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.8 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.8:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.7
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.at = trunc i64 %i.ar to i8
  %i.au = or i8 %i.as, %i.at
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.aq, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.8 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.8: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #17
  %i.av = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #18 ; 8 uses
  store i8 0, ptr %i.av, align 1
  %i.aw = invoke noundef i64 @_ZNSt24uniform_int_distributionImEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN5faiss15BitstringWriter5writeEmi.exit.9 unwind label %bb.b

_ZN5faiss15BitstringWriter5writeEmi.exit.9:       ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.8
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !30
  %i.ay = trunc i64 %i.aw to i8
  %i.az = or i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.av, align 1, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.av, ptr %2, align 8, !tbaa !33
  store i64 1, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.c, align 8, !tbaa !35
  invoke void @_ZN8TestLoopILl1ELl8ELl0EE4testEPKhRN5faiss15BitstringReaderE(ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.9 unwind label %bb.c

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.9: ; preds = %_ZN5faiss15BitstringWriter5writeEmi.exit.9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZdaPv(ptr noundef nonnull %i.av) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  ret void

end_hunk_0
