inline.NumInlined: 1078
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
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
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !10
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !12
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
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

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

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
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI42IVFPQFastScan_SearchAndEncodeIVFPQ_L2_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI42IVFPQFastScan_SearchAndEncodeIVFPQ_L2_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV42IVFPQFastScan_SearchAndEncodeIVFPQ_L2_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #21
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 10 uses
  %3 = alloca %"struct.std::hash", align 1        ; 4 uses
  %4 = alloca %"struct.std::equal_to", align 1    ; 4 uses
  %5 = alloca %"class.std::allocator.16", align 1 ; 4 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 11 uses
  %7 = alloca %"struct.std::hash", align 1        ; 4 uses
  %8 = alloca %"struct.std::equal_to", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator.16", align 1 ; 4 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(256000) ptr @_Znwm(i64 noundef 256000) #23 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256000) %i.c, i8 0, i64 256000, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 1000, i64 noundef 64, ptr noundef nonnull %i.c, i64 noundef 1234)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef 64, ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss8IndexIVFE, i64 0) #20 ; 22 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 900, ptr noundef nonnull %i.c)
          to label %bb.f unwind label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit418

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit418

bb.f:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 900, ptr noundef nonnull %i.c)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  store i64 8, ptr %i.n, align 8, !tbaa !23
  %i.o = invoke noalias noundef nonnull dereferenceable(25600) ptr @_Znwm(i64 noundef 25600) #23
          to label %bb.h unwind label %bb.x       ; 8 uses

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25600) %i.o, i8 0, i64 25600, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 100, i64 noundef 64, ptr noundef nonnull %i.o, i64 noundef 5678)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #23
          to label %bb.j unwind label %bb.z       ; 5 uses

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4000) %i.p, i8 0, i64 4000, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #23
          to label %bb.k unwind label %bb.aa      ; 7 uses

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.q, i8 0, i64 8000, i1 false)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.o, i64 noundef 10, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef null)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 230400 ; 3 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #23
          to label %bb.m unwind label %bb.ac      ; 6 uses

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.v, i8 0, i64 800, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #23
          to label %bb.n unwind label %bb.ad      ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.w, i8 0, i64 400, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(36) %i.y, i64 noundef 100, ptr noundef nonnull %i.u, i64 noundef 1, ptr noundef nonnull %i.w, ptr noundef nonnull %i.v, ptr noundef null)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.ae = mul i64 %i.ad, 100                      ; 5 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.o
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #23
          to label %.noexc233 unwind label %bb.af ; 4 uses

