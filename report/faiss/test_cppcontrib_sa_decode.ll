Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_cppcontrib_sa_decode?download=true
inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_Z8generatemm:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.e ], [ %i.v, %bb.d ]
  %i.ah = fadd float %.016.i.i.i.i, 0.000000e+00
  %i.ai = getelementptr [4 x i8], ptr %i.t, i64 %.029
  store float %i.ah, ptr %i.ai, align 4, !tbaa !74
  %i.aj = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !80
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 526)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 547)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D256_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_0
begin_hunk_1_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.cbl = load <4 x float>, ptr %i.cay, align 4, !tbaa !74
  %i.cbm = fadd <4 x float> %i.cbl, %i.cbk
  store <4 x float> %i.cbm, ptr %i.cay, align 4, !tbaa !74
  %i.cbn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cbo = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cbp = zext i8 %i.cbo to i64
  %i.cbq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cbs = zext i8 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.cbu = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cbv = zext i8 %i.cbu to i64
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  %i.cbx = shl nuw nsw i64 %i.cbp, 6
  %i.cby = getelementptr inbounds nuw i8, ptr %1, i64 %i.cbx
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 245760
  %i.cca = getelementptr inbounds nuw i8, ptr %i.k, i64 960
  %i.ccb = shl nuw nsw i64 %i.cbs, 6
  %i.ccc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ccb
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 245760
  %i.cce = getelementptr inbounds nuw i8, ptr %i.l, i64 960
  %i.ccf = shl nuw nsw i64 %i.cbv, 6
  %i.ccg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ccf
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 245760
  %i.cci = getelementptr inbounds nuw i8, ptr %8, i64 960 ; 2 uses
  %i.ccj = load <4 x float>, ptr %i.cbw, align 4, !tbaa !74
  %i.cck = load <4 x float>, ptr %i.cbz, align 4, !tbaa !74
  %i.ccl = fadd <4 x float> %i.ccj, %i.cck
  %i.ccm = load <4 x float>, ptr %i.cca, align 4, !tbaa !74
  %i.ccn = load <4 x float>, ptr %i.ccd, align 4, !tbaa !74
  %i.cco = fadd <4 x float> %i.ccm, %i.ccn
  %i.ccp = fmul <4 x float> %i.ac, %i.cco
  %i.ccq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ccl, <4 x float> %i.ccp)
  %i.ccr = load <4 x float>, ptr %i.cce, align 4, !tbaa !74
  %i.ccs = load <4 x float>, ptr %i.cch, align 4, !tbaa !74
  %i.cct = fadd <4 x float> %i.ccr, %i.ccs
  %i.ccu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cct, <4 x float> %i.ccq)
  %i.ccv = load <4 x float>, ptr %i.cci, align 4, !tbaa !74
  %i.ccw = fadd <4 x float> %i.ccv, %i.ccu
  store <4 x float> %i.ccw, ptr %i.cci, align 4, !tbaa !74
  %i.ccx = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.ccy = zext i8 %i.ccx to i64
  %i.ccz = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cda = zext i8 %i.ccz to i64
  %i.cdb = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cdc = zext i8 %i.cdb to i64
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.j, i64 976
  %i.cde = shl nuw nsw i64 %i.ccy, 6
  %i.cdf = getelementptr inbounds nuw i8, ptr %1, i64 %i.cde
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 245776
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.k, i64 976
  %i.cdi = shl nuw nsw i64 %i.cda, 6
  %i.cdj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdi
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 245776
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.l, i64 976
  %i.cdm = shl nuw nsw i64 %i.cdc, 6
  %i.cdn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdm
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 245776
  %i.cdp = getelementptr inbounds nuw i8, ptr %8, i64 976 ; 2 uses
  %i.cdq = load <4 x float>, ptr %i.cdd, align 4, !tbaa !74
  %i.cdr = load <4 x float>, ptr %i.cdg, align 4, !tbaa !74
  %i.cds = fadd <4 x float> %i.cdq, %i.cdr
  %i.cdt = load <4 x float>, ptr %i.cdh, align 4, !tbaa !74
  %i.cdu = load <4 x float>, ptr %i.cdk, align 4, !tbaa !74
  %i.cdv = fadd <4 x float> %i.cdt, %i.cdu
  %i.cdw = fmul <4 x float> %i.ac, %i.cdv
  %i.cdx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cds, <4 x float> %i.cdw)
  %i.cdy = load <4 x float>, ptr %i.cdl, align 4, !tbaa !74
  %i.cdz = load <4 x float>, ptr %i.cdo, align 4, !tbaa !74
  %i.cea = fadd <4 x float> %i.cdy, %i.cdz
  %i.ceb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cea, <4 x float> %i.cdx)
  %i.cec = load <4 x float>, ptr %i.cdp, align 4, !tbaa !74
  %i.ced = fadd <4 x float> %i.cec, %i.ceb
  store <4 x float> %i.ced, ptr %i.cdp, align 4, !tbaa !74
  %i.cee = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cef = zext i8 %i.cee to i64
  %i.ceg = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.ceh = zext i8 %i.ceg to i64
  %i.cei = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cej = zext i8 %i.cei to i64
  %i.cek = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  %i.cel = shl nuw nsw i64 %i.cef, 6
  %i.cem = getelementptr inbounds nuw i8, ptr %1, i64 %i.cel
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 245792
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.k, i64 992
  %i.cep = shl nuw nsw i64 %i.ceh, 6
  %i.ceq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cep
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceq, i64 245792
  %i.ces = getelementptr inbounds nuw i8, ptr %i.l, i64 992
  %i.cet = shl nuw nsw i64 %i.cej, 6
  %i.ceu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cet
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 245792
  %i.cew = getelementptr inbounds nuw i8, ptr %8, i64 992 ; 2 uses
  %i.cex = load <4 x float>, ptr %i.cek, align 4, !tbaa !74
  %i.cey = load <4 x float>, ptr %i.cen, align 4, !tbaa !74
  %i.cez = fadd <4 x float> %i.cex, %i.cey
  %i.cfa = load <4 x float>, ptr %i.ceo, align 4, !tbaa !74
  %i.cfb = load <4 x float>, ptr %i.cer, align 4, !tbaa !74
  %i.cfc = fadd <4 x float> %i.cfa, %i.cfb
  %i.cfd = fmul <4 x float> %i.ac, %i.cfc
  %i.cfe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cez, <4 x float> %i.cfd)
  %i.cff = load <4 x float>, ptr %i.ces, align 4, !tbaa !74
  %i.cfg = load <4 x float>, ptr %i.cev, align 4, !tbaa !74
  %i.cfh = fadd <4 x float> %i.cff, %i.cfg
  %i.cfi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cfh, <4 x float> %i.cfe)
  %i.cfj = load <4 x float>, ptr %i.cew, align 4, !tbaa !74
  %i.cfk = fadd <4 x float> %i.cfj, %i.cfi
  store <4 x float> %i.cfk, ptr %i.cew, align 4, !tbaa !74
  %i.cfl = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cfm = zext i8 %i.cfl to i64
  %i.cfn = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cfo = zext i8 %i.cfn to i64
  %i.cfp = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cfq = zext i8 %i.cfp to i64
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.j, i64 1008
  %i.cfs = shl nuw nsw i64 %i.cfm, 6
  %i.cft = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfs
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 245808
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.k, i64 1008
  %i.cfw = shl nuw nsw i64 %i.cfo, 6
  %i.cfx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfw
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 245808
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.l, i64 1008
  %i.cga = shl nuw nsw i64 %i.cfq, 6
  %i.cgb = getelementptr inbounds nuw i8, ptr %1, i64 %i.cga
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 245808
  %i.cgd = getelementptr inbounds nuw i8, ptr %8, i64 1008 ; 2 uses
  %i.cge = load <4 x float>, ptr %i.cfr, align 4, !tbaa !74
  %i.cgf = load <4 x float>, ptr %i.cfu, align 4, !tbaa !74
  %i.cgg = fadd <4 x float> %i.cge, %i.cgf
  %i.cgh = load <4 x float>, ptr %i.cfv, align 4, !tbaa !74
  %i.cgi = load <4 x float>, ptr %i.cfy, align 4, !tbaa !74
  %i.cgj = fadd <4 x float> %i.cgh, %i.cgi
  %i.cgk = fmul <4 x float> %i.ac, %i.cgj
  %i.cgl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cgg, <4 x float> %i.cgk)
  %i.cgm = load <4 x float>, ptr %i.cfz, align 4, !tbaa !74
  %i.cgn = load <4 x float>, ptr %i.cgc, align 4, !tbaa !74
  %i.cgo = fadd <4 x float> %i.cgm, %i.cgn
  %i.cgp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cgo, <4 x float> %i.cgl)
  %i.cgq = load <4 x float>, ptr %i.cgd, align 4, !tbaa !74
  %i.cgr = fadd <4 x float> %i.cgq, %i.cgp
  store <4 x float> %i.cgr, ptr %i.cgd, align 4, !tbaa !74
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D256_IVF256_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D256_IVF256_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV43testCppcontribSaDecode_D256_IVF256_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_1
begin_hunk_2_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.ccz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ccy
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccz, i64 229424
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.k, i64 944
  %i.cdc = shl nuw nsw i64 %i.ccu, 7
  %i.cdd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdc
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 229424
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.l, i64 944
  %i.cdg = shl nuw nsw i64 %i.ccw, 7
  %i.cdh = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdg
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 229424
  %i.cdj = getelementptr inbounds nuw i8, ptr %8, i64 944 ; 2 uses
  %i.cdk = load <4 x float>, ptr %i.ccx, align 4, !tbaa !74
  %i.cdl = load <4 x float>, ptr %i.cda, align 4, !tbaa !74
  %i.cdm = fadd <4 x float> %i.cdk, %i.cdl
  %i.cdn = load <4 x float>, ptr %i.cdb, align 4, !tbaa !74
  %i.cdo = load <4 x float>, ptr %i.cde, align 4, !tbaa !74
  %i.cdp = fadd <4 x float> %i.cdn, %i.cdo
  %i.cdq = fmul <4 x float> %i.ac, %i.cdp
  %i.cdr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cdm, <4 x float> %i.cdq)
  %i.cds = load <4 x float>, ptr %i.cdf, align 4, !tbaa !74
  %i.cdt = load <4 x float>, ptr %i.cdi, align 4, !tbaa !74
  %i.cdu = fadd <4 x float> %i.cds, %i.cdt
  %i.cdv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cdu, <4 x float> %i.cdr)
  %i.cdw = load <4 x float>, ptr %i.cdj, align 4, !tbaa !74
  %i.cdx = fadd <4 x float> %i.cdw, %i.cdv
  store <4 x float> %i.cdx, ptr %i.cdj, align 4, !tbaa !74
  %i.cdy = load i8, ptr %i.byt, align 1, !tbaa !17
  %i.cdz = zext i8 %i.cdy to i64
  %i.cea = load i8, ptr %i.byw, align 1, !tbaa !17
  %i.ceb = zext i8 %i.cea to i64
  %i.cec = load i8, ptr %i.byz, align 1, !tbaa !17
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  %i.cef = shl nuw nsw i64 %i.cdz, 7
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cef
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 229440
  %i.cei = getelementptr inbounds nuw i8, ptr %i.k, i64 960
  %i.cej = shl nuw nsw i64 %i.ceb, 7
  %i.cek = getelementptr inbounds nuw i8, ptr %1, i64 %i.cej
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 229440
  %i.cem = getelementptr inbounds nuw i8, ptr %i.l, i64 960
  %i.cen = shl nuw nsw i64 %i.ced, 7
  %i.ceo = getelementptr inbounds nuw i8, ptr %1, i64 %i.cen
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 229440
  %i.ceq = getelementptr inbounds nuw i8, ptr %8, i64 960 ; 2 uses
  %i.cer = load <4 x float>, ptr %i.cee, align 4, !tbaa !74
  %i.ces = load <4 x float>, ptr %i.ceh, align 4, !tbaa !74
  %i.cet = fadd <4 x float> %i.cer, %i.ces
  %i.ceu = load <4 x float>, ptr %i.cei, align 4, !tbaa !74
  %i.cev = load <4 x float>, ptr %i.cel, align 4, !tbaa !74
  %i.cew = fadd <4 x float> %i.ceu, %i.cev
  %i.cex = fmul <4 x float> %i.ac, %i.cew
  %i.cey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cet, <4 x float> %i.cex)
  %i.cez = load <4 x float>, ptr %i.cem, align 4, !tbaa !74
  %i.cfa = load <4 x float>, ptr %i.cep, align 4, !tbaa !74
  %i.cfb = fadd <4 x float> %i.cez, %i.cfa
  %i.cfc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cfb, <4 x float> %i.cey)
  %i.cfd = load <4 x float>, ptr %i.ceq, align 4, !tbaa !74
  %i.cfe = fadd <4 x float> %i.cfd, %i.cfc
  store <4 x float> %i.cfe, ptr %i.ceq, align 4, !tbaa !74
  %i.cff = load i8, ptr %i.byt, align 1, !tbaa !17
  %i.cfg = zext i8 %i.cff to i64
  %i.cfh = load i8, ptr %i.byw, align 1, !tbaa !17
  %i.cfi = zext i8 %i.cfh to i64
  %i.cfj = load i8, ptr %i.byz, align 1, !tbaa !17
  %i.cfk = zext i8 %i.cfj to i64
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.j, i64 976
  %i.cfm = shl nuw nsw i64 %i.cfg, 7
  %i.cfn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfm
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 229456
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.k, i64 976
  %i.cfq = shl nuw nsw i64 %i.cfi, 7
  %i.cfr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfq
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 229456
  %i.cft = getelementptr inbounds nuw i8, ptr %i.l, i64 976
  %i.cfu = shl nuw nsw i64 %i.cfk, 7
  %i.cfv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfu
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 229456
  %i.cfx = getelementptr inbounds nuw i8, ptr %8, i64 976 ; 2 uses
  %i.cfy = load <4 x float>, ptr %i.cfl, align 4, !tbaa !74
  %i.cfz = load <4 x float>, ptr %i.cfo, align 4, !tbaa !74
  %i.cga = fadd <4 x float> %i.cfy, %i.cfz
  %i.cgb = load <4 x float>, ptr %i.cfp, align 4, !tbaa !74
  %i.cgc = load <4 x float>, ptr %i.cfs, align 4, !tbaa !74
  %i.cgd = fadd <4 x float> %i.cgb, %i.cgc
  %i.cge = fmul <4 x float> %i.ac, %i.cgd
  %i.cgf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cga, <4 x float> %i.cge)
  %i.cgg = load <4 x float>, ptr %i.cft, align 4, !tbaa !74
  %i.cgh = load <4 x float>, ptr %i.cfw, align 4, !tbaa !74
  %i.cgi = fadd <4 x float> %i.cgg, %i.cgh
  %i.cgj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cgi, <4 x float> %i.cgf)
  %i.cgk = load <4 x float>, ptr %i.cfx, align 4, !tbaa !74
  %i.cgl = fadd <4 x float> %i.cgk, %i.cgj
  store <4 x float> %i.cgl, ptr %i.cfx, align 4, !tbaa !74
  %i.cgm = load i8, ptr %i.byt, align 1, !tbaa !17
  %i.cgn = zext i8 %i.cgm to i64
  %i.cgo = load i8, ptr %i.byw, align 1, !tbaa !17
  %i.cgp = zext i8 %i.cgo to i64
  %i.cgq = load i8, ptr %i.byz, align 1, !tbaa !17
  %i.cgr = zext i8 %i.cgq to i64
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  %i.cgt = shl nuw nsw i64 %i.cgn, 7
  %i.cgu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cgt
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cgu, i64 229472
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.k, i64 992
  %i.cgx = shl nuw nsw i64 %i.cgp, 7
  %i.cgy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cgx
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 229472
  %i.cha = getelementptr inbounds nuw i8, ptr %i.l, i64 992
  %i.chb = shl nuw nsw i64 %i.cgr, 7
  %i.chc = getelementptr inbounds nuw i8, ptr %1, i64 %i.chb
  %i.chd = getelementptr inbounds nuw i8, ptr %i.chc, i64 229472
  %i.che = getelementptr inbounds nuw i8, ptr %8, i64 992 ; 2 uses
  %i.chf = load <4 x float>, ptr %i.cgs, align 4, !tbaa !74
  %i.chg = load <4 x float>, ptr %i.cgv, align 4, !tbaa !74
  %i.chh = fadd <4 x float> %i.chf, %i.chg
  %i.chi = load <4 x float>, ptr %i.cgw, align 4, !tbaa !74
  %i.chj = load <4 x float>, ptr %i.cgz, align 4, !tbaa !74
  %i.chk = fadd <4 x float> %i.chi, %i.chj
  %i.chl = fmul <4 x float> %i.ac, %i.chk
  %i.chm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.chh, <4 x float> %i.chl)
  %i.chn = load <4 x float>, ptr %i.cha, align 4, !tbaa !74
  %i.cho = load <4 x float>, ptr %i.chd, align 4, !tbaa !74
  %i.chp = fadd <4 x float> %i.chn, %i.cho
  %i.chq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.chp, <4 x float> %i.chm)
  %i.chr = load <4 x float>, ptr %i.che, align 4, !tbaa !74
  %i.chs = fadd <4 x float> %i.chr, %i.chq
  store <4 x float> %i.chs, ptr %i.che, align 4, !tbaa !74
  %i.cht = load i8, ptr %i.byt, align 1, !tbaa !17
  %i.chu = zext i8 %i.cht to i64
  %i.chv = load i8, ptr %i.byw, align 1, !tbaa !17
  %i.chw = zext i8 %i.chv to i64
  %i.chx = load i8, ptr %i.byz, align 1, !tbaa !17
  %i.chy = zext i8 %i.chx to i64
  %i.chz = getelementptr inbounds nuw i8, ptr %i.j, i64 1008
  %i.cia = shl nuw nsw i64 %i.chu, 7
  %i.cib = getelementptr inbounds nuw i8, ptr %1, i64 %i.cia
  %i.cic = getelementptr inbounds nuw i8, ptr %i.cib, i64 229488
  %i.cid = getelementptr inbounds nuw i8, ptr %i.k, i64 1008
  %i.cie = shl nuw nsw i64 %i.chw, 7
  %i.cif = getelementptr inbounds nuw i8, ptr %1, i64 %i.cie
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cif, i64 229488
  %i.cih = getelementptr inbounds nuw i8, ptr %i.l, i64 1008
  %i.cii = shl nuw nsw i64 %i.chy, 7
  %i.cij = getelementptr inbounds nuw i8, ptr %1, i64 %i.cii
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 229488
  %i.cil = getelementptr inbounds nuw i8, ptr %8, i64 1008 ; 2 uses
  %i.cim = load <4 x float>, ptr %i.chz, align 4, !tbaa !74
  %i.cin = load <4 x float>, ptr %i.cic, align 4, !tbaa !74
  %i.cio = fadd <4 x float> %i.cim, %i.cin
  %i.cip = load <4 x float>, ptr %i.cid, align 4, !tbaa !74
  %i.ciq = load <4 x float>, ptr %i.cig, align 4, !tbaa !74
  %i.cir = fadd <4 x float> %i.cip, %i.ciq
  %i.cis = fmul <4 x float> %i.ac, %i.cir
  %i.cit = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cio, <4 x float> %i.cis)
  %i.ciu = load <4 x float>, ptr %i.cih, align 4, !tbaa !74
  %i.civ = load <4 x float>, ptr %i.cik, align 4, !tbaa !74
  %i.ciw = fadd <4 x float> %i.ciu, %i.civ
  %i.cix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ciw, <4 x float> %i.cit)
  %i.ciy = load <4 x float>, ptr %i.cil, align 4, !tbaa !74
  %i.ciz = fadd <4 x float> %i.ciy, %i.cix
  store <4 x float> %i.ciz, ptr %i.cil, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ24_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ24_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D192_IVF256_PQ24_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_2
begin_hunk_3_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.l, i64 688
  %i.bfs = shl nuw nsw i64 %i.bfi, 5
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 172048
  %i.bfv = getelementptr inbounds nuw i8, ptr %8, i64 688 ; 2 uses
  %i.bfw = load <4 x float>, ptr %i.bfj, align 4, !tbaa !74
  %i.bfx = load <4 x float>, ptr %i.bfm, align 4, !tbaa !74
  %i.bfy = fadd <4 x float> %i.bfw, %i.bfx
  %i.bfz = load <4 x float>, ptr %i.bfn, align 4, !tbaa !74
  %i.bga = load <4 x float>, ptr %i.bfq, align 4, !tbaa !74
  %i.bgb = fadd <4 x float> %i.bfz, %i.bga
  %i.bgc = fmul <4 x float> %i.ac, %i.bgb
  %i.bgd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bfy, <4 x float> %i.bgc)
  %i.bge = load <4 x float>, ptr %i.bfr, align 4, !tbaa !74
  %i.bgf = load <4 x float>, ptr %i.bfu, align 4, !tbaa !74
  %i.bgg = fadd <4 x float> %i.bge, %i.bgf
  %i.bgh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bgg, <4 x float> %i.bgd)
  %i.bgi = load <4 x float>, ptr %i.bfv, align 4, !tbaa !74
  %i.bgj = fadd <4 x float> %i.bgi, %i.bgh
  store <4 x float> %i.bgj, ptr %i.bfv, align 4, !tbaa !74
  %i.bgk = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 2 uses
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !17
  %i.bgm = zext i8 %i.bgl to i64
  %i.bgn = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 2 uses
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !17
  %i.bgp = zext i8 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr %6, i64 23 ; 2 uses
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !17
  %i.bgs = zext i8 %i.bgr to i64
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.j, i64 704
  %i.bgu = shl nuw nsw i64 %i.bgm, 5
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgu
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 180224
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.bgy = shl nuw nsw i64 %i.bgp, 5
  %i.bgz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgy
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 180224
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.l, i64 704
  %i.bhc = shl nuw nsw i64 %i.bgs, 5
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bhc
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 180224
  %i.bhf = getelementptr inbounds nuw i8, ptr %8, i64 704 ; 2 uses
  %i.bhg = load <4 x float>, ptr %i.bgt, align 4, !tbaa !74
  %i.bhh = load <4 x float>, ptr %i.bgw, align 4, !tbaa !74
  %i.bhi = fadd <4 x float> %i.bhg, %i.bhh
  %i.bhj = load <4 x float>, ptr %i.bgx, align 4, !tbaa !74
  %i.bhk = load <4 x float>, ptr %i.bha, align 4, !tbaa !74
  %i.bhl = fadd <4 x float> %i.bhj, %i.bhk
  %i.bhm = fmul <4 x float> %i.ac, %i.bhl
  %i.bhn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bhi, <4 x float> %i.bhm)
  %i.bho = load <4 x float>, ptr %i.bhb, align 4, !tbaa !74
  %i.bhp = load <4 x float>, ptr %i.bhe, align 4, !tbaa !74
  %i.bhq = fadd <4 x float> %i.bho, %i.bhp
  %i.bhr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bhq, <4 x float> %i.bhn)
  %i.bhs = load <4 x float>, ptr %i.bhf, align 4, !tbaa !74
  %i.bht = fadd <4 x float> %i.bhs, %i.bhr
  store <4 x float> %i.bht, ptr %i.bhf, align 4, !tbaa !74
  %i.bhu = load i8, ptr %i.bgk, align 1, !tbaa !17
  %i.bhv = zext i8 %i.bhu to i64
  %i.bhw = load i8, ptr %i.bgn, align 1, !tbaa !17
  %i.bhx = zext i8 %i.bhw to i64
  %i.bhy = load i8, ptr %i.bgq, align 1, !tbaa !17
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.bib = shl nuw nsw i64 %i.bhv, 5
  %i.bic = getelementptr inbounds nuw i8, ptr %1, i64 %i.bib
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 180240
  %i.bie = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  %i.bif = shl nuw nsw i64 %i.bhx, 5
  %i.big = getelementptr inbounds nuw i8, ptr %1, i64 %i.bif
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 180240
  %i.bii = getelementptr inbounds nuw i8, ptr %i.l, i64 720
  %i.bij = shl nuw nsw i64 %i.bhz, 5
  %i.bik = getelementptr inbounds nuw i8, ptr %1, i64 %i.bij
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 180240
  %i.bim = getelementptr inbounds nuw i8, ptr %8, i64 720 ; 2 uses
  %i.bin = load <4 x float>, ptr %i.bia, align 4, !tbaa !74
  %i.bio = load <4 x float>, ptr %i.bid, align 4, !tbaa !74
  %i.bip = fadd <4 x float> %i.bin, %i.bio
  %i.biq = load <4 x float>, ptr %i.bie, align 4, !tbaa !74
  %i.bir = load <4 x float>, ptr %i.bih, align 4, !tbaa !74
  %i.bis = fadd <4 x float> %i.biq, %i.bir
  %i.bit = fmul <4 x float> %i.ac, %i.bis
  %i.biu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bip, <4 x float> %i.bit)
  %i.biv = load <4 x float>, ptr %i.bii, align 4, !tbaa !74
  %i.biw = load <4 x float>, ptr %i.bil, align 4, !tbaa !74
  %i.bix = fadd <4 x float> %i.biv, %i.biw
  %i.biy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bix, <4 x float> %i.biu)
  %i.biz = load <4 x float>, ptr %i.bim, align 4, !tbaa !74
  %i.bja = fadd <4 x float> %i.biz, %i.biy
  store <4 x float> %i.bja, ptr %i.bim, align 4, !tbaa !74
  %i.bjb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !17
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !17
  %i.bjg = zext i8 %i.bjf to i64
  %i.bjh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bji = load i8, ptr %i.bjh, align 1, !tbaa !17
  %i.bjj = zext i8 %i.bji to i64
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.j, i64 736
  %i.bjl = shl nuw nsw i64 %i.bjd, 5
  %i.bjm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjl
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 188416
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.bjp = shl nuw nsw i64 %i.bjg, 5
  %i.bjq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjp
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 188416
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.bjt = shl nuw nsw i64 %i.bjj, 5
  %i.bju = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjt
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 188416
  %i.bjw = getelementptr inbounds nuw i8, ptr %8, i64 736 ; 2 uses
  %i.bjx = load <4 x float>, ptr %i.bjk, align 4, !tbaa !74
  %i.bjy = load <4 x float>, ptr %i.bjn, align 4, !tbaa !74
  %i.bjz = fadd <4 x float> %i.bjx, %i.bjy
  %i.bka = load <4 x float>, ptr %i.bjo, align 4, !tbaa !74
  %i.bkb = load <4 x float>, ptr %i.bjr, align 4, !tbaa !74
  %i.bkc = fadd <4 x float> %i.bka, %i.bkb
  %i.bkd = fmul <4 x float> %i.ac, %i.bkc
  %i.bke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bjz, <4 x float> %i.bkd)
  %i.bkf = load <4 x float>, ptr %i.bjs, align 4, !tbaa !74
  %i.bkg = load <4 x float>, ptr %i.bjv, align 4, !tbaa !74
  %i.bkh = fadd <4 x float> %i.bkf, %i.bkg
  %i.bki = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bkh, <4 x float> %i.bke)
  %i.bkj = load <4 x float>, ptr %i.bjw, align 4, !tbaa !74
  %i.bkk = fadd <4 x float> %i.bkj, %i.bki
  store <4 x float> %i.bkk, ptr %i.bjw, align 4, !tbaa !74
  %i.bkl = load i8, ptr %i.bjb, align 1, !tbaa !17
  %i.bkm = zext i8 %i.bkl to i64
  %i.bkn = load i8, ptr %i.bje, align 1, !tbaa !17
  %i.bko = zext i8 %i.bkn to i64
  %i.bkp = load i8, ptr %i.bjh, align 1, !tbaa !17
  %i.bkq = zext i8 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.j, i64 752
  %i.bks = shl nuw nsw i64 %i.bkm, 5
  %i.bkt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bks
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 188432
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  %i.bkw = shl nuw nsw i64 %i.bko, 5
  %i.bkx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkw
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 188432
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.l, i64 752
  %i.bla = shl nuw nsw i64 %i.bkq, 5
  %i.blb = getelementptr inbounds nuw i8, ptr %1, i64 %i.bla
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 188432
  %i.bld = getelementptr inbounds nuw i8, ptr %8, i64 752 ; 2 uses
  %i.ble = load <4 x float>, ptr %i.bkr, align 4, !tbaa !74
  %i.blf = load <4 x float>, ptr %i.bku, align 4, !tbaa !74
  %i.blg = fadd <4 x float> %i.ble, %i.blf
  %i.blh = load <4 x float>, ptr %i.bkv, align 4, !tbaa !74
  %i.bli = load <4 x float>, ptr %i.bky, align 4, !tbaa !74
  %i.blj = fadd <4 x float> %i.blh, %i.bli
  %i.blk = fmul <4 x float> %i.ac, %i.blj
  %i.bll = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.blg, <4 x float> %i.blk)
  %i.blm = load <4 x float>, ptr %i.bkz, align 4, !tbaa !74
  %i.bln = load <4 x float>, ptr %i.blc, align 4, !tbaa !74
  %i.blo = fadd <4 x float> %i.blm, %i.bln
  %i.blp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.blo, <4 x float> %i.bll)
  %i.blq = load <4 x float>, ptr %i.bld, align 4, !tbaa !74
  %i.blr = fadd <4 x float> %i.blq, %i.blp
  store <4 x float> %i.blr, ptr %i.bld, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D192_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_3