.noexc233:                                        ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ag, align 1, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aj = add nsw i64 %i.ae, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 0, i64 %i.aj, i1 false)
  %i.ak = ptrtoint ptr %i.ah to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc233, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0480.0 = phi ptr [ %i.ag, %.noexc233 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.sroa.12.0 = phi i64 [ %i.ak, %.noexc233 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef %.sroa.0480.0, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !54 ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 384307168202282325
  br i1 %i.aq, label %bb.s, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc235 unwind label %bb.ah

.noexc235:                                        ; preds = %bb.s
  unreachable

_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.r
  %.not.i.i.i.i234 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i234, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ar = mul nuw nsw i64 %i.ap, 24               ; 3 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #23
          to label %_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_.exit unwind label %bb.ah ; 6 uses

_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_.exit:    ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ap ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.ar ; 3 uses
  %.pr = load i64, ptr %i.ao, align 8, !tbaa !54  ; 4 uses
  %i.au = icmp ugt i64 %.pr, 384307168202282325
  br i1 %i.au, label %bb.t, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.t:                                             ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc242 unwind label %bb.ai

.noexc242:                                        ; preds = %bb.t
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_.exit
  %.not.i.i.i.i237 = icmp eq i64 %.pr, 0
  br i1 %.not.i.i.i.i237, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i238

.lr.ph.preheader.i.i.i.i.i238:                    ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.av = mul nuw nsw i64 %.pr, 24                ; 3 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #23
          to label %.noexc243 unwind label %bb.ai ; 4 uses

.noexc243:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i238
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.pr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  %scevgep.i.i.i.i.i239 = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit:    ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc243, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.0470.0576613 = phi ptr [ %i.as, %.noexc243 ], [ %i.as, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 9 uses
  %.sink.i590611 = phi ptr [ %i.at, %.noexc243 ], [ %i.at, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i604609 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc243 ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0462.0 = phi ptr [ %i.aw, %.noexc243 ], [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 12 uses
  %.sink.i240 = phi i64 [ %i.ay, %.noexc243 ], [ 0, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ 0, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i241 = phi ptr [ %scevgep.i.i.i.i.i239, %.noexc243 ], [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  br label %bb.aj

bb.u:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %exitcond.not = icmp eq i64 %i.cv, 100
  br i1 %exitcond.not, label %bb.v, label %bb.aj, !llvm.loop !55

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %bb.aq unwind label %bb.aw     ; 13 uses

bb.w:                                             ; preds = %bb.f, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416

bb.x:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416

bb.y:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit413

bb.z:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit413

bb.aa:                                            ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit411

bb.ab:                                            ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit409

bb.ac:                                            ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit409

bb.ad:                                            ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit407

bb.ae:                                            ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit405

bb.af:                                            ; preds = %bb.q, %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit405

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401

bb.ah:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401

bb.ai:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i238, %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390

bb.aj:                                            ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit, %bb.u
  %.0180861 = phi i64 [ 0, %_ZNSt6vectorIS_IlSaIlEESaIS1_EEC2EmRKS2_.exit ], [ %i.cv, %bb.u ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0180861
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !57 ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0462.0, i64 %i.br ; 4 uses
  %i.bt = add nuw nsw i64 %.0180861, 900          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !58 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !58
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.al:                                            ; preds = %bb.aj
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !60 ; 4 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 6 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.am, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc245 unwind label %.loopexit.split-lp

.noexc245:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i244 = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i244)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #23
          to label %.noexc246 unwind label %.loopexit677 ; 4 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store i64 %i.bt, ptr %i.cl, align 8, !tbaa !57
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.an, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc246
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc246
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !60
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.co, ptr %i.bw, align 8, !tbaa !59
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.ak
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0470.0576613, i64 %i.br ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ct = mul i64 %i.cs, %.0180861
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0480.0, i64 %i.ct
  %i.cv = add nuw nsw i64 %.0180861, 1            ; 3 uses
  %i.cw = mul i64 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0480.0, i64 %i.cw
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !61 ; 2 uses
  %i.cz = ptrtoint ptr %i.cr to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr %i.dc, ptr noundef %i.cu, ptr noundef %i.cx)
          to label %bb.u unwind label %bb.ap, !llvm.loop !55

.loopexit677:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379

bb.ap:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379

bb.aq:                                            ; preds = %bb.v
  %i.de = load i64, ptr %i.n, align 8, !tbaa !23  ; 4 uses
  %i.df = trunc i64 %i.de to i32
  %sext = mul i64 %i.de, 429496729600             ; 4 uses
  %i.dg = ashr exact i64 %sext, 32                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 2305843009213693951
  br i1 %i.dh, label %bb.ar, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc250 unwind label %bb.ax

.noexc250:                                        ; preds = %bb.ar
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.aq
  %.not.i.i.i.i248 = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i248, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.di = ashr exact i64 %sext, 30                ; 2 uses
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #23
          to label %bb.at unwind label %bb.ax     ; 5 uses

bb.at:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg ; 2 uses
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !63
  %i.dl = getelementptr i8, ptr %i.dj, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.di, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.dm = ashr exact i64 %sext, 29                ; 2 uses
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #23
          to label %.noexc257 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit374.thread ; 4 uses

.noexc257:                                        ; preds = %bb.at
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dg
  store i64 0, ptr %i.dn, align 8, !tbaa !57
  %i.dp = getelementptr i8, ptr %i.dn, i64 8
  %.idx.i.i.i.i.i.i.i254 = add nsw i64 %i.dm, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i8 0, i64 %.idx.i.i.i.i.i.i.i254, i1 false), !tbaa !57
  %i.dq = ptrtoint ptr %i.do to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258:            ; preds = %.noexc257, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11450.0635 = phi ptr [ %i.dk, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0445.0625 = phi ptr [ %i.dj, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.0438.0 = phi ptr [ %i.dn, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.dq, %.noexc257 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %sext189 = shl i64 %i.de, 32
  %i.ds = ashr exact i64 %sext189, 32             ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE:bb.a
  %i.vn = fcmp ogt float %i.vi, %i.vm
  br i1 %i.vn, label %.lr.ph.i.i.us, label %bb.bj

.lr.ph.i.i.us:                                    ; preds = %bb.bf, %bb.bi
  %i.vo = phi i64 [ %i.wr, %bb.bi ], [ 3, %bb.bf ]
  %i.vp = phi i64 [ %i.wq, %bb.bi ], [ 2, %bb.bf ] ; 7 uses
  %.056.i.i.us = phi i64 [ %.1.i.i.us, %bb.bi ], [ 1, %bb.bf ] ; 6 uses
  %i.vq = icmp eq i64 %i.vp, 10
  br i1 %i.vq, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.us, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.us
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.vp
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !63 ; 4 uses
  %i.vt = getelementptr [4 x i8], ptr %i.ei, i64 %i.vp
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !63 ; 5 uses
  %i.vv = getelementptr [8 x i8], ptr %i.ej, i64 %i.vp
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !57 ; 3 uses
  %i.vx = fcmp olt float %i.vs, %i.vu
  br i1 %i.vx, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.us

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.us:         ; preds = %bb.bg
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.vp
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !57
  %i.wa = fcmp oeq float %i.vs, %i.vu
  %i.wb = icmp slt i64 %i.vz, %i.vw
  %i.wc = and i1 %i.wa, %i.wb
  br i1 %i.wc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us, label %bb.bh

bb.bh:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.us
  %i.wd = fcmp olt float %i.vi, %i.vu
  br i1 %i.wd, label %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, label %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us

_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us:       ; preds = %bb.bh
  %i.we = fcmp oeq float %i.vi, %i.vu
  %i.wf = icmp slt i64 %i.vl, %i.vw
  %i.wg = and i1 %i.we, %i.wf
  br i1 %i.wg, label %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, label %bb.bi

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.us: ; preds = %.lr.ph.i.i.us
  %.pre.i.i.us = load float, ptr %.phi.trans.insert.i.i275, align 4, !tbaa !63
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us:  ; preds = %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.us, %bb.bg
  %i.wh = phi float [ %.pre.i.i.us, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.us ], [ %i.vs, %bb.bg ], [ %i.vs, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.us ] ; 3 uses
  %i.wi = fcmp olt float %i.vi, %i.wh
  br i1 %i.wi, label %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, label %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us

_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us:       ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.vp
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !57 ; 2 uses
  %i.wl = fcmp oeq float %i.vi, %i.wh
  %i.wm = icmp slt i64 %i.vl, %i.wk
  %i.wn = and i1 %i.wl, %i.wm
  br i1 %i.wn, label %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, label %bb.bi

bb.bi:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us
  %.sink71.i.i.us = phi float [ %i.wh, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us ], [ %i.vu, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us ]
  %.sink.i.i.us = phi i64 [ %i.wk, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us ], [ %i.vw, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us ]
  %.1.i.i.us = phi i64 [ %i.vp, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us ], [ %i.vo, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us ] ; 4 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.056.i.i.us
  store float %.sink71.i.i.us, ptr %i.wo, align 4, !tbaa !63
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %.056.i.i.us
  store i64 %.sink.i.i.us, ptr %i.wp, align 8, !tbaa !57
  %i.wq = shl nuw nsw i64 %.1.i.i.us, 1           ; 2 uses
  %i.wr = or disjoint i64 %i.wq, 1
  %i.ws = icmp ugt i64 %.1.i.i.us, 5
  br i1 %i.ws, label %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, label %.lr.ph.i.i.us, !llvm.loop !66

_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us: ; preds = %bb.bi, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us, %bb.bh
  %.0.lcssa.i.i.us = phi i64 [ %.056.i.i.us, %bb.bh ], [ %.1.i.i.us, %bb.bi ], [ %.056.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit54.i.i.us ], [ %.056.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit55.i.i.us ], [ %.056.i.i.us, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.us ] ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.0.lcssa.i.i.us
  store float %i.vi, ptr %i.wt, align 4, !tbaa !63
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %.0.lcssa.i.i.us
  store i64 %i.vl, ptr %i.wu, align 8, !tbaa !57
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN5faiss19minheap_replace_topIfEEvmPT_PlS1_l.exit.us, %bb.bf
  %i.wv = add nuw i64 %.0183678.us, 1             ; 2 uses
  %exitcond694.not = icmp eq i64 %i.wv, %i.uz
  br i1 %exitcond694.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !67

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.thread:                                          ; preds = %bb.bd
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bo
  %.0183678 = phi i64 [ %i.yt, %bb.bo ], [ 0, %.lr.ph ] ; 3 uses
  %i.wy = load ptr, ptr %i.va, align 8, !tbaa !64
  %i.wz = load i64, ptr %i.ac, align 8, !tbaa !33
  %i.xa = mul i64 %i.wz, %.0183678
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xa
  %i.xc = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = invoke noundef float %i.xe(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef %i.xb)
          to label %bb.bk unwind label %.split    ; 6 uses

bb.bk:                                            ; preds = %.lr.ph.split
  %i.xg = load ptr, ptr %i.us, align 8, !tbaa !60
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %.0183678
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !57 ; 3 uses
  %i.xj = load float, ptr %i.ei, align 4, !tbaa !63
  %i.xk = fcmp olt float %i.xf, %i.xj
  br i1 %i.xk, label %.lr.ph.i.i276, label %bb.bo

.split:                                           ; preds = %.lr.ph.split
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.lr.ph.i.i276:                                    ; preds = %bb.bk, %bb.bn
  %i.xm = phi i64 [ %i.yp, %bb.bn ], [ 3, %bb.bk ]
  %i.xn = phi i64 [ %i.yo, %bb.bn ], [ 2, %bb.bk ] ; 7 uses
  %.056.i.i277 = phi i64 [ %.1.i.i280, %bb.bn ], [ 1, %bb.bk ] ; 6 uses
  %i.xo = icmp eq i64 %i.xn, 10
  br i1 %i.xo, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.bl

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i276
  %.pre.i.i282 = load float, ptr %.phi.trans.insert.i.i275, align 4, !tbaa !63
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i276
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.xn
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !63 ; 4 uses
  %i.xr = getelementptr [4 x i8], ptr %i.ei, i64 %i.xn
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !63 ; 5 uses
  %i.xt = getelementptr [8 x i8], ptr %i.ej, i64 %i.xn
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !57 ; 3 uses
  %i.xv = fcmp ogt float %i.xq, %i.xs
  br i1 %i.xv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.bl
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.xn
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !57
  %i.xy = fcmp oeq float %i.xq, %i.xs
  %i.xz = icmp sgt i64 %i.xx, %i.xu
  %i.ya = and i1 %i.xy, %i.xz
  br i1 %i.ya, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.bm

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.bl, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.yb = phi float [ %.pre.i.i282, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.xq, %bb.bl ], [ %i.xq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.yc = fcmp ogt float %i.xf, %i.yb
  br i1 %i.yc, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.xn
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !57 ; 2 uses
  %i.yf = fcmp oeq float %i.xf, %i.yb
  %i.yg = icmp sgt i64 %i.xi, %i.ye
  %i.yh = and i1 %i.yf, %i.yg
  br i1 %i.yh, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.bn

bb.bm:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.yi = fcmp ogt float %i.xf, %i.xs
  br i1 %i.yi, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i:          ; preds = %bb.bm
  %i.yj = fcmp oeq float %i.xf, %i.xs
  %i.yk = icmp sgt i64 %i.xi, %i.xu
  %i.yl = and i1 %i.yj, %i.yk
  br i1 %i.yl, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i
  %.sink71.i.i278 = phi float [ %i.yb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xs, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.sink.i.i279 = phi i64 [ %i.ye, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.1.i.i280 = phi i64 [ %i.xn, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ] ; 4 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.056.i.i277
  store float %.sink71.i.i278, ptr %i.ym, align 4, !tbaa !63
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %.056.i.i277
  store i64 %.sink.i.i279, ptr %i.yn, align 8, !tbaa !57
  %i.yo = shl nuw nsw i64 %.1.i.i280, 1           ; 2 uses
  %i.yp = or disjoint i64 %i.yo, 1
  %i.yq = icmp ugt i64 %.1.i.i280, 5
  br i1 %i.yq, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %.lr.ph.i.i276, !llvm.loop !68

_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i, %bb.bm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %bb.bn
  %.0.lcssa.i.i281 = phi i64 [ %.056.i.i277, %bb.bm ], [ %.1.i.i280, %bb.bn ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ] ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.0.lcssa.i.i281
  store float %i.xf, ptr %i.yr, align 4, !tbaa !63
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %.0.lcssa.i.i281
  store i64 %i.xi, ptr %i.ys, align 8, !tbaa !57
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, %bb.bk
  %i.yt = add nuw i64 %.0183678, 1                ; 2 uses
  %exitcond692.not = icmp eq i64 %i.yt, %i.uz
  br i1 %exitcond692.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !67

.loopexit:                                        ; preds = %bb.bo, %bb.bj, %bb.be, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond696.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond696.not, label %._crit_edge, label %bb.bc, !llvm.loop !69

.preheader856:                                    ; preds = %._crit_edge, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %.041.i.i = phi i64 [ %i.aap, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 3 uses
  %.03740.i.i = phi i64 [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 4 uses
  %i.yu = load float, ptr %i.ei, align 4, !tbaa !63
  %i.yv = load i64, ptr %i.ej, align 8, !tbaa !57 ; 2 uses
  %i.yw = sub nuw nsw i64 10, %.041.i.i           ; 4 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.yw ; 3 uses
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !63 ; 5 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.yw ; 2 uses
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !57 ; 3 uses
  %i.zb = icmp samesign ugt i64 %.041.i.i, 8
  br i1 %i.zb, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i284

.lr.ph.i.i.i284:                                  ; preds = %.preheader856, %bb.br
  %i.zc = phi i64 [ %i.aaf, %bb.br ], [ 3, %.preheader856 ]
  %i.zd = phi i64 [ %i.aae, %bb.br ], [ 2, %.preheader856 ] ; 7 uses
  %.062.i.i.i = phi i64 [ %.1.i.i.i, %bb.br ], [ 1, %.preheader856 ] ; 6 uses
  %i.ze = icmp eq i64 %i.zd, %i.yw
  br i1 %i.ze, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.bp

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i284
  %.pre.i.i.i = load float, ptr %i.yx, align 4, !tbaa !63
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289

bb.bp:                                            ; preds = %.lr.ph.i.i.i284
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.zd
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !63 ; 4 uses
  %i.zh = getelementptr [4 x i8], ptr %i.ei, i64 %i.zd
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !63 ; 5 uses
  %i.zj = getelementptr [8 x i8], ptr %i.ej, i64 %i.zd
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !57 ; 3 uses
  %i.zl = fcmp olt float %i.zg, %i.zi
  br i1 %i.zl, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285:       ; preds = %bb.bp
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.zd
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !57
  %i.zo = fcmp oeq float %i.zg, %i.zi
  %i.zp = icmp slt i64 %i.zn, %i.zk
  %i.zq = and i1 %i.zo, %i.zp
  br i1 %i.zq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289, label %bb.bq

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285, %bb.bp, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.zr = phi float [ %.pre.i.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.zg, %bb.bp ], [ %i.zg, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285 ] ; 3 uses
  %i.zs = fcmp olt float %i.yy, %i.zr
  br i1 %i.zs, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.zd
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !57 ; 2 uses
  %i.zv = fcmp oeq float %i.yy, %i.zr
  %i.zw = icmp slt i64 %i.za, %i.zu
  %i.zx = and i1 %i.zv, %i.zw
  br i1 %i.zx, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.br

bb.bq:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285
  %i.zy = fcmp olt float %i.yy, %i.zi
  br i1 %i.zy, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.bq
  %i.zz = fcmp oeq float %i.yy, %i.zi
  %i.aaa = icmp slt i64 %i.za, %i.zk
  %i.aab = and i1 %i.zz, %i.aaa
  br i1 %i.aab, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i = phi float [ %i.zr, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zi, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.zu, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zk, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.zd, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zc, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.062.i.i.i
  store float %.sink79.i.i.i, ptr %i.aac, align 4, !tbaa !63
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %.062.i.i.i
  store i64 %.sink.i.i.i, ptr %i.aad, align 8, !tbaa !57
  %i.aae = shl i64 %.1.i.i.i, 1                   ; 3 uses
  %i.aaf = or disjoint i64 %i.aae, 1
  %i.aag = icmp ugt i64 %i.aae, %i.yw
  br i1 %i.aag, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i284, !llvm.loop !70

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.br, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %bb.bq, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289
  %.0.lcssa.ph.i.i.i = phi i64 [ %.1.i.i.i, %bb.br ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i289 ], [ %.062.i.i.i, %bb.bq ]
  %.pre68.i.i.i = load float, ptr %i.yx, align 4, !tbaa !63
  %.pre69.i.i.i = load i64, ptr %i.yz, align 8, !tbaa !57
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %.preheader856
  %i.aah = phi i64 [ %i.za, %.preheader856 ], [ %.pre69.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.aai = phi float [ %i.yy, %.preheader856 ], [ %.pre68.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i286 = phi i64 [ 1, %.preheader856 ], [ %.0.lcssa.ph.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.0.lcssa.i.i.i286
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !63
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %.0.lcssa.i.i.i286
  store i64 %i.aah, ptr %i.aak, align 8, !tbaa !57
  %i.aal = sub i64 9, %.03740.i.i                 ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aal
  store float %i.yu, ptr %i.aam, align 4, !tbaa !63
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.aal
  store i64 %i.yv, ptr %i.aan, align 8, !tbaa !57
  %.not.i.i287 = icmp ne i64 %i.yv, -1
  %i.aao = zext i1 %.not.i.i287 to i64            ; 3 uses
  %spec.select.i.i = add i64 %.03740.i.i, %i.aao  ; 8 uses
  %i.aap = add nuw nsw i64 %.041.i.i, 1           ; 2 uses
  %exitcond.not.i.i288 = icmp eq i64 %i.aap, 10
  br i1 %exitcond.not.i.i288, label %._crit_edge.i.i, label %.preheader856, !llvm.loop !71

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.aar = sub i64 0, %spec.select.i.i            ; 2 uses
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aaq, i64 %i.aar
  %i.aat = shl i64 %spec.select.i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr nonnull align 4 %i.aas, i64 %i.aat, i1 false)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aau, i64 %i.aar
  %i.aaw = shl i64 %spec.select.i.i, 3            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.aav, i64 %i.aaw, i1 false)
  %i.aax = icmp ult i64 %spec.select.i.i, 10
  br i1 %i.aax, label %.lr.ph44.i.i.preheader, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %scevgep699 = getelementptr i8, ptr %scevgep698, i64 %i.aaw
  %i.aay = add i64 %.03740.i.i, %i.aao
  %i.aaz = shl i64 %i.aay, 3
  %i.aba = sub i64 80, %i.aaz
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep699, i8 -1, i64 %i.aba, i1 false), !tbaa !57
  %i.abb = add i64 %.03740.i.i, %i.aao
  %i.abc = sub i64 10, %i.abb                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.abc, 8
  br i1 %min.iters.check, label %.lr.ph44.i.i.preheader874, label %vector.body

vector.body:                                      ; preds = %.lr.ph44.i.i.preheader
  %n.vec = and i64 %i.abc, -8                     ; 2 uses
  %i.abd = add i64 %spec.select.i.i, %n.vec
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %spec.select.i.i ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.abe, align 4, !tbaa !63
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.abf, align 4, !tbaa !63
  %cmp.n = icmp eq i64 %i.abc, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i.preheader874

.lr.ph44.i.i.preheader874:                        ; preds = %.lr.ph44.i.i.preheader, %vector.body
  %.242.i.i.ph = phi i64 [ %spec.select.i.i, %.lr.ph44.i.i.preheader ], [ %i.abd, %vector.body ]
  br label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.preheader874, %.lr.ph44.i.i
  %.242.i.i = phi i64 [ %i.abh, %.lr.ph44.i.i ], [ %.242.i.i.ph, %.lr.ph44.i.i.preheader874 ] ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.242.i.i
  store float f0xFF7FFFFF, ptr %i.abg, align 4, !tbaa !63
  %i.abh = add nuw i64 %.242.i.i, 1               ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.abh, 10
  br i1 %exitcond47.not.i.i, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i, !llvm.loop !72

.preheader858:                                    ; preds = %._crit_edge, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %.041.i.i291 = phi i64 [ %i.add, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 3 uses
  %.03740.i.i292 = phi i64 [ %spec.select.i.i304, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 4 uses
  %i.abi = load float, ptr %i.ei, align 4, !tbaa !63
  %i.abj = load i64, ptr %i.ej, align 8, !tbaa !57 ; 2 uses
  %i.abk = sub nuw nsw i64 10, %.041.i.i291       ; 4 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.abk ; 3 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !63 ; 5 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.abk ; 2 uses
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !57 ; 3 uses
  %i.abp = icmp samesign ugt i64 %.041.i.i291, 8
  br i1 %i.abp, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %.preheader858, %bb.bu
  %i.abq = phi i64 [ %i.act, %bb.bu ], [ 3, %.preheader858 ]
  %i.abr = phi i64 [ %i.acs, %bb.bu ], [ 2, %.preheader858 ] ; 7 uses
  %.062.i.i.i294 = phi i64 [ %.1.i.i.i298, %bb.bu ], [ 1, %.preheader858 ] ; 6 uses
  %i.abs = icmp eq i64 %i.abr, %i.abk
  br i1 %i.abs, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.bs

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i293
  %.pre.i.i.i311 = load float, ptr %i.abl, align 4, !tbaa !63
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310

bb.bs:                                            ; preds = %.lr.ph.i.i.i293
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.abr
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !63 ; 4 uses
  %i.abv = getelementptr [4 x i8], ptr %i.ei, i64 %i.abr
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !63 ; 5 uses
  %i.abx = getelementptr [8 x i8], ptr %i.ej, i64 %i.abr
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !57 ; 3 uses
  %i.abz = fcmp ogt float %i.abu, %i.abw
  br i1 %i.abz, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i295

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i295:       ; preds = %bb.bs
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.abr
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !57
  %i.acc = fcmp oeq float %i.abu, %i.abw
  %i.acd = icmp sgt i64 %i.acb, %i.aby
  %i.ace = and i1 %i.acc, %i.acd
  br i1 %i.ace, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310, label %bb.bt

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i295, %bb.bs, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.acf = phi float [ %.pre.i.i.i311, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.abu, %bb.bs ], [ %i.abu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i295 ] ; 3 uses
  %i.acg = fcmp ogt float %i.abm, %i.acf
  br i1 %i.acg, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.abr
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !57 ; 2 uses
  %i.acj = fcmp oeq float %i.abm, %i.acf
  %i.ack = icmp sgt i64 %i.abo, %i.aci
  %i.acl = and i1 %i.acj, %i.ack
  br i1 %i.acl, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bu

bb.bt:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i295
  %i.acm = fcmp ogt float %i.abm, %i.abw
  br i1 %i.acm, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.bt
  %i.acn = fcmp oeq float %i.abm, %i.abw
  %i.aco = icmp sgt i64 %i.abo, %i.aby
  %i.acp = and i1 %i.acn, %i.aco
  br i1 %i.acp, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i296 = phi float [ %i.acf, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i297 = phi i64 [ %i.aci, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.aby, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i298 = phi i64 [ %i.abr, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.062.i.i.i294
  store float %.sink79.i.i.i296, ptr %i.acq, align 4, !tbaa !63
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %.062.i.i.i294
  store i64 %.sink.i.i.i297, ptr %i.acr, align 8, !tbaa !57
  %i.acs = shl i64 %.1.i.i.i298, 1                ; 3 uses
  %i.act = or disjoint i64 %i.acs, 1
  %i.acu = icmp ugt i64 %i.acs, %i.abk
  br i1 %i.acu, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i293, !llvm.loop !75

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.bu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %bb.bt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310
  %.0.lcssa.ph.i.i.i299 = phi i64 [ %.1.i.i.i298, %bb.bu ], [ %.062.i.i.i294, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i294, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i294, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i310 ], [ %.062.i.i.i294, %bb.bt ]
  %.pre68.i.i.i300 = load float, ptr %i.abl, align 4, !tbaa !63
  %.pre69.i.i.i301 = load i64, ptr %i.abn, align 8, !tbaa !57
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %.preheader858
  %i.acv = phi i64 [ %i.abo, %.preheader858 ], [ %.pre69.i.i.i301, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.acw = phi float [ %i.abm, %.preheader858 ], [ %.pre68.i.i.i300, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i302 = phi i64 [ 1, %.preheader858 ], [ %.0.lcssa.ph.i.i.i299, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.0.lcssa.i.i.i302
  store float %i.acw, ptr %i.acx, align 4, !tbaa !63
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %.0.lcssa.i.i.i302
  store i64 %i.acv, ptr %i.acy, align 8, !tbaa !57
  %i.acz = sub i64 9, %.03740.i.i292              ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.acz
  store float %i.abi, ptr %i.ada, align 4, !tbaa !63
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.acz
  store i64 %i.abj, ptr %i.adb, align 8, !tbaa !57
  %.not.i.i303 = icmp ne i64 %i.abj, -1
  %i.adc = zext i1 %.not.i.i303 to i64            ; 3 uses
  %spec.select.i.i304 = add i64 %.03740.i.i292, %i.adc ; 8 uses
  %i.add = add nuw nsw i64 %.041.i.i291, 1        ; 2 uses
  %exitcond.not.i.i305 = icmp eq i64 %i.add, 10
  br i1 %exitcond.not.i.i305, label %._crit_edge.i.i306, label %.preheader858, !llvm.loop !76

._crit_edge.i.i306:                               ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.adf = sub i64 0, %spec.select.i.i304         ; 2 uses
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.ade, i64 %i.adf
  %i.adh = shl i64 %spec.select.i.i304, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr nonnull align 4 %i.adg, i64 %i.adh, i1 false)
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.adj = getelementptr inbounds [8 x i8], ptr %i.adi, i64 %i.adf
  %i.adk = shl i64 %spec.select.i.i304, 3         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.adj, i64 %i.adk, i1 false)
  %i.adl = icmp ult i64 %spec.select.i.i304, 10
  br i1 %i.adl, label %.lr.ph44.i.i307.preheader, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i307.preheader:                        ; preds = %._crit_edge.i.i306
  %scevgep697 = getelementptr i8, ptr %scevgep698, i64 %i.adk
  %i.adm = add i64 %.03740.i.i292, %i.adc
  %i.adn = shl i64 %i.adm, 3
  %i.ado = sub i64 80, %i.adn
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep697, i8 -1, i64 %i.ado, i1 false), !tbaa !57
  %i.adp = add i64 %.03740.i.i292, %i.adc
  %i.adq = sub i64 10, %i.adp                     ; 3 uses
  %min.iters.check863 = icmp ult i64 %i.adq, 8
  br i1 %min.iters.check863, label %.lr.ph44.i.i307.preheader875, label %vector.body866

vector.body866:                                   ; preds = %.lr.ph44.i.i307.preheader
  %n.vec865 = and i64 %i.adq, -8                  ; 2 uses
  %i.adr = add i64 %spec.select.i.i304, %n.vec865
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %spec.select.i.i304 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ads, align 4, !tbaa !63
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.adt, align 4, !tbaa !63
  %cmp.n870 = icmp eq i64 %i.adq, %n.vec865
  br i1 %cmp.n870, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i307.preheader875

.lr.ph44.i.i307.preheader875:                     ; preds = %.lr.ph44.i.i307.preheader, %vector.body866
  %.242.i.i308.ph = phi i64 [ %spec.select.i.i304, %.lr.ph44.i.i307.preheader ], [ %i.adr, %vector.body866 ]
  br label %.lr.ph44.i.i307

.lr.ph44.i.i307:                                  ; preds = %.lr.ph44.i.i307.preheader875, %.lr.ph44.i.i307
  %.242.i.i308 = phi i64 [ %i.adv, %.lr.ph44.i.i307 ], [ %.242.i.i308.ph, %.lr.ph44.i.i307.preheader875 ] ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.242.i.i308
  store float f0x7F7FFFFF, ptr %i.adu, align 4, !tbaa !63
  %i.adv = add nuw i64 %.242.i.i308, 1            ; 2 uses
  %exitcond47.not.i.i309 = icmp eq i64 %i.adv, 10
  br i1 %exitcond47.not.i.i309, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i307, !llvm.loop !77

_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i307, %.lr.ph44.i.i, %vector.body866, %vector.body, %._crit_edge.i.i306, %._crit_edge.i.i
  %i.adw = add nuw nsw i64 %.0182681, 1           ; 2 uses
  %exitcond700.not = icmp eq i64 %i.adw, 100
  br i1 %exitcond700.not, label %bb.av, label %bb.ba, !llvm.loop !78

bb.bv:                                            ; preds = %bb.av
  %i.adx = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #23
          to label %bb.bw unwind label %bb.cc     ; 4 uses

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4000) %i.adx, i8 0, i64 4000, i1 false)
  %i.ady = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #23
          to label %bb.bx unwind label %bb.cd     ; 5 uses

bb.bx:                                            ; preds = %bb.bw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.ady, i8 0, i64 8000, i1 false)
  %i.adz = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  %i.aeb = load ptr, ptr %i.aea, align 8
  invoke void %i.aeb(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.o, i64 noundef 10, ptr noundef nonnull %i.adx, ptr noundef nonnull %i.ady, ptr noundef null)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !79
  %i.aec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aee = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.cf

bb.bz:                                            ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit331
  %i.aej = load i32, ptr %i.a, align 4, !tbaa !79
  %i.aek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.aej, i32 noundef 1000) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 5, ptr %i.b, align 4, !tbaa !79
  %i.ael = load i32, ptr %i.a, align 4, !tbaa !79, !noalias !80
  %.not.i = icmp sgt i32 %i.ael, 5
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.17)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cc:                                            ; preds = %bb.bv
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cd:                                            ; preds = %bb.bw
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit372

bb.ce:                                            ; preds = %bb.bx
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit370

bb.cf:                                            ; preds = %bb.by, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit331
  %indvars.iv701 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next702, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit331 ] ; 2 uses
  %i.aep = mul nuw nsw i64 %indvars.iv701, 10     ; 2 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aep ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %i.aeq, ptr noundef nonnull %i.aer, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit unwind label %bb.ck

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit: ; preds = %bb.cf
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aep ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.aes, ptr noundef nonnull %i.aet, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit324 unwind label %bb.cl

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit324: ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aeu = load ptr, ptr %i.aec, align 8, !tbaa !83 ; 3 uses
  %i.aev = icmp eq ptr %i.aeu, null
  br i1 %i.aev, label %._crit_edge685, label %.lr.ph684

.lr.ph684:                                        ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit324
  %i.aew = load i64, ptr %i.aed, align 8, !tbaa !85
  %.not.not.i.i = icmp eq i64 %i.aew, 0
  %i.aex = load i64, ptr %i.aee, align 8          ; 2 uses
  %i.aey = load ptr, ptr %6, align 8
  br i1 %.not.not.i.i, label %.lr.ph684.split.us, label %.lr.ph684.split

.lr.ph684.split.us:                               ; preds = %.lr.ph684, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us
  %.0142683.us = phi i32 [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ 0, %.lr.ph684 ]
  %.sroa.0422.0682.us = phi ptr [ %i.afg, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %i.aeu, %.lr.ph684 ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0422.0682.us, i64 8
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !57
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %.lr.ph684.split.us
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.aef, %.lr.ph684.split.us ], [ %.sroa.06.0.i.i.us, %bb.ch ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !86 ; 3 uses
  %i.afb = icmp eq ptr %.sroa.06.0.i.i.us, null   ; 2 uses
  br i1 %i.afb, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !57
  %i.afe = icmp eq i64 %i.afa, %i.afd
  br i1 %i.afe, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.cg, !llvm.loop !87

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us: ; preds = %bb.ch, %bb.cg
  %i.aff = zext i1 %i.afb to i32
  %spec.select.us = add nuw nsw i32 %.0142683.us, %i.aff ; 2 uses
  %i.afg = load ptr, ptr %.sroa.0422.0682.us, align 8, !tbaa !86 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, null
  br i1 %i.afh, label %._crit_edge685, label %.lr.ph684.split.us

._crit_edge685:                                   ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit324
  %.0142.lcssa = phi i32 [ 0, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit324 ], [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %spec.select, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit ]
  %i.afi = load i32, ptr %i.a, align 4, !tbaa !79
  %i.afj = add nsw i32 %i.afi, %.0142.lcssa
  store i32 %i.afj, ptr %i.a, align 4, !tbaa !79
  %i.afk = load ptr, ptr %i.aef, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.afk, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge685, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.afl, %.lr.ph.i.i.i.i ], [ %i.afk, %._crit_edge685 ] ; 2 uses
  %i.afl = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i325 = icmp eq ptr %i.afl, null
  br i1 %.not.i.i.i.i325, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge685
  %i.afm = load ptr, ptr %6, align 8, !tbaa !89
  %i.afn = load i64, ptr %i.aee, align 8, !tbaa !90
  %i.afo = shl i64 %i.afn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afm, i8 0, i64 %i.afo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aef, i8 0, i64 16, i1 false)
  %i.afp = load ptr, ptr %6, align 8, !tbaa !89   ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.aeg
  br i1 %i.afq, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.afr = load i64, ptr %i.aee, align 8, !tbaa !90
  %i.afs = shl i64 %i.afr, 3
  call void @_ZdlPvm(ptr noundef %i.afp, i64 noundef %i.afs) #21
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aft = load ptr, ptr %i.aec, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i326 = icmp eq ptr %i.aft, null
  br i1 %.not5.i.i.i.i326, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i330, label %.lr.ph.i.i.i.i327

.lr.ph.i.i.i.i327:                                ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, %.lr.ph.i.i.i.i327
  %.06.i.i.i.i328 = phi ptr [ %i.afu, %.lr.ph.i.i.i.i327 ], [ %i.aft, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit ] ; 2 uses
  %i.afu = load ptr, ptr %.06.i.i.i.i328, align 8, !tbaa !86 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE:bb.a
  %i.air = sub i64 %i.aip, %i.aiq
  call void @_ZdlPvm(ptr noundef nonnull %i.aim, i64 noundef %i.air) #21
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.dg, %.lr.ph.i.i.i349
  %i.ais = getelementptr inbounds nuw i8, ptr %.05.i.i.i350, i64 24 ; 2 uses
  %.not.i.i.i352 = icmp eq ptr %i.ais, %.0.lcssa.i.i.i.i.i604609
  br i1 %.not.i.i.i352, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i349, !llvm.loop !115

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit
  %.not.i.i1.i354 = icmp eq ptr %.sroa.0470.0576613, null
  br i1 %.not.i.i1.i354, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ait = ptrtoint ptr %.sink.i590611 to i64
  %i.aiu = ptrtoint ptr %.sroa.0470.0576613 to i64
  %i.aiv = sub i64 %i.ait, %i.aiu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0470.0576613, i64 noundef %i.aiv) #21
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.dh
  %.not.i.i.i355 = icmp eq ptr %.sroa.0480.0, null
  br i1 %.not.i.i.i355, label %_ZNSt6vectorIfSaIfEED2Ev.exit368, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit
  %i.aiw = ptrtoint ptr %.sroa.0480.0 to i64
  %i.aix = sub i64 %.sroa.12.0, %i.aiw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.0, i64 noundef %i.aix) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit368

_ZNSt6vectorIfSaIfEED2Ev.exit368:                 ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, %bb.di
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 400) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 800) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 8000) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 4000) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 25600) #21
  %i.aiy = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8
  call void %i.aja(ptr noundef nonnull align 8 dereferenceable(273) %i.e) #20, !inline_history !116
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 256000) #21
  ret void

bb.dj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit338, %bb.cq
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit338 ], [ %i.agy, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.cp
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %bb.cp ], [ %.pn.pn.pn, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit370

_ZNSt6vectorIlSaIlEED2Ev.exit370:                 ; preds = %bb.dk, %bb.ce
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %bb.dk ], [ %i.aeo, %bb.ce ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef 8000) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit372

_ZNSt6vectorIfSaIfEED2Ev.exit372:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit370, %bb.cd
  %.pn193.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit370 ], [ %i.aen, %bb.cd ]
  call void @_ZdlPvm(ptr noundef nonnull %i.adx, i64 noundef 4000) #21
  br label %bb.dl

bb.dl:                                            ; preds = %.split, %.split.us, %bb.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit372, %bb.az, %bb.bb, %bb.ay
  %.pn200.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.ay ], [ %i.ef, %bb.az ], [ %i.aem, %bb.cc ], [ %.pn193.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit372 ], [ %i.ui, %bb.bb ], [ %i.xl, %.split ], [ %i.ww, %.split.us ] ; 2 uses
  %.not.i.i.i373 = icmp eq ptr %.sroa.0438.0, null
  br i1 %.not.i.i.i373, label %_ZNSt6vectorIlSaIlEED2Ev.exit374, label %bb.dm

bb.dm:                                            ; preds = %.thread, %bb.dl
  %.pn200.pn.pn.pn.pn.pn654 = phi { ptr, i32 } [ %i.wx, %.thread ], [ %.pn200.pn.pn.pn.pn.pn, %bb.dl ]
  %i.ajb = ptrtoint ptr %.sroa.0438.0 to i64
  %i.ajc = sub i64 %.sroa.11.0, %i.ajb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.0, i64 noundef %i.ajc) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit374