begin_hunk_4_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.bfo = mul nuw nsw i64 %i.bfg, 48
  %i.bfp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfo
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 172048
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.l, i64 688
  %i.bfs = mul nuw nsw i64 %i.bfi, 48
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfs
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 172048
  %i.bfv = getelementptr inbounds nuw i8, ptr %8, i64 688 ; 2 uses
  %i.bfw = load <4 x float>, ptr %i.bfj, align 4, !tbaa !74
  %i.bfx = load <4 x float>, ptr %i.bfm, align 4, !tbaa !74
  %i.bfy = fadd <4 x float> %i.bfw, %i.bfx
  %i.bfz = load <4 x float>, ptr %i.bfn, align 4, !tbaa !74
  %i.bga = load <4 x float>, ptr %i.bfq, align 4, !tbaa !74
  %i.bgb = fadd <4 x float> %i.bfz, %i.bga
  %i.bgc = fmul <4 x float> %i.ac, %i.bgb
  %i.bgd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bfy, <4 x float> %i.bgc)
  %i.bge = load <4 x float>, ptr %i.bfr, align 4, !tbaa !74
  %i.bgf = load <4 x float>, ptr %i.bfu, align 4, !tbaa !74
  %i.bgg = fadd <4 x float> %i.bge, %i.bgf
  %i.bgh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bgg, <4 x float> %i.bgd)
  %i.bgi = load <4 x float>, ptr %i.bfv, align 4, !tbaa !74
  %i.bgj = fadd <4 x float> %i.bgi, %i.bgh
  store <4 x float> %i.bgj, ptr %i.bfv, align 4, !tbaa !74
  %i.bgk = load i8, ptr %i.bdt, align 1, !tbaa !17
  %i.bgl = zext i8 %i.bgk to i64
  %i.bgm = load i8, ptr %i.bdw, align 1, !tbaa !17
  %i.bgn = zext i8 %i.bgm to i64
  %i.bgo = load i8, ptr %i.bdz, align 1, !tbaa !17
  %i.bgp = zext i8 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.j, i64 704
  %i.bgr = mul nuw nsw i64 %i.bgl, 48
  %i.bgs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgr
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 172064
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.bgv = mul nuw nsw i64 %i.bgn, 48
  %i.bgw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgv
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 172064
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.l, i64 704
  %i.bgz = mul nuw nsw i64 %i.bgp, 48
  %i.bha = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgz
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 172064
  %i.bhc = getelementptr inbounds nuw i8, ptr %8, i64 704 ; 2 uses
  %i.bhd = load <4 x float>, ptr %i.bgq, align 4, !tbaa !74
  %i.bhe = load <4 x float>, ptr %i.bgt, align 4, !tbaa !74
  %i.bhf = fadd <4 x float> %i.bhd, %i.bhe
  %i.bhg = load <4 x float>, ptr %i.bgu, align 4, !tbaa !74
  %i.bhh = load <4 x float>, ptr %i.bgx, align 4, !tbaa !74
  %i.bhi = fadd <4 x float> %i.bhg, %i.bhh
  %i.bhj = fmul <4 x float> %i.ac, %i.bhi
  %i.bhk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bhf, <4 x float> %i.bhj)
  %i.bhl = load <4 x float>, ptr %i.bgy, align 4, !tbaa !74
  %i.bhm = load <4 x float>, ptr %i.bhb, align 4, !tbaa !74
  %i.bhn = fadd <4 x float> %i.bhl, %i.bhm
  %i.bho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bhn, <4 x float> %i.bhk)
  %i.bhp = load <4 x float>, ptr %i.bhc, align 4, !tbaa !74
  %i.bhq = fadd <4 x float> %i.bhp, %i.bho
  store <4 x float> %i.bhq, ptr %i.bhc, align 4, !tbaa !74
  %i.bhr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !17
  %i.bht = zext i8 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !17
  %i.bhw = zext i8 %i.bhv to i64
  %i.bhx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !17
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.bib = mul nuw nsw i64 %i.bht, 48
  %i.bic = getelementptr inbounds nuw i8, ptr %1, i64 %i.bib
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 184320
  %i.bie = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  %i.bif = mul nuw nsw i64 %i.bhw, 48
  %i.big = getelementptr inbounds nuw i8, ptr %1, i64 %i.bif
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 184320
  %i.bii = getelementptr inbounds nuw i8, ptr %i.l, i64 720
  %i.bij = mul nuw nsw i64 %i.bhz, 48
  %i.bik = getelementptr inbounds nuw i8, ptr %1, i64 %i.bij
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 184320
  %i.bim = getelementptr inbounds nuw i8, ptr %8, i64 720 ; 2 uses
  %i.bin = load <4 x float>, ptr %i.bia, align 4, !tbaa !74
  %i.bio = load <4 x float>, ptr %i.bid, align 4, !tbaa !74
  %i.bip = fadd <4 x float> %i.bin, %i.bio
  %i.biq = load <4 x float>, ptr %i.bie, align 4, !tbaa !74
  %i.bir = load <4 x float>, ptr %i.bih, align 4, !tbaa !74
  %i.bis = fadd <4 x float> %i.biq, %i.bir
  %i.bit = fmul <4 x float> %i.ac, %i.bis
  %i.biu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bip, <4 x float> %i.bit)
  %i.biv = load <4 x float>, ptr %i.bii, align 4, !tbaa !74
  %i.biw = load <4 x float>, ptr %i.bil, align 4, !tbaa !74
  %i.bix = fadd <4 x float> %i.biv, %i.biw
  %i.biy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bix, <4 x float> %i.biu)
  %i.biz = load <4 x float>, ptr %i.bim, align 4, !tbaa !74
  %i.bja = fadd <4 x float> %i.biz, %i.biy
  store <4 x float> %i.bja, ptr %i.bim, align 4, !tbaa !74
  %i.bjb = load i8, ptr %i.bhr, align 1, !tbaa !17
  %i.bjc = zext i8 %i.bjb to i64
  %i.bjd = load i8, ptr %i.bhu, align 1, !tbaa !17
  %i.bje = zext i8 %i.bjd to i64
  %i.bjf = load i8, ptr %i.bhx, align 1, !tbaa !17
  %i.bjg = zext i8 %i.bjf to i64
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.j, i64 736
  %i.bji = mul nuw nsw i64 %i.bjc, 48
  %i.bjj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bji
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 184336
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.bjm = mul nuw nsw i64 %i.bje, 48
  %i.bjn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjm
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 184336
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.bjq = mul nuw nsw i64 %i.bjg, 48
  %i.bjr = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjq
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 184336
  %i.bjt = getelementptr inbounds nuw i8, ptr %8, i64 736 ; 2 uses
  %i.bju = load <4 x float>, ptr %i.bjh, align 4, !tbaa !74
  %i.bjv = load <4 x float>, ptr %i.bjk, align 4, !tbaa !74
  %i.bjw = fadd <4 x float> %i.bju, %i.bjv
  %i.bjx = load <4 x float>, ptr %i.bjl, align 4, !tbaa !74
  %i.bjy = load <4 x float>, ptr %i.bjo, align 4, !tbaa !74
  %i.bjz = fadd <4 x float> %i.bjx, %i.bjy
  %i.bka = fmul <4 x float> %i.ac, %i.bjz
  %i.bkb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bjw, <4 x float> %i.bka)
  %i.bkc = load <4 x float>, ptr %i.bjp, align 4, !tbaa !74
  %i.bkd = load <4 x float>, ptr %i.bjs, align 4, !tbaa !74
  %i.bke = fadd <4 x float> %i.bkc, %i.bkd
  %i.bkf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bke, <4 x float> %i.bkb)
  %i.bkg = load <4 x float>, ptr %i.bjt, align 4, !tbaa !74
  %i.bkh = fadd <4 x float> %i.bkg, %i.bkf
  store <4 x float> %i.bkh, ptr %i.bjt, align 4, !tbaa !74
  %i.bki = load i8, ptr %i.bhr, align 1, !tbaa !17
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = load i8, ptr %i.bhu, align 1, !tbaa !17
  %i.bkl = zext i8 %i.bkk to i64
  %i.bkm = load i8, ptr %i.bhx, align 1, !tbaa !17
  %i.bkn = zext i8 %i.bkm to i64
  %i.bko = getelementptr inbounds nuw i8, ptr %i.j, i64 752
  %i.bkp = mul nuw nsw i64 %i.bkj, 48
  %i.bkq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkp
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 184352
  %i.bks = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  %i.bkt = mul nuw nsw i64 %i.bkl, 48
  %i.bku = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkt
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 184352
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.l, i64 752
  %i.bkx = mul nuw nsw i64 %i.bkn, 48
  %i.bky = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkx
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 184352
  %i.bla = getelementptr inbounds nuw i8, ptr %8, i64 752 ; 2 uses
  %i.blb = load <4 x float>, ptr %i.bko, align 4, !tbaa !74
  %i.blc = load <4 x float>, ptr %i.bkr, align 4, !tbaa !74
  %i.bld = fadd <4 x float> %i.blb, %i.blc
  %i.ble = load <4 x float>, ptr %i.bks, align 4, !tbaa !74
  %i.blf = load <4 x float>, ptr %i.bkv, align 4, !tbaa !74
  %i.blg = fadd <4 x float> %i.ble, %i.blf
  %i.blh = fmul <4 x float> %i.ac, %i.blg
  %i.bli = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bld, <4 x float> %i.blh)
  %i.blj = load <4 x float>, ptr %i.bkw, align 4, !tbaa !74
  %i.blk = load <4 x float>, ptr %i.bkz, align 4, !tbaa !74
  %i.bll = fadd <4 x float> %i.blj, %i.blk
  %i.blm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bll, <4 x float> %i.bli)
  %i.bln = load <4 x float>, ptr %i.bla, align 4, !tbaa !74
  %i.blo = fadd <4 x float> %i.bln, %i.blm
  store <4 x float> %i.blo, ptr %i.bla, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ12_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D192_IVF256_PQ12_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D192_IVF256_PQ12_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_4
begin_hunk_5_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.bfx = shl nuw nsw i64 %i.bfp, 6
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfx
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 163888
  %i.bga = getelementptr inbounds nuw i8, ptr %i.l, i64 688
  %i.bgb = shl nuw nsw i64 %i.bfr, 6
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 163888
  %i.bge = getelementptr inbounds nuw i8, ptr %8, i64 688 ; 2 uses
  %i.bgf = load <4 x float>, ptr %i.bfs, align 4, !tbaa !74
  %i.bgg = load <4 x float>, ptr %i.bfv, align 4, !tbaa !74
  %i.bgh = fadd <4 x float> %i.bgf, %i.bgg
  %i.bgi = load <4 x float>, ptr %i.bfw, align 4, !tbaa !74
  %i.bgj = load <4 x float>, ptr %i.bfz, align 4, !tbaa !74
  %i.bgk = fadd <4 x float> %i.bgi, %i.bgj
  %i.bgl = fmul <4 x float> %i.ac, %i.bgk
  %i.bgm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bgh, <4 x float> %i.bgl)
  %i.bgn = load <4 x float>, ptr %i.bga, align 4, !tbaa !74
  %i.bgo = load <4 x float>, ptr %i.bgd, align 4, !tbaa !74
  %i.bgp = fadd <4 x float> %i.bgn, %i.bgo
  %i.bgq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bgp, <4 x float> %i.bgm)
  %i.bgr = load <4 x float>, ptr %i.bge, align 4, !tbaa !74
  %i.bgs = fadd <4 x float> %i.bgr, %i.bgq
  store <4 x float> %i.bgs, ptr %i.bge, align 4, !tbaa !74
  %i.bgt = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !17
  %i.bgv = zext i8 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !17
  %i.bgy = zext i8 %i.bgx to i64
  %i.bgz = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !17
  %i.bhb = zext i8 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.j, i64 704
  %i.bhd = shl nuw nsw i64 %i.bgv, 6
  %i.bhe = getelementptr inbounds nuw i8, ptr %1, i64 %i.bhd
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 180224
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.bhh = shl nuw nsw i64 %i.bgy, 6
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bhh
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 180224
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.l, i64 704
  %i.bhl = shl nuw nsw i64 %i.bhb, 6
  %i.bhm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bhl
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 180224
  %i.bho = getelementptr inbounds nuw i8, ptr %8, i64 704 ; 2 uses
  %i.bhp = load <4 x float>, ptr %i.bhc, align 4, !tbaa !74
  %i.bhq = load <4 x float>, ptr %i.bhf, align 4, !tbaa !74
  %i.bhr = fadd <4 x float> %i.bhp, %i.bhq
  %i.bhs = load <4 x float>, ptr %i.bhg, align 4, !tbaa !74
  %i.bht = load <4 x float>, ptr %i.bhj, align 4, !tbaa !74
  %i.bhu = fadd <4 x float> %i.bhs, %i.bht
  %i.bhv = fmul <4 x float> %i.ac, %i.bhu
  %i.bhw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bhr, <4 x float> %i.bhv)
  %i.bhx = load <4 x float>, ptr %i.bhk, align 4, !tbaa !74
  %i.bhy = load <4 x float>, ptr %i.bhn, align 4, !tbaa !74
  %i.bhz = fadd <4 x float> %i.bhx, %i.bhy
  %i.bia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bhz, <4 x float> %i.bhw)
  %i.bib = load <4 x float>, ptr %i.bho, align 4, !tbaa !74
  %i.bic = fadd <4 x float> %i.bib, %i.bia
  store <4 x float> %i.bic, ptr %i.bho, align 4, !tbaa !74
  %i.bid = load i8, ptr %i.bgt, align 1, !tbaa !17
  %i.bie = zext i8 %i.bid to i64
  %i.bif = load i8, ptr %i.bgw, align 1, !tbaa !17
  %i.big = zext i8 %i.bif to i64
  %i.bih = load i8, ptr %i.bgz, align 1, !tbaa !17
  %i.bii = zext i8 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.bik = shl nuw nsw i64 %i.bie, 6
  %i.bil = getelementptr inbounds nuw i8, ptr %1, i64 %i.bik
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 180240
  %i.bin = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  %i.bio = shl nuw nsw i64 %i.big, 6
  %i.bip = getelementptr inbounds nuw i8, ptr %1, i64 %i.bio
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 180240
  %i.bir = getelementptr inbounds nuw i8, ptr %i.l, i64 720
  %i.bis = shl nuw nsw i64 %i.bii, 6
  %i.bit = getelementptr inbounds nuw i8, ptr %1, i64 %i.bis
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 180240
  %i.biv = getelementptr inbounds nuw i8, ptr %8, i64 720 ; 2 uses
  %i.biw = load <4 x float>, ptr %i.bij, align 4, !tbaa !74
  %i.bix = load <4 x float>, ptr %i.bim, align 4, !tbaa !74
  %i.biy = fadd <4 x float> %i.biw, %i.bix
  %i.biz = load <4 x float>, ptr %i.bin, align 4, !tbaa !74
  %i.bja = load <4 x float>, ptr %i.biq, align 4, !tbaa !74
  %i.bjb = fadd <4 x float> %i.biz, %i.bja
  %i.bjc = fmul <4 x float> %i.ac, %i.bjb
  %i.bjd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.biy, <4 x float> %i.bjc)
  %i.bje = load <4 x float>, ptr %i.bir, align 4, !tbaa !74
  %i.bjf = load <4 x float>, ptr %i.biu, align 4, !tbaa !74
  %i.bjg = fadd <4 x float> %i.bje, %i.bjf
  %i.bjh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bjg, <4 x float> %i.bjd)
  %i.bji = load <4 x float>, ptr %i.biv, align 4, !tbaa !74
  %i.bjj = fadd <4 x float> %i.bji, %i.bjh
  store <4 x float> %i.bjj, ptr %i.biv, align 4, !tbaa !74
  %i.bjk = load i8, ptr %i.bgt, align 1, !tbaa !17
  %i.bjl = zext i8 %i.bjk to i64
  %i.bjm = load i8, ptr %i.bgw, align 1, !tbaa !17
  %i.bjn = zext i8 %i.bjm to i64
  %i.bjo = load i8, ptr %i.bgz, align 1, !tbaa !17
  %i.bjp = zext i8 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.j, i64 736
  %i.bjr = shl nuw nsw i64 %i.bjl, 6
  %i.bjs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjr
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 180256
  %i.bju = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.bjv = shl nuw nsw i64 %i.bjn, 6
  %i.bjw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjv
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 180256
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.l, i64 736
  %i.bjz = shl nuw nsw i64 %i.bjp, 6
  %i.bka = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjz
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 180256
  %i.bkc = getelementptr inbounds nuw i8, ptr %8, i64 736 ; 2 uses
  %i.bkd = load <4 x float>, ptr %i.bjq, align 4, !tbaa !74
  %i.bke = load <4 x float>, ptr %i.bjt, align 4, !tbaa !74
  %i.bkf = fadd <4 x float> %i.bkd, %i.bke
  %i.bkg = load <4 x float>, ptr %i.bju, align 4, !tbaa !74
  %i.bkh = load <4 x float>, ptr %i.bjx, align 4, !tbaa !74
  %i.bki = fadd <4 x float> %i.bkg, %i.bkh
  %i.bkj = fmul <4 x float> %i.ac, %i.bki
  %i.bkk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bkf, <4 x float> %i.bkj)
  %i.bkl = load <4 x float>, ptr %i.bjy, align 4, !tbaa !74
  %i.bkm = load <4 x float>, ptr %i.bkb, align 4, !tbaa !74
  %i.bkn = fadd <4 x float> %i.bkl, %i.bkm
  %i.bko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bkn, <4 x float> %i.bkk)
  %i.bkp = load <4 x float>, ptr %i.bkc, align 4, !tbaa !74
  %i.bkq = fadd <4 x float> %i.bkp, %i.bko
  store <4 x float> %i.bkq, ptr %i.bkc, align 4, !tbaa !74
  %i.bkr = load i8, ptr %i.bgt, align 1, !tbaa !17
  %i.bks = zext i8 %i.bkr to i64
  %i.bkt = load i8, ptr %i.bgw, align 1, !tbaa !17
  %i.bku = zext i8 %i.bkt to i64
  %i.bkv = load i8, ptr %i.bgz, align 1, !tbaa !17
  %i.bkw = zext i8 %i.bkv to i64
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.j, i64 752
  %i.bky = shl nuw nsw i64 %i.bks, 6
  %i.bkz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bky
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 180272
  %i.blb = getelementptr inbounds nuw i8, ptr %i.k, i64 752
  %i.blc = shl nuw nsw i64 %i.bku, 6
  %i.bld = getelementptr inbounds nuw i8, ptr %1, i64 %i.blc
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 180272
  %i.blf = getelementptr inbounds nuw i8, ptr %i.l, i64 752
  %i.blg = shl nuw nsw i64 %i.bkw, 6
  %i.blh = getelementptr inbounds nuw i8, ptr %1, i64 %i.blg
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 180272
  %i.blj = getelementptr inbounds nuw i8, ptr %8, i64 752 ; 2 uses
  %i.blk = load <4 x float>, ptr %i.bkx, align 4, !tbaa !74
  %i.bll = load <4 x float>, ptr %i.bla, align 4, !tbaa !74
  %i.blm = fadd <4 x float> %i.blk, %i.bll
  %i.bln = load <4 x float>, ptr %i.blb, align 4, !tbaa !74
  %i.blo = load <4 x float>, ptr %i.ble, align 4, !tbaa !74
  %i.blp = fadd <4 x float> %i.bln, %i.blo
  %i.blq = fmul <4 x float> %i.ac, %i.blp
  %i.blr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.blm, <4 x float> %i.blq)
  %i.bls = load <4 x float>, ptr %i.blf, align 4, !tbaa !74
  %i.blt = load <4 x float>, ptr %i.bli, align 4, !tbaa !74
  %i.blu = fadd <4 x float> %i.bls, %i.blt
  %i.blv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.blu, <4 x float> %i.blr)
  %i.blw = load <4 x float>, ptr %i.blj, align 4, !tbaa !74
  %i.blx = fadd <4 x float> %i.blw, %i.blv
  store <4 x float> %i.blx, ptr %i.blj, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ40_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ40_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D160_IVF256_PQ40_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_5
begin_hunk_6_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.awo = load <4 x float>, ptr %i.awd, align 4, !tbaa !74
  %i.awp = fadd <4 x float> %i.awn, %i.awo
  %i.awq = load <4 x float>, ptr %i.awe, align 4, !tbaa !74
  %i.awr = load <4 x float>, ptr %i.awh, align 4, !tbaa !74
  %i.aws = fadd <4 x float> %i.awq, %i.awr
  %i.awt = fmul <4 x float> %i.ac, %i.aws
  %i.awu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.awp, <4 x float> %i.awt)
  %i.awv = load <4 x float>, ptr %i.awi, align 4, !tbaa !74
  %i.aww = load <4 x float>, ptr %i.awl, align 4, !tbaa !74
  %i.awx = fadd <4 x float> %i.awv, %i.aww
  %i.awy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.awx, <4 x float> %i.awu)
  %i.awz = load <4 x float>, ptr %i.awm, align 4, !tbaa !74
  %i.axa = fadd <4 x float> %i.awz, %i.awy
  store <4 x float> %i.axa, ptr %i.awm, align 4, !tbaa !74
  %i.axb = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.axc = load i8, ptr %i.axb, align 1, !tbaa !17
  %i.axd = zext i8 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr %4, i64 37
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !17
  %i.axg = zext i8 %i.axf to i64
  %i.axh = getelementptr inbounds nuw i8, ptr %6, i64 37
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !17
  %i.axj = zext i8 %i.axi to i64
  %i.axk = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.axl = shl nuw nsw i64 %i.axd, 4
  %i.axm = getelementptr inbounds nuw i8, ptr %1, i64 %i.axl
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 147456
  %i.axo = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.axp = shl nuw nsw i64 %i.axg, 4
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 %i.axp
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 147456
  %i.axs = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  %i.axt = shl nuw nsw i64 %i.axj, 4
  %i.axu = getelementptr inbounds nuw i8, ptr %1, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 147456
  %i.axw = getelementptr inbounds nuw i8, ptr %8, i64 576 ; 2 uses
  %i.axx = load <4 x float>, ptr %i.axk, align 4, !tbaa !74
  %i.axy = load <4 x float>, ptr %i.axn, align 4, !tbaa !74
  %i.axz = fadd <4 x float> %i.axx, %i.axy
  %i.aya = load <4 x float>, ptr %i.axo, align 4, !tbaa !74
  %i.ayb = load <4 x float>, ptr %i.axr, align 4, !tbaa !74
  %i.ayc = fadd <4 x float> %i.aya, %i.ayb
  %i.ayd = fmul <4 x float> %i.ac, %i.ayc
  %i.aye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.axz, <4 x float> %i.ayd)
  %i.ayf = load <4 x float>, ptr %i.axs, align 4, !tbaa !74
  %i.ayg = load <4 x float>, ptr %i.axv, align 4, !tbaa !74
  %i.ayh = fadd <4 x float> %i.ayf, %i.ayg
  %i.ayi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ayh, <4 x float> %i.aye)
  %i.ayj = load <4 x float>, ptr %i.axw, align 4, !tbaa !74
  %i.ayk = fadd <4 x float> %i.ayj, %i.ayi
  store <4 x float> %i.ayk, ptr %i.axw, align 4, !tbaa !74
  %i.ayl = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.ayn = zext i8 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %4, i64 38
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !17
  %i.ayq = zext i8 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr %6, i64 38
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !17
  %i.ayt = zext i8 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.ayv = shl nuw nsw i64 %i.ayn, 4
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayv
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 151552
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.ayz = shl nuw nsw i64 %i.ayq, 4
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 151552
  %i.azc = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  %i.azd = shl nuw nsw i64 %i.ayt, 4
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 151552
  %i.azg = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.azh = load <4 x float>, ptr %i.ayu, align 4, !tbaa !74
  %i.azi = load <4 x float>, ptr %i.ayx, align 4, !tbaa !74
  %i.azj = fadd <4 x float> %i.azh, %i.azi
  %i.azk = load <4 x float>, ptr %i.ayy, align 4, !tbaa !74
  %i.azl = load <4 x float>, ptr %i.azb, align 4, !tbaa !74
  %i.azm = fadd <4 x float> %i.azk, %i.azl
  %i.azn = fmul <4 x float> %i.ac, %i.azm
  %i.azo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.azj, <4 x float> %i.azn)
  %i.azp = load <4 x float>, ptr %i.azc, align 4, !tbaa !74
  %i.azq = load <4 x float>, ptr %i.azf, align 4, !tbaa !74
  %i.azr = fadd <4 x float> %i.azp, %i.azq
  %i.azs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.azr, <4 x float> %i.azo)
  %i.azt = load <4 x float>, ptr %i.azg, align 4, !tbaa !74
  %i.azu = fadd <4 x float> %i.azt, %i.azs
  store <4 x float> %i.azu, ptr %i.azg, align 4, !tbaa !74
  %i.azv = getelementptr inbounds nuw i8, ptr %2, i64 39
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !17
  %i.azx = zext i8 %i.azw to i64
  %i.azy = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !17
  %i.baa = zext i8 %i.azz to i64
  %i.bab = getelementptr inbounds nuw i8, ptr %6, i64 39
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !17
  %i.bad = zext i8 %i.bac to i64
  %i.bae = getelementptr inbounds nuw i8, ptr %i.j, i64 608
  %i.baf = shl nuw nsw i64 %i.azx, 4
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 %i.baf
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 155648
  %i.bai = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.baj = shl nuw nsw i64 %i.baa, 4
  %i.bak = getelementptr inbounds nuw i8, ptr %1, i64 %i.baj
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 155648
  %i.bam = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.ban = shl nuw nsw i64 %i.bad, 4
  %i.bao = getelementptr inbounds nuw i8, ptr %1, i64 %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 155648
  %i.baq = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.bar = load <4 x float>, ptr %i.bae, align 4, !tbaa !74
  %i.bas = load <4 x float>, ptr %i.bah, align 4, !tbaa !74
  %i.bat = fadd <4 x float> %i.bar, %i.bas
  %i.bau = load <4 x float>, ptr %i.bai, align 4, !tbaa !74
  %i.bav = load <4 x float>, ptr %i.bal, align 4, !tbaa !74
  %i.baw = fadd <4 x float> %i.bau, %i.bav
  %i.bax = fmul <4 x float> %i.ac, %i.baw
  %i.bay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bat, <4 x float> %i.bax)
  %i.baz = load <4 x float>, ptr %i.bam, align 4, !tbaa !74
  %i.bba = load <4 x float>, ptr %i.bap, align 4, !tbaa !74
  %i.bbb = fadd <4 x float> %i.baz, %i.bba
  %i.bbc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bbb, <4 x float> %i.bay)
  %i.bbd = load <4 x float>, ptr %i.baq, align 4, !tbaa !74
  %i.bbe = fadd <4 x float> %i.bbd, %i.bbc
  store <4 x float> %i.bbe, ptr %i.baq, align 4, !tbaa !74
  %i.bbf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !17
  %i.bbh = zext i8 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !17
  %i.bbk = zext i8 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !17
  %i.bbn = zext i8 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.j, i64 624
  %i.bbp = shl nuw nsw i64 %i.bbh, 4
  %i.bbq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbp
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 159744
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.bbt = shl nuw nsw i64 %i.bbk, 4
  %i.bbu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 159744
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %i.bbx = shl nuw nsw i64 %i.bbn, 4
  %i.bby = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbx
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 159744
  %i.bca = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.bcb = load <4 x float>, ptr %i.bbo, align 4, !tbaa !74
  %i.bcc = load <4 x float>, ptr %i.bbr, align 4, !tbaa !74
  %i.bcd = fadd <4 x float> %i.bcb, %i.bcc
  %i.bce = load <4 x float>, ptr %i.bbs, align 4, !tbaa !74
  %i.bcf = load <4 x float>, ptr %i.bbv, align 4, !tbaa !74
  %i.bcg = fadd <4 x float> %i.bce, %i.bcf
  %i.bch = fmul <4 x float> %i.ac, %i.bcg
  %i.bci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bcd, <4 x float> %i.bch)
  %i.bcj = load <4 x float>, ptr %i.bbw, align 4, !tbaa !74
  %i.bck = load <4 x float>, ptr %i.bbz, align 4, !tbaa !74
  %i.bcl = fadd <4 x float> %i.bcj, %i.bck
  %i.bcm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bcl, <4 x float> %i.bci)
  %i.bcn = load <4 x float>, ptr %i.bca, align 4, !tbaa !74
  %i.bco = fadd <4 x float> %i.bcn, %i.bcm
  store <4 x float> %i.bco, ptr %i.bca, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ20_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ20_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D160_IVF256_PQ20_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_6
begin_hunk_7_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.avb = getelementptr inbounds nuw i8, ptr %i.l, i64 560
  %i.avc = shl nuw nsw i64 %i.aus, 5
  %i.avd = getelementptr inbounds nuw i8, ptr %1, i64 %i.avc
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 139280
  %i.avf = getelementptr inbounds nuw i8, ptr %8, i64 560 ; 2 uses
  %i.avg = load <4 x float>, ptr %i.aut, align 4, !tbaa !74
  %i.avh = load <4 x float>, ptr %i.auw, align 4, !tbaa !74
  %i.avi = fadd <4 x float> %i.avg, %i.avh
  %i.avj = load <4 x float>, ptr %i.aux, align 4, !tbaa !74
  %i.avk = load <4 x float>, ptr %i.ava, align 4, !tbaa !74
  %i.avl = fadd <4 x float> %i.avj, %i.avk
  %i.avm = fmul <4 x float> %i.ac, %i.avl
  %i.avn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.avi, <4 x float> %i.avm)
  %i.avo = load <4 x float>, ptr %i.avb, align 4, !tbaa !74
  %i.avp = load <4 x float>, ptr %i.ave, align 4, !tbaa !74
  %i.avq = fadd <4 x float> %i.avo, %i.avp
  %i.avr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.avq, <4 x float> %i.avn)
  %i.avs = load <4 x float>, ptr %i.avf, align 4, !tbaa !74
  %i.avt = fadd <4 x float> %i.avs, %i.avr
  store <4 x float> %i.avt, ptr %i.avf, align 4, !tbaa !74
  %i.avu = getelementptr inbounds nuw i8, ptr %2, i64 19 ; 2 uses
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw i8, ptr %4, i64 19 ; 2 uses
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.avz = zext i8 %i.avy to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %6, i64 19 ; 2 uses
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !17
  %i.awc = zext i8 %i.awb to i64
  %i.awd = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.awe = shl nuw nsw i64 %i.avw, 5
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 147456
  %i.awh = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.awi = shl nuw nsw i64 %i.avz, 5
  %i.awj = getelementptr inbounds nuw i8, ptr %1, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 147456
  %i.awl = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  %i.awm = shl nuw nsw i64 %i.awc, 5
  %i.awn = getelementptr inbounds nuw i8, ptr %1, i64 %i.awm
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 147456
  %i.awp = getelementptr inbounds nuw i8, ptr %8, i64 576 ; 2 uses
  %i.awq = load <4 x float>, ptr %i.awd, align 4, !tbaa !74
  %i.awr = load <4 x float>, ptr %i.awg, align 4, !tbaa !74
  %i.aws = fadd <4 x float> %i.awq, %i.awr
  %i.awt = load <4 x float>, ptr %i.awh, align 4, !tbaa !74
  %i.awu = load <4 x float>, ptr %i.awk, align 4, !tbaa !74
  %i.awv = fadd <4 x float> %i.awt, %i.awu
  %i.aww = fmul <4 x float> %i.ac, %i.awv
  %i.awx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aws, <4 x float> %i.aww)
  %i.awy = load <4 x float>, ptr %i.awl, align 4, !tbaa !74
  %i.awz = load <4 x float>, ptr %i.awo, align 4, !tbaa !74
  %i.axa = fadd <4 x float> %i.awy, %i.awz
  %i.axb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.axa, <4 x float> %i.awx)
  %i.axc = load <4 x float>, ptr %i.awp, align 4, !tbaa !74
  %i.axd = fadd <4 x float> %i.axc, %i.axb
  store <4 x float> %i.axd, ptr %i.awp, align 4, !tbaa !74
  %i.axe = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.axf = zext i8 %i.axe to i64
  %i.axg = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.axh = zext i8 %i.axg to i64
  %i.axi = load i8, ptr %i.awa, align 1, !tbaa !17
  %i.axj = zext i8 %i.axi to i64
  %i.axk = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.axl = shl nuw nsw i64 %i.axf, 5
  %i.axm = getelementptr inbounds nuw i8, ptr %1, i64 %i.axl
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 147472
  %i.axo = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.axp = shl nuw nsw i64 %i.axh, 5
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 %i.axp
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 147472
  %i.axs = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  %i.axt = shl nuw nsw i64 %i.axj, 5
  %i.axu = getelementptr inbounds nuw i8, ptr %1, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 147472
  %i.axw = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.axx = load <4 x float>, ptr %i.axk, align 4, !tbaa !74
  %i.axy = load <4 x float>, ptr %i.axn, align 4, !tbaa !74
  %i.axz = fadd <4 x float> %i.axx, %i.axy
  %i.aya = load <4 x float>, ptr %i.axo, align 4, !tbaa !74
  %i.ayb = load <4 x float>, ptr %i.axr, align 4, !tbaa !74
  %i.ayc = fadd <4 x float> %i.aya, %i.ayb
  %i.ayd = fmul <4 x float> %i.ac, %i.ayc
  %i.aye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.axz, <4 x float> %i.ayd)
  %i.ayf = load <4 x float>, ptr %i.axs, align 4, !tbaa !74
  %i.ayg = load <4 x float>, ptr %i.axv, align 4, !tbaa !74
  %i.ayh = fadd <4 x float> %i.ayf, %i.ayg
  %i.ayi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ayh, <4 x float> %i.aye)
  %i.ayj = load <4 x float>, ptr %i.axw, align 4, !tbaa !74
  %i.ayk = fadd <4 x float> %i.ayj, %i.ayi
  store <4 x float> %i.ayk, ptr %i.axw, align 4, !tbaa !74
  %i.ayl = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.ayn = zext i8 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !17
  %i.ayq = zext i8 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !17
  %i.ayt = zext i8 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.j, i64 608
  %i.ayv = shl nuw nsw i64 %i.ayn, 5
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayv
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 155648
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.ayz = shl nuw nsw i64 %i.ayq, 5
  %i.aza = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 155648
  %i.azc = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.azd = shl nuw nsw i64 %i.ayt, 5
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 155648
  %i.azg = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.azh = load <4 x float>, ptr %i.ayu, align 4, !tbaa !74
  %i.azi = load <4 x float>, ptr %i.ayx, align 4, !tbaa !74
  %i.azj = fadd <4 x float> %i.azh, %i.azi
  %i.azk = load <4 x float>, ptr %i.ayy, align 4, !tbaa !74
  %i.azl = load <4 x float>, ptr %i.azb, align 4, !tbaa !74
  %i.azm = fadd <4 x float> %i.azk, %i.azl
  %i.azn = fmul <4 x float> %i.ac, %i.azm
  %i.azo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.azj, <4 x float> %i.azn)
  %i.azp = load <4 x float>, ptr %i.azc, align 4, !tbaa !74
  %i.azq = load <4 x float>, ptr %i.azf, align 4, !tbaa !74
  %i.azr = fadd <4 x float> %i.azp, %i.azq
  %i.azs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.azr, <4 x float> %i.azo)
  %i.azt = load <4 x float>, ptr %i.azg, align 4, !tbaa !74
  %i.azu = fadd <4 x float> %i.azt, %i.azs
  store <4 x float> %i.azu, ptr %i.azg, align 4, !tbaa !74
  %i.azv = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.azw = zext i8 %i.azv to i64
  %i.azx = load i8, ptr %i.ayo, align 1, !tbaa !17
  %i.azy = zext i8 %i.azx to i64
  %i.azz = load i8, ptr %i.ayr, align 1, !tbaa !17
  %i.baa = zext i8 %i.azz to i64
  %i.bab = getelementptr inbounds nuw i8, ptr %i.j, i64 624
  %i.bac = shl nuw nsw i64 %i.azw, 5
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 %i.bac
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 155664
  %i.baf = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.bag = shl nuw nsw i64 %i.azy, 5
  %i.bah = getelementptr inbounds nuw i8, ptr %1, i64 %i.bag
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 155664
  %i.baj = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %i.bak = shl nuw nsw i64 %i.baa, 5
  %i.bal = getelementptr inbounds nuw i8, ptr %1, i64 %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 155664
  %i.ban = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.bao = load <4 x float>, ptr %i.bab, align 4, !tbaa !74
  %i.bap = load <4 x float>, ptr %i.bae, align 4, !tbaa !74
  %i.baq = fadd <4 x float> %i.bao, %i.bap
  %i.bar = load <4 x float>, ptr %i.baf, align 4, !tbaa !74
  %i.bas = load <4 x float>, ptr %i.bai, align 4, !tbaa !74
  %i.bat = fadd <4 x float> %i.bar, %i.bas
  %i.bau = fmul <4 x float> %i.ac, %i.bat
  %i.bav = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.baq, <4 x float> %i.bau)
  %i.baw = load <4 x float>, ptr %i.baj, align 4, !tbaa !74
  %i.bax = load <4 x float>, ptr %i.bam, align 4, !tbaa !74
  %i.bay = fadd <4 x float> %i.baw, %i.bax
  %i.baz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bay, <4 x float> %i.bav)
  %i.bba = load <4 x float>, ptr %i.ban, align 4, !tbaa !74
  %i.bbb = fadd <4 x float> %i.bba, %i.baz
  store <4 x float> %i.bbb, ptr %i.ban, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ10_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D160_IVF256_PQ10_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D160_IVF256_PQ10_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_7
begin_hunk_8_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.avn = shl nuw nsw i64 %i.avf, 6
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 %i.avn
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 131120
  %i.avq = getelementptr inbounds nuw i8, ptr %i.l, i64 560
  %i.avr = shl nuw nsw i64 %i.avh, 6
  %i.avs = getelementptr inbounds nuw i8, ptr %1, i64 %i.avr
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 131120
  %i.avu = getelementptr inbounds nuw i8, ptr %8, i64 560 ; 2 uses
  %i.avv = load <4 x float>, ptr %i.avi, align 4, !tbaa !74
  %i.avw = load <4 x float>, ptr %i.avl, align 4, !tbaa !74
  %i.avx = fadd <4 x float> %i.avv, %i.avw
  %i.avy = load <4 x float>, ptr %i.avm, align 4, !tbaa !74
  %i.avz = load <4 x float>, ptr %i.avp, align 4, !tbaa !74
  %i.awa = fadd <4 x float> %i.avy, %i.avz
  %i.awb = fmul <4 x float> %i.ac, %i.awa
  %i.awc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.avx, <4 x float> %i.awb)
  %i.awd = load <4 x float>, ptr %i.avq, align 4, !tbaa !74
  %i.awe = load <4 x float>, ptr %i.avt, align 4, !tbaa !74
  %i.awf = fadd <4 x float> %i.awd, %i.awe
  %i.awg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.awf, <4 x float> %i.awc)
  %i.awh = load <4 x float>, ptr %i.avu, align 4, !tbaa !74
  %i.awi = fadd <4 x float> %i.awh, %i.awg
  store <4 x float> %i.awi, ptr %i.avu, align 4, !tbaa !74
  %i.awj = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !17
  %i.awl = zext i8 %i.awk to i64
  %i.awm = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 4 uses
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !17
  %i.awo = zext i8 %i.awn to i64
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 4 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !17
  %i.awr = zext i8 %i.awq to i64
  %i.aws = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.awt = shl nuw nsw i64 %i.awl, 6
  %i.awu = getelementptr inbounds nuw i8, ptr %1, i64 %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 147456
  %i.aww = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.awx = shl nuw nsw i64 %i.awo, 6
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 147456
  %i.axa = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  %i.axb = shl nuw nsw i64 %i.awr, 6
  %i.axc = getelementptr inbounds nuw i8, ptr %1, i64 %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 147456
  %i.axe = getelementptr inbounds nuw i8, ptr %8, i64 576 ; 2 uses
  %i.axf = load <4 x float>, ptr %i.aws, align 4, !tbaa !74
  %i.axg = load <4 x float>, ptr %i.awv, align 4, !tbaa !74
  %i.axh = fadd <4 x float> %i.axf, %i.axg
  %i.axi = load <4 x float>, ptr %i.aww, align 4, !tbaa !74
  %i.axj = load <4 x float>, ptr %i.awz, align 4, !tbaa !74
  %i.axk = fadd <4 x float> %i.axi, %i.axj
  %i.axl = fmul <4 x float> %i.ac, %i.axk
  %i.axm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.axh, <4 x float> %i.axl)
  %i.axn = load <4 x float>, ptr %i.axa, align 4, !tbaa !74
  %i.axo = load <4 x float>, ptr %i.axd, align 4, !tbaa !74
  %i.axp = fadd <4 x float> %i.axn, %i.axo
  %i.axq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.axp, <4 x float> %i.axm)
  %i.axr = load <4 x float>, ptr %i.axe, align 4, !tbaa !74
  %i.axs = fadd <4 x float> %i.axr, %i.axq
  store <4 x float> %i.axs, ptr %i.axe, align 4, !tbaa !74
  %i.axt = load i8, ptr %i.awj, align 1, !tbaa !17
  %i.axu = zext i8 %i.axt to i64
  %i.axv = load i8, ptr %i.awm, align 1, !tbaa !17
  %i.axw = zext i8 %i.axv to i64
  %i.axx = load i8, ptr %i.awp, align 1, !tbaa !17
  %i.axy = zext i8 %i.axx to i64
  %i.axz = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.aya = shl nuw nsw i64 %i.axu, 6
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 147472
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.aye = shl nuw nsw i64 %i.axw, 6
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 %i.aye
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 147472
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  %i.ayi = shl nuw nsw i64 %i.axy, 6
  %i.ayj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayi
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 147472
  %i.ayl = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.aym = load <4 x float>, ptr %i.axz, align 4, !tbaa !74
  %i.ayn = load <4 x float>, ptr %i.ayc, align 4, !tbaa !74
  %i.ayo = fadd <4 x float> %i.aym, %i.ayn
  %i.ayp = load <4 x float>, ptr %i.ayd, align 4, !tbaa !74
  %i.ayq = load <4 x float>, ptr %i.ayg, align 4, !tbaa !74
  %i.ayr = fadd <4 x float> %i.ayp, %i.ayq
  %i.ays = fmul <4 x float> %i.ac, %i.ayr
  %i.ayt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ayo, <4 x float> %i.ays)
  %i.ayu = load <4 x float>, ptr %i.ayh, align 4, !tbaa !74
  %i.ayv = load <4 x float>, ptr %i.ayk, align 4, !tbaa !74
  %i.ayw = fadd <4 x float> %i.ayu, %i.ayv
  %i.ayx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ayw, <4 x float> %i.ayt)
  %i.ayy = load <4 x float>, ptr %i.ayl, align 4, !tbaa !74
  %i.ayz = fadd <4 x float> %i.ayy, %i.ayx
  store <4 x float> %i.ayz, ptr %i.ayl, align 4, !tbaa !74
  %i.aza = load i8, ptr %i.awj, align 1, !tbaa !17
  %i.azb = zext i8 %i.aza to i64
  %i.azc = load i8, ptr %i.awm, align 1, !tbaa !17
  %i.azd = zext i8 %i.azc to i64
  %i.aze = load i8, ptr %i.awp, align 1, !tbaa !17
  %i.azf = zext i8 %i.aze to i64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.j, i64 608
  %i.azh = shl nuw nsw i64 %i.azb, 6
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 147488
  %i.azk = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.azl = shl nuw nsw i64 %i.azd, 6
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 147488
  %i.azo = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.azp = shl nuw nsw i64 %i.azf, 6
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 %i.azp
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 147488
  %i.azs = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.azt = load <4 x float>, ptr %i.azg, align 4, !tbaa !74
  %i.azu = load <4 x float>, ptr %i.azj, align 4, !tbaa !74
  %i.azv = fadd <4 x float> %i.azt, %i.azu
  %i.azw = load <4 x float>, ptr %i.azk, align 4, !tbaa !74
  %i.azx = load <4 x float>, ptr %i.azn, align 4, !tbaa !74
  %i.azy = fadd <4 x float> %i.azw, %i.azx
  %i.azz = fmul <4 x float> %i.ac, %i.azy
  %i.baa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.azv, <4 x float> %i.azz)
  %i.bab = load <4 x float>, ptr %i.azo, align 4, !tbaa !74
  %i.bac = load <4 x float>, ptr %i.azr, align 4, !tbaa !74
  %i.bad = fadd <4 x float> %i.bab, %i.bac
  %i.bae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bad, <4 x float> %i.baa)
  %i.baf = load <4 x float>, ptr %i.azs, align 4, !tbaa !74
  %i.bag = fadd <4 x float> %i.baf, %i.bae
  store <4 x float> %i.bag, ptr %i.azs, align 4, !tbaa !74
  %i.bah = load i8, ptr %i.awj, align 1, !tbaa !17
  %i.bai = zext i8 %i.bah to i64
  %i.baj = load i8, ptr %i.awm, align 1, !tbaa !17
  %i.bak = zext i8 %i.baj to i64
  %i.bal = load i8, ptr %i.awp, align 1, !tbaa !17
  %i.bam = zext i8 %i.bal to i64
  %i.ban = getelementptr inbounds nuw i8, ptr %i.j, i64 624
  %i.bao = shl nuw nsw i64 %i.bai, 6
  %i.bap = getelementptr inbounds nuw i8, ptr %1, i64 %i.bao
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 147504
  %i.bar = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.bas = shl nuw nsw i64 %i.bak, 6
  %i.bat = getelementptr inbounds nuw i8, ptr %1, i64 %i.bas
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 147504
  %i.bav = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %i.baw = shl nuw nsw i64 %i.bam, 6
  %i.bax = getelementptr inbounds nuw i8, ptr %1, i64 %i.baw
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 147504
  %i.baz = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.bba = load <4 x float>, ptr %i.ban, align 4, !tbaa !74
  %i.bbb = load <4 x float>, ptr %i.baq, align 4, !tbaa !74
  %i.bbc = fadd <4 x float> %i.bba, %i.bbb
  %i.bbd = load <4 x float>, ptr %i.bar, align 4, !tbaa !74
  %i.bbe = load <4 x float>, ptr %i.bau, align 4, !tbaa !74
  %i.bbf = fadd <4 x float> %i.bbd, %i.bbe
  %i.bbg = fmul <4 x float> %i.ac, %i.bbf
  %i.bbh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bbc, <4 x float> %i.bbg)
  %i.bbi = load <4 x float>, ptr %i.bav, align 4, !tbaa !74
  %i.bbj = load <4 x float>, ptr %i.bay, align 4, !tbaa !74
  %i.bbk = fadd <4 x float> %i.bbi, %i.bbj
  %i.bbl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bbk, <4 x float> %i.bbh)
  %i.bbm = load <4 x float>, ptr %i.baz, align 4, !tbaa !74
  %i.bbn = fadd <4 x float> %i.bbm, %i.bbl
  store <4 x float> %i.bbn, ptr %i.baz, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D160_IVF256_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D160_IVF256_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV43testCppcontribSaDecode_D160_IVF256_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_8
begin_hunk_9_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 %i.awb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 143360
  %i.awe = getelementptr inbounds nuw i8, ptr %i.k, i64 560
  %i.awf = mul nuw nsw i64 %i.avw, 80
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 %i.awf
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 143360
  %i.awi = getelementptr inbounds nuw i8, ptr %i.l, i64 560
  %i.awj = mul nuw nsw i64 %i.avz, 80
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 143360
  %i.awm = getelementptr inbounds nuw i8, ptr %8, i64 560 ; 2 uses
  %i.awn = load <4 x float>, ptr %i.awa, align 4, !tbaa !74
  %i.awo = load <4 x float>, ptr %i.awd, align 4, !tbaa !74
  %i.awp = fadd <4 x float> %i.awn, %i.awo
  %i.awq = load <4 x float>, ptr %i.awe, align 4, !tbaa !74
  %i.awr = load <4 x float>, ptr %i.awh, align 4, !tbaa !74
  %i.aws = fadd <4 x float> %i.awq, %i.awr
  %i.awt = fmul <4 x float> %i.ac, %i.aws
  %i.awu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.awp, <4 x float> %i.awt)
  %i.awv = load <4 x float>, ptr %i.awi, align 4, !tbaa !74
  %i.aww = load <4 x float>, ptr %i.awl, align 4, !tbaa !74
  %i.awx = fadd <4 x float> %i.awv, %i.aww
  %i.awy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.awx, <4 x float> %i.awu)
  %i.awz = load <4 x float>, ptr %i.awm, align 4, !tbaa !74
  %i.axa = fadd <4 x float> %i.awz, %i.awy
  store <4 x float> %i.axa, ptr %i.awm, align 4, !tbaa !74
  %i.axb = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.axc = zext i8 %i.axb to i64
  %i.axd = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.axe = zext i8 %i.axd to i64
  %i.axf = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.axg = zext i8 %i.axf to i64
  %i.axh = getelementptr inbounds nuw i8, ptr %i.j, i64 576
  %i.axi = mul nuw nsw i64 %i.axc, 80
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 %i.axi
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 143376
  %i.axl = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.axm = mul nuw nsw i64 %i.axe, 80
  %i.axn = getelementptr inbounds nuw i8, ptr %1, i64 %i.axm
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 143376
  %i.axp = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  %i.axq = mul nuw nsw i64 %i.axg, 80
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 143376
  %i.axt = getelementptr inbounds nuw i8, ptr %8, i64 576 ; 2 uses
  %i.axu = load <4 x float>, ptr %i.axh, align 4, !tbaa !74
  %i.axv = load <4 x float>, ptr %i.axk, align 4, !tbaa !74
  %i.axw = fadd <4 x float> %i.axu, %i.axv
  %i.axx = load <4 x float>, ptr %i.axl, align 4, !tbaa !74
  %i.axy = load <4 x float>, ptr %i.axo, align 4, !tbaa !74
  %i.axz = fadd <4 x float> %i.axx, %i.axy
  %i.aya = fmul <4 x float> %i.ac, %i.axz
  %i.ayb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.axw, <4 x float> %i.aya)
  %i.ayc = load <4 x float>, ptr %i.axp, align 4, !tbaa !74
  %i.ayd = load <4 x float>, ptr %i.axs, align 4, !tbaa !74
  %i.aye = fadd <4 x float> %i.ayc, %i.ayd
  %i.ayf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.aye, <4 x float> %i.ayb)
  %i.ayg = load <4 x float>, ptr %i.axt, align 4, !tbaa !74
  %i.ayh = fadd <4 x float> %i.ayg, %i.ayf
  store <4 x float> %i.ayh, ptr %i.axt, align 4, !tbaa !74
  %i.ayi = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.ayj = zext i8 %i.ayi to i64
  %i.ayk = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.ayl = zext i8 %i.ayk to i64
  %i.aym = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.ayn = zext i8 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.ayp = mul nuw nsw i64 %i.ayj, 80
  %i.ayq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 143392
  %i.ays = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.ayt = mul nuw nsw i64 %i.ayl, 80
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayt
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 143392
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  %i.ayx = mul nuw nsw i64 %i.ayn, 80
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayx
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 143392
  %i.aza = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.azb = load <4 x float>, ptr %i.ayo, align 4, !tbaa !74
  %i.azc = load <4 x float>, ptr %i.ayr, align 4, !tbaa !74
  %i.azd = fadd <4 x float> %i.azb, %i.azc
  %i.aze = load <4 x float>, ptr %i.ays, align 4, !tbaa !74
  %i.azf = load <4 x float>, ptr %i.ayv, align 4, !tbaa !74
  %i.azg = fadd <4 x float> %i.aze, %i.azf
  %i.azh = fmul <4 x float> %i.ac, %i.azg
  %i.azi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.azd, <4 x float> %i.azh)
  %i.azj = load <4 x float>, ptr %i.ayw, align 4, !tbaa !74
  %i.azk = load <4 x float>, ptr %i.ayz, align 4, !tbaa !74
  %i.azl = fadd <4 x float> %i.azj, %i.azk
  %i.azm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.azl, <4 x float> %i.azi)
  %i.azn = load <4 x float>, ptr %i.aza, align 4, !tbaa !74
  %i.azo = fadd <4 x float> %i.azn, %i.azm
  store <4 x float> %i.azo, ptr %i.aza, align 4, !tbaa !74
  %i.azp = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.azq = zext i8 %i.azp to i64
  %i.azr = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.azs = zext i8 %i.azr to i64
  %i.azt = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.azu = zext i8 %i.azt to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.j, i64 608
  %i.azw = mul nuw nsw i64 %i.azq, 80
  %i.azx = getelementptr inbounds nuw i8, ptr %1, i64 %i.azw
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 143408
  %i.azz = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.baa = mul nuw nsw i64 %i.azs, 80
  %i.bab = getelementptr inbounds nuw i8, ptr %1, i64 %i.baa
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 143408
  %i.bad = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.bae = mul nuw nsw i64 %i.azu, 80
  %i.baf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 143408
  %i.bah = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.bai = load <4 x float>, ptr %i.azv, align 4, !tbaa !74
  %i.baj = load <4 x float>, ptr %i.azy, align 4, !tbaa !74
  %i.bak = fadd <4 x float> %i.bai, %i.baj
  %i.bal = load <4 x float>, ptr %i.azz, align 4, !tbaa !74
  %i.bam = load <4 x float>, ptr %i.bac, align 4, !tbaa !74
  %i.ban = fadd <4 x float> %i.bal, %i.bam
  %i.bao = fmul <4 x float> %i.ac, %i.ban
  %i.bap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bak, <4 x float> %i.bao)
  %i.baq = load <4 x float>, ptr %i.bad, align 4, !tbaa !74
  %i.bar = load <4 x float>, ptr %i.bag, align 4, !tbaa !74
  %i.bas = fadd <4 x float> %i.baq, %i.bar
  %i.bat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bas, <4 x float> %i.bap)
  %i.bau = load <4 x float>, ptr %i.bah, align 4, !tbaa !74
  %i.bav = fadd <4 x float> %i.bau, %i.bat
  store <4 x float> %i.bav, ptr %i.bah, align 4, !tbaa !74
  %i.baw = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.bax = zext i8 %i.baw to i64
  %i.bay = load i8, ptr %i.avu, align 1, !tbaa !17
  %i.baz = zext i8 %i.bay to i64
  %i.bba = load i8, ptr %i.avx, align 1, !tbaa !17
  %i.bbb = zext i8 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.j, i64 624
  %i.bbd = mul nuw nsw i64 %i.bax, 80
  %i.bbe = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbd
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 143424
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.bbh = mul nuw nsw i64 %i.baz, 80
  %i.bbi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbh
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 143424
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %i.bbl = mul nuw nsw i64 %i.bbb, 80
  %i.bbm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 143424
  %i.bbo = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.bbp = load <4 x float>, ptr %i.bbc, align 4, !tbaa !74
  %i.bbq = load <4 x float>, ptr %i.bbf, align 4, !tbaa !74
  %i.bbr = fadd <4 x float> %i.bbp, %i.bbq
  %i.bbs = load <4 x float>, ptr %i.bbg, align 4, !tbaa !74
  %i.bbt = load <4 x float>, ptr %i.bbj, align 4, !tbaa !74
  %i.bbu = fadd <4 x float> %i.bbs, %i.bbt
  %i.bbv = fmul <4 x float> %i.ac, %i.bbu
  %i.bbw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bbr, <4 x float> %i.bbv)
  %i.bbx = load <4 x float>, ptr %i.bbk, align 4, !tbaa !74
  %i.bby = load <4 x float>, ptr %i.bbn, align 4, !tbaa !74
  %i.bbz = fadd <4 x float> %i.bbx, %i.bby
  %i.bca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bbz, <4 x float> %i.bbw)
  %i.bcb = load <4 x float>, ptr %i.bbo, align 4, !tbaa !74
  %i.bcc = fadd <4 x float> %i.bcb, %i.bca
  store <4 x float> %i.bcc, ptr %i.bbo, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D128_IVF256_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D128_IVF256_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV43testCppcontribSaDecode_D128_IVF256_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_9
begin_hunk_10_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.ald = shl nuw nsw i64 %i.akv, 6
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 98352
  %i.alg = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.alh = shl nuw nsw i64 %i.akx, 6
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 98352
  %i.alk = getelementptr inbounds nuw i8, ptr %8, i64 432 ; 2 uses
  %i.all = load <4 x float>, ptr %i.aky, align 4, !tbaa !74
  %i.alm = load <4 x float>, ptr %i.alb, align 4, !tbaa !74
  %i.aln = fadd <4 x float> %i.all, %i.alm
  %i.alo = load <4 x float>, ptr %i.alc, align 4, !tbaa !74
  %i.alp = load <4 x float>, ptr %i.alf, align 4, !tbaa !74
  %i.alq = fadd <4 x float> %i.alo, %i.alp
  %i.alr = fmul <4 x float> %i.ac, %i.alq
  %i.als = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aln, <4 x float> %i.alr)
  %i.alt = load <4 x float>, ptr %i.alg, align 4, !tbaa !74
  %i.alu = load <4 x float>, ptr %i.alj, align 4, !tbaa !74
  %i.alv = fadd <4 x float> %i.alt, %i.alu
  %i.alw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.alv, <4 x float> %i.als)
  %i.alx = load <4 x float>, ptr %i.alk, align 4, !tbaa !74
  %i.aly = fadd <4 x float> %i.alx, %i.alw
  store <4 x float> %i.aly, ptr %i.alk, align 4, !tbaa !74
  %i.alz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !17
  %i.amb = zext i8 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !17
  %i.ame = zext i8 %i.amd to i64
  %i.amf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !17
  %i.amh = zext i8 %i.amg to i64
  %i.ami = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.amj = shl nuw nsw i64 %i.amb, 6
  %i.amk = getelementptr inbounds nuw i8, ptr %1, i64 %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 114688
  %i.amm = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %i.amn = shl nuw nsw i64 %i.ame, 6
  %i.amo = getelementptr inbounds nuw i8, ptr %1, i64 %i.amn
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 114688
  %i.amq = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.amr = shl nuw nsw i64 %i.amh, 6
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 114688
  %i.amu = getelementptr inbounds nuw i8, ptr %8, i64 448 ; 2 uses
  %i.amv = load <4 x float>, ptr %i.ami, align 4, !tbaa !74
  %i.amw = load <4 x float>, ptr %i.aml, align 4, !tbaa !74
  %i.amx = fadd <4 x float> %i.amv, %i.amw
  %i.amy = load <4 x float>, ptr %i.amm, align 4, !tbaa !74
  %i.amz = load <4 x float>, ptr %i.amp, align 4, !tbaa !74
  %i.ana = fadd <4 x float> %i.amy, %i.amz
  %i.anb = fmul <4 x float> %i.ac, %i.ana
  %i.anc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.amx, <4 x float> %i.anb)
  %i.and = load <4 x float>, ptr %i.amq, align 4, !tbaa !74
  %i.ane = load <4 x float>, ptr %i.amt, align 4, !tbaa !74
  %i.anf = fadd <4 x float> %i.and, %i.ane
  %i.ang = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.anf, <4 x float> %i.anc)
  %i.anh = load <4 x float>, ptr %i.amu, align 4, !tbaa !74
  %i.ani = fadd <4 x float> %i.anh, %i.ang
  store <4 x float> %i.ani, ptr %i.amu, align 4, !tbaa !74
  %i.anj = load i8, ptr %i.alz, align 1, !tbaa !17
  %i.ank = zext i8 %i.anj to i64
  %i.anl = load i8, ptr %i.amc, align 1, !tbaa !17
  %i.anm = zext i8 %i.anl to i64
  %i.ann = load i8, ptr %i.amf, align 1, !tbaa !17
  %i.ano = zext i8 %i.ann to i64
  %i.anp = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.anq = shl nuw nsw i64 %i.ank, 6
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 114704
  %i.ant = getelementptr inbounds nuw i8, ptr %i.k, i64 464
  %i.anu = shl nuw nsw i64 %i.anm, 6
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 114704
  %i.anx = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.any = shl nuw nsw i64 %i.ano, 6
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 114704
  %i.aob = getelementptr inbounds nuw i8, ptr %8, i64 464 ; 2 uses
  %i.aoc = load <4 x float>, ptr %i.anp, align 4, !tbaa !74
  %i.aod = load <4 x float>, ptr %i.ans, align 4, !tbaa !74
  %i.aoe = fadd <4 x float> %i.aoc, %i.aod
  %i.aof = load <4 x float>, ptr %i.ant, align 4, !tbaa !74
  %i.aog = load <4 x float>, ptr %i.anw, align 4, !tbaa !74
  %i.aoh = fadd <4 x float> %i.aof, %i.aog
  %i.aoi = fmul <4 x float> %i.ac, %i.aoh
  %i.aoj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aoe, <4 x float> %i.aoi)
  %i.aok = load <4 x float>, ptr %i.anx, align 4, !tbaa !74
  %i.aol = load <4 x float>, ptr %i.aoa, align 4, !tbaa !74
  %i.aom = fadd <4 x float> %i.aok, %i.aol
  %i.aon = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.aom, <4 x float> %i.aoj)
  %i.aoo = load <4 x float>, ptr %i.aob, align 4, !tbaa !74
  %i.aop = fadd <4 x float> %i.aoo, %i.aon
  store <4 x float> %i.aop, ptr %i.aob, align 4, !tbaa !74
  %i.aoq = load i8, ptr %i.alz, align 1, !tbaa !17
  %i.aor = zext i8 %i.aoq to i64
  %i.aos = load i8, ptr %i.amc, align 1, !tbaa !17
  %i.aot = zext i8 %i.aos to i64
  %i.aou = load i8, ptr %i.amf, align 1, !tbaa !17
  %i.aov = zext i8 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.aox = shl nuw nsw i64 %i.aor, 6
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 %i.aox
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 114720
  %i.apa = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.apb = shl nuw nsw i64 %i.aot, 6
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 %i.apb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 114720
  %i.ape = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  %i.apf = shl nuw nsw i64 %i.aov, 6
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 %i.apf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 114720
  %i.api = getelementptr inbounds nuw i8, ptr %8, i64 480 ; 2 uses
  %i.apj = load <4 x float>, ptr %i.aow, align 4, !tbaa !74
  %i.apk = load <4 x float>, ptr %i.aoz, align 4, !tbaa !74
  %i.apl = fadd <4 x float> %i.apj, %i.apk
  %i.apm = load <4 x float>, ptr %i.apa, align 4, !tbaa !74
  %i.apn = load <4 x float>, ptr %i.apd, align 4, !tbaa !74
  %i.apo = fadd <4 x float> %i.apm, %i.apn
  %i.app = fmul <4 x float> %i.ac, %i.apo
  %i.apq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.apl, <4 x float> %i.app)
  %i.apr = load <4 x float>, ptr %i.ape, align 4, !tbaa !74
  %i.aps = load <4 x float>, ptr %i.aph, align 4, !tbaa !74
  %i.apt = fadd <4 x float> %i.apr, %i.aps
  %i.apu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.apt, <4 x float> %i.apq)
  %i.apv = load <4 x float>, ptr %i.api, align 4, !tbaa !74
  %i.apw = fadd <4 x float> %i.apv, %i.apu
  store <4 x float> %i.apw, ptr %i.api, align 4, !tbaa !74
  %i.apx = load i8, ptr %i.alz, align 1, !tbaa !17
  %i.apy = zext i8 %i.apx to i64
  %i.apz = load i8, ptr %i.amc, align 1, !tbaa !17
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = load i8, ptr %i.amf, align 1, !tbaa !17
  %i.aqc = zext i8 %i.aqb to i64
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.j, i64 496
  %i.aqe = shl nuw nsw i64 %i.apy, 6
  %i.aqf = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqe
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 114736
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.aqi = shl nuw nsw i64 %i.aqa, 6
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 114736
  %i.aql = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  %i.aqm = shl nuw nsw i64 %i.aqc, 6
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqm
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 114736
  %i.aqp = getelementptr inbounds nuw i8, ptr %8, i64 496 ; 2 uses
  %i.aqq = load <4 x float>, ptr %i.aqd, align 4, !tbaa !74
  %i.aqr = load <4 x float>, ptr %i.aqg, align 4, !tbaa !74
  %i.aqs = fadd <4 x float> %i.aqq, %i.aqr
  %i.aqt = load <4 x float>, ptr %i.aqh, align 4, !tbaa !74
  %i.aqu = load <4 x float>, ptr %i.aqk, align 4, !tbaa !74
  %i.aqv = fadd <4 x float> %i.aqt, %i.aqu
  %i.aqw = fmul <4 x float> %i.ac, %i.aqv
  %i.aqx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aqs, <4 x float> %i.aqw)
  %i.aqy = load <4 x float>, ptr %i.aql, align 4, !tbaa !74
  %i.aqz = load <4 x float>, ptr %i.aqo, align 4, !tbaa !74
  %i.ara = fadd <4 x float> %i.aqy, %i.aqz
  %i.arb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ara, <4 x float> %i.aqx)
  %i.arc = load <4 x float>, ptr %i.aqp, align 4, !tbaa !74
  %i.ard = fadd <4 x float> %i.arc, %i.arb
  store <4 x float> %i.ard, ptr %i.aqp, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D128_IVF256_PQ4_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D128_IVF256_PQ4_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV43testCppcontribSaDecode_D128_IVF256_PQ4_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_10