_ZNSt6vectorIlSaIlEED2Ev.exit374:                 ; preds = %bb.dm, %bb.dl
  %.pn200.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn200.pn.pn.pn.pn.pn654, %bb.dm ], [ %.pn200.pn.pn.pn.pn.pn, %bb.dl ] ; 2 uses
  %.not.i.i.i375 = icmp eq ptr %.sroa.0445.0625, null
  br i1 %.not.i.i.i375, label %_ZNSt6vectorIfSaIfEED2Ev.exit376, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit374.thread, %_ZNSt6vectorIlSaIlEED2Ev.exit374
  %.pn200.pn.pn.pn.pn.pn.pn671 = phi { ptr, i32 } [ %i.ed, %_ZNSt6vectorIlSaIlEED2Ev.exit374.thread ], [ %.pn200.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit374 ]
  %.sroa.0445.0617664 = phi ptr [ %i.dj, %_ZNSt6vectorIlSaIlEED2Ev.exit374.thread ], [ %.sroa.0445.0625, %_ZNSt6vectorIlSaIlEED2Ev.exit374 ] ; 2 uses
  %.sroa.11450.0627663 = phi ptr [ %i.dk, %_ZNSt6vectorIlSaIlEED2Ev.exit374.thread ], [ %.sroa.11450.0635, %_ZNSt6vectorIlSaIlEED2Ev.exit374 ]
  %i.ajd = ptrtoint ptr %.sroa.11450.0627663 to i64
  %i.aje = ptrtoint ptr %.sroa.0445.0617664 to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0445.0617664, i64 noundef %i.ajf) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit376