begin_hunk_11_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 %i.anw
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 98352
  %i.anz = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.aoa = shl nuw nsw i64 %i.ans, 7
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 %i.aoa
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 98352
  %i.aod = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.aoe = shl nuw nsw i64 %i.anu, 7
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 %i.aoe
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 98352
  %i.aoh = getelementptr inbounds nuw i8, ptr %8, i64 432 ; 2 uses
  %i.aoi = load <4 x float>, ptr %i.anv, align 4, !tbaa !74
  %i.aoj = load <4 x float>, ptr %i.any, align 4, !tbaa !74
  %i.aok = fadd <4 x float> %i.aoi, %i.aoj
  %i.aol = load <4 x float>, ptr %i.anz, align 4, !tbaa !74
  %i.aom = load <4 x float>, ptr %i.aoc, align 4, !tbaa !74
  %i.aon = fadd <4 x float> %i.aol, %i.aom
  %i.aoo = fmul <4 x float> %i.ac, %i.aon
  %i.aop = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aok, <4 x float> %i.aoo)
  %i.aoq = load <4 x float>, ptr %i.aod, align 4, !tbaa !74
  %i.aor = load <4 x float>, ptr %i.aog, align 4, !tbaa !74
  %i.aos = fadd <4 x float> %i.aoq, %i.aor
  %i.aot = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.aos, <4 x float> %i.aop)
  %i.aou = load <4 x float>, ptr %i.aoh, align 4, !tbaa !74
  %i.aov = fadd <4 x float> %i.aou, %i.aot
  store <4 x float> %i.aov, ptr %i.aoh, align 4, !tbaa !74
  %i.aow = load i8, ptr %i.ajr, align 1, !tbaa !17
  %i.aox = zext i8 %i.aow to i64
  %i.aoy = load i8, ptr %i.aju, align 1, !tbaa !17
  %i.aoz = zext i8 %i.aoy to i64
  %i.apa = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.apb = zext i8 %i.apa to i64
  %i.apc = getelementptr inbounds nuw i8, ptr %i.j, i64 448
  %i.apd = shl nuw nsw i64 %i.aox, 7
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 %i.apd
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 98368
  %i.apg = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %i.aph = shl nuw nsw i64 %i.aoz, 7
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 %i.aph
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 98368
  %i.apk = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.apl = shl nuw nsw i64 %i.apb, 7
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 %i.apl
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 98368
  %i.apo = getelementptr inbounds nuw i8, ptr %8, i64 448 ; 2 uses
  %i.app = load <4 x float>, ptr %i.apc, align 4, !tbaa !74
  %i.apq = load <4 x float>, ptr %i.apf, align 4, !tbaa !74
  %i.apr = fadd <4 x float> %i.app, %i.apq
  %i.aps = load <4 x float>, ptr %i.apg, align 4, !tbaa !74
  %i.apt = load <4 x float>, ptr %i.apj, align 4, !tbaa !74
  %i.apu = fadd <4 x float> %i.aps, %i.apt
  %i.apv = fmul <4 x float> %i.ac, %i.apu
  %i.apw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.apr, <4 x float> %i.apv)
  %i.apx = load <4 x float>, ptr %i.apk, align 4, !tbaa !74
  %i.apy = load <4 x float>, ptr %i.apn, align 4, !tbaa !74
  %i.apz = fadd <4 x float> %i.apx, %i.apy
  %i.aqa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.apz, <4 x float> %i.apw)
  %i.aqb = load <4 x float>, ptr %i.apo, align 4, !tbaa !74
  %i.aqc = fadd <4 x float> %i.aqb, %i.aqa
  store <4 x float> %i.aqc, ptr %i.apo, align 4, !tbaa !74
  %i.aqd = load i8, ptr %i.ajr, align 1, !tbaa !17
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = load i8, ptr %i.aju, align 1, !tbaa !17
  %i.aqg = zext i8 %i.aqf to i64
  %i.aqh = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.aqi = zext i8 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.aqk = shl nuw nsw i64 %i.aqe, 7
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 98384
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.k, i64 464
  %i.aqo = shl nuw nsw i64 %i.aqg, 7
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 98384
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.aqs = shl nuw nsw i64 %i.aqi, 7
  %i.aqt = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 98384
  %i.aqv = getelementptr inbounds nuw i8, ptr %8, i64 464 ; 2 uses
  %i.aqw = load <4 x float>, ptr %i.aqj, align 4, !tbaa !74
  %i.aqx = load <4 x float>, ptr %i.aqm, align 4, !tbaa !74
  %i.aqy = fadd <4 x float> %i.aqw, %i.aqx
  %i.aqz = load <4 x float>, ptr %i.aqn, align 4, !tbaa !74
  %i.ara = load <4 x float>, ptr %i.aqq, align 4, !tbaa !74
  %i.arb = fadd <4 x float> %i.aqz, %i.ara
  %i.arc = fmul <4 x float> %i.ac, %i.arb
  %i.ard = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aqy, <4 x float> %i.arc)
  %i.are = load <4 x float>, ptr %i.aqr, align 4, !tbaa !74
  %i.arf = load <4 x float>, ptr %i.aqu, align 4, !tbaa !74
  %i.arg = fadd <4 x float> %i.are, %i.arf
  %i.arh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.arg, <4 x float> %i.ard)
  %i.ari = load <4 x float>, ptr %i.aqv, align 4, !tbaa !74
  %i.arj = fadd <4 x float> %i.ari, %i.arh
  store <4 x float> %i.arj, ptr %i.aqv, align 4, !tbaa !74
  %i.ark = load i8, ptr %i.ajr, align 1, !tbaa !17
  %i.arl = zext i8 %i.ark to i64
  %i.arm = load i8, ptr %i.aju, align 1, !tbaa !17
  %i.arn = zext i8 %i.arm to i64
  %i.aro = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.arr = shl nuw nsw i64 %i.arl, 7
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 98400
  %i.aru = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.arv = shl nuw nsw i64 %i.arn, 7
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 98400
  %i.ary = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  %i.arz = shl nuw nsw i64 %i.arp, 7
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 98400
  %i.asc = getelementptr inbounds nuw i8, ptr %8, i64 480 ; 2 uses
  %i.asd = load <4 x float>, ptr %i.arq, align 4, !tbaa !74
  %i.ase = load <4 x float>, ptr %i.art, align 4, !tbaa !74
  %i.asf = fadd <4 x float> %i.asd, %i.ase
  %i.asg = load <4 x float>, ptr %i.aru, align 4, !tbaa !74
  %i.ash = load <4 x float>, ptr %i.arx, align 4, !tbaa !74
  %i.asi = fadd <4 x float> %i.asg, %i.ash
  %i.asj = fmul <4 x float> %i.ac, %i.asi
  %i.ask = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.asf, <4 x float> %i.asj)
  %i.asl = load <4 x float>, ptr %i.ary, align 4, !tbaa !74
  %i.asm = load <4 x float>, ptr %i.asb, align 4, !tbaa !74
  %i.asn = fadd <4 x float> %i.asl, %i.asm
  %i.aso = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.asn, <4 x float> %i.ask)
  %i.asp = load <4 x float>, ptr %i.asc, align 4, !tbaa !74
  %i.asq = fadd <4 x float> %i.asp, %i.aso
  store <4 x float> %i.asq, ptr %i.asc, align 4, !tbaa !74
  %i.asr = load i8, ptr %i.ajr, align 1, !tbaa !17
  %i.ass = zext i8 %i.asr to i64
  %i.ast = load i8, ptr %i.aju, align 1, !tbaa !17
  %i.asu = zext i8 %i.ast to i64
  %i.asv = load i8, ptr %i.ajx, align 1, !tbaa !17
  %i.asw = zext i8 %i.asv to i64
  %i.asx = getelementptr inbounds nuw i8, ptr %i.j, i64 496
  %i.asy = shl nuw nsw i64 %i.ass, 7
  %i.asz = getelementptr inbounds nuw i8, ptr %1, i64 %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 98416
  %i.atb = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.atc = shl nuw nsw i64 %i.asu, 7
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 %i.atc
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 98416
  %i.atf = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  %i.atg = shl nuw nsw i64 %i.asw, 7
  %i.ath = getelementptr inbounds nuw i8, ptr %1, i64 %i.atg
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 98416
  %i.atj = getelementptr inbounds nuw i8, ptr %8, i64 496 ; 2 uses
  %i.atk = load <4 x float>, ptr %i.asx, align 4, !tbaa !74
  %i.atl = load <4 x float>, ptr %i.ata, align 4, !tbaa !74
  %i.atm = fadd <4 x float> %i.atk, %i.atl
  %i.atn = load <4 x float>, ptr %i.atb, align 4, !tbaa !74
  %i.ato = load <4 x float>, ptr %i.ate, align 4, !tbaa !74
  %i.atp = fadd <4 x float> %i.atn, %i.ato
  %i.atq = fmul <4 x float> %i.ac, %i.atp
  %i.atr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.atm, <4 x float> %i.atq)
  %i.ats = load <4 x float>, ptr %i.atf, align 4, !tbaa !74
  %i.att = load <4 x float>, ptr %i.ati, align 4, !tbaa !74
  %i.atu = fadd <4 x float> %i.ats, %i.att
  %i.atv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.atu, <4 x float> %i.atr)
  %i.atw = load <4 x float>, ptr %i.atj, align 4, !tbaa !74
  %i.atx = fadd <4 x float> %i.atw, %i.atv
  store <4 x float> %i.atx, ptr %i.atj, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D64_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI43testCppcontribSaDecode_D64_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV43testCppcontribSaDecode_D64_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_11
begin_hunk_12_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.pf = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.pg = shl nuw nsw i64 %i.ow, 5
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40976
  %i.pj = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 2 uses
  %i.pk = load <4 x float>, ptr %i.ox, align 4, !tbaa !74
  %i.pl = load <4 x float>, ptr %i.pa, align 4, !tbaa !74
  %i.pm = fadd <4 x float> %i.pk, %i.pl
  %i.pn = load <4 x float>, ptr %i.pb, align 4, !tbaa !74
  %i.po = load <4 x float>, ptr %i.pe, align 4, !tbaa !74
  %i.pp = fadd <4 x float> %i.pn, %i.po
  %i.pq = fmul <4 x float> %i.ac, %i.pp
  %i.pr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.pm, <4 x float> %i.pq)
  %i.ps = load <4 x float>, ptr %i.pf, align 4, !tbaa !74
  %i.pt = load <4 x float>, ptr %i.pi, align 4, !tbaa !74
  %i.pu = fadd <4 x float> %i.ps, %i.pt
  %i.pv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.pu, <4 x float> %i.pr)
  %i.pw = load <4 x float>, ptr %i.pj, align 4, !tbaa !74
  %i.px = fadd <4 x float> %i.pw, %i.pv
  store <4 x float> %i.px, ptr %i.pj, align 4, !tbaa !74
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !17
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !17
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 7 ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !17
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.qi = shl nuw nsw i64 %i.qa, 5
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 49152
  %i.ql = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.qm = shl nuw nsw i64 %i.qd, 5
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 49152
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.qq = shl nuw nsw i64 %i.qg, 5
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 49152
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.qu = load <4 x float>, ptr %i.qh, align 4, !tbaa !74
  %i.qv = load <4 x float>, ptr %i.qk, align 4, !tbaa !74
  %i.qw = fadd <4 x float> %i.qu, %i.qv
  %i.qx = load <4 x float>, ptr %i.ql, align 4, !tbaa !74
  %i.qy = load <4 x float>, ptr %i.qo, align 4, !tbaa !74
  %i.qz = fadd <4 x float> %i.qx, %i.qy
  %i.ra = fmul <4 x float> %i.ac, %i.qz
  %i.rb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.qw, <4 x float> %i.ra)
  %i.rc = load <4 x float>, ptr %i.qp, align 4, !tbaa !74
  %i.rd = load <4 x float>, ptr %i.qs, align 4, !tbaa !74
  %i.re = fadd <4 x float> %i.rc, %i.rd
  %i.rf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.re, <4 x float> %i.rb)
  %i.rg = load <4 x float>, ptr %i.qt, align 4, !tbaa !74
  %i.rh = fadd <4 x float> %i.rg, %i.rf
  store <4 x float> %i.rh, ptr %i.qt, align 4, !tbaa !74
  %i.ri = load i8, ptr %i.py, align 1, !tbaa !17
  %i.rj = zext i8 %i.ri to i64
  %i.rk = load i8, ptr %i.qb, align 1, !tbaa !17
  %i.rl = zext i8 %i.rk to i64
  %i.rm = load i8, ptr %i.qe, align 1, !tbaa !17
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.rp = shl nuw nsw i64 %i.rj, 5
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 49168
  %i.rs = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.rt = shl nuw nsw i64 %i.rl, 5
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 49168
  %i.rw = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.rx = shl nuw nsw i64 %i.rn, 5
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 49168
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.sb = load <4 x float>, ptr %i.ro, align 4, !tbaa !74
  %i.sc = load <4 x float>, ptr %i.rr, align 4, !tbaa !74
  %i.sd = fadd <4 x float> %i.sb, %i.sc
  %i.se = load <4 x float>, ptr %i.rs, align 4, !tbaa !74
  %i.sf = load <4 x float>, ptr %i.rv, align 4, !tbaa !74
  %i.sg = fadd <4 x float> %i.se, %i.sf
  %i.sh = fmul <4 x float> %i.ac, %i.sg
  %i.si = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.sd, <4 x float> %i.sh)
  %i.sj = load <4 x float>, ptr %i.rw, align 4, !tbaa !74
  %i.sk = load <4 x float>, ptr %i.rz, align 4, !tbaa !74
  %i.sl = fadd <4 x float> %i.sj, %i.sk
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.sl, <4 x float> %i.si)
  %i.sn = load <4 x float>, ptr %i.sa, align 4, !tbaa !74
  %i.so = fadd <4 x float> %i.sn, %i.sm
  store <4 x float> %i.so, ptr %i.sa, align 4, !tbaa !74
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !17
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !17
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !17
  %i.sx = zext i8 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.sz = shl nuw nsw i64 %i.sr, 5
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 57344
  %i.tc = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.td = shl nuw nsw i64 %i.su, 5
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 57344
  %i.tg = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.th = shl nuw nsw i64 %i.sx, 5
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 57344
  %i.tk = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.tl = load <4 x float>, ptr %i.sy, align 4, !tbaa !74
  %i.tm = load <4 x float>, ptr %i.tb, align 4, !tbaa !74
  %i.tn = fadd <4 x float> %i.tl, %i.tm
  %i.to = load <4 x float>, ptr %i.tc, align 4, !tbaa !74
  %i.tp = load <4 x float>, ptr %i.tf, align 4, !tbaa !74
  %i.tq = fadd <4 x float> %i.to, %i.tp
  %i.tr = fmul <4 x float> %i.ac, %i.tq
  %i.ts = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.tn, <4 x float> %i.tr)
  %i.tt = load <4 x float>, ptr %i.tg, align 4, !tbaa !74
  %i.tu = load <4 x float>, ptr %i.tj, align 4, !tbaa !74
  %i.tv = fadd <4 x float> %i.tt, %i.tu
  %i.tw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.tv, <4 x float> %i.ts)
  %i.tx = load <4 x float>, ptr %i.tk, align 4, !tbaa !74
  %i.ty = fadd <4 x float> %i.tx, %i.tw
  store <4 x float> %i.ty, ptr %i.tk, align 4, !tbaa !74
  %i.tz = load i8, ptr %i.sp, align 1, !tbaa !17
  %i.ua = zext i8 %i.tz to i64
  %i.ub = load i8, ptr %i.ss, align 1, !tbaa !17
  %i.uc = zext i8 %i.ub to i64
  %i.ud = load i8, ptr %i.sv, align 1, !tbaa !17
  %i.ue = zext i8 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.ug = shl nuw nsw i64 %i.ua, 5
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 57360
  %i.uj = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.uk = shl nuw nsw i64 %i.uc, 5
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 57360
  %i.un = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.uo = shl nuw nsw i64 %i.ue, 5
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 57360
  %i.ur = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.us = load <4 x float>, ptr %i.uf, align 4, !tbaa !74
  %i.ut = load <4 x float>, ptr %i.ui, align 4, !tbaa !74
  %i.uu = fadd <4 x float> %i.us, %i.ut
  %i.uv = load <4 x float>, ptr %i.uj, align 4, !tbaa !74
  %i.uw = load <4 x float>, ptr %i.um, align 4, !tbaa !74
  %i.ux = fadd <4 x float> %i.uv, %i.uw
  %i.uy = fmul <4 x float> %i.ac, %i.ux
  %i.uz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.uu, <4 x float> %i.uy)
  %i.va = load <4 x float>, ptr %i.un, align 4, !tbaa !74
  %i.vb = load <4 x float>, ptr %i.uq, align 4, !tbaa !74
  %i.vc = fadd <4 x float> %i.va, %i.vb
  %i.vd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.vc, <4 x float> %i.uz)
  %i.ve = load <4 x float>, ptr %i.ur, align 4, !tbaa !74
  %i.vf = fadd <4 x float> %i.ve, %i.vd
  store <4 x float> %i.vf, ptr %i.ur, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI42testCppcontribSaDecode_D64_IVF256_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI42testCppcontribSaDecode_D64_IVF256_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV42testCppcontribSaDecode_D64_IVF256_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_12
begin_hunk_13_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.qj = shl nuw nsw i64 %i.qb, 6
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32816
  %i.qm = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.qn = shl nuw nsw i64 %i.qd, 6
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 32816
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 2 uses
  %i.qr = load <4 x float>, ptr %i.qe, align 4, !tbaa !74
  %i.qs = load <4 x float>, ptr %i.qh, align 4, !tbaa !74
  %i.qt = fadd <4 x float> %i.qr, %i.qs
  %i.qu = load <4 x float>, ptr %i.qi, align 4, !tbaa !74
  %i.qv = load <4 x float>, ptr %i.ql, align 4, !tbaa !74
  %i.qw = fadd <4 x float> %i.qu, %i.qv
  %i.qx = fmul <4 x float> %i.ac, %i.qw
  %i.qy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.qt, <4 x float> %i.qx)
  %i.qz = load <4 x float>, ptr %i.qm, align 4, !tbaa !74
  %i.ra = load <4 x float>, ptr %i.qp, align 4, !tbaa !74
  %i.rb = fadd <4 x float> %i.qz, %i.ra
  %i.rc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.rb, <4 x float> %i.qy)
  %i.rd = load <4 x float>, ptr %i.qq, align 4, !tbaa !74
  %i.re = fadd <4 x float> %i.rd, %i.rc
  store <4 x float> %i.re, ptr %i.qq, align 4, !tbaa !74
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !17
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !17
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.rp = shl nuw nsw i64 %i.rh, 6
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 49152
  %i.rs = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.rt = shl nuw nsw i64 %i.rk, 6
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 49152
  %i.rw = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.rx = shl nuw nsw i64 %i.rn, 6
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 49152
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.sb = load <4 x float>, ptr %i.ro, align 4, !tbaa !74
  %i.sc = load <4 x float>, ptr %i.rr, align 4, !tbaa !74
  %i.sd = fadd <4 x float> %i.sb, %i.sc
  %i.se = load <4 x float>, ptr %i.rs, align 4, !tbaa !74
  %i.sf = load <4 x float>, ptr %i.rv, align 4, !tbaa !74
  %i.sg = fadd <4 x float> %i.se, %i.sf
  %i.sh = fmul <4 x float> %i.ac, %i.sg
  %i.si = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.sd, <4 x float> %i.sh)
  %i.sj = load <4 x float>, ptr %i.rw, align 4, !tbaa !74
  %i.sk = load <4 x float>, ptr %i.rz, align 4, !tbaa !74
  %i.sl = fadd <4 x float> %i.sj, %i.sk
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.sl, <4 x float> %i.si)
  %i.sn = load <4 x float>, ptr %i.sa, align 4, !tbaa !74
  %i.so = fadd <4 x float> %i.sn, %i.sm
  store <4 x float> %i.so, ptr %i.sa, align 4, !tbaa !74
  %i.sp = load i8, ptr %i.rf, align 1, !tbaa !17
  %i.sq = zext i8 %i.sp to i64
  %i.sr = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.ss = zext i8 %i.sr to i64
  %i.st = load i8, ptr %i.rl, align 1, !tbaa !17
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.sw = shl nuw nsw i64 %i.sq, 6
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 49168
  %i.sz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ta = shl nuw nsw i64 %i.ss, 6
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 49168
  %i.td = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.te = shl nuw nsw i64 %i.su, 6
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 49168
  %i.th = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.ti = load <4 x float>, ptr %i.sv, align 4, !tbaa !74
  %i.tj = load <4 x float>, ptr %i.sy, align 4, !tbaa !74
  %i.tk = fadd <4 x float> %i.ti, %i.tj
  %i.tl = load <4 x float>, ptr %i.sz, align 4, !tbaa !74
  %i.tm = load <4 x float>, ptr %i.tc, align 4, !tbaa !74
  %i.tn = fadd <4 x float> %i.tl, %i.tm
  %i.to = fmul <4 x float> %i.ac, %i.tn
  %i.tp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.tk, <4 x float> %i.to)
  %i.tq = load <4 x float>, ptr %i.td, align 4, !tbaa !74
  %i.tr = load <4 x float>, ptr %i.tg, align 4, !tbaa !74
  %i.ts = fadd <4 x float> %i.tq, %i.tr
  %i.tt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ts, <4 x float> %i.tp)
  %i.tu = load <4 x float>, ptr %i.th, align 4, !tbaa !74
  %i.tv = fadd <4 x float> %i.tu, %i.tt
  store <4 x float> %i.tv, ptr %i.th, align 4, !tbaa !74
  %i.tw = load i8, ptr %i.rf, align 1, !tbaa !17
  %i.tx = zext i8 %i.tw to i64
  %i.ty = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.tz = zext i8 %i.ty to i64
  %i.ua = load i8, ptr %i.rl, align 1, !tbaa !17
  %i.ub = zext i8 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.ud = shl nuw nsw i64 %i.tx, 6
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 49184
  %i.ug = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.uh = shl nuw nsw i64 %i.tz, 6
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 49184
  %i.uk = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.ul = shl nuw nsw i64 %i.ub, 6
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 49184
  %i.uo = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.up = load <4 x float>, ptr %i.uc, align 4, !tbaa !74
  %i.uq = load <4 x float>, ptr %i.uf, align 4, !tbaa !74
  %i.ur = fadd <4 x float> %i.up, %i.uq
  %i.us = load <4 x float>, ptr %i.ug, align 4, !tbaa !74
  %i.ut = load <4 x float>, ptr %i.uj, align 4, !tbaa !74
  %i.uu = fadd <4 x float> %i.us, %i.ut
  %i.uv = fmul <4 x float> %i.ac, %i.uu
  %i.uw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ur, <4 x float> %i.uv)
  %i.ux = load <4 x float>, ptr %i.uk, align 4, !tbaa !74
  %i.uy = load <4 x float>, ptr %i.un, align 4, !tbaa !74
  %i.uz = fadd <4 x float> %i.ux, %i.uy
  %i.va = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.uz, <4 x float> %i.uw)
  %i.vb = load <4 x float>, ptr %i.uo, align 4, !tbaa !74
  %i.vc = fadd <4 x float> %i.vb, %i.va
  store <4 x float> %i.vc, ptr %i.uo, align 4, !tbaa !74
  %i.vd = load i8, ptr %i.rf, align 1, !tbaa !17
  %i.ve = zext i8 %i.vd to i64
  %i.vf = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.vg = zext i8 %i.vf to i64
  %i.vh = load i8, ptr %i.rl, align 1, !tbaa !17
  %i.vi = zext i8 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.vk = shl nuw nsw i64 %i.ve, 6
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 49200
  %i.vn = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.vo = shl nuw nsw i64 %i.vg, 6
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 49200
  %i.vr = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.vs = shl nuw nsw i64 %i.vi, 6
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 49200
  %i.vv = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.vw = load <4 x float>, ptr %i.vj, align 4, !tbaa !74
  %i.vx = load <4 x float>, ptr %i.vm, align 4, !tbaa !74
  %i.vy = fadd <4 x float> %i.vw, %i.vx
  %i.vz = load <4 x float>, ptr %i.vn, align 4, !tbaa !74
  %i.wa = load <4 x float>, ptr %i.vq, align 4, !tbaa !74
  %i.wb = fadd <4 x float> %i.vz, %i.wa
  %i.wc = fmul <4 x float> %i.ac, %i.wb
  %i.wd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.vy, <4 x float> %i.wc)
  %i.we = load <4 x float>, ptr %i.vr, align 4, !tbaa !74
  %i.wf = load <4 x float>, ptr %i.vu, align 4, !tbaa !74
  %i.wg = fadd <4 x float> %i.we, %i.wf
  %i.wh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.wg, <4 x float> %i.wd)
  %i.wi = load <4 x float>, ptr %i.vv, align 4, !tbaa !74
  %i.wj = fadd <4 x float> %i.wi, %i.wh
  store <4 x float> %i.wj, ptr %i.vv, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D256_Residual4x8_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D256_Residual4x8_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV49testCppcontribSaDecode_D256_Residual4x8_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_13
begin_hunk_14_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.czo = getelementptr inbounds nuw i8, ptr %1, i64 %i.czn
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 245760
  %i.czq = shl nuw nsw i64 %i.cza, 8
  %i.czr = getelementptr inbounds nuw i8, ptr %0, i64 %i.czq
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czr, i64 196800
  %i.czt = shl nuw nsw i64 %i.czd, 6
  %i.czu = getelementptr inbounds nuw i8, ptr %1, i64 %i.czt
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 245760
  %i.czw = getelementptr inbounds nuw i8, ptr %8, i64 960 ; 2 uses
  %i.czx = load <4 x float>, ptr %i.czg, align 4, !tbaa !74
  %i.czy = load <4 x float>, ptr %i.czj, align 4, !tbaa !74
  %i.czz = fadd <4 x float> %i.czx, %i.czy
  %i.daa = load <4 x float>, ptr %i.czm, align 4, !tbaa !74
  %i.dab = load <4 x float>, ptr %i.czp, align 4, !tbaa !74
  %i.dac = fadd <4 x float> %i.daa, %i.dab
  %i.dad = fmul <4 x float> %i.ac, %i.dac
  %i.dae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.czz, <4 x float> %i.dad)
  %i.daf = load <4 x float>, ptr %i.czs, align 4, !tbaa !74
  %i.dag = load <4 x float>, ptr %i.czv, align 4, !tbaa !74
  %i.dah = fadd <4 x float> %i.daf, %i.dag
  %i.dai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.dah, <4 x float> %i.dae)
  %i.daj = load <4 x float>, ptr %i.czw, align 4, !tbaa !74
  %i.dak = fadd <4 x float> %i.daj, %i.dai
  store <4 x float> %i.dak, ptr %i.czw, align 4, !tbaa !74
  %i.dal = load i8, ptr %i.cdj, align 1, !tbaa !17
  %i.dam = zext i8 %i.dal to i64
  %i.dan = load i8, ptr %i.cyr, align 1, !tbaa !17
  %i.dao = zext i8 %i.dan to i64
  %i.dap = load i8, ptr %i.cdp, align 1, !tbaa !17
  %i.daq = zext i8 %i.dap to i64
  %i.dar = load i8, ptr %i.cyw, align 1, !tbaa !17
  %i.das = zext i8 %i.dar to i64
  %i.dat = load i8, ptr %i.cdv, align 1, !tbaa !17
  %i.dau = zext i8 %i.dat to i64
  %i.dav = load i8, ptr %i.czb, align 1, !tbaa !17
  %i.daw = zext i8 %i.dav to i64
  %i.dax = shl nuw nsw i64 %i.dam, 8
  %i.day = getelementptr inbounds nuw i8, ptr %0, i64 %i.dax
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 196816
  %i.dba = shl nuw nsw i64 %i.dao, 6
  %i.dbb = getelementptr inbounds nuw i8, ptr %1, i64 %i.dba
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dbb, i64 245776
  %i.dbd = shl nuw nsw i64 %i.daq, 8
  %i.dbe = getelementptr inbounds nuw i8, ptr %0, i64 %i.dbd
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbe, i64 196816
  %i.dbg = shl nuw nsw i64 %i.das, 6
  %i.dbh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dbg
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbh, i64 245776
  %i.dbj = shl nuw nsw i64 %i.dau, 8
  %i.dbk = getelementptr inbounds nuw i8, ptr %0, i64 %i.dbj
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 196816
  %i.dbm = shl nuw nsw i64 %i.daw, 6
  %i.dbn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dbm
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 245776
  %i.dbp = getelementptr inbounds nuw i8, ptr %8, i64 976 ; 2 uses
  %i.dbq = load <4 x float>, ptr %i.daz, align 4, !tbaa !74
  %i.dbr = load <4 x float>, ptr %i.dbc, align 4, !tbaa !74
  %i.dbs = fadd <4 x float> %i.dbq, %i.dbr
  %i.dbt = load <4 x float>, ptr %i.dbf, align 4, !tbaa !74
  %i.dbu = load <4 x float>, ptr %i.dbi, align 4, !tbaa !74
  %i.dbv = fadd <4 x float> %i.dbt, %i.dbu
  %i.dbw = fmul <4 x float> %i.ac, %i.dbv
  %i.dbx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.dbs, <4 x float> %i.dbw)
  %i.dby = load <4 x float>, ptr %i.dbl, align 4, !tbaa !74
  %i.dbz = load <4 x float>, ptr %i.dbo, align 4, !tbaa !74
  %i.dca = fadd <4 x float> %i.dby, %i.dbz
  %i.dcb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.dca, <4 x float> %i.dbx)
  %i.dcc = load <4 x float>, ptr %i.dbp, align 4, !tbaa !74
  %i.dcd = fadd <4 x float> %i.dcc, %i.dcb
  store <4 x float> %i.dcd, ptr %i.dbp, align 4, !tbaa !74
  %i.dce = load i8, ptr %i.cdj, align 1, !tbaa !17
  %i.dcf = zext i8 %i.dce to i64
  %i.dcg = load i8, ptr %i.cyr, align 1, !tbaa !17
  %i.dch = zext i8 %i.dcg to i64
  %i.dci = load i8, ptr %i.cdp, align 1, !tbaa !17
  %i.dcj = zext i8 %i.dci to i64
  %i.dck = load i8, ptr %i.cyw, align 1, !tbaa !17
  %i.dcl = zext i8 %i.dck to i64
  %i.dcm = load i8, ptr %i.cdv, align 1, !tbaa !17
  %i.dcn = zext i8 %i.dcm to i64
  %i.dco = load i8, ptr %i.czb, align 1, !tbaa !17
  %i.dcp = zext i8 %i.dco to i64
  %i.dcq = shl nuw nsw i64 %i.dcf, 8
  %i.dcr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dcq
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcr, i64 196832
  %i.dct = shl nuw nsw i64 %i.dch, 6
  %i.dcu = getelementptr inbounds nuw i8, ptr %1, i64 %i.dct
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcu, i64 245792
  %i.dcw = shl nuw nsw i64 %i.dcj, 8
  %i.dcx = getelementptr inbounds nuw i8, ptr %0, i64 %i.dcw
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcx, i64 196832
  %i.dcz = shl nuw nsw i64 %i.dcl, 6
  %i.dda = getelementptr inbounds nuw i8, ptr %1, i64 %i.dcz
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dda, i64 245792
  %i.ddc = shl nuw nsw i64 %i.dcn, 8
  %i.ddd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ddc
  %i.dde = getelementptr inbounds nuw i8, ptr %i.ddd, i64 196832
  %i.ddf = shl nuw nsw i64 %i.dcp, 6
  %i.ddg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ddf
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 245792
  %i.ddi = getelementptr inbounds nuw i8, ptr %8, i64 992 ; 2 uses
  %i.ddj = load <4 x float>, ptr %i.dcs, align 4, !tbaa !74
  %i.ddk = load <4 x float>, ptr %i.dcv, align 4, !tbaa !74
  %i.ddl = fadd <4 x float> %i.ddj, %i.ddk
  %i.ddm = load <4 x float>, ptr %i.dcy, align 4, !tbaa !74
  %i.ddn = load <4 x float>, ptr %i.ddb, align 4, !tbaa !74
  %i.ddo = fadd <4 x float> %i.ddm, %i.ddn
  %i.ddp = fmul <4 x float> %i.ac, %i.ddo
  %i.ddq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ddl, <4 x float> %i.ddp)
  %i.ddr = load <4 x float>, ptr %i.dde, align 4, !tbaa !74
  %i.dds = load <4 x float>, ptr %i.ddh, align 4, !tbaa !74
  %i.ddt = fadd <4 x float> %i.ddr, %i.dds
  %i.ddu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ddt, <4 x float> %i.ddq)
  %i.ddv = load <4 x float>, ptr %i.ddi, align 4, !tbaa !74
  %i.ddw = fadd <4 x float> %i.ddv, %i.ddu
  store <4 x float> %i.ddw, ptr %i.ddi, align 4, !tbaa !74
  %i.ddx = load i8, ptr %i.cdj, align 1, !tbaa !17
  %i.ddy = zext i8 %i.ddx to i64
  %i.ddz = load i8, ptr %i.cyr, align 1, !tbaa !17
  %i.dea = zext i8 %i.ddz to i64
  %i.deb = load i8, ptr %i.cdp, align 1, !tbaa !17
  %i.dec = zext i8 %i.deb to i64
  %i.ded = load i8, ptr %i.cyw, align 1, !tbaa !17
  %i.dee = zext i8 %i.ded to i64
  %i.def = load i8, ptr %i.cdv, align 1, !tbaa !17
  %i.deg = zext i8 %i.def to i64
  %i.deh = load i8, ptr %i.czb, align 1, !tbaa !17
  %i.dei = zext i8 %i.deh to i64
  %i.dej = shl nuw nsw i64 %i.ddy, 8
  %i.dek = getelementptr inbounds nuw i8, ptr %0, i64 %i.dej
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 196848
  %i.dem = shl nuw nsw i64 %i.dea, 6
  %i.den = getelementptr inbounds nuw i8, ptr %1, i64 %i.dem
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 245808
  %i.dep = shl nuw nsw i64 %i.dec, 8
  %i.deq = getelementptr inbounds nuw i8, ptr %0, i64 %i.dep
  %i.der = getelementptr inbounds nuw i8, ptr %i.deq, i64 196848
  %i.des = shl nuw nsw i64 %i.dee, 6
  %i.det = getelementptr inbounds nuw i8, ptr %1, i64 %i.des
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 245808
  %i.dev = shl nuw nsw i64 %i.deg, 8
  %i.dew = getelementptr inbounds nuw i8, ptr %0, i64 %i.dev
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dew, i64 196848
  %i.dey = shl nuw nsw i64 %i.dei, 6
  %i.dez = getelementptr inbounds nuw i8, ptr %1, i64 %i.dey
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 245808
  %i.dfb = getelementptr inbounds nuw i8, ptr %8, i64 1008 ; 2 uses
  %i.dfc = load <4 x float>, ptr %i.del, align 4, !tbaa !74
  %i.dfd = load <4 x float>, ptr %i.deo, align 4, !tbaa !74
  %i.dfe = fadd <4 x float> %i.dfc, %i.dfd
  %i.dff = load <4 x float>, ptr %i.der, align 4, !tbaa !74
  %i.dfg = load <4 x float>, ptr %i.deu, align 4, !tbaa !74
  %i.dfh = fadd <4 x float> %i.dff, %i.dfg
  %i.dfi = fmul <4 x float> %i.ac, %i.dfh
  %i.dfj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.dfe, <4 x float> %i.dfi)
  %i.dfk = load <4 x float>, ptr %i.dex, align 4, !tbaa !74
  %i.dfl = load <4 x float>, ptr %i.dfa, align 4, !tbaa !74
  %i.dfm = fadd <4 x float> %i.dfk, %i.dfl
  %i.dfn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.dfm, <4 x float> %i.dfj)
  %i.dfo = load <4 x float>, ptr %i.dfb, align 4, !tbaa !74
  %i.dfp = fadd <4 x float> %i.dfo, %i.dfn
  store <4 x float> %i.dfp, ptr %i.dfb, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D256_Residual4x8_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D256_Residual4x8_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48testCppcontribSaDecode_D256_Residual4x8_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_14
begin_hunk_15_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.cye = getelementptr inbounds nuw i8, ptr %1, i64 %i.cyd
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 229440
  %i.cyg = shl nuw nsw i64 %i.cxr, 8
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 %i.cyg
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cyh, i64 196800
  %i.cyj = shl nuw nsw i64 %i.cxt, 7
  %i.cyk = getelementptr inbounds nuw i8, ptr %1, i64 %i.cyj
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 229440
  %i.cym = getelementptr inbounds nuw i8, ptr %8, i64 960 ; 2 uses
  %i.cyn = load <4 x float>, ptr %i.cxw, align 4, !tbaa !74
  %i.cyo = load <4 x float>, ptr %i.cxz, align 4, !tbaa !74
  %i.cyp = fadd <4 x float> %i.cyn, %i.cyo
  %i.cyq = load <4 x float>, ptr %i.cyc, align 4, !tbaa !74
  %i.cyr = load <4 x float>, ptr %i.cyf, align 4, !tbaa !74
  %i.cys = fadd <4 x float> %i.cyq, %i.cyr
  %i.cyt = fmul <4 x float> %i.ac, %i.cys
  %i.cyu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cyp, <4 x float> %i.cyt)
  %i.cyv = load <4 x float>, ptr %i.cyi, align 4, !tbaa !74
  %i.cyw = load <4 x float>, ptr %i.cyl, align 4, !tbaa !74
  %i.cyx = fadd <4 x float> %i.cyv, %i.cyw
  %i.cyy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cyx, <4 x float> %i.cyu)
  %i.cyz = load <4 x float>, ptr %i.cym, align 4, !tbaa !74
  %i.cza = fadd <4 x float> %i.cyz, %i.cyy
  store <4 x float> %i.cza, ptr %i.cym, align 4, !tbaa !74
  %i.czb = load i8, ptr %i.ccf, align 1, !tbaa !17
  %i.czc = zext i8 %i.czb to i64
  %i.czd = load i8, ptr %i.cqj, align 1, !tbaa !17
  %i.cze = zext i8 %i.czd to i64
  %i.czf = load i8, ptr %i.ccl, align 1, !tbaa !17
  %i.czg = zext i8 %i.czf to i64
  %i.czh = load i8, ptr %i.cqo, align 1, !tbaa !17
  %i.czi = zext i8 %i.czh to i64
  %i.czj = load i8, ptr %i.ccr, align 1, !tbaa !17
  %i.czk = zext i8 %i.czj to i64
  %i.czl = load i8, ptr %i.cqt, align 1, !tbaa !17
  %i.czm = zext i8 %i.czl to i64
  %i.czn = shl nuw nsw i64 %i.czc, 8
  %i.czo = getelementptr inbounds nuw i8, ptr %0, i64 %i.czn
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 196816
  %i.czq = shl nuw nsw i64 %i.cze, 7
  %i.czr = getelementptr inbounds nuw i8, ptr %1, i64 %i.czq
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czr, i64 229456
  %i.czt = shl nuw nsw i64 %i.czg, 8
  %i.czu = getelementptr inbounds nuw i8, ptr %0, i64 %i.czt
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 196816
  %i.czw = shl nuw nsw i64 %i.czi, 7
  %i.czx = getelementptr inbounds nuw i8, ptr %1, i64 %i.czw
  %i.czy = getelementptr inbounds nuw i8, ptr %i.czx, i64 229456
  %i.czz = shl nuw nsw i64 %i.czk, 8
  %i.daa = getelementptr inbounds nuw i8, ptr %0, i64 %i.czz
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 196816
  %i.dac = shl nuw nsw i64 %i.czm, 7
  %i.dad = getelementptr inbounds nuw i8, ptr %1, i64 %i.dac
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 229456
  %i.daf = getelementptr inbounds nuw i8, ptr %8, i64 976 ; 2 uses
  %i.dag = load <4 x float>, ptr %i.czp, align 4, !tbaa !74
  %i.dah = load <4 x float>, ptr %i.czs, align 4, !tbaa !74
  %i.dai = fadd <4 x float> %i.dag, %i.dah
  %i.daj = load <4 x float>, ptr %i.czv, align 4, !tbaa !74
  %i.dak = load <4 x float>, ptr %i.czy, align 4, !tbaa !74
  %i.dal = fadd <4 x float> %i.daj, %i.dak
  %i.dam = fmul <4 x float> %i.ac, %i.dal
  %i.dan = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.dai, <4 x float> %i.dam)
  %i.dao = load <4 x float>, ptr %i.dab, align 4, !tbaa !74
  %i.dap = load <4 x float>, ptr %i.dae, align 4, !tbaa !74
  %i.daq = fadd <4 x float> %i.dao, %i.dap
  %i.dar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.daq, <4 x float> %i.dan)
  %i.das = load <4 x float>, ptr %i.daf, align 4, !tbaa !74
  %i.dat = fadd <4 x float> %i.das, %i.dar
  store <4 x float> %i.dat, ptr %i.daf, align 4, !tbaa !74
  %i.dau = load i8, ptr %i.ccf, align 1, !tbaa !17
  %i.dav = zext i8 %i.dau to i64
  %i.daw = load i8, ptr %i.cqj, align 1, !tbaa !17
  %i.dax = zext i8 %i.daw to i64
  %i.day = load i8, ptr %i.ccl, align 1, !tbaa !17
  %i.daz = zext i8 %i.day to i64
  %i.dba = load i8, ptr %i.cqo, align 1, !tbaa !17
  %i.dbb = zext i8 %i.dba to i64
  %i.dbc = load i8, ptr %i.ccr, align 1, !tbaa !17
  %i.dbd = zext i8 %i.dbc to i64
  %i.dbe = load i8, ptr %i.cqt, align 1, !tbaa !17
  %i.dbf = zext i8 %i.dbe to i64
  %i.dbg = shl nuw nsw i64 %i.dav, 8
  %i.dbh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dbg
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbh, i64 196832
  %i.dbj = shl nuw nsw i64 %i.dax, 7
  %i.dbk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dbj
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 229472
  %i.dbm = shl nuw nsw i64 %i.daz, 8
  %i.dbn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dbm
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 196832
  %i.dbp = shl nuw nsw i64 %i.dbb, 7
  %i.dbq = getelementptr inbounds nuw i8, ptr %1, i64 %i.dbp
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 229472
  %i.dbs = shl nuw nsw i64 %i.dbd, 8
  %i.dbt = getelementptr inbounds nuw i8, ptr %0, i64 %i.dbs
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbt, i64 196832
  %i.dbv = shl nuw nsw i64 %i.dbf, 7
  %i.dbw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dbv
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 229472
  %i.dby = getelementptr inbounds nuw i8, ptr %8, i64 992 ; 2 uses
  %i.dbz = load <4 x float>, ptr %i.dbi, align 4, !tbaa !74
  %i.dca = load <4 x float>, ptr %i.dbl, align 4, !tbaa !74
  %i.dcb = fadd <4 x float> %i.dbz, %i.dca
  %i.dcc = load <4 x float>, ptr %i.dbo, align 4, !tbaa !74
  %i.dcd = load <4 x float>, ptr %i.dbr, align 4, !tbaa !74
  %i.dce = fadd <4 x float> %i.dcc, %i.dcd
  %i.dcf = fmul <4 x float> %i.ac, %i.dce
  %i.dcg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.dcb, <4 x float> %i.dcf)
  %i.dch = load <4 x float>, ptr %i.dbu, align 4, !tbaa !74
  %i.dci = load <4 x float>, ptr %i.dbx, align 4, !tbaa !74
  %i.dcj = fadd <4 x float> %i.dch, %i.dci
  %i.dck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.dcj, <4 x float> %i.dcg)
  %i.dcl = load <4 x float>, ptr %i.dby, align 4, !tbaa !74
  %i.dcm = fadd <4 x float> %i.dcl, %i.dck
  store <4 x float> %i.dcm, ptr %i.dby, align 4, !tbaa !74
  %i.dcn = load i8, ptr %i.ccf, align 1, !tbaa !17
  %i.dco = zext i8 %i.dcn to i64
  %i.dcp = load i8, ptr %i.cqj, align 1, !tbaa !17
  %i.dcq = zext i8 %i.dcp to i64
  %i.dcr = load i8, ptr %i.ccl, align 1, !tbaa !17
  %i.dcs = zext i8 %i.dcr to i64
  %i.dct = load i8, ptr %i.cqo, align 1, !tbaa !17
  %i.dcu = zext i8 %i.dct to i64
  %i.dcv = load i8, ptr %i.ccr, align 1, !tbaa !17
  %i.dcw = zext i8 %i.dcv to i64
  %i.dcx = load i8, ptr %i.cqt, align 1, !tbaa !17
  %i.dcy = zext i8 %i.dcx to i64
  %i.dcz = shl nuw nsw i64 %i.dco, 8
  %i.dda = getelementptr inbounds nuw i8, ptr %0, i64 %i.dcz
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dda, i64 196848
  %i.ddc = shl nuw nsw i64 %i.dcq, 7
  %i.ddd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ddc
  %i.dde = getelementptr inbounds nuw i8, ptr %i.ddd, i64 229488
  %i.ddf = shl nuw nsw i64 %i.dcs, 8
  %i.ddg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ddf
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 196848
  %i.ddi = shl nuw nsw i64 %i.dcu, 7
  %i.ddj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ddi
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.ddj, i64 229488
  %i.ddl = shl nuw nsw i64 %i.dcw, 8
  %i.ddm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ddl
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddm, i64 196848
  %i.ddo = shl nuw nsw i64 %i.dcy, 7
  %i.ddp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ddo
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 229488
  %i.ddr = getelementptr inbounds nuw i8, ptr %8, i64 1008 ; 2 uses
  %i.dds = load <4 x float>, ptr %i.ddb, align 4, !tbaa !74
  %i.ddt = load <4 x float>, ptr %i.dde, align 4, !tbaa !74
  %i.ddu = fadd <4 x float> %i.dds, %i.ddt
  %i.ddv = load <4 x float>, ptr %i.ddh, align 4, !tbaa !74
  %i.ddw = load <4 x float>, ptr %i.ddk, align 4, !tbaa !74
  %i.ddx = fadd <4 x float> %i.ddv, %i.ddw
  %i.ddy = fmul <4 x float> %i.ac, %i.ddx
  %i.ddz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ddu, <4 x float> %i.ddy)
  %i.dea = load <4 x float>, ptr %i.ddn, align 4, !tbaa !74
  %i.deb = load <4 x float>, ptr %i.ddq, align 4, !tbaa !74
  %i.dec = fadd <4 x float> %i.dea, %i.deb
  %i.ded = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.dec, <4 x float> %i.ddz)
  %i.dee = load <4 x float>, ptr %i.ddr, align 4, !tbaa !74
  %i.def = fadd <4 x float> %i.dee, %i.ded
  store <4 x float> %i.def, ptr %i.ddr, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual4x8_PQ10_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual4x8_PQ10_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV49testCppcontribSaDecode_D160_Residual4x8_PQ10_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_15
begin_hunk_16_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.bka = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjz
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 147456
  %i.bkc = mul nuw nsw i64 %i.bjm, 160
  %i.bkd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bkc
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 122976
  %i.bkf = shl nuw nsw i64 %i.bjp, 6
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkf
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 147456
  %i.bki = getelementptr inbounds nuw i8, ptr %8, i64 576 ; 2 uses
  %i.bkj = load <4 x float>, ptr %i.bjs, align 4, !tbaa !74
  %i.bkk = load <4 x float>, ptr %i.bjv, align 4, !tbaa !74
  %i.bkl = fadd <4 x float> %i.bkj, %i.bkk
  %i.bkm = load <4 x float>, ptr %i.bjy, align 4, !tbaa !74
  %i.bkn = load <4 x float>, ptr %i.bkb, align 4, !tbaa !74
  %i.bko = fadd <4 x float> %i.bkm, %i.bkn
  %i.bkp = fmul <4 x float> %i.ac, %i.bko
  %i.bkq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bkl, <4 x float> %i.bkp)
  %i.bkr = load <4 x float>, ptr %i.bke, align 4, !tbaa !74
  %i.bks = load <4 x float>, ptr %i.bkh, align 4, !tbaa !74
  %i.bkt = fadd <4 x float> %i.bkr, %i.bks
  %i.bku = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bkt, <4 x float> %i.bkq)
  %i.bkv = load <4 x float>, ptr %i.bki, align 4, !tbaa !74
  %i.bkw = fadd <4 x float> %i.bkv, %i.bku
  store <4 x float> %i.bkw, ptr %i.bki, align 4, !tbaa !74
  %i.bkx = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.bky = zext i8 %i.bkx to i64
  %i.bkz = load i8, ptr %i.bjd, align 1, !tbaa !17
  %i.bla = zext i8 %i.bkz to i64
  %i.blb = load i8, ptr %i.ayq, align 1, !tbaa !17
  %i.blc = zext i8 %i.blb to i64
  %i.bld = load i8, ptr %i.bji, align 1, !tbaa !17
  %i.ble = zext i8 %i.bld to i64
  %i.blf = load i8, ptr %i.ayv, align 1, !tbaa !17
  %i.blg = zext i8 %i.blf to i64
  %i.blh = load i8, ptr %i.bjn, align 1, !tbaa !17
  %i.bli = zext i8 %i.blh to i64
  %i.blj = mul nuw nsw i64 %i.bky, 160
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 %i.blj
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 122992
  %i.blm = shl nuw nsw i64 %i.bla, 6
  %i.bln = getelementptr inbounds nuw i8, ptr %1, i64 %i.blm
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 147472
  %i.blp = mul nuw nsw i64 %i.blc, 160
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 %i.blp
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 122992
  %i.bls = shl nuw nsw i64 %i.ble, 6
  %i.blt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bls
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 147472
  %i.blv = mul nuw nsw i64 %i.blg, 160
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 %i.blv
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 122992
  %i.bly = shl nuw nsw i64 %i.bli, 6
  %i.blz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bly
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 147472
  %i.bmb = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.bmc = load <4 x float>, ptr %i.bll, align 4, !tbaa !74
  %i.bmd = load <4 x float>, ptr %i.blo, align 4, !tbaa !74
  %i.bme = fadd <4 x float> %i.bmc, %i.bmd
  %i.bmf = load <4 x float>, ptr %i.blr, align 4, !tbaa !74
  %i.bmg = load <4 x float>, ptr %i.blu, align 4, !tbaa !74
  %i.bmh = fadd <4 x float> %i.bmf, %i.bmg
  %i.bmi = fmul <4 x float> %i.ac, %i.bmh
  %i.bmj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bme, <4 x float> %i.bmi)
  %i.bmk = load <4 x float>, ptr %i.blx, align 4, !tbaa !74
  %i.bml = load <4 x float>, ptr %i.bma, align 4, !tbaa !74
  %i.bmm = fadd <4 x float> %i.bmk, %i.bml
  %i.bmn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bmm, <4 x float> %i.bmj)
  %i.bmo = load <4 x float>, ptr %i.bmb, align 4, !tbaa !74
  %i.bmp = fadd <4 x float> %i.bmo, %i.bmn
  store <4 x float> %i.bmp, ptr %i.bmb, align 4, !tbaa !74
  %i.bmq = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.bmr = zext i8 %i.bmq to i64
  %i.bms = load i8, ptr %i.bjd, align 1, !tbaa !17
  %i.bmt = zext i8 %i.bms to i64
  %i.bmu = load i8, ptr %i.ayq, align 1, !tbaa !17
  %i.bmv = zext i8 %i.bmu to i64
  %i.bmw = load i8, ptr %i.bji, align 1, !tbaa !17
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = load i8, ptr %i.ayv, align 1, !tbaa !17
  %i.bmz = zext i8 %i.bmy to i64
  %i.bna = load i8, ptr %i.bjn, align 1, !tbaa !17
  %i.bnb = zext i8 %i.bna to i64
  %i.bnc = mul nuw nsw i64 %i.bmr, 160
  %i.bnd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bnc
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 123008
  %i.bnf = shl nuw nsw i64 %i.bmt, 6
  %i.bng = getelementptr inbounds nuw i8, ptr %1, i64 %i.bnf
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 147488
  %i.bni = mul nuw nsw i64 %i.bmv, 160
  %i.bnj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bni
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 123008
  %i.bnl = shl nuw nsw i64 %i.bmx, 6
  %i.bnm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 147488
  %i.bno = mul nuw nsw i64 %i.bmz, 160
  %i.bnp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bno
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 123008
  %i.bnr = shl nuw nsw i64 %i.bnb, 6
  %i.bns = getelementptr inbounds nuw i8, ptr %1, i64 %i.bnr
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 147488
  %i.bnu = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.bnv = load <4 x float>, ptr %i.bne, align 4, !tbaa !74
  %i.bnw = load <4 x float>, ptr %i.bnh, align 4, !tbaa !74
  %i.bnx = fadd <4 x float> %i.bnv, %i.bnw
  %i.bny = load <4 x float>, ptr %i.bnk, align 4, !tbaa !74
  %i.bnz = load <4 x float>, ptr %i.bnn, align 4, !tbaa !74
  %i.boa = fadd <4 x float> %i.bny, %i.bnz
  %i.bob = fmul <4 x float> %i.ac, %i.boa
  %i.boc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bnx, <4 x float> %i.bob)
  %i.bod = load <4 x float>, ptr %i.bnq, align 4, !tbaa !74
  %i.boe = load <4 x float>, ptr %i.bnt, align 4, !tbaa !74
  %i.bof = fadd <4 x float> %i.bod, %i.boe
  %i.bog = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bof, <4 x float> %i.boc)
  %i.boh = load <4 x float>, ptr %i.bnu, align 4, !tbaa !74
  %i.boi = fadd <4 x float> %i.boh, %i.bog
  store <4 x float> %i.boi, ptr %i.bnu, align 4, !tbaa !74
  %i.boj = load i8, ptr %i.ayl, align 1, !tbaa !17
  %i.bok = zext i8 %i.boj to i64
  %i.bol = load i8, ptr %i.bjd, align 1, !tbaa !17
  %i.bom = zext i8 %i.bol to i64
  %i.bon = load i8, ptr %i.ayq, align 1, !tbaa !17
  %i.boo = zext i8 %i.bon to i64
  %i.bop = load i8, ptr %i.bji, align 1, !tbaa !17
  %i.boq = zext i8 %i.bop to i64
  %i.bor = load i8, ptr %i.ayv, align 1, !tbaa !17
  %i.bos = zext i8 %i.bor to i64
  %i.bot = load i8, ptr %i.bjn, align 1, !tbaa !17
  %i.bou = zext i8 %i.bot to i64
  %i.bov = mul nuw nsw i64 %i.bok, 160
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 %i.bov
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 123024
  %i.boy = shl nuw nsw i64 %i.bom, 6
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 %i.boy
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 147504
  %i.bpb = mul nuw nsw i64 %i.boo, 160
  %i.bpc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bpb
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 123024
  %i.bpe = shl nuw nsw i64 %i.boq, 6
  %i.bpf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bpe
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 147504
  %i.bph = mul nuw nsw i64 %i.bos, 160
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bph
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 123024
  %i.bpk = shl nuw nsw i64 %i.bou, 6
  %i.bpl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bpk
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 147504
  %i.bpn = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.bpo = load <4 x float>, ptr %i.box, align 4, !tbaa !74
  %i.bpp = load <4 x float>, ptr %i.bpa, align 4, !tbaa !74
  %i.bpq = fadd <4 x float> %i.bpo, %i.bpp
  %i.bpr = load <4 x float>, ptr %i.bpd, align 4, !tbaa !74
  %i.bps = load <4 x float>, ptr %i.bpg, align 4, !tbaa !74
  %i.bpt = fadd <4 x float> %i.bpr, %i.bps
  %i.bpu = fmul <4 x float> %i.ac, %i.bpt
  %i.bpv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bpq, <4 x float> %i.bpu)
  %i.bpw = load <4 x float>, ptr %i.bpj, align 4, !tbaa !74
  %i.bpx = load <4 x float>, ptr %i.bpm, align 4, !tbaa !74
  %i.bpy = fadd <4 x float> %i.bpw, %i.bpx
  %i.bpz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bpy, <4 x float> %i.bpv)
  %i.bqa = load <4 x float>, ptr %i.bpn, align 4, !tbaa !74
  %i.bqb = fadd <4 x float> %i.bqa, %i.bpz
  store <4 x float> %i.bqb, ptr %i.bpn, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual2x8_PQ10_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual2x8_PQ10_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV49testCppcontribSaDecode_D160_Residual2x8_PQ10_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_16
begin_hunk_17_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.bjo = zext i8 %i.bjn to i64
  %i.bjp = load i8, ptr %i.bht, align 1, !tbaa !17
  %i.bjq = zext i8 %i.bjp to i64
  %i.bjr = load i8, ptr %i.afq, align 1, !tbaa !17
  %i.bjs = zext i8 %i.bjr to i64
  %i.bjt = load i8, ptr %i.bhy, align 1, !tbaa !17
  %i.bju = zext i8 %i.bjt to i64
  %i.bjv = load i8, ptr %i.afw, align 1, !tbaa !17
  %i.bjw = zext i8 %i.bjv to i64
  %i.bjx = load i8, ptr %i.bid, align 1, !tbaa !17
  %i.bjy = zext i8 %i.bjx to i64
  %i.bjz = mul nuw nsw i64 %i.bjo, 320
  %i.bka = getelementptr inbounds nuw i8, ptr %0, i64 %i.bjz
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 82192
  %i.bkc = shl nuw nsw i64 %i.bjq, 6
  %i.bkd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkc
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 147472
  %i.bkf = mul nuw nsw i64 %i.bjs, 320
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bkf
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 82192
  %i.bki = shl nuw nsw i64 %i.bju, 6
  %i.bkj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bki
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 147472
  %i.bkl = mul nuw nsw i64 %i.bjw, 320
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bkl
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 82192
  %i.bko = shl nuw nsw i64 %i.bjy, 6
  %i.bkp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bko
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 147472
  %i.bkr = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.bks = load <4 x float>, ptr %i.bkb, align 4, !tbaa !74
  %i.bkt = load <4 x float>, ptr %i.bke, align 4, !tbaa !74
  %i.bku = fadd <4 x float> %i.bks, %i.bkt
  %i.bkv = load <4 x float>, ptr %i.bkh, align 4, !tbaa !74
  %i.bkw = load <4 x float>, ptr %i.bkk, align 4, !tbaa !74
  %i.bkx = fadd <4 x float> %i.bkv, %i.bkw
  %i.bky = fmul <4 x float> %i.ac, %i.bkx
  %i.bkz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bku, <4 x float> %i.bky)
  %i.bla = load <4 x float>, ptr %i.bkn, align 4, !tbaa !74
  %i.blb = load <4 x float>, ptr %i.bkq, align 4, !tbaa !74
  %i.blc = fadd <4 x float> %i.bla, %i.blb
  %i.bld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.blc, <4 x float> %i.bkz)
  %i.ble = load <4 x float>, ptr %i.bkr, align 4, !tbaa !74
  %i.blf = fadd <4 x float> %i.ble, %i.bld
  store <4 x float> %i.blf, ptr %i.bkr, align 4, !tbaa !74
  %i.blg = load i8, ptr %i.afk, align 1, !tbaa !17
  %i.blh = zext i8 %i.blg to i64
  %i.bli = load i8, ptr %i.bht, align 1, !tbaa !17
  %i.blj = zext i8 %i.bli to i64
  %i.blk = load i8, ptr %i.afq, align 1, !tbaa !17
  %i.bll = zext i8 %i.blk to i64
  %i.blm = load i8, ptr %i.bhy, align 1, !tbaa !17
  %i.bln = zext i8 %i.blm to i64
  %i.blo = load i8, ptr %i.afw, align 1, !tbaa !17
  %i.blp = zext i8 %i.blo to i64
  %i.blq = load i8, ptr %i.bid, align 1, !tbaa !17
  %i.blr = zext i8 %i.blq to i64
  %i.bls = mul nuw nsw i64 %i.blh, 320
  %i.blt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bls
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 82208
  %i.blv = shl nuw nsw i64 %i.blj, 6
  %i.blw = getelementptr inbounds nuw i8, ptr %1, i64 %i.blv
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 147488
  %i.bly = mul nuw nsw i64 %i.bll, 320
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bly
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 82208
  %i.bmb = shl nuw nsw i64 %i.bln, 6
  %i.bmc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bmb
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 147488
  %i.bme = mul nuw nsw i64 %i.blp, 320
  %i.bmf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bme
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 82208
  %i.bmh = shl nuw nsw i64 %i.blr, 6
  %i.bmi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bmh
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 147488
  %i.bmk = getelementptr inbounds nuw i8, ptr %8, i64 608 ; 2 uses
  %i.bml = load <4 x float>, ptr %i.blu, align 4, !tbaa !74
  %i.bmm = load <4 x float>, ptr %i.blx, align 4, !tbaa !74
  %i.bmn = fadd <4 x float> %i.bml, %i.bmm
  %i.bmo = load <4 x float>, ptr %i.bma, align 4, !tbaa !74
  %i.bmp = load <4 x float>, ptr %i.bmd, align 4, !tbaa !74
  %i.bmq = fadd <4 x float> %i.bmo, %i.bmp
  %i.bmr = fmul <4 x float> %i.ac, %i.bmq
  %i.bms = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bmn, <4 x float> %i.bmr)
  %i.bmt = load <4 x float>, ptr %i.bmg, align 4, !tbaa !74
  %i.bmu = load <4 x float>, ptr %i.bmj, align 4, !tbaa !74
  %i.bmv = fadd <4 x float> %i.bmt, %i.bmu
  %i.bmw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bmv, <4 x float> %i.bms)
  %i.bmx = load <4 x float>, ptr %i.bmk, align 4, !tbaa !74
  %i.bmy = fadd <4 x float> %i.bmx, %i.bmw
  store <4 x float> %i.bmy, ptr %i.bmk, align 4, !tbaa !74
  %i.bmz = load i8, ptr %i.afk, align 1, !tbaa !17
  %i.bna = zext i8 %i.bmz to i64
  %i.bnb = load i8, ptr %i.bht, align 1, !tbaa !17
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = load i8, ptr %i.afq, align 1, !tbaa !17
  %i.bne = zext i8 %i.bnd to i64
  %i.bnf = load i8, ptr %i.bhy, align 1, !tbaa !17
  %i.bng = zext i8 %i.bnf to i64
  %i.bnh = load i8, ptr %i.afw, align 1, !tbaa !17
  %i.bni = zext i8 %i.bnh to i64
  %i.bnj = load i8, ptr %i.bid, align 1, !tbaa !17
  %i.bnk = zext i8 %i.bnj to i64
  %i.bnl = mul nuw nsw i64 %i.bna, 320
  %i.bnm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 82224
  %i.bno = shl nuw nsw i64 %i.bnc, 6
  %i.bnp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bno
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 147504
  %i.bnr = mul nuw nsw i64 %i.bne, 320
  %i.bns = getelementptr inbounds nuw i8, ptr %0, i64 %i.bnr
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 82224
  %i.bnu = shl nuw nsw i64 %i.bng, 6
  %i.bnv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bnu
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 147504
  %i.bnx = mul nuw nsw i64 %i.bni, 320
  %i.bny = getelementptr inbounds nuw i8, ptr %0, i64 %i.bnx
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 82224
  %i.boa = shl nuw nsw i64 %i.bnk, 6
  %i.bob = getelementptr inbounds nuw i8, ptr %1, i64 %i.boa
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 147504
  %i.bod = getelementptr inbounds nuw i8, ptr %8, i64 624 ; 2 uses
  %i.boe = load <4 x float>, ptr %i.bnn, align 4, !tbaa !74
  %i.bof = load <4 x float>, ptr %i.bnq, align 4, !tbaa !74
  %i.bog = fadd <4 x float> %i.boe, %i.bof
  %i.boh = load <4 x float>, ptr %i.bnt, align 4, !tbaa !74
  %i.boi = load <4 x float>, ptr %i.bnw, align 4, !tbaa !74
  %i.boj = fadd <4 x float> %i.boh, %i.boi
  %i.bok = fmul <4 x float> %i.ac, %i.boj
  %i.bol = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bog, <4 x float> %i.bok)
  %i.bom = load <4 x float>, ptr %i.bnz, align 4, !tbaa !74
  %i.bon = load <4 x float>, ptr %i.boc, align 4, !tbaa !74
  %i.boo = fadd <4 x float> %i.bom, %i.bon
  %i.bop = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.boo, <4 x float> %i.bol)
  %i.boq = load <4 x float>, ptr %i.bod, align 4, !tbaa !74
  %i.bor = fadd <4 x float> %i.boq, %i.bop
  store <4 x float> %i.bor, ptr %i.bod, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual1x8_PQ10_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI49testCppcontribSaDecode_D160_Residual1x8_PQ10_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV49testCppcontribSaDecode_D160_Residual1x8_PQ10_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D128_Residual4x8_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D128_Residual4x8_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48testCppcontribSaDecode_D128_Residual4x8_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_17