_ZNSt6vectorIfSaIfEED2Ev.exit376:                 ; preds = %bb.dn, %_ZNSt6vectorIlSaIlEED2Ev.exit374, %bb.ax
  %.pn200.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.ax ], [ %.pn200.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit374 ], [ %.pn200.pn.pn.pn.pn.pn.pn671, %bb.dn ] ; 2 uses
  %.not.i377 = icmp eq ptr %i.bc, null
  br i1 %.not.i377, label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379, label %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i378

_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i378: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit376
  %i.ajg = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 64
  %i.aji = load ptr, ptr %i.ajh, align 8
  call void %i.aji(ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #20, !inline_history !112
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379

_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379: ; preds = %.loopexit677, %.loopexit.split-lp, %bb.aw, %_ZNSt6vectorIfSaIfEED2Ev.exit376, %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i378, %bb.ap
  %.pn210.pn = phi { ptr, i32 } [ %.pn200.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN5faiss19InvertedListScannerEEclEPS1_.exit.i378 ], [ %i.dd, %bb.ap ], [ %i.eb, %bb.aw ], [ %.pn200.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit376 ], [ %lpad.loopexit, %.loopexit677 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not4.i.i.i380 = icmp eq ptr %.sroa.0462.0, %.0.lcssa.i.i.i.i.i241
  br i1 %.not4.i.i.i380, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388, label %.lr.ph.i.i.i381

.lr.ph.i.i.i381:                                  ; preds = %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384
  %.05.i.i.i382 = phi ptr [ %i.ajp, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384 ], [ %.sroa.0462.0, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379 ] ; 3 uses
  %i.ajj = load ptr, ptr %.05.i.i.i382, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i.i.i383 = icmp eq ptr %i.ajj, null
  br i1 %.not.i.i.i.i.i.i.i.i383, label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i.i.i381
  %i.ajk = getelementptr inbounds nuw i8, ptr %.05.i.i.i382, i64 16
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !59
  %i.ajm = ptrtoint ptr %i.ajl to i64
  %i.ajn = ptrtoint ptr %i.ajj to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  call void @_ZdlPvm(ptr noundef nonnull %i.ajj, i64 noundef %i.ajo) #21
  br label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384

_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384: ; preds = %bb.do, %.lr.ph.i.i.i381
  %i.ajp = getelementptr inbounds nuw i8, ptr %.05.i.i.i382, i64 24 ; 2 uses
  %.not.i.i.i385 = icmp eq ptr %i.ajp, %.0.lcssa.i.i.i.i.i241
  br i1 %.not.i.i.i385, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388, label %.lr.ph.i.i.i381, !llvm.loop !113

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388: ; preds = %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i384, %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit379
  %.not.i.i1.i389 = icmp eq ptr %.sroa.0462.0, null
  br i1 %.not.i.i1.i389, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390, label %bb.dp

bb.dp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388
  %i.ajq = ptrtoint ptr %.sroa.0462.0 to i64
  %i.ajr = sub i64 %.sink.i240, %i.ajq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0462.0, i64 noundef %i.ajr) #21
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390

_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390:      ; preds = %bb.dp, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388, %bb.ai
  %.0.lcssa.i.i.i.i.i591 = phi ptr [ %scevgep.i.i.i.i.i, %bb.ai ], [ %.0.lcssa.i.i.i.i.i604609, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388 ], [ %.0.lcssa.i.i.i.i.i604609, %bb.dp ] ; 2 uses
  %.sink.i577 = phi ptr [ %i.at, %bb.ai ], [ %.sink.i590611, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388 ], [ %.sink.i590611, %bb.dp ]
  %.sroa.0470.0563 = phi ptr [ %i.as, %bb.ai ], [ %.sroa.0470.0576613, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388 ], [ %.sroa.0470.0576613, %bb.dp ] ; 5 uses
  %.pn210.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.ai ], [ %.pn210.pn, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i388 ], [ %.pn210.pn, %bb.dp ] ; 2 uses
  %.not4.i.i.i391 = icmp eq ptr %.sroa.0470.0563, %.0.lcssa.i.i.i.i.i591
  br i1 %.not4.i.i.i391, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399, label %.lr.ph.i.i.i392

.lr.ph.i.i.i392:                                  ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395
  %.05.i.i.i393 = phi ptr [ %i.ajy, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395 ], [ %.sroa.0470.0563, %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390 ] ; 3 uses
  %i.ajs = load ptr, ptr %.05.i.i.i393, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i.i394 = icmp eq ptr %i.ajs, null
  br i1 %.not.i.i.i.i.i.i.i.i394, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i.i392
  %i.ajt = getelementptr inbounds nuw i8, ptr %.05.i.i.i393, i64 16
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !114
  %i.ajv = ptrtoint ptr %i.aju to i64
  %i.ajw = ptrtoint ptr %i.ajs to i64
  %i.ajx = sub i64 %i.ajv, %i.ajw
  call void @_ZdlPvm(ptr noundef nonnull %i.ajs, i64 noundef %i.ajx) #21
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395: ; preds = %bb.dq, %.lr.ph.i.i.i392
  %i.ajy = getelementptr inbounds nuw i8, ptr %.05.i.i.i393, i64 24 ; 2 uses
  %.not.i.i.i396 = icmp eq ptr %i.ajy, %.0.lcssa.i.i.i.i.i591
  br i1 %.not.i.i.i396, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399, label %.lr.ph.i.i.i392, !llvm.loop !115

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i395, %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit390
  %.not.i.i1.i400 = icmp eq ptr %.sroa.0470.0563, null
  br i1 %.not.i.i1.i400, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401, label %bb.dr