begin_hunk_18_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 %i.awd
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 114688
  %i.awg = shl nuw nsw i64 %i.avq, 7
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 98368
  %i.awj = shl nuw nsw i64 %i.avt, 6
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 114688
  %i.awm = getelementptr inbounds nuw i8, ptr %8, i64 448 ; 2 uses
  %i.awn = load <4 x float>, ptr %i.avw, align 4, !tbaa !74
  %i.awo = load <4 x float>, ptr %i.avz, align 4, !tbaa !74
  %i.awp = fadd <4 x float> %i.awn, %i.awo
  %i.awq = load <4 x float>, ptr %i.awc, align 4, !tbaa !74
  %i.awr = load <4 x float>, ptr %i.awf, align 4, !tbaa !74
  %i.aws = fadd <4 x float> %i.awq, %i.awr
  %i.awt = fmul <4 x float> %i.ac, %i.aws
  %i.awu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.awp, <4 x float> %i.awt)
  %i.awv = load <4 x float>, ptr %i.awi, align 4, !tbaa !74
  %i.aww = load <4 x float>, ptr %i.awl, align 4, !tbaa !74
  %i.awx = fadd <4 x float> %i.awv, %i.aww
  %i.awy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.awx, <4 x float> %i.awu)
  %i.awz = load <4 x float>, ptr %i.awm, align 4, !tbaa !74
  %i.axa = fadd <4 x float> %i.awz, %i.awy
  store <4 x float> %i.axa, ptr %i.awm, align 4, !tbaa !74
  %i.axb = load i8, ptr %i.aob, align 1, !tbaa !17
  %i.axc = zext i8 %i.axb to i64
  %i.axd = load i8, ptr %i.avh, align 1, !tbaa !17
  %i.axe = zext i8 %i.axd to i64
  %i.axf = load i8, ptr %i.aoh, align 1, !tbaa !17
  %i.axg = zext i8 %i.axf to i64
  %i.axh = load i8, ptr %i.avm, align 1, !tbaa !17
  %i.axi = zext i8 %i.axh to i64
  %i.axj = load i8, ptr %i.aon, align 1, !tbaa !17
  %i.axk = zext i8 %i.axj to i64
  %i.axl = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.axm = zext i8 %i.axl to i64
  %i.axn = shl nuw nsw i64 %i.axc, 7
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 98384
  %i.axq = shl nuw nsw i64 %i.axe, 6
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 114704
  %i.axt = shl nuw nsw i64 %i.axg, 7
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 98384
  %i.axw = shl nuw nsw i64 %i.axi, 6
  %i.axx = getelementptr inbounds nuw i8, ptr %1, i64 %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 114704
  %i.axz = shl nuw nsw i64 %i.axk, 7
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 98384
  %i.ayc = shl nuw nsw i64 %i.axm, 6
  %i.ayd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 114704
  %i.ayf = getelementptr inbounds nuw i8, ptr %8, i64 464 ; 2 uses
  %i.ayg = load <4 x float>, ptr %i.axp, align 4, !tbaa !74
  %i.ayh = load <4 x float>, ptr %i.axs, align 4, !tbaa !74
  %i.ayi = fadd <4 x float> %i.ayg, %i.ayh
  %i.ayj = load <4 x float>, ptr %i.axv, align 4, !tbaa !74
  %i.ayk = load <4 x float>, ptr %i.axy, align 4, !tbaa !74
  %i.ayl = fadd <4 x float> %i.ayj, %i.ayk
  %i.aym = fmul <4 x float> %i.ac, %i.ayl
  %i.ayn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ayi, <4 x float> %i.aym)
  %i.ayo = load <4 x float>, ptr %i.ayb, align 4, !tbaa !74
  %i.ayp = load <4 x float>, ptr %i.aye, align 4, !tbaa !74
  %i.ayq = fadd <4 x float> %i.ayo, %i.ayp
  %i.ayr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ayq, <4 x float> %i.ayn)
  %i.ays = load <4 x float>, ptr %i.ayf, align 4, !tbaa !74
  %i.ayt = fadd <4 x float> %i.ays, %i.ayr
  store <4 x float> %i.ayt, ptr %i.ayf, align 4, !tbaa !74
  %i.ayu = load i8, ptr %i.aob, align 1, !tbaa !17
  %i.ayv = zext i8 %i.ayu to i64
  %i.ayw = load i8, ptr %i.avh, align 1, !tbaa !17
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = load i8, ptr %i.aoh, align 1, !tbaa !17
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = load i8, ptr %i.avm, align 1, !tbaa !17
  %i.azb = zext i8 %i.aza to i64
  %i.azc = load i8, ptr %i.aon, align 1, !tbaa !17
  %i.azd = zext i8 %i.azc to i64
  %i.aze = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.azf = zext i8 %i.aze to i64
  %i.azg = shl nuw nsw i64 %i.ayv, 7
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 98400
  %i.azj = shl nuw nsw i64 %i.ayx, 6
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 114720
  %i.azm = shl nuw nsw i64 %i.ayz, 7
  %i.azn = getelementptr inbounds nuw i8, ptr %0, i64 %i.azm
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 98400
  %i.azp = shl nuw nsw i64 %i.azb, 6
  %i.azq = getelementptr inbounds nuw i8, ptr %1, i64 %i.azp
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 114720
  %i.azs = shl nuw nsw i64 %i.azd, 7
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 %i.azs
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 98400
  %i.azv = shl nuw nsw i64 %i.azf, 6
  %i.azw = getelementptr inbounds nuw i8, ptr %1, i64 %i.azv
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 114720
  %i.azy = getelementptr inbounds nuw i8, ptr %8, i64 480 ; 2 uses
  %i.azz = load <4 x float>, ptr %i.azi, align 4, !tbaa !74
  %i.baa = load <4 x float>, ptr %i.azl, align 4, !tbaa !74
  %i.bab = fadd <4 x float> %i.azz, %i.baa
  %i.bac = load <4 x float>, ptr %i.azo, align 4, !tbaa !74
  %i.bad = load <4 x float>, ptr %i.azr, align 4, !tbaa !74
  %i.bae = fadd <4 x float> %i.bac, %i.bad
  %i.baf = fmul <4 x float> %i.ac, %i.bae
  %i.bag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bab, <4 x float> %i.baf)
  %i.bah = load <4 x float>, ptr %i.azu, align 4, !tbaa !74
  %i.bai = load <4 x float>, ptr %i.azx, align 4, !tbaa !74
  %i.baj = fadd <4 x float> %i.bah, %i.bai
  %i.bak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.baj, <4 x float> %i.bag)
  %i.bal = load <4 x float>, ptr %i.azy, align 4, !tbaa !74
  %i.bam = fadd <4 x float> %i.bal, %i.bak
  store <4 x float> %i.bam, ptr %i.azy, align 4, !tbaa !74
  %i.ban = load i8, ptr %i.aob, align 1, !tbaa !17
  %i.bao = zext i8 %i.ban to i64
  %i.bap = load i8, ptr %i.avh, align 1, !tbaa !17
  %i.baq = zext i8 %i.bap to i64
  %i.bar = load i8, ptr %i.aoh, align 1, !tbaa !17
  %i.bas = zext i8 %i.bar to i64
  %i.bat = load i8, ptr %i.avm, align 1, !tbaa !17
  %i.bau = zext i8 %i.bat to i64
  %i.bav = load i8, ptr %i.aon, align 1, !tbaa !17
  %i.baw = zext i8 %i.bav to i64
  %i.bax = load i8, ptr %i.avr, align 1, !tbaa !17
  %i.bay = zext i8 %i.bax to i64
  %i.baz = shl nuw nsw i64 %i.bao, 7
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 %i.baz
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 98416
  %i.bbc = shl nuw nsw i64 %i.baq, 6
  %i.bbd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbc
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 114736
  %i.bbf = shl nuw nsw i64 %i.bas, 7
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbf
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 98416
  %i.bbi = shl nuw nsw i64 %i.bau, 6
  %i.bbj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbi
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 114736
  %i.bbl = shl nuw nsw i64 %i.baw, 7
  %i.bbm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 98416
  %i.bbo = shl nuw nsw i64 %i.bay, 6
  %i.bbp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bbo
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 114736
  %i.bbr = getelementptr inbounds nuw i8, ptr %8, i64 496 ; 2 uses
  %i.bbs = load <4 x float>, ptr %i.bbb, align 4, !tbaa !74
  %i.bbt = load <4 x float>, ptr %i.bbe, align 4, !tbaa !74
  %i.bbu = fadd <4 x float> %i.bbs, %i.bbt
  %i.bbv = load <4 x float>, ptr %i.bbh, align 4, !tbaa !74
  %i.bbw = load <4 x float>, ptr %i.bbk, align 4, !tbaa !74
  %i.bbx = fadd <4 x float> %i.bbv, %i.bbw
  %i.bby = fmul <4 x float> %i.ac, %i.bbx
  %i.bbz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.bbu, <4 x float> %i.bby)
  %i.bca = load <4 x float>, ptr %i.bbn, align 4, !tbaa !74
  %i.bcb = load <4 x float>, ptr %i.bbq, align 4, !tbaa !74
  %i.bcc = fadd <4 x float> %i.bca, %i.bcb
  %i.bcd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bcc, <4 x float> %i.bbz)
  %i.bce = load <4 x float>, ptr %i.bbr, align 4, !tbaa !74
  %i.bcf = fadd <4 x float> %i.bce, %i.bcd
  store <4 x float> %i.bcf, ptr %i.bbr, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D128_Residual4x8_PQ4_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D128_Residual4x8_PQ4_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48testCppcontribSaDecode_D128_Residual4x8_PQ4_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_18
begin_hunk_19_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 %i.avf
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 98368
  %i.avi = shl nuw nsw i64 %i.aut, 7
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 %i.avi
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 98368
  %i.avl = shl nuw nsw i64 %i.auv, 7
  %i.avm = getelementptr inbounds nuw i8, ptr %1, i64 %i.avl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 98368
  %i.avo = getelementptr inbounds nuw i8, ptr %8, i64 448 ; 2 uses
  %i.avp = load <4 x float>, ptr %i.auy, align 4, !tbaa !74
  %i.avq = load <4 x float>, ptr %i.avb, align 4, !tbaa !74
  %i.avr = fadd <4 x float> %i.avp, %i.avq
  %i.avs = load <4 x float>, ptr %i.ave, align 4, !tbaa !74
  %i.avt = load <4 x float>, ptr %i.avh, align 4, !tbaa !74
  %i.avu = fadd <4 x float> %i.avs, %i.avt
  %i.avv = fmul <4 x float> %i.ac, %i.avu
  %i.avw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.avr, <4 x float> %i.avv)
  %i.avx = load <4 x float>, ptr %i.avk, align 4, !tbaa !74
  %i.avy = load <4 x float>, ptr %i.avn, align 4, !tbaa !74
  %i.avz = fadd <4 x float> %i.avx, %i.avy
  %i.awa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.avz, <4 x float> %i.avw)
  %i.awb = load <4 x float>, ptr %i.avo, align 4, !tbaa !74
  %i.awc = fadd <4 x float> %i.awb, %i.awa
  store <4 x float> %i.awc, ptr %i.avo, align 4, !tbaa !74
  %i.awd = load i8, ptr %i.ang, align 1, !tbaa !17
  %i.awe = zext i8 %i.awd to i64
  %i.awf = load i8, ptr %i.anj, align 1, !tbaa !17
  %i.awg = zext i8 %i.awf to i64
  %i.awh = load i8, ptr %i.anm, align 1, !tbaa !17
  %i.awi = zext i8 %i.awh to i64
  %i.awj = load i8, ptr %i.anp, align 1, !tbaa !17
  %i.awk = zext i8 %i.awj to i64
  %i.awl = load i8, ptr %i.ans, align 1, !tbaa !17
  %i.awm = zext i8 %i.awl to i64
  %i.awn = load i8, ptr %i.anv, align 1, !tbaa !17
  %i.awo = zext i8 %i.awn to i64
  %i.awp = shl nuw nsw i64 %i.awe, 7
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 %i.awp
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 98384
  %i.aws = shl nuw nsw i64 %i.awg, 7
  %i.awt = getelementptr inbounds nuw i8, ptr %1, i64 %i.aws
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 98384
  %i.awv = shl nuw nsw i64 %i.awi, 7
  %i.aww = getelementptr inbounds nuw i8, ptr %0, i64 %i.awv
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 98384
  %i.awy = shl nuw nsw i64 %i.awk, 7
  %i.awz = getelementptr inbounds nuw i8, ptr %1, i64 %i.awy
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 98384
  %i.axb = shl nuw nsw i64 %i.awm, 7
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 %i.axb
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 98384
  %i.axe = shl nuw nsw i64 %i.awo, 7
  %i.axf = getelementptr inbounds nuw i8, ptr %1, i64 %i.axe
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 98384
  %i.axh = getelementptr inbounds nuw i8, ptr %8, i64 464 ; 2 uses
  %i.axi = load <4 x float>, ptr %i.awr, align 4, !tbaa !74
  %i.axj = load <4 x float>, ptr %i.awu, align 4, !tbaa !74
  %i.axk = fadd <4 x float> %i.axi, %i.axj
  %i.axl = load <4 x float>, ptr %i.awx, align 4, !tbaa !74
  %i.axm = load <4 x float>, ptr %i.axa, align 4, !tbaa !74
  %i.axn = fadd <4 x float> %i.axl, %i.axm
  %i.axo = fmul <4 x float> %i.ac, %i.axn
  %i.axp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.axk, <4 x float> %i.axo)
  %i.axq = load <4 x float>, ptr %i.axd, align 4, !tbaa !74
  %i.axr = load <4 x float>, ptr %i.axg, align 4, !tbaa !74
  %i.axs = fadd <4 x float> %i.axq, %i.axr
  %i.axt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.axs, <4 x float> %i.axp)
  %i.axu = load <4 x float>, ptr %i.axh, align 4, !tbaa !74
  %i.axv = fadd <4 x float> %i.axu, %i.axt
  store <4 x float> %i.axv, ptr %i.axh, align 4, !tbaa !74
  %i.axw = load i8, ptr %i.ang, align 1, !tbaa !17
  %i.axx = zext i8 %i.axw to i64
  %i.axy = load i8, ptr %i.anj, align 1, !tbaa !17
  %i.axz = zext i8 %i.axy to i64
  %i.aya = load i8, ptr %i.anm, align 1, !tbaa !17
  %i.ayb = zext i8 %i.aya to i64
  %i.ayc = load i8, ptr %i.anp, align 1, !tbaa !17
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = load i8, ptr %i.ans, align 1, !tbaa !17
  %i.ayf = zext i8 %i.aye to i64
  %i.ayg = load i8, ptr %i.anv, align 1, !tbaa !17
  %i.ayh = zext i8 %i.ayg to i64
  %i.ayi = shl nuw nsw i64 %i.axx, 7
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ayi
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 98400
  %i.ayl = shl nuw nsw i64 %i.axz, 7
  %i.aym = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayl
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 98400
  %i.ayo = shl nuw nsw i64 %i.ayb, 7
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ayo
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 98400
  %i.ayr = shl nuw nsw i64 %i.ayd, 7
  %i.ays = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 98400
  %i.ayu = shl nuw nsw i64 %i.ayf, 7
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ayu
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 98400
  %i.ayx = shl nuw nsw i64 %i.ayh, 7
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ayx
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 98400
  %i.aza = getelementptr inbounds nuw i8, ptr %8, i64 480 ; 2 uses
  %i.azb = load <4 x float>, ptr %i.ayk, align 4, !tbaa !74
  %i.azc = load <4 x float>, ptr %i.ayn, align 4, !tbaa !74
  %i.azd = fadd <4 x float> %i.azb, %i.azc
  %i.aze = load <4 x float>, ptr %i.ayq, align 4, !tbaa !74
  %i.azf = load <4 x float>, ptr %i.ayt, align 4, !tbaa !74
  %i.azg = fadd <4 x float> %i.aze, %i.azf
  %i.azh = fmul <4 x float> %i.ac, %i.azg
  %i.azi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.azd, <4 x float> %i.azh)
  %i.azj = load <4 x float>, ptr %i.ayw, align 4, !tbaa !74
  %i.azk = load <4 x float>, ptr %i.ayz, align 4, !tbaa !74
  %i.azl = fadd <4 x float> %i.azj, %i.azk
  %i.azm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.azl, <4 x float> %i.azi)
  %i.azn = load <4 x float>, ptr %i.aza, align 4, !tbaa !74
  %i.azo = fadd <4 x float> %i.azn, %i.azm
  store <4 x float> %i.azo, ptr %i.aza, align 4, !tbaa !74
  %i.azp = load i8, ptr %i.ang, align 1, !tbaa !17
  %i.azq = zext i8 %i.azp to i64
  %i.azr = load i8, ptr %i.anj, align 1, !tbaa !17
  %i.azs = zext i8 %i.azr to i64
  %i.azt = load i8, ptr %i.anm, align 1, !tbaa !17
  %i.azu = zext i8 %i.azt to i64
  %i.azv = load i8, ptr %i.anp, align 1, !tbaa !17
  %i.azw = zext i8 %i.azv to i64
  %i.azx = load i8, ptr %i.ans, align 1, !tbaa !17
  %i.azy = zext i8 %i.azx to i64
  %i.azz = load i8, ptr %i.anv, align 1, !tbaa !17
  %i.baa = zext i8 %i.azz to i64
  %i.bab = shl nuw nsw i64 %i.azq, 7
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 %i.bab
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 98416
  %i.bae = shl nuw nsw i64 %i.azs, 7
  %i.baf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 98416
  %i.bah = shl nuw nsw i64 %i.azu, 7
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 98416
  %i.bak = shl nuw nsw i64 %i.azw, 7
  %i.bal = getelementptr inbounds nuw i8, ptr %1, i64 %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 98416
  %i.ban = shl nuw nsw i64 %i.azy, 7
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 98416
  %i.baq = shl nuw nsw i64 %i.baa, 7
  %i.bar = getelementptr inbounds nuw i8, ptr %1, i64 %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 98416
  %i.bat = getelementptr inbounds nuw i8, ptr %8, i64 496 ; 2 uses
  %i.bau = load <4 x float>, ptr %i.bad, align 4, !tbaa !74
  %i.bav = load <4 x float>, ptr %i.bag, align 4, !tbaa !74
  %i.baw = fadd <4 x float> %i.bau, %i.bav
  %i.bax = load <4 x float>, ptr %i.baj, align 4, !tbaa !74
  %i.bay = load <4 x float>, ptr %i.bam, align 4, !tbaa !74
  %i.baz = fadd <4 x float> %i.bax, %i.bay
  %i.bba = fmul <4 x float> %i.ac, %i.baz
  %i.bbb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.baw, <4 x float> %i.bba)
  %i.bbc = load <4 x float>, ptr %i.bap, align 4, !tbaa !74
  %i.bbd = load <4 x float>, ptr %i.bas, align 4, !tbaa !74
  %i.bbe = fadd <4 x float> %i.bbc, %i.bbd
  %i.bbf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.bbe, <4 x float> %i.bbb)
  %i.bbg = load <4 x float>, ptr %i.bat, align 4, !tbaa !74
  %i.bbh = fadd <4 x float> %i.bbg, %i.bbf
  store <4 x float> %i.bbh, ptr %i.bat, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual4x8_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual4x8_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV47testCppcontribSaDecode_D64_Residual4x8_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_19
begin_hunk_20_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 49152
  %i.vg = shl nuw nsw i64 %i.uq, 5
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 49152
  %i.vj = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.vk = load <4 x float>, ptr %i.ut, align 4, !tbaa !74
  %i.vl = load <4 x float>, ptr %i.uw, align 4, !tbaa !74
  %i.vm = fadd <4 x float> %i.vk, %i.vl
  %i.vn = load <4 x float>, ptr %i.uz, align 4, !tbaa !74
  %i.vo = load <4 x float>, ptr %i.vc, align 4, !tbaa !74
  %i.vp = fadd <4 x float> %i.vn, %i.vo
  %i.vq = fmul <4 x float> %i.ac, %i.vp
  %i.vr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.vm, <4 x float> %i.vq)
  %i.vs = load <4 x float>, ptr %i.vf, align 4, !tbaa !74
  %i.vt = load <4 x float>, ptr %i.vi, align 4, !tbaa !74
  %i.vu = fadd <4 x float> %i.vs, %i.vt
  %i.vv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.vu, <4 x float> %i.vr)
  %i.vw = load <4 x float>, ptr %i.vj, align 4, !tbaa !74
  %i.vx = fadd <4 x float> %i.vw, %i.vv
  store <4 x float> %i.vx, ptr %i.vj, align 4, !tbaa !74
  %i.vy = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.vz = zext i8 %i.vy to i64
  %i.wa = load i8, ptr %i.uc, align 1, !tbaa !17
  %i.wb = zext i8 %i.wa to i64
  %i.wc = load i8, ptr %i.uf, align 1, !tbaa !17
  %i.wd = zext i8 %i.wc to i64
  %i.we = load i8, ptr %i.ui, align 1, !tbaa !17
  %i.wf = zext i8 %i.we to i64
  %i.wg = load i8, ptr %i.ul, align 1, !tbaa !17
  %i.wh = zext i8 %i.wg to i64
  %i.wi = load i8, ptr %i.uo, align 1, !tbaa !17
  %i.wj = zext i8 %i.wi to i64
  %i.wk = shl nuw nsw i64 %i.vz, 6
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 49168
  %i.wn = shl nuw nsw i64 %i.wb, 5
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 49168
  %i.wq = shl nuw nsw i64 %i.wd, 6
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 49168
  %i.wt = shl nuw nsw i64 %i.wf, 5
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 49168
  %i.ww = shl nuw nsw i64 %i.wh, 6
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 49168
  %i.wz = shl nuw nsw i64 %i.wj, 5
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 %i.wz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 49168
  %i.xc = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.xd = load <4 x float>, ptr %i.wm, align 4, !tbaa !74
  %i.xe = load <4 x float>, ptr %i.wp, align 4, !tbaa !74
  %i.xf = fadd <4 x float> %i.xd, %i.xe
  %i.xg = load <4 x float>, ptr %i.ws, align 4, !tbaa !74
  %i.xh = load <4 x float>, ptr %i.wv, align 4, !tbaa !74
  %i.xi = fadd <4 x float> %i.xg, %i.xh
  %i.xj = fmul <4 x float> %i.ac, %i.xi
  %i.xk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.xf, <4 x float> %i.xj)
  %i.xl = load <4 x float>, ptr %i.wy, align 4, !tbaa !74
  %i.xm = load <4 x float>, ptr %i.xb, align 4, !tbaa !74
  %i.xn = fadd <4 x float> %i.xl, %i.xm
  %i.xo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.xn, <4 x float> %i.xk)
  %i.xp = load <4 x float>, ptr %i.xc, align 4, !tbaa !74
  %i.xq = fadd <4 x float> %i.xp, %i.xo
  store <4 x float> %i.xq, ptr %i.xc, align 4, !tbaa !74
  %i.xr = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !17
  %i.xv = zext i8 %i.xu to i64
  %i.xw = load i8, ptr %i.uf, align 1, !tbaa !17
  %i.xx = zext i8 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !17
  %i.ya = zext i8 %i.xz to i64
  %i.yb = load i8, ptr %i.ul, align 1, !tbaa !17
  %i.yc = zext i8 %i.yb to i64
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 11 ; 2 uses
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !17
  %i.yf = zext i8 %i.ye to i64
  %i.yg = shl nuw nsw i64 %i.xs, 6
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 49184
  %i.yj = shl nuw nsw i64 %i.xv, 5
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 57344
  %i.ym = shl nuw nsw i64 %i.xx, 6
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 49184
  %i.yp = shl nuw nsw i64 %i.ya, 5
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 57344
  %i.ys = shl nuw nsw i64 %i.yc, 6
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 49184
  %i.yv = shl nuw nsw i64 %i.yf, 5
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 57344
  %i.yy = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.yz = load <4 x float>, ptr %i.yi, align 4, !tbaa !74
  %i.za = load <4 x float>, ptr %i.yl, align 4, !tbaa !74
  %i.zb = fadd <4 x float> %i.yz, %i.za
  %i.zc = load <4 x float>, ptr %i.yo, align 4, !tbaa !74
  %i.zd = load <4 x float>, ptr %i.yr, align 4, !tbaa !74
  %i.ze = fadd <4 x float> %i.zc, %i.zd
  %i.zf = fmul <4 x float> %i.ac, %i.ze
  %i.zg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.zb, <4 x float> %i.zf)
  %i.zh = load <4 x float>, ptr %i.yu, align 4, !tbaa !74
  %i.zi = load <4 x float>, ptr %i.yx, align 4, !tbaa !74
  %i.zj = fadd <4 x float> %i.zh, %i.zi
  %i.zk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.zj, <4 x float> %i.zg)
  %i.zl = load <4 x float>, ptr %i.yy, align 4, !tbaa !74
  %i.zm = fadd <4 x float> %i.zl, %i.zk
  store <4 x float> %i.zm, ptr %i.yy, align 4, !tbaa !74
  %i.zn = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.zo = zext i8 %i.zn to i64
  %i.zp = load i8, ptr %i.xt, align 1, !tbaa !17
  %i.zq = zext i8 %i.zp to i64
  %i.zr = load i8, ptr %i.uf, align 1, !tbaa !17
  %i.zs = zext i8 %i.zr to i64
  %i.zt = load i8, ptr %i.xy, align 1, !tbaa !17
  %i.zu = zext i8 %i.zt to i64
  %i.zv = load i8, ptr %i.ul, align 1, !tbaa !17
  %i.zw = zext i8 %i.zv to i64
  %i.zx = load i8, ptr %i.yd, align 1, !tbaa !17
  %i.zy = zext i8 %i.zx to i64
  %i.zz = shl nuw nsw i64 %i.zo, 6
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 49200
  %i.aac = shl nuw nsw i64 %i.zq, 5
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 57360
  %i.aaf = shl nuw nsw i64 %i.zs, 6
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 %i.aaf
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 49200
  %i.aai = shl nuw nsw i64 %i.zu, 5
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 57360
  %i.aal = shl nuw nsw i64 %i.zw, 6
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 49200
  %i.aao = shl nuw nsw i64 %i.zy, 5
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 57360
  %i.aar = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.aas = load <4 x float>, ptr %i.aab, align 4, !tbaa !74
  %i.aat = load <4 x float>, ptr %i.aae, align 4, !tbaa !74
  %i.aau = fadd <4 x float> %i.aas, %i.aat
  %i.aav = load <4 x float>, ptr %i.aah, align 4, !tbaa !74
  %i.aaw = load <4 x float>, ptr %i.aak, align 4, !tbaa !74
  %i.aax = fadd <4 x float> %i.aav, %i.aaw
  %i.aay = fmul <4 x float> %i.ac, %i.aax
  %i.aaz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aau, <4 x float> %i.aay)
  %i.aba = load <4 x float>, ptr %i.aan, align 4, !tbaa !74
  %i.abb = load <4 x float>, ptr %i.aaq, align 4, !tbaa !74
  %i.abc = fadd <4 x float> %i.aba, %i.abb
  %i.abd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.abc, <4 x float> %i.aaz)
  %i.abe = load <4 x float>, ptr %i.aar, align 4, !tbaa !74
  %i.abf = fadd <4 x float> %i.abe, %i.abd
  store <4 x float> %i.abf, ptr %i.aar, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual4x8_PQ4_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual4x8_PQ4_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV47testCppcontribSaDecode_D64_Residual4x8_PQ4_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_20
begin_hunk_21_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 49152
  %i.uo = shl nuw nsw i64 %i.ty, 6
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 49152
  %i.ur = shl nuw nsw i64 %i.ub, 6
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 49152
  %i.uu = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.uv = load <4 x float>, ptr %i.ue, align 4, !tbaa !74
  %i.uw = load <4 x float>, ptr %i.uh, align 4, !tbaa !74
  %i.ux = fadd <4 x float> %i.uv, %i.uw
  %i.uy = load <4 x float>, ptr %i.uk, align 4, !tbaa !74
  %i.uz = load <4 x float>, ptr %i.un, align 4, !tbaa !74
  %i.va = fadd <4 x float> %i.uy, %i.uz
  %i.vb = fmul <4 x float> %i.ac, %i.va
  %i.vc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ux, <4 x float> %i.vb)
  %i.vd = load <4 x float>, ptr %i.uq, align 4, !tbaa !74
  %i.ve = load <4 x float>, ptr %i.ut, align 4, !tbaa !74
  %i.vf = fadd <4 x float> %i.vd, %i.ve
  %i.vg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.vf, <4 x float> %i.vc)
  %i.vh = load <4 x float>, ptr %i.uu, align 4, !tbaa !74
  %i.vi = fadd <4 x float> %i.vh, %i.vg
  store <4 x float> %i.vi, ptr %i.uu, align 4, !tbaa !74
  %i.vj = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.vk = zext i8 %i.vj to i64
  %i.vl = load i8, ptr %i.tn, align 1, !tbaa !17
  %i.vm = zext i8 %i.vl to i64
  %i.vn = load i8, ptr %i.tq, align 1, !tbaa !17
  %i.vo = zext i8 %i.vn to i64
  %i.vp = load i8, ptr %i.tt, align 1, !tbaa !17
  %i.vq = zext i8 %i.vp to i64
  %i.vr = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.vs = zext i8 %i.vr to i64
  %i.vt = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.vu = zext i8 %i.vt to i64
  %i.vv = shl nuw nsw i64 %i.vk, 6
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 49168
  %i.vy = shl nuw nsw i64 %i.vm, 6
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 49168
  %i.wb = shl nuw nsw i64 %i.vo, 6
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 49168
  %i.we = shl nuw nsw i64 %i.vq, 6
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 49168
  %i.wh = shl nuw nsw i64 %i.vs, 6
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 49168
  %i.wk = shl nuw nsw i64 %i.vu, 6
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 49168
  %i.wn = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.wo = load <4 x float>, ptr %i.vx, align 4, !tbaa !74
  %i.wp = load <4 x float>, ptr %i.wa, align 4, !tbaa !74
  %i.wq = fadd <4 x float> %i.wo, %i.wp
  %i.wr = load <4 x float>, ptr %i.wd, align 4, !tbaa !74
  %i.ws = load <4 x float>, ptr %i.wg, align 4, !tbaa !74
  %i.wt = fadd <4 x float> %i.wr, %i.ws
  %i.wu = fmul <4 x float> %i.ac, %i.wt
  %i.wv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.wq, <4 x float> %i.wu)
  %i.ww = load <4 x float>, ptr %i.wj, align 4, !tbaa !74
  %i.wx = load <4 x float>, ptr %i.wm, align 4, !tbaa !74
  %i.wy = fadd <4 x float> %i.ww, %i.wx
  %i.wz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.wy, <4 x float> %i.wv)
  %i.xa = load <4 x float>, ptr %i.wn, align 4, !tbaa !74
  %i.xb = fadd <4 x float> %i.xa, %i.wz
  store <4 x float> %i.xb, ptr %i.wn, align 4, !tbaa !74
  %i.xc = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.xd = zext i8 %i.xc to i64
  %i.xe = load i8, ptr %i.tn, align 1, !tbaa !17
  %i.xf = zext i8 %i.xe to i64
  %i.xg = load i8, ptr %i.tq, align 1, !tbaa !17
  %i.xh = zext i8 %i.xg to i64
  %i.xi = load i8, ptr %i.tt, align 1, !tbaa !17
  %i.xj = zext i8 %i.xi to i64
  %i.xk = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.xl = zext i8 %i.xk to i64
  %i.xm = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.xn = zext i8 %i.xm to i64
  %i.xo = shl nuw nsw i64 %i.xd, 6
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 49184
  %i.xr = shl nuw nsw i64 %i.xf, 6
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 49184
  %i.xu = shl nuw nsw i64 %i.xh, 6
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 49184
  %i.xx = shl nuw nsw i64 %i.xj, 6
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 49184
  %i.ya = shl nuw nsw i64 %i.xl, 6
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 49184
  %i.yd = shl nuw nsw i64 %i.xn, 6
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 49184
  %i.yg = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.yh = load <4 x float>, ptr %i.xq, align 4, !tbaa !74
  %i.yi = load <4 x float>, ptr %i.xt, align 4, !tbaa !74
  %i.yj = fadd <4 x float> %i.yh, %i.yi
  %i.yk = load <4 x float>, ptr %i.xw, align 4, !tbaa !74
  %i.yl = load <4 x float>, ptr %i.xz, align 4, !tbaa !74
  %i.ym = fadd <4 x float> %i.yk, %i.yl
  %i.yn = fmul <4 x float> %i.ac, %i.ym
  %i.yo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.yj, <4 x float> %i.yn)
  %i.yp = load <4 x float>, ptr %i.yc, align 4, !tbaa !74
  %i.yq = load <4 x float>, ptr %i.yf, align 4, !tbaa !74
  %i.yr = fadd <4 x float> %i.yp, %i.yq
  %i.ys = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.yr, <4 x float> %i.yo)
  %i.yt = load <4 x float>, ptr %i.yg, align 4, !tbaa !74
  %i.yu = fadd <4 x float> %i.yt, %i.ys
  store <4 x float> %i.yu, ptr %i.yg, align 4, !tbaa !74
  %i.yv = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.yw = zext i8 %i.yv to i64
  %i.yx = load i8, ptr %i.tn, align 1, !tbaa !17
  %i.yy = zext i8 %i.yx to i64
  %i.yz = load i8, ptr %i.tq, align 1, !tbaa !17
  %i.za = zext i8 %i.yz to i64
  %i.zb = load i8, ptr %i.tt, align 1, !tbaa !17
  %i.zc = zext i8 %i.zb to i64
  %i.zd = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.ze = zext i8 %i.zd to i64
  %i.zf = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.zg = zext i8 %i.zf to i64
  %i.zh = shl nuw nsw i64 %i.yw, 6
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 49200
  %i.zk = shl nuw nsw i64 %i.yy, 6
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 49200
  %i.zn = shl nuw nsw i64 %i.za, 6
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 49200
  %i.zq = shl nuw nsw i64 %i.zc, 6
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 49200
  %i.zt = shl nuw nsw i64 %i.ze, 6
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 49200
  %i.zw = shl nuw nsw i64 %i.zg, 6
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 %i.zw
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 49200
  %i.zz = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.aaa = load <4 x float>, ptr %i.zj, align 4, !tbaa !74
  %i.aab = load <4 x float>, ptr %i.zm, align 4, !tbaa !74
  %i.aac = fadd <4 x float> %i.aaa, %i.aab
  %i.aad = load <4 x float>, ptr %i.zp, align 4, !tbaa !74
  %i.aae = load <4 x float>, ptr %i.zs, align 4, !tbaa !74
  %i.aaf = fadd <4 x float> %i.aad, %i.aae
  %i.aag = fmul <4 x float> %i.ac, %i.aaf
  %i.aah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.aac, <4 x float> %i.aag)
  %i.aai = load <4 x float>, ptr %i.zv, align 4, !tbaa !74
  %i.aaj = load <4 x float>, ptr %i.zy, align 4, !tbaa !74
  %i.aak = fadd <4 x float> %i.aai, %i.aaj
  %i.aal = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.aak, <4 x float> %i.aah)
  %i.aam = load <4 x float>, ptr %i.zz, align 4, !tbaa !74
  %i.aan = fadd <4 x float> %i.aam, %i.aal
  store <4 x float> %i.aan, ptr %i.zz, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI45testCppcontribSaDecode_D256_IVF1024_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI45testCppcontribSaDecode_D256_IVF1024_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV45testCppcontribSaDecode_D256_IVF1024_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_21