bb.dr:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399
  %i.ajz = ptrtoint ptr %.sink.i577 to i64
  %i.aka = ptrtoint ptr %.sroa.0470.0563 to i64
  %i.akb = sub i64 %i.ajz, %i.aka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0470.0563, i64 noundef %i.akb) #21
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401:      ; preds = %bb.ah, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399, %bb.dr, %bb.ag
  %.pn210.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.ag ], [ %i.bo, %bb.ah ], [ %.pn210.pn.pn, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i399 ], [ %.pn210.pn.pn, %bb.dr ] ; 2 uses
  %.not.i.i.i402 = icmp eq ptr %.sroa.0480.0, null
  br i1 %.not.i.i.i402, label %_ZNSt6vectorIfSaIfEED2Ev.exit405, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401
  %i.akc = ptrtoint ptr %.sroa.0480.0 to i64
  %i.akd = sub i64 %.sroa.12.0, %i.akc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0480.0, i64 noundef %i.akd) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit405

_ZNSt6vectorIfSaIfEED2Ev.exit405:                 ; preds = %bb.af, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401, %bb.ds, %bb.ae
  %.pn210.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.ae ], [ %i.bm, %bb.af ], [ %.pn210.pn.pn.pn.pn, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit401 ], [ %.pn210.pn.pn.pn.pn, %bb.ds ]
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 400) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit407

_ZNSt6vectorIlSaIlEED2Ev.exit407:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit405, %bb.ad
  %.pn210.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn210.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit405 ], [ %i.bk, %bb.ad ]
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 800) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit409

_ZNSt6vectorIlSaIlEED2Ev.exit409:                 ; preds = %bb.ac, %_ZNSt6vectorIlSaIlEED2Ev.exit407, %bb.ab
  %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.ab ], [ %.pn210.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit407 ], [ %i.bj, %bb.ac ]
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 8000) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit411

_ZNSt6vectorIfSaIfEED2Ev.exit411:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit409, %bb.aa
  %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.a = phi { ptr, i32 } [ %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit409 ], [ %i.bh, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 4000) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit413

_ZNSt6vectorIfSaIfEED2Ev.exit413:                 ; preds = %bb.z, %_ZNSt6vectorIfSaIfEED2Ev.exit411, %bb.y
  %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.y ], [ %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.a, %_ZNSt6vectorIfSaIfEED2Ev.exit411 ], [ %i.bg, %bb.z ]
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 25600) #21
  br label %_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416

_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEED2Ev.exit413, %bb.w
  %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.w ], [ %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit413 ], [ %i.be, %bb.x ]
  %i.ake = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akg = load ptr, ptr %i.akf, align 8
  call void %i.akg(ptr noundef nonnull align 8 dereferenceable(273) %i.e) #20, !inline_history !116
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit418