begin_hunk_22_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.car = shl nuw nsw i64 %i.caj, 6
  %i.cas = getelementptr inbounds nuw i8, ptr %1, i64 %i.car
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 229424
  %i.cau = getelementptr inbounds nuw i8, ptr %i.l, i64 944
  %i.cav = shl nuw nsw i64 %i.cah, 6
  %i.caw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cav
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 229424
  %i.cay = getelementptr inbounds nuw i8, ptr %8, i64 944 ; 2 uses
  %i.caz = load <4 x float>, ptr %i.cam, align 4, !tbaa !74
  %i.cba = load <4 x float>, ptr %i.cap, align 4, !tbaa !74
  %i.cbb = fadd <4 x float> %i.caz, %i.cba
  %i.cbc = load <4 x float>, ptr %i.caq, align 4, !tbaa !74
  %i.cbd = load <4 x float>, ptr %i.cat, align 4, !tbaa !74
  %i.cbe = fadd <4 x float> %i.cbc, %i.cbd
  %i.cbf = fmul <4 x float> %i.ac, %i.cbe
  %i.cbg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cbb, <4 x float> %i.cbf)
  %i.cbh = load <4 x float>, ptr %i.cau, align 4, !tbaa !74
  %i.cbi = load <4 x float>, ptr %i.cax, align 4, !tbaa !74
  %i.cbj = fadd <4 x float> %i.cbh, %i.cbi
  %i.cbk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cbj, <4 x float> %i.cbg)
  %i.cbl = load <4 x float>, ptr %i.cay, align 4, !tbaa !74
  %i.cbm = fadd <4 x float> %i.cbl, %i.cbk
  store <4 x float> %i.cbm, ptr %i.cay, align 4, !tbaa !74
  %i.cbn = getelementptr inbounds nuw i8, ptr %6, i64 17 ; 4 uses
  %i.cbo = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cbp = zext i8 %i.cbo to i64
  %i.cbq = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 4 uses
  %i.cbr = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cbs = zext i8 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 4 uses
  %i.cbu = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cbv = zext i8 %i.cbu to i64
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  %i.cbx = shl nuw nsw i64 %i.cbv, 6
  %i.cby = getelementptr inbounds nuw i8, ptr %1, i64 %i.cbx
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 245760
  %i.cca = getelementptr inbounds nuw i8, ptr %i.k, i64 960
  %i.ccb = shl nuw nsw i64 %i.cbs, 6
  %i.ccc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ccb
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 245760
  %i.cce = getelementptr inbounds nuw i8, ptr %i.l, i64 960
  %i.ccf = shl nuw nsw i64 %i.cbp, 6
  %i.ccg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ccf
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 245760
  %i.cci = getelementptr inbounds nuw i8, ptr %8, i64 960 ; 2 uses
  %i.ccj = load <4 x float>, ptr %i.cbw, align 4, !tbaa !74
  %i.cck = load <4 x float>, ptr %i.cbz, align 4, !tbaa !74
  %i.ccl = fadd <4 x float> %i.ccj, %i.cck
  %i.ccm = load <4 x float>, ptr %i.cca, align 4, !tbaa !74
  %i.ccn = load <4 x float>, ptr %i.ccd, align 4, !tbaa !74
  %i.cco = fadd <4 x float> %i.ccm, %i.ccn
  %i.ccp = fmul <4 x float> %i.ac, %i.cco
  %i.ccq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ccl, <4 x float> %i.ccp)
  %i.ccr = load <4 x float>, ptr %i.cce, align 4, !tbaa !74
  %i.ccs = load <4 x float>, ptr %i.cch, align 4, !tbaa !74
  %i.cct = fadd <4 x float> %i.ccr, %i.ccs
  %i.ccu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cct, <4 x float> %i.ccq)
  %i.ccv = load <4 x float>, ptr %i.cci, align 4, !tbaa !74
  %i.ccw = fadd <4 x float> %i.ccv, %i.ccu
  store <4 x float> %i.ccw, ptr %i.cci, align 4, !tbaa !74
  %i.ccx = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.ccy = zext i8 %i.ccx to i64
  %i.ccz = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cda = zext i8 %i.ccz to i64
  %i.cdb = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cdc = zext i8 %i.cdb to i64
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.j, i64 976
  %i.cde = shl nuw nsw i64 %i.cdc, 6
  %i.cdf = getelementptr inbounds nuw i8, ptr %1, i64 %i.cde
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 245776
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.k, i64 976
  %i.cdi = shl nuw nsw i64 %i.cda, 6
  %i.cdj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdi
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 245776
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.l, i64 976
  %i.cdm = shl nuw nsw i64 %i.ccy, 6
  %i.cdn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cdm
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 245776
  %i.cdp = getelementptr inbounds nuw i8, ptr %8, i64 976 ; 2 uses
  %i.cdq = load <4 x float>, ptr %i.cdd, align 4, !tbaa !74
  %i.cdr = load <4 x float>, ptr %i.cdg, align 4, !tbaa !74
  %i.cds = fadd <4 x float> %i.cdq, %i.cdr
  %i.cdt = load <4 x float>, ptr %i.cdh, align 4, !tbaa !74
  %i.cdu = load <4 x float>, ptr %i.cdk, align 4, !tbaa !74
  %i.cdv = fadd <4 x float> %i.cdt, %i.cdu
  %i.cdw = fmul <4 x float> %i.ac, %i.cdv
  %i.cdx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cds, <4 x float> %i.cdw)
  %i.cdy = load <4 x float>, ptr %i.cdl, align 4, !tbaa !74
  %i.cdz = load <4 x float>, ptr %i.cdo, align 4, !tbaa !74
  %i.cea = fadd <4 x float> %i.cdy, %i.cdz
  %i.ceb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cea, <4 x float> %i.cdx)
  %i.cec = load <4 x float>, ptr %i.cdp, align 4, !tbaa !74
  %i.ced = fadd <4 x float> %i.cec, %i.ceb
  store <4 x float> %i.ced, ptr %i.cdp, align 4, !tbaa !74
  %i.cee = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cef = zext i8 %i.cee to i64
  %i.ceg = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.ceh = zext i8 %i.ceg to i64
  %i.cei = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cej = zext i8 %i.cei to i64
  %i.cek = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  %i.cel = shl nuw nsw i64 %i.cej, 6
  %i.cem = getelementptr inbounds nuw i8, ptr %1, i64 %i.cel
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 245792
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.k, i64 992
  %i.cep = shl nuw nsw i64 %i.ceh, 6
  %i.ceq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cep
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceq, i64 245792
  %i.ces = getelementptr inbounds nuw i8, ptr %i.l, i64 992
  %i.cet = shl nuw nsw i64 %i.cef, 6
  %i.ceu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cet
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 245792
  %i.cew = getelementptr inbounds nuw i8, ptr %8, i64 992 ; 2 uses
  %i.cex = load <4 x float>, ptr %i.cek, align 4, !tbaa !74
  %i.cey = load <4 x float>, ptr %i.cen, align 4, !tbaa !74
  %i.cez = fadd <4 x float> %i.cex, %i.cey
  %i.cfa = load <4 x float>, ptr %i.ceo, align 4, !tbaa !74
  %i.cfb = load <4 x float>, ptr %i.cer, align 4, !tbaa !74
  %i.cfc = fadd <4 x float> %i.cfa, %i.cfb
  %i.cfd = fmul <4 x float> %i.ac, %i.cfc
  %i.cfe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cez, <4 x float> %i.cfd)
  %i.cff = load <4 x float>, ptr %i.ces, align 4, !tbaa !74
  %i.cfg = load <4 x float>, ptr %i.cev, align 4, !tbaa !74
  %i.cfh = fadd <4 x float> %i.cff, %i.cfg
  %i.cfi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cfh, <4 x float> %i.cfe)
  %i.cfj = load <4 x float>, ptr %i.cew, align 4, !tbaa !74
  %i.cfk = fadd <4 x float> %i.cfj, %i.cfi
  store <4 x float> %i.cfk, ptr %i.cew, align 4, !tbaa !74
  %i.cfl = load i8, ptr %i.cbn, align 1, !tbaa !17
  %i.cfm = zext i8 %i.cfl to i64
  %i.cfn = load i8, ptr %i.cbq, align 1, !tbaa !17
  %i.cfo = zext i8 %i.cfn to i64
  %i.cfp = load i8, ptr %i.cbt, align 1, !tbaa !17
  %i.cfq = zext i8 %i.cfp to i64
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.j, i64 1008
  %i.cfs = shl nuw nsw i64 %i.cfq, 6
  %i.cft = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfs
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 245808
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.k, i64 1008
  %i.cfw = shl nuw nsw i64 %i.cfo, 6
  %i.cfx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cfw
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 245808
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.l, i64 1008
  %i.cga = shl nuw nsw i64 %i.cfm, 6
  %i.cgb = getelementptr inbounds nuw i8, ptr %1, i64 %i.cga
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 245808
  %i.cgd = getelementptr inbounds nuw i8, ptr %8, i64 1008 ; 2 uses
  %i.cge = load <4 x float>, ptr %i.cfr, align 4, !tbaa !74
  %i.cgf = load <4 x float>, ptr %i.cfu, align 4, !tbaa !74
  %i.cgg = fadd <4 x float> %i.cge, %i.cgf
  %i.cgh = load <4 x float>, ptr %i.cfv, align 4, !tbaa !74
  %i.cgi = load <4 x float>, ptr %i.cfy, align 4, !tbaa !74
  %i.cgj = fadd <4 x float> %i.cgh, %i.cgi
  %i.cgk = fmul <4 x float> %i.ac, %i.cgj
  %i.cgl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.cgg, <4 x float> %i.cgk)
  %i.cgm = load <4 x float>, ptr %i.cfz, align 4, !tbaa !74
  %i.cgn = load <4 x float>, ptr %i.cgc, align 4, !tbaa !74
  %i.cgo = fadd <4 x float> %i.cgm, %i.cgn
  %i.cgp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.cgo, <4 x float> %i.cgl)
  %i.cgq = load <4 x float>, ptr %i.cgd, align 4, !tbaa !74
  %i.cgr = fadd <4 x float> %i.cgq, %i.cgp
  store <4 x float> %i.cgr, ptr %i.cgd, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual1x9_PQ8_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI47testCppcontribSaDecode_D64_Residual1x9_PQ8_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV47testCppcontribSaDecode_D64_Residual1x9_PQ8_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z22testIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_22
begin_hunk_23_@_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf:bb.a
  %i.pf = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.pg = shl nuw nsw i64 %i.os, 5
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40976
  %i.pj = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 2 uses
  %i.pk = load <4 x float>, ptr %i.ox, align 4, !tbaa !74
  %i.pl = load <4 x float>, ptr %i.pa, align 4, !tbaa !74
  %i.pm = fadd <4 x float> %i.pk, %i.pl
  %i.pn = load <4 x float>, ptr %i.pb, align 4, !tbaa !74
  %i.po = load <4 x float>, ptr %i.pe, align 4, !tbaa !74
  %i.pp = fadd <4 x float> %i.pn, %i.po
  %i.pq = fmul <4 x float> %i.ac, %i.pp
  %i.pr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.pm, <4 x float> %i.pq)
  %i.ps = load <4 x float>, ptr %i.pf, align 4, !tbaa !74
  %i.pt = load <4 x float>, ptr %i.pi, align 4, !tbaa !74
  %i.pu = fadd <4 x float> %i.ps, %i.pt
  %i.pv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.pu, <4 x float> %i.pr)
  %i.pw = load <4 x float>, ptr %i.pj, align 4, !tbaa !74
  %i.px = fadd <4 x float> %i.pw, %i.pv
  store <4 x float> %i.px, ptr %i.pj, align 4, !tbaa !74
  %i.py = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pz = load i8, ptr %i.py, align 2, !tbaa !17
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !17
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 2, !tbaa !17
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.qi = shl nuw nsw i64 %i.qg, 5
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 49152
  %i.ql = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.qm = shl nuw nsw i64 %i.qd, 5
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 49152
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.qq = shl nuw nsw i64 %i.qa, 5
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 49152
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.qu = load <4 x float>, ptr %i.qh, align 4, !tbaa !74
  %i.qv = load <4 x float>, ptr %i.qk, align 4, !tbaa !74
  %i.qw = fadd <4 x float> %i.qu, %i.qv
  %i.qx = load <4 x float>, ptr %i.ql, align 4, !tbaa !74
  %i.qy = load <4 x float>, ptr %i.qo, align 4, !tbaa !74
  %i.qz = fadd <4 x float> %i.qx, %i.qy
  %i.ra = fmul <4 x float> %i.ac, %i.qz
  %i.rb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.qw, <4 x float> %i.ra)
  %i.rc = load <4 x float>, ptr %i.qp, align 4, !tbaa !74
  %i.rd = load <4 x float>, ptr %i.qs, align 4, !tbaa !74
  %i.re = fadd <4 x float> %i.rc, %i.rd
  %i.rf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.re, <4 x float> %i.rb)
  %i.rg = load <4 x float>, ptr %i.qt, align 4, !tbaa !74
  %i.rh = fadd <4 x float> %i.rg, %i.rf
  store <4 x float> %i.rh, ptr %i.qt, align 4, !tbaa !74
  %i.ri = load i8, ptr %i.py, align 2, !tbaa !17
  %i.rj = zext i8 %i.ri to i64
  %i.rk = load i8, ptr %i.qb, align 2, !tbaa !17
  %i.rl = zext i8 %i.rk to i64
  %i.rm = load i8, ptr %i.qe, align 2, !tbaa !17
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.rp = shl nuw nsw i64 %i.rn, 5
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 49168
  %i.rs = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.rt = shl nuw nsw i64 %i.rl, 5
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 49168
  %i.rw = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.rx = shl nuw nsw i64 %i.rj, 5
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 49168
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.sb = load <4 x float>, ptr %i.ro, align 4, !tbaa !74
  %i.sc = load <4 x float>, ptr %i.rr, align 4, !tbaa !74
  %i.sd = fadd <4 x float> %i.sb, %i.sc
  %i.se = load <4 x float>, ptr %i.rs, align 4, !tbaa !74
  %i.sf = load <4 x float>, ptr %i.rv, align 4, !tbaa !74
  %i.sg = fadd <4 x float> %i.se, %i.sf
  %i.sh = fmul <4 x float> %i.ac, %i.sg
  %i.si = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.sd, <4 x float> %i.sh)
  %i.sj = load <4 x float>, ptr %i.rw, align 4, !tbaa !74
  %i.sk = load <4 x float>, ptr %i.rz, align 4, !tbaa !74
  %i.sl = fadd <4 x float> %i.sj, %i.sk
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.sl, <4 x float> %i.si)
  %i.sn = load <4 x float>, ptr %i.sa, align 4, !tbaa !74
  %i.so = fadd <4 x float> %i.sn, %i.sm
  store <4 x float> %i.so, ptr %i.sa, align 4, !tbaa !74
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 9 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !17
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !17
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !17
  %i.sx = zext i8 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.sz = shl nuw nsw i64 %i.sx, 5
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 57344
  %i.tc = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.td = shl nuw nsw i64 %i.su, 5
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 57344
  %i.tg = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.th = shl nuw nsw i64 %i.sr, 5
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 57344
  %i.tk = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.tl = load <4 x float>, ptr %i.sy, align 4, !tbaa !74
  %i.tm = load <4 x float>, ptr %i.tb, align 4, !tbaa !74
  %i.tn = fadd <4 x float> %i.tl, %i.tm
  %i.to = load <4 x float>, ptr %i.tc, align 4, !tbaa !74
  %i.tp = load <4 x float>, ptr %i.tf, align 4, !tbaa !74
  %i.tq = fadd <4 x float> %i.to, %i.tp
  %i.tr = fmul <4 x float> %i.ac, %i.tq
  %i.ts = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.tn, <4 x float> %i.tr)
  %i.tt = load <4 x float>, ptr %i.tg, align 4, !tbaa !74
  %i.tu = load <4 x float>, ptr %i.tj, align 4, !tbaa !74
  %i.tv = fadd <4 x float> %i.tt, %i.tu
  %i.tw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.tv, <4 x float> %i.ts)
  %i.tx = load <4 x float>, ptr %i.tk, align 4, !tbaa !74
  %i.ty = fadd <4 x float> %i.tx, %i.tw
  store <4 x float> %i.ty, ptr %i.tk, align 4, !tbaa !74
  %i.tz = load i8, ptr %i.sp, align 1, !tbaa !17
  %i.ua = zext i8 %i.tz to i64
  %i.ub = load i8, ptr %i.ss, align 1, !tbaa !17
  %i.uc = zext i8 %i.ub to i64
  %i.ud = load i8, ptr %i.sv, align 1, !tbaa !17
  %i.ue = zext i8 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.ug = shl nuw nsw i64 %i.ue, 5
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 57360
  %i.uj = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.uk = shl nuw nsw i64 %i.uc, 5
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 57360
  %i.un = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.uo = shl nuw nsw i64 %i.ua, 5
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 57360
  %i.ur = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.us = load <4 x float>, ptr %i.uf, align 4, !tbaa !74
  %i.ut = load <4 x float>, ptr %i.ui, align 4, !tbaa !74
  %i.uu = fadd <4 x float> %i.us, %i.ut
  %i.uv = load <4 x float>, ptr %i.uj, align 4, !tbaa !74
  %i.uw = load <4 x float>, ptr %i.um, align 4, !tbaa !74
  %i.ux = fadd <4 x float> %i.uv, %i.uw
  %i.uy = fmul <4 x float> %i.ac, %i.ux
  %i.uz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.uu, <4 x float> %i.uy)
  %i.va = load <4 x float>, ptr %i.un, align 4, !tbaa !74
  %i.vb = load <4 x float>, ptr %i.uq, align 4, !tbaa !74
  %i.vc = fadd <4 x float> %i.va, %i.vb
  %i.vd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.vc, <4 x float> %i.uz)
  %i.ve = load <4 x float>, ptr %i.ur, align 4, !tbaa !74
  %i.vf = fadd <4 x float> %i.ve, %i.vd
  store <4 x float> %i.vf, ptr %i.ur, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37testCppcontribSaDecode_D256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37testCppcontribSaDecode_D256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37testCppcontribSaDecode_D256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z18testIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_23
begin_hunk_24_@_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS6_fS6_fPf:bb.a
  %i.bod = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.boc, <4 x float> %i.bob)
  %i.boe = load <4 x float>, ptr %i.bnx, align 4, !tbaa !74
  %i.bof = fadd <4 x float> %i.boe, %i.bod
  store <4 x float> %i.bof, ptr %i.bnx, align 4, !tbaa !74
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bmp, i64 229424
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bms, i64 229424
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bmv, i64 229424
  %i.boj = getelementptr inbounds nuw i8, ptr %7, i64 944 ; 2 uses
  %i.bok = load i8, ptr %i.bkx, align 1, !tbaa !17
  %i.bol = zext i8 %i.bok to i64
  %i.bom = load i8, ptr %i.bla, align 1, !tbaa !17
  %i.bon = zext i8 %i.bom to i64
  %i.boo = load i8, ptr %i.bld, align 1, !tbaa !17
  %i.bop = zext i8 %i.boo to i64
  %i.boq = shl nuw nsw i64 %i.bol, 6
  %i.bor = getelementptr inbounds nuw i8, ptr %0, i64 %i.boq
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 229432
  %i.bot = shl nuw nsw i64 %i.bon, 6
  %i.bou = getelementptr inbounds nuw i8, ptr %0, i64 %i.bot
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 229432
  %i.bow = shl nuw nsw i64 %i.bop, 6
  %i.box = getelementptr inbounds nuw i8, ptr %0, i64 %i.bow
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 229432
  %i.boz = load <2 x float>, ptr %i.bog, align 4, !tbaa !74
  %i.bpa = load <2 x float>, ptr %i.boh, align 4, !tbaa !74
  %i.bpb = load <2 x float>, ptr %i.boi, align 4, !tbaa !74
  %i.bpc = load <2 x float>, ptr %i.bos, align 4, !tbaa !74
  %i.bpd = load <2 x float>, ptr %i.bov, align 4, !tbaa !74
  %i.bpe = shufflevector <2 x float> %i.bpa, <2 x float> %i.bpd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpf = fmul <4 x float> %i.m, %i.bpe
  %i.bpg = shufflevector <2 x float> %i.boz, <2 x float> %i.bpc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bph = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bpg, <4 x float> %i.bpf)
  %i.bpi = load <2 x float>, ptr %i.boy, align 4, !tbaa !74
  %i.bpj = shufflevector <2 x float> %i.bpb, <2 x float> %i.bpi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bpj, <4 x float> %i.bph)
  %i.bpl = load <4 x float>, ptr %i.boj, align 4, !tbaa !74
  %i.bpm = fadd <4 x float> %i.bpl, %i.bpk
  store <4 x float> %i.bpm, ptr %i.boj, align 4, !tbaa !74
  %i.bpn = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !17
  %i.bpp = zext i8 %i.bpo to i64
  %i.bpq = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 3 uses
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !17
  %i.bps = zext i8 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw i8, ptr %5, i64 15 ; 3 uses
  %i.bpu = load i8, ptr %i.bpt, align 1, !tbaa !17
  %i.bpv = zext i8 %i.bpu to i64
  %i.bpw = shl nuw nsw i64 %i.bpp, 6
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bpw ; 3 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 245760
  %i.bpz = shl nuw nsw i64 %i.bps, 6
  %i.bqa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bpz ; 3 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 245760
  %i.bqc = shl nuw nsw i64 %i.bpv, 6
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bqc ; 3 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 245760
  %i.bqf = getelementptr inbounds nuw i8, ptr %7, i64 960 ; 2 uses
  %i.bqg = load <4 x float>, ptr %i.bpy, align 4, !tbaa !74
  %i.bqh = load <4 x float>, ptr %i.bqb, align 4, !tbaa !74
  %i.bqi = fmul <4 x float> %i.m, %i.bqh
  %i.bqj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bqg, <4 x float> %i.bqi)
  %i.bqk = load <4 x float>, ptr %i.bqe, align 4, !tbaa !74
  %i.bql = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bqk, <4 x float> %i.bqj)
  %i.bqm = load <4 x float>, ptr %i.bqf, align 4, !tbaa !74
  %i.bqn = fadd <4 x float> %i.bqm, %i.bql
  store <4 x float> %i.bqn, ptr %i.bqf, align 4, !tbaa !74
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bpx, i64 245776
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqa, i64 245776
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqd, i64 245776
  %i.bqr = getelementptr inbounds nuw i8, ptr %7, i64 976 ; 2 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bpx, i64 245784
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqa, i64 245784
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqd, i64 245784
  %i.bqv = load float, ptr %i.bqs, align 4, !tbaa !74
  %i.bqw = load float, ptr %i.bqt, align 4, !tbaa !74
  %i.bqx = load float, ptr %i.bqu, align 4, !tbaa !74
  %i.bqy = load i8, ptr %i.bpn, align 1, !tbaa !17
  %i.bqz = zext i8 %i.bqy to i64
  %i.bra = load i8, ptr %i.bpq, align 1, !tbaa !17
  %i.brb = zext i8 %i.bra to i64
  %i.brc = load i8, ptr %i.bpt, align 1, !tbaa !17
  %i.brd = zext i8 %i.brc to i64
  %i.bre = shl nuw nsw i64 %i.bqz, 6
  %i.brf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bre ; 3 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 245788
  %i.brh = shl nuw nsw i64 %i.brb, 6
  %i.bri = getelementptr inbounds nuw i8, ptr %0, i64 %i.brh ; 3 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 245788
  %i.brk = shl nuw nsw i64 %i.brd, 6
  %i.brl = getelementptr inbounds nuw i8, ptr %0, i64 %i.brk ; 3 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 245788
  %i.brn = load float, ptr %i.brg, align 4, !tbaa !74
  %i.bro = load float, ptr %i.brj, align 4, !tbaa !74
  %i.brp = load float, ptr %i.brm, align 4, !tbaa !74
  %i.brq = load <2 x float>, ptr %i.bqo, align 4, !tbaa !74
  %i.brr = load <2 x float>, ptr %i.bqp, align 4, !tbaa !74
  %i.brs = load <2 x float>, ptr %i.bqq, align 4, !tbaa !74
  %i.brt = insertelement <4 x float> poison, float %i.bqw, i64 2
  %i.bru = insertelement <4 x float> %i.brt, float %i.bro, i64 3
  %i.brv = shufflevector <2 x float> %i.brr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.brw = shufflevector <4 x float> %i.brv, <4 x float> %i.bru, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.brx = fmul <4 x float> %i.m, %i.brw
  %i.bry = insertelement <4 x float> poison, float %i.bqv, i64 2
  %i.brz = insertelement <4 x float> %i.bry, float %i.brn, i64 3
  %i.bsa = shufflevector <2 x float> %i.brq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bsb = shufflevector <4 x float> %i.bsa, <4 x float> %i.brz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bsc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bsb, <4 x float> %i.brx)
  %i.bsd = insertelement <4 x float> poison, float %i.bqx, i64 2
  %i.bse = insertelement <4 x float> %i.bsd, float %i.brp, i64 3
  %i.bsf = shufflevector <2 x float> %i.brs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bsg = shufflevector <4 x float> %i.bsf, <4 x float> %i.bse, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bsh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bsg, <4 x float> %i.bsc)
  %i.bsi = load <4 x float>, ptr %i.bqr, align 4, !tbaa !74
  %i.bsj = fadd <4 x float> %i.bsi, %i.bsh
  store <4 x float> %i.bsj, ptr %i.bqr, align 4, !tbaa !74
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.brf, i64 245792
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bri, i64 245792
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.brl, i64 245792
  %i.bsn = getelementptr inbounds nuw i8, ptr %7, i64 992 ; 2 uses
  %i.bso = load <4 x float>, ptr %i.bsk, align 4, !tbaa !74
  %i.bsp = load <4 x float>, ptr %i.bsl, align 4, !tbaa !74
  %i.bsq = fmul <4 x float> %i.m, %i.bsp
  %i.bsr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bso, <4 x float> %i.bsq)
  %i.bss = load <4 x float>, ptr %i.bsm, align 4, !tbaa !74
  %i.bst = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bss, <4 x float> %i.bsr)
  %i.bsu = load <4 x float>, ptr %i.bsn, align 4, !tbaa !74
  %i.bsv = fadd <4 x float> %i.bsu, %i.bst
  store <4 x float> %i.bsv, ptr %i.bsn, align 4, !tbaa !74
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.brf, i64 245808
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bri, i64 245808
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.brl, i64 245808
  %i.bsz = getelementptr inbounds nuw i8, ptr %7, i64 1008 ; 2 uses
  %i.bta = load i8, ptr %i.bpn, align 1, !tbaa !17
  %i.btb = zext i8 %i.bta to i64
  %i.btc = load i8, ptr %i.bpq, align 1, !tbaa !17
  %i.btd = zext i8 %i.btc to i64
  %i.bte = load i8, ptr %i.bpt, align 1, !tbaa !17
  %i.btf = zext i8 %i.bte to i64
  %i.btg = shl nuw nsw i64 %i.btb, 6
  %i.bth = getelementptr inbounds nuw i8, ptr %0, i64 %i.btg
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 245816
  %i.btj = shl nuw nsw i64 %i.btd, 6
  %i.btk = getelementptr inbounds nuw i8, ptr %0, i64 %i.btj
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 245816
  %i.btm = shl nuw nsw i64 %i.btf, 6
  %i.btn = getelementptr inbounds nuw i8, ptr %0, i64 %i.btm
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 245816
  %i.btp = load <2 x float>, ptr %i.bsw, align 4, !tbaa !74
  %i.btq = load <2 x float>, ptr %i.bsx, align 4, !tbaa !74
  %i.btr = load <2 x float>, ptr %i.bsy, align 4, !tbaa !74
  %i.bts = load <2 x float>, ptr %i.bti, align 4, !tbaa !74
  %i.btt = load <2 x float>, ptr %i.btl, align 4, !tbaa !74
  %i.btu = shufflevector <2 x float> %i.btq, <2 x float> %i.btt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btv = fmul <4 x float> %i.m, %i.btu
  %i.btw = shufflevector <2 x float> %i.btp, <2 x float> %i.bts, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.btx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.btw, <4 x float> %i.btv)
  %i.bty = load <2 x float>, ptr %i.bto, align 4, !tbaa !74
  %i.btz = shufflevector <2 x float> %i.btr, <2 x float> %i.bty, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bua = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.btz, <4 x float> %i.btx)
  %i.bub = load <4 x float>, ptr %i.bsz, align 4, !tbaa !74
  %i.buc = fadd <4 x float> %i.bub, %i.bua
  store <4 x float> %i.buc, ptr %i.bsz, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI37testCppcontribSaDecode_D160_PQ20_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI37testCppcontribSaDecode_D160_PQ20_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37testCppcontribSaDecode_D160_PQ20_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z18testIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_24