_ZNSt6vectorIfSaIfEED2Ev.exit418:                 ; preds = %bb.e, %_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416, %bb.d
  %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN5faiss8IndexIVFESt14default_deleteIS1_EED2Ev.exit416 ], [ %i.j, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 256000) #21
  resume { ptr, i32 } %.pn210.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !86 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !90
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !90
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #21
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !118

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !53
  store i8 %i.s, ptr %i.g, align 1, !tbaa !53
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !117
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !118

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !53
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !53
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !118

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !53
  store i8 %i.ad, ptr %1, align 1, !tbaa !53
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !118

bb.n:                                             ; preds = %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPhS0_hET0_T_S2_S1_RSaIT1_E.exit

end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  br i1 %i.o, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !125

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90
  %i.r = urem i64 %i.k, %i.q
  br label %.critedge

bb.f:                                             ; preds = %.thread35
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !86   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !126

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !86 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = urem i64 %i.z, %i.e
  %.not19.i.i = icmp eq i64 %i.aa, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !126

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !126

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread35
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.f, %.thread35 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ac = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread35 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ] ; 2 uses
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !57
  %i.af = invoke ptr @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIlLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 16) #21
  resume { ptr, i32 } %i.ag

_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.af, %.critedge ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIlLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !85
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !127
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !90
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  store ptr %i.w, ptr %3, align 8, !tbaa !86
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !92
  store ptr %3, ptr %i.x, align 8, !tbaa !86
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  store ptr %i.z, ptr %3, align 8, !tbaa !86
  store ptr %3, ptr %i.y, align 8, !tbaa !83
  %i.aa = load ptr, ptr %3, align 8, !tbaa !86    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !90
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !57
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !92
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !85
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !121
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !120

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !83
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !86  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !83
  store ptr %i.o, ptr %.031, align 8, !tbaa !86
  store ptr %.031, ptr %i.g, align 8, !tbaa !83
  store ptr %i.g, ptr %i.m, align 8, !tbaa !92
  %i.p = load ptr, ptr %.031, align 8, !tbaa !86
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !92
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !86
  store ptr %i.r, ptr %.031, align 8, !tbaa !86
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !92
  store ptr %.031, ptr %i.s, align 8, !tbaa !86
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #21
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !90
  store ptr %.0.i, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !86 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 16) #21
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !88

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !90
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit
  %i.k = load i64, ptr %i.e, align 8, !tbaa !90
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.18, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #20, !inline_history !129
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !109   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #20, !inline_history !129
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.24, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #20, !inline_history !130
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !109   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #20, !inline_history !130
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22
end_hunk_3