begin_hunk_25_@_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfS6_fS6_fPf:bb.a
  %i.axd = insertelement <4 x float> poison, float %i.avx, i64 2
  %i.axe = insertelement <4 x float> %i.axd, float %i.awp, i64 3
  %i.axf = shufflevector <2 x float> %i.aws, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.axg = shufflevector <4 x float> %i.axf, <4 x float> %i.axe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.axh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.axg, <4 x float> %i.axc)
  %i.axi = load <4 x float>, ptr %i.avr, align 4, !tbaa !74
  %i.axj = fadd <4 x float> %i.axi, %i.axh
  store <4 x float> %i.axj, ptr %i.avr, align 4, !tbaa !74
  %i.axk = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !17
  %i.axm = zext i8 %i.axl to i64
  %i.axn = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !17
  %i.axp = zext i8 %i.axo to i64
  %i.axq = getelementptr inbounds nuw i8, ptr %5, i64 18 ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !17
  %i.axs = zext i8 %i.axr to i64
  %i.axt = shl nuw nsw i64 %i.axm, 5
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 %i.axt ; 3 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 147456
  %i.axw = shl nuw nsw i64 %i.axp, 5
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 %i.axw ; 3 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 147456
  %i.axz = shl nuw nsw i64 %i.axs, 5
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 %i.axz ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 147456
  %i.ayc = getelementptr inbounds nuw i8, ptr %7, i64 576 ; 2 uses
  %i.ayd = load <4 x float>, ptr %i.axv, align 4, !tbaa !74
  %i.aye = load <4 x float>, ptr %i.axy, align 4, !tbaa !74
  %i.ayf = fmul <4 x float> %i.m, %i.aye
  %i.ayg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.ayd, <4 x float> %i.ayf)
  %i.ayh = load <4 x float>, ptr %i.ayb, align 4, !tbaa !74
  %i.ayi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.ayh, <4 x float> %i.ayg)
  %i.ayj = load <4 x float>, ptr %i.ayc, align 4, !tbaa !74
  %i.ayk = fadd <4 x float> %i.ayj, %i.ayi
  store <4 x float> %i.ayk, ptr %i.ayc, align 4, !tbaa !74
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axu, i64 147472
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axx, i64 147472
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aya, i64 147472
  %i.ayo = getelementptr inbounds nuw i8, ptr %7, i64 592 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axu, i64 147480
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axx, i64 147480
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.aya, i64 147480
  %i.ays = load float, ptr %i.ayp, align 4, !tbaa !74
  %i.ayt = load float, ptr %i.ayq, align 4, !tbaa !74
  %i.ayu = load float, ptr %i.ayr, align 4, !tbaa !74
  %i.ayv = load i8, ptr %i.axk, align 1, !tbaa !17
  %i.ayw = zext i8 %i.ayv to i64
  %i.ayx = load i8, ptr %i.axn, align 1, !tbaa !17
  %i.ayy = zext i8 %i.ayx to i64
  %i.ayz = load i8, ptr %i.axq, align 1, !tbaa !17
  %i.aza = zext i8 %i.ayz to i64
  %i.azb = shl nuw nsw i64 %i.ayw, 5
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 %i.azb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 147484
  %i.aze = shl nuw nsw i64 %i.ayy, 5
  %i.azf = getelementptr inbounds nuw i8, ptr %0, i64 %i.aze
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 147484
  %i.azh = shl nuw nsw i64 %i.aza, 5
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 147484
  %i.azk = load float, ptr %i.azd, align 4, !tbaa !74
  %i.azl = load float, ptr %i.azg, align 4, !tbaa !74
  %i.azm = load float, ptr %i.azj, align 4, !tbaa !74
  %i.azn = load <2 x float>, ptr %i.ayl, align 4, !tbaa !74
  %i.azo = load <2 x float>, ptr %i.aym, align 4, !tbaa !74
  %i.azp = load <2 x float>, ptr %i.ayn, align 4, !tbaa !74
  %i.azq = insertelement <4 x float> poison, float %i.ayt, i64 2
  %i.azr = insertelement <4 x float> %i.azq, float %i.azl, i64 3
  %i.azs = shufflevector <2 x float> %i.azo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.azt = shufflevector <4 x float> %i.azs, <4 x float> %i.azr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.azu = fmul <4 x float> %i.m, %i.azt
  %i.azv = insertelement <4 x float> poison, float %i.ays, i64 2
  %i.azw = insertelement <4 x float> %i.azv, float %i.azk, i64 3
  %i.azx = shufflevector <2 x float> %i.azn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.azy = shufflevector <4 x float> %i.azx, <4 x float> %i.azw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.azz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.azy, <4 x float> %i.azu)
  %i.baa = insertelement <4 x float> poison, float %i.ayu, i64 2
  %i.bab = insertelement <4 x float> %i.baa, float %i.azm, i64 3
  %i.bac = shufflevector <2 x float> %i.azp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bad = shufflevector <4 x float> %i.bac, <4 x float> %i.bab, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bad, <4 x float> %i.azz)
  %i.baf = load <4 x float>, ptr %i.ayo, align 4, !tbaa !74
  %i.bag = fadd <4 x float> %i.baf, %i.bae
  store <4 x float> %i.bag, ptr %i.ayo, align 4, !tbaa !74
  %i.bah = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 2 uses
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !17
  %i.baj = zext i8 %i.bai to i64
  %i.bak = getelementptr inbounds nuw i8, ptr %3, i64 19 ; 2 uses
  %i.bal = load i8, ptr %i.bak, align 1, !tbaa !17
  %i.bam = zext i8 %i.bal to i64
  %i.ban = getelementptr inbounds nuw i8, ptr %5, i64 19 ; 2 uses
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !17
  %i.bap = zext i8 %i.bao to i64
  %i.baq = shl nuw nsw i64 %i.baj, 5
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 %i.baq ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 155648
  %i.bat = shl nuw nsw i64 %i.bam, 5
  %i.bau = getelementptr inbounds nuw i8, ptr %0, i64 %i.bat ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 155648
  %i.baw = shl nuw nsw i64 %i.bap, 5
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 %i.baw ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 155648
  %i.baz = getelementptr inbounds nuw i8, ptr %7, i64 608 ; 2 uses
  %i.bba = load <4 x float>, ptr %i.bas, align 4, !tbaa !74
  %i.bbb = load <4 x float>, ptr %i.bav, align 4, !tbaa !74
  %i.bbc = fmul <4 x float> %i.m, %i.bbb
  %i.bbd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bba, <4 x float> %i.bbc)
  %i.bbe = load <4 x float>, ptr %i.bay, align 4, !tbaa !74
  %i.bbf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bbe, <4 x float> %i.bbd)
  %i.bbg = load <4 x float>, ptr %i.baz, align 4, !tbaa !74
  %i.bbh = fadd <4 x float> %i.bbg, %i.bbf
  store <4 x float> %i.bbh, ptr %i.baz, align 4, !tbaa !74
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bar, i64 155664
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bau, i64 155664
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bax, i64 155664
  %i.bbl = getelementptr inbounds nuw i8, ptr %7, i64 624 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bar, i64 155672
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bau, i64 155672
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bax, i64 155672
  %i.bbp = load float, ptr %i.bbm, align 4, !tbaa !74
  %i.bbq = load float, ptr %i.bbn, align 4, !tbaa !74
  %i.bbr = load float, ptr %i.bbo, align 4, !tbaa !74
  %i.bbs = load i8, ptr %i.bah, align 1, !tbaa !17
  %i.bbt = zext i8 %i.bbs to i64
  %i.bbu = load i8, ptr %i.bak, align 1, !tbaa !17
  %i.bbv = zext i8 %i.bbu to i64
  %i.bbw = load i8, ptr %i.ban, align 1, !tbaa !17
  %i.bbx = zext i8 %i.bbw to i64
  %i.bby = shl nuw nsw i64 %i.bbt, 5
  %i.bbz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bby
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 155676
  %i.bcb = shl nuw nsw i64 %i.bbv, 5
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcb
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 155676
  %i.bce = shl nuw nsw i64 %i.bbx, 5
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 %i.bce
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 155676
  %i.bch = load float, ptr %i.bca, align 4, !tbaa !74
  %i.bci = load float, ptr %i.bcd, align 4, !tbaa !74
  %i.bcj = load float, ptr %i.bcg, align 4, !tbaa !74
  %i.bck = load <2 x float>, ptr %i.bbi, align 4, !tbaa !74
  %i.bcl = load <2 x float>, ptr %i.bbj, align 4, !tbaa !74
  %i.bcm = load <2 x float>, ptr %i.bbk, align 4, !tbaa !74
  %i.bcn = insertelement <4 x float> poison, float %i.bbq, i64 2
  %i.bco = insertelement <4 x float> %i.bcn, float %i.bci, i64 3
  %i.bcp = shufflevector <2 x float> %i.bcl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bcq = shufflevector <4 x float> %i.bcp, <4 x float> %i.bco, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bcr = fmul <4 x float> %i.m, %i.bcq
  %i.bcs = insertelement <4 x float> poison, float %i.bbp, i64 2
  %i.bct = insertelement <4 x float> %i.bcs, float %i.bch, i64 3
  %i.bcu = shufflevector <2 x float> %i.bck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bcv = shufflevector <4 x float> %i.bcu, <4 x float> %i.bct, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bcw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.bcv, <4 x float> %i.bcr)
  %i.bcx = insertelement <4 x float> poison, float %i.bbr, i64 2
  %i.bcy = insertelement <4 x float> %i.bcx, float %i.bcj, i64 3
  %i.bcz = shufflevector <2 x float> %i.bcm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bda = shufflevector <4 x float> %i.bcz, <4 x float> %i.bcy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bdb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.bda, <4 x float> %i.bcw)
  %i.bdc = load <4 x float>, ptr %i.bbl, align 4, !tbaa !74
  %i.bdd = fadd <4 x float> %i.bdc, %i.bdb
  store <4 x float> %i.bdd, ptr %i.bbl, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI55testCppcontribSaDecode_D256_MINMAXFP16_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI55testCppcontribSaDecode_D256_MINMAXFP16_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV55testCppcontribSaDecode_D256_MINMAXFP16_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28testMinMaxIndex2LevelDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_25
begin_hunk_26_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #23
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !18
  store i64 %.0, ptr %i.d, align 8, !tbaa !17
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !14
  store i8 0, ptr %i.c, align 1, !tbaa !17
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.t, ptr %i.r, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !14
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIDnEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.111, i64 noundef 9)
          to label %_ZN7testing8internal21UniversalTersePrinterIDnE5PrintERKDnPSo.exit unwind label %bb.e ; 0 uses

_ZN7testing8internal21UniversalTersePrinterIDnE5PrintERKDnPSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !10, !alias.scope !593
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !14, !alias.scope !593
  store i8 0, ptr %i.c, align 8, !tbaa !17, !alias.scope !593
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !584, !noalias !593 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !593 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIDnE5PrintERKDnPSo.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !586, !noalias !593 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !593 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !17, !alias.scope !593
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIDnE5PrintERKDnPSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !24
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #22
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !24
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48testCppcontribSaDecode_D256_MINMAXFP16_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24testMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_26
begin_hunk_27_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  call void @_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn342.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5accumEPKfPKhfS6_S8_fS6_S8_fPfRf(ptr noalias noundef %0, ptr noalias noundef %1, float noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, float noundef %5, ptr noalias noundef %6, ptr noalias noundef %7, float noundef %8, ptr noalias noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !426
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !426  ; 2 uses
  %i.d = load i16, ptr %7, align 2, !tbaa !426
  %i.e = load <2 x i16>, ptr %4, align 2, !tbaa !426
  %i.f = shufflevector <2 x i16> %i.e, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.g = insertelement <4 x i16> %i.f, i16 %i.a, i64 0
  %i.h = insertelement <4 x i16> %i.g, i16 %i.d, i64 3 ; 2 uses
  %i.i = zext <4 x i16> %i.h to <4 x i32>
  %i.j = shl nuw nsw <4 x i32> %i.i, splat (i32 13) ; 3 uses
  %i.k = and <4 x i32> %i.j, splat (i32 268427264) ; 2 uses
  %i.l = and <4 x i32> %i.j, splat (i32 260046848) ; 2 uses
  %i.m = add nuw nsw <4 x i32> %i.k, splat (i32 939524096)
  %i.n = or <4 x i32> %i.j, splat (i32 1879048192)
  %i.o = add nuw nsw <4 x i32> %i.k, splat (i32 947912704)
  %i.p = bitcast <4 x i32> %i.o to <4 x float>
  %i.q = fadd <4 x float> %i.p, splat (float f0xB8800000)
  %i.r = bitcast <4 x float> %i.q to <4 x i32>
  %i.s = icmp eq <4 x i32> %i.l, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> %i.r, <4 x i32> %i.m
  %i.u = sext <4 x i16> %i.h to <4 x i32>
  %i.v = and <4 x i32> %i.u, splat (i32 -2147483648)
  %i.w = icmp eq <4 x i32> %i.l, splat (i32 260046848)
  %i.x = select <4 x i1> %i.w, <4 x i32> %i.n, <4 x i32> %i.t
  %i.y = or <4 x i32> %i.x, %i.v
  %i.z = bitcast <4 x i32> %i.y to <4 x float>
  %i.aa = insertelement <4 x float> poison, float %2, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %5, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %8, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ae = fmul <4 x float> %i.ad, %i.z            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !426 ; 2 uses
  %i.ah = insertelement <2 x i16> poison, i16 %i.c, i64 0
  %i.ai = insertelement <2 x i16> %i.ah, i16 %i.ag, i64 1
  %i.aj = zext <2 x i16> %i.ai to <2 x i32>
  %i.ak = shl nuw nsw <2 x i32> %i.aj, splat (i32 13) ; 3 uses
  %i.al = and <2 x i32> %i.ak, splat (i32 268427264) ; 2 uses
  %i.am = and <2 x i32> %i.ak, splat (i32 260046848) ; 2 uses
  %i.an = add nuw nsw <2 x i32> %i.al, splat (i32 939524096)
  %i.ao = or <2 x i32> %i.ak, splat (i32 1879048192)
  %i.ap = add nuw nsw <2 x i32> %i.al, splat (i32 947912704)
  %i.aq = bitcast <2 x i32> %i.ap to <2 x float>
  %i.ar = fadd <2 x float> %i.aq, splat (float f0xB8800000)
  %i.as = bitcast <2 x float> %i.ar to <2 x i32>
  %i.at = icmp eq <2 x i32> %i.am, zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x i32> %i.as, <2 x i32> %i.an
  %.signext.i33 = sext i16 %i.ag to i32
  %.signext.i29 = sext i16 %i.c to i32
  %i.av = insertelement <2 x i32> poison, i32 %.signext.i29, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %.signext.i33, i64 1
  %i.ax = and <2 x i32> %i.aw, splat (i32 -2147483648)
  %i.ay = icmp eq <2 x i32> %i.am, splat (i32 260046848)
  %i.az = select <2 x i1> %i.ay, <2 x i32> %i.ao, <2 x i32> %i.au
  %i.ba = or <2 x i32> %i.az, %i.ax
  %i.bb = bitcast <2 x i32> %i.ba to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %2, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %8, i64 1
  %i.be = fmul <2 x float> %i.bd, %i.bb           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bi = extractelement <4 x float> %i.ae, i64 0
  %i.bj = extractelement <4 x float> %i.ae, i64 1
  %i.bk = extractelement <4 x float> %i.ae, i64 3
  tail call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS4_S6_fS4_S6_fPf(ptr noundef %0, ptr noundef nonnull %i.bf, float noundef %i.bi, ptr noundef %3, ptr noundef nonnull %i.bg, float noundef %i.bj, ptr noundef %6, ptr noundef nonnull %i.bh, float noundef %i.bk, ptr noundef %9)
  %i.bl = extractelement <2 x float> %i.be, i64 0
  %i.bm = extractelement <4 x float> %i.ae, i64 2
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = extractelement <2 x float> %i.be, i64 1
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = load float, ptr %10, align 4, !tbaa !74
  %i.br = fadd float %i.bq, %i.bp
  store float %i.br, ptr %10, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5accumEPKfPKhfS8_fS8_fPfRf(ptr noalias noundef %0, ptr noalias noundef %1, float noundef %2, ptr noalias noundef %3, float noundef %4, ptr noalias noundef %5, float noundef %6, ptr noalias noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !426
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !426  ; 2 uses
  %i.d = load i16, ptr %5, align 2, !tbaa !426
  %i.e = load <2 x i16>, ptr %3, align 2, !tbaa !426
  %i.f = shufflevector <2 x i16> %i.e, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.g = insertelement <4 x i16> %i.f, i16 %i.a, i64 0
  %i.h = insertelement <4 x i16> %i.g, i16 %i.d, i64 3 ; 2 uses
  %i.i = zext <4 x i16> %i.h to <4 x i32>
  %i.j = shl nuw nsw <4 x i32> %i.i, splat (i32 13) ; 3 uses
  %i.k = and <4 x i32> %i.j, splat (i32 268427264) ; 2 uses
  %i.l = and <4 x i32> %i.j, splat (i32 260046848) ; 2 uses
  %i.m = add nuw nsw <4 x i32> %i.k, splat (i32 939524096)
  %i.n = or <4 x i32> %i.j, splat (i32 1879048192)
  %i.o = add nuw nsw <4 x i32> %i.k, splat (i32 947912704)
  %i.p = bitcast <4 x i32> %i.o to <4 x float>
  %i.q = fadd <4 x float> %i.p, splat (float f0xB8800000)
  %i.r = bitcast <4 x float> %i.q to <4 x i32>
  %i.s = icmp eq <4 x i32> %i.l, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> %i.r, <4 x i32> %i.m
  %i.u = sext <4 x i16> %i.h to <4 x i32>
  %i.v = and <4 x i32> %i.u, splat (i32 -2147483648)
  %i.w = icmp eq <4 x i32> %i.l, splat (i32 260046848)
  %i.x = select <4 x i1> %i.w, <4 x i32> %i.n, <4 x i32> %i.t
  %i.y = or <4 x i32> %i.x, %i.v
  %i.z = bitcast <4 x i32> %i.y to <4 x float>
  %i.aa = insertelement <4 x float> poison, float %2, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %4, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %6, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ae = fmul <4 x float> %i.ad, %i.z            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !426 ; 2 uses
  %i.ah = insertelement <2 x i16> poison, i16 %i.c, i64 0
  %i.ai = insertelement <2 x i16> %i.ah, i16 %i.ag, i64 1
  %i.aj = zext <2 x i16> %i.ai to <2 x i32>
  %i.ak = shl nuw nsw <2 x i32> %i.aj, splat (i32 13) ; 3 uses
  %i.al = and <2 x i32> %i.ak, splat (i32 268427264) ; 2 uses
  %i.am = and <2 x i32> %i.ak, splat (i32 260046848) ; 2 uses
  %i.an = add nuw nsw <2 x i32> %i.al, splat (i32 939524096)
  %i.ao = or <2 x i32> %i.ak, splat (i32 1879048192)
  %i.ap = add nuw nsw <2 x i32> %i.al, splat (i32 947912704)
  %i.aq = bitcast <2 x i32> %i.ap to <2 x float>
  %i.ar = fadd <2 x float> %i.aq, splat (float f0xB8800000)
  %i.as = bitcast <2 x float> %i.ar to <2 x i32>
  %i.at = icmp eq <2 x i32> %i.am, zeroinitializer
  %i.au = select <2 x i1> %i.at, <2 x i32> %i.as, <2 x i32> %i.an
  %.signext.i31 = sext i16 %i.ag to i32
  %.signext.i27 = sext i16 %i.c to i32
  %i.av = insertelement <2 x i32> poison, i32 %.signext.i27, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %.signext.i31, i64 1
  %i.ax = and <2 x i32> %i.aw, splat (i32 -2147483648)
  %i.ay = icmp eq <2 x i32> %i.am, splat (i32 260046848)
  %i.az = select <2 x i1> %i.ay, <2 x i32> %i.ao, <2 x i32> %i.au
  %i.ba = or <2 x i32> %i.az, %i.ax
  %i.bb = bitcast <2 x i32> %i.ba to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %2, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %6, i64 1
  %i.be = fmul <2 x float> %i.bd, %i.bb           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bi = extractelement <4 x float> %i.ae, i64 0
  %i.bj = extractelement <4 x float> %i.ae, i64 1
  %i.bk = extractelement <4 x float> %i.ae, i64 3
  tail call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS6_fS6_fPf(ptr noundef %0, ptr noundef nonnull %i.bf, float noundef %i.bi, ptr noundef nonnull %i.bg, float noundef %i.bj, ptr noundef nonnull %i.bh, float noundef %i.bk, ptr noundef %7)
  %i.bl = extractelement <2 x float> %i.be, i64 0
  %i.bm = extractelement <4 x float> %i.ae, i64 2
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = extractelement <2 x float> %i.be, i64 1
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = load float, ptr %8, align 4, !tbaa !74
  %i.br = fadd float %i.bq, %i.bp
  store float %i.br, ptr %8, align 4, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV51testCppcontribSaDecode_D256_MINMAX_IVF256_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28testMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_27
begin_hunk_28_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0741.0831840, i64 noundef %i.aag) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit630

_ZNSt6vectorIfSaIfEED2Ev.exit630:                 ; preds = %bb.fa, %_ZNSt6vectorIfSaIfEED2Ev.exit628, %_ZN7testing15AssertionResultD2Ev.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !32 ; 8 uses
  %.not.i.i631 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i631, label %_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit630
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 4 uses
  %i.aak = load atomic i64, ptr %i.aaj acquire, align 8 ; 2 uses
  %i.aal = icmp eq i64 %i.aak, 4294967297
  %i.aam = trunc i64 %i.aak to i32                ; 2 uses
  br i1 %i.aal, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.aaj, align 8, !tbaa !27
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aai, i64 12
  store i32 0, ptr %i.aan, align 4, !tbaa !29
  %i.aao = load ptr, ptr %i.aai, align 8, !tbaa !24
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 8
  call void %i.aaq(ptr noundef nonnull align 8 dereferenceable(16) %i.aai) #22, !inline_history !571
  %i.aar = load ptr, ptr %i.aai, align 8, !tbaa !24
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8
  call void %i.aat(ptr noundef nonnull align 8 dereferenceable(16) %i.aai) #22, !inline_history !571
  br label %_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fd:                                            ; preds = %bb.fb
  %i.aau = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i632 = icmp eq i8 %i.aau, 0
  br i1 %.not.i.i.i632, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aav = add nsw i32 %i.aam, -1
  store i32 %i.aav, ptr %i.aaj, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.aaw = atomicrmw volatile add ptr %i.aaj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ff, %bb.fe
  %.0.i.i.i.i = phi i32 [ %i.aam, %bb.fe ], [ %i.aaw, %bb.ff ]
  %i.aax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aax, label %bb.fg, label %_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.fg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aai) #22
  br label %_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit630, %bb.fc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ee, %bb.es, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread
  %.pn312.pn.pn.pn.pn.pn.pn.pn1002 = phi { ptr, i32 } [ %i.rt, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.pn312.pn.pn.pn.pn.pn.pn948, %bb.es ], [ %.pn308.pn.pn, %bb.ee ]
  %.sroa.0659.0914989 = phi ptr [ %i.qw, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.sroa.0659.0916, %bb.es ], [ %.sroa.0659.0916, %bb.ee ] ; 2 uses
  %.sroa.12665.0918988 = phi ptr [ %i.qx, %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ], [ %.sroa.12665.0920, %bb.es ], [ %.sroa.12665.0920, %bb.ee ]
  %i.aay = ptrtoint ptr %.sroa.12665.0918988 to i64
  %i.aaz = ptrtoint ptr %.sroa.0659.0914989 to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0659.0914989, i64 noundef %i.aba) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634

_ZNSt6vectorIfSaIfEED2Ev.exit634:                 ; preds = %bb.df, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.cr
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn295.pn.pn, %bb.cr ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn1002, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.rs, %bb.df ] ; 2 uses
  %.not.i.i.i635 = icmp eq ptr %.sroa.0673.0, null
  br i1 %.not.i.i.i635, label %_ZNSt6vectorIfSaIfEED2Ev.exit636, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit634
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn1024 = phi { ptr, i32 } [ %.pn299.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit634 ]
  %i.abb = ptrtoint ptr %.sroa.0673.0 to i64
  %i.abc = sub i64 %.sroa.12679.0, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0673.0, i64 noundef %i.abc) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit636

_ZNSt6vectorIfSaIfEED2Ev.exit636:                 ; preds = %bb.fh, %_ZNSt6vectorIfSaIfEED2Ev.exit634
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn1024, %bb.fh ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit634 ] ; 2 uses
  %.not.i.i.i637 = icmp eq ptr %.sroa.0683.0901, null
  br i1 %.not.i.i.i637, label %_ZNSt6vectorIfSaIfEED2Ev.exit638, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit636
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1044 = phi { ptr, i32 } [ %i.ks, %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit636 ]
  %.sroa.0683.08961035 = phi ptr [ %i.jx, %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread ], [ %.sroa.0683.0901, %_ZNSt6vectorIfSaIfEED2Ev.exit636 ] ; 2 uses
  %.sroa.12689.09041034 = phi ptr [ %i.jy, %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread ], [ %.sroa.12689.0909, %_ZNSt6vectorIfSaIfEED2Ev.exit636 ]
  %i.abd = ptrtoint ptr %.sroa.12689.09041034 to i64
  %i.abe = ptrtoint ptr %.sroa.0683.08961035 to i64
  %i.abf = sub i64 %i.abd, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0683.08961035, i64 noundef %i.abf) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638

_ZNSt6vectorIfSaIfEED2Ev.exit638:                 ; preds = %bb.bv, %_ZNSt6vectorIfSaIfEED2Ev.exit636, %bb.fi, %bb.be
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit636 ], [ %i.kr, %bb.bv ], [ %i.hi, %bb.be ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1044, %bb.fi ] ; 2 uses
  %.not.i.i.i639 = icmp eq ptr %.sroa.0704.0, null
  br i1 %.not.i.i.i639, label %_ZNSt6vectorIfSaIfEED2Ev.exit640, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit638
  %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1060 = phi { ptr, i32 } [ %.pn287.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit638 ]
  %i.abg = ptrtoint ptr %.sroa.0704.0 to i64
  %i.abh = sub i64 %.sroa.23.0, %i.abg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0704.0, i64 noundef %i.abh) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640

_ZNSt6vectorIfSaIfEED2Ev.exit640:                 ; preds = %bb.ba, %_ZNSt6vectorIfSaIfEED2Ev.exit638, %bb.fj, %bb.aj
  %.pn328.pn = phi { ptr, i32 } [ %i.gj, %bb.ba ], [ %i.dm, %bb.aj ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit638 ], [ %.pn312.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1060, %bb.fj ] ; 2 uses
  %.not.i.i.i641 = icmp eq ptr %.sroa.0723.0, null
  br i1 %.not.i.i.i641, label %_ZNSt6vectorIfSaIfEED2Ev.exit642, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit640.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit640
  %.pn328.pn1076 = phi { ptr, i32 } [ %.pn282.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit640.thread ], [ %.pn328.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit640 ]
  %i.abi = ptrtoint ptr %.sroa.0723.0 to i64
  %i.abj = sub i64 %.sroa.11727.0, %i.abi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0723.0, i64 noundef %i.abj) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit642

_ZNSt6vectorIfSaIfEED2Ev.exit642:                 ; preds = %bb.fk, %_ZNSt6vectorIfSaIfEED2Ev.exit640
  %.pn328.pn.pn = phi { ptr, i32 } [ %.pn328.pn1076, %bb.fk ], [ %.pn328.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit640 ] ; 2 uses
  %.not.i.i.i643 = icmp eq ptr %.sroa.0731.0874, null
  br i1 %.not.i.i.i643, label %_ZNSt6vectorIfSaIfEED2Ev.exit644, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit642
  %.pn328.pn.pn1090 = phi { ptr, i32 } [ %i.co, %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ], [ %.pn328.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ]
  %.sroa.10744.08051088 = phi ptr [ %i.bz, %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ], [ %.sroa.10744.0815852, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ]
  %.sroa.0741.08211086 = phi ptr [ %i.by, %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ], [ %.sroa.0741.0831840, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ]
  %.sroa.0731.08641085 = phi ptr [ %i.ca, %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ], [ %.sroa.0731.0874, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ] ; 2 uses
  %.sroa.14.08791084 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit642.thread ], [ %.sroa.14.0889, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ]
  %i.abk = ptrtoint ptr %.sroa.14.08791084 to i64
  %i.abl = ptrtoint ptr %.sroa.0731.08641085 to i64
  %i.abm = sub i64 %i.abk, %i.abl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0731.08641085, i64 noundef %i.abm) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644

_ZNSt6vectorIfSaIfEED2Ev.exit644:                 ; preds = %bb.fl, %_ZNSt6vectorIfSaIfEED2Ev.exit642
  %.sroa.0741.0820 = phi ptr [ %.sroa.0741.08211086, %bb.fl ], [ %.sroa.0741.0831840, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ] ; 2 uses
  %.sroa.10744.0804 = phi ptr [ %.sroa.10744.08051088, %bb.fl ], [ %.sroa.10744.0815852, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ]
  %.pn328.pn.pn.pn = phi { ptr, i32 } [ %.pn328.pn.pn1090, %bb.fl ], [ %.pn328.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit642 ] ; 2 uses
  %.not.i.i.i645 = icmp eq ptr %.sroa.0741.0820, null
  br i1 %.not.i.i.i645, label %_ZNSt6vectorIfSaIfEED2Ev.exit646, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit644
  %.pn328.pn.pn.pn1098 = phi { ptr, i32 } [ %i.cn, %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread ], [ %.pn328.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit644 ]
  %.sroa.10744.08041097 = phi ptr [ %i.bz, %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread ], [ %.sroa.10744.0804, %_ZNSt6vectorIfSaIfEED2Ev.exit644 ]
  %.sroa.0741.08201096 = phi ptr [ %i.by, %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread ], [ %.sroa.0741.0820, %_ZNSt6vectorIfSaIfEED2Ev.exit644 ] ; 2 uses
  %i.abn = ptrtoint ptr %.sroa.10744.08041097 to i64
  %i.abo = ptrtoint ptr %.sroa.0741.08201096 to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0741.08201096, i64 noundef %i.abp) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit646

_ZNSt6vectorIfSaIfEED2Ev.exit646:                 ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEED2Ev.exit644, %bb.fm, %bb.ag, %bb.af
  %.pn328.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %.pn328.pn.pn.pn1098, %bb.fm ], [ %i.cl, %bb.ag ], [ %.pn328.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit644 ], [ %i.cm, %bb.ah ]
  call void @_ZNSt12__shared_ptrIN5faiss22IndexRowwiseMinMaxBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn328.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_MINMAX_PQ16_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI44testCppcontribSaDecode_D256_MINMAX_PQ16_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV44testCppcontribSaDecode_D256_MINMAX_PQ16_Test, i64 16), ptr %i.a, align 8, !tbaa !24
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z24testMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.5", align 8     ; 9 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::vector", align 16      ; 11 uses
  %6 = alloca %"class.std::tuple", align 16       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_Z8generatemm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.5") align 8 %3, i64 noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_Z12trainDatasetRKSt6vectorIfSaIfEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !90
  %.not.i.i.i.i.i16 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i16, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !91
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i, !prof !92

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i:  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.u = load ptr, ptr %5, align 16, !tbaa !36    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !93
  store <2 x ptr> %i.x, ptr %5, align 16, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !42
  store ptr %i.z, ptr %i.v, align 16, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #23
  br label %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit

_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit: ; preds = %bb.i, %_ZNSt10shared_ptrIN5faiss5IndexEEaSEOS2_.exit.i
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !32 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !29
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !94
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, !prof !92

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt5tupleIJRSt10shared_ptrIN5faiss5IndexEERSt6vectorIhSaIhEEEEaSIS3_S7_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOS_IJSC_SD_EE.exit
  %i.at = load ptr, ptr %6, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i
  %i.au = load ptr, ptr %i.y, align 16, !tbaa !42
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10shared_ptrIN5faiss5IndexEELb0EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ay = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.v, align 16, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.be, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !29
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i10 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.v ], [ %i.br, %bb.w ]
  %i.bs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bs, label %bb.x, label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #22
  br label %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bt = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.thread:                                          ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

bb.z:                                             ; preds = %_ZNSt11_Tuple_implILm0EJSt10shared_ptrIN5faiss5IndexEESt6vectorIhSaIhEEEED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %5, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIhSaIhEED2Ev.exit13, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.pre to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit13

_ZNSt6vectorIhSaIhEED2Ev.exit13:                  ; preds = %.thread, %bb.z, %bb.aa
  %.pn27 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %i.ca, %bb.z ], [ %i.ca, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN5faiss5IndexELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIfSaIfEED2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit15

_ZNSt6vectorIfSaIfEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit13, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_28
