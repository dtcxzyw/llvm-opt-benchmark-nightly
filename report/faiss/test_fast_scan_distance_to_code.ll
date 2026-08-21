inline.NumInlined: 1078
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci:bb.a
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
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit420

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit420

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
          to label %bb.h unwind label %bb.x       ; 9 uses

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
          to label %bb.k unwind label %bb.aa      ; 6 uses

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
  %.sroa.0482.0 = phi ptr [ %i.ag, %.noexc233 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.sroa.12.0 = phi i64 [ %i.ak, %.noexc233 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef %.sroa.0482.0, i1 noundef zeroext false)
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
  %.sroa.0472.0578615 = phi ptr [ %i.as, %.noexc243 ], [ %i.as, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 9 uses
  %.sink.i592613 = phi ptr [ %i.at, %.noexc243 ], [ %i.at, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i606611 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc243 ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.0464.0 = phi ptr [ %i.aw, %.noexc243 ], [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ null, %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 12 uses
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
  br label %_ZNKSt14default_deleteIN5faiss8IndexIVFEEclEPS1_.exit.i417

bb.x:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5faiss8IndexIVFEEclEPS1_.exit.i417

bb.y:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.thread681

bb.z:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread681

bb.aa:                                            ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ab:                                            ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit411

bb.ac:                                            ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit411

bb.ad:                                            ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit409

bb.ae:                                            ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit407

bb.af:                                            ; preds = %bb.q, %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit407

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit403

bb.ah:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE:bb.a
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0146872
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !57 ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0464.0, i64 %i.br ; 4 uses
  %i.bt = add nuw nsw i64 %.0146872, 900          ; 2 uses
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
          to label %.noexc246 unwind label %.loopexit688 ; 4 uses

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
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0472.0578615, i64 %i.br ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !61
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ct = mul i64 %i.cs, %.0146872
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0482.0, i64 %i.ct
  %i.cv = add nuw nsw i64 %.0146872, 1            ; 3 uses
  %i.cw = mul i64 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0482.0, i64 %i.cw
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !61 ; 2 uses
  %i.cz = ptrtoint ptr %i.cr to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr %i.dc, ptr noundef %i.cu, ptr noundef %i.cx)
          to label %bb.u unwind label %bb.ap, !llvm.loop !55

.loopexit688:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit381

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit381

bb.ap:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit381

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
          to label %.noexc257 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit376.thread ; 4 uses

.noexc257:                                        ; preds = %bb.at
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dg
  store i64 0, ptr %i.dn, align 8, !tbaa !57
  %i.dp = getelementptr i8, ptr %i.dn, i64 8
  %.idx.i.i.i.i.i.i.i254 = add nsw i64 %i.dm, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i8 0, i64 %.idx.i.i.i.i.i.i.i254, i1 false), !tbaa !57
  %i.dq = ptrtoint ptr %i.do to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258:            ; preds = %.noexc257, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11452.0637 = phi ptr [ %i.dk, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0447.0627 = phi ptr [ %i.dj, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  %.sroa.0440.0 = phi ptr [ %i.dn, %.noexc257 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.dq, %.noexc257 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %sext189 = shl i64 %i.de, 32
  %i.ds = ashr exact i64 %sext189, 32             ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(36) %i.dr, i64 noundef 100, ptr noundef nonnull %i.o, i64 noundef %i.ds, ptr noundef %.sroa.0447.0627, ptr noundef %.sroa.0440.0, ptr noundef null)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258
  %i.dw = icmp eq i32 %1, 0                       ; 3 uses
  %i.dx = icmp sgt i32 %i.df, 0
  %wide.trip.count = and i64 %i.de, 2147483647
  br label %bb.ba

bb.av:                                            ; preds = %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.u)
          to label %bb.bv unwind label %bb.az

bb.aw:                                            ; preds = %bb.v
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss19InvertedListScannerESt14default_deleteIS1_EED2Ev.exit381

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit378

_ZNSt6vectorIlSaIlEED2Ev.exit376.thread:          ; preds = %bb.at
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.ay:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit258
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.az:                                            ; preds = %bb.av
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ba:                                            ; preds = %bb.au, %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit
  %.0145692 = phi i64 [ 0, %bb.au ], [ %i.adv, %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit ] ; 4 uses
  %i.eg = mul nuw nsw i64 %.0145692, 10           ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eg ; 94 uses
  %i.ei = getelementptr [8 x i8], ptr %i.q, i64 %i.eg ; 89 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -4 ; 17 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 -8 ; 17 uses
  %i.el = load float, ptr %i.eh, align 4, !tbaa !63 ; 6 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !57 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !63 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !57 ; 4 uses
  br i1 %i.dw, label %.lr.ph.i.i.i.preheader.1, label %.lr.ph.i.i.i264.preheader.1

.lr.ph.i.i.i.preheader.1:                         ; preds = %bb.ba
  %i.er = fcmp olt float %i.eo, %i.el
  br i1 %i.er, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.1, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.1

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.1:        ; preds = %.lr.ph.i.i.i.preheader.1
  %i.es = fcmp oeq float %i.eo, %i.el
  %i.et = icmp slt i64 %i.eq, %i.em
  %i.eu = and i1 %i.es, %i.et
  br i1 %i.eu, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.1, label %.lr.ph.i.i.i.preheader.2

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.1: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.1, %.lr.ph.i.i.i.preheader.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store float %i.el, ptr %i.ev, align 4, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.em, ptr %i.ew, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.preheader.2

.lr.ph.i.i.i.preheader.2:                         ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.1
  %.0.lcssa.i.i.i.ph.1 = phi i64 [ 2, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.1 ], [ 1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.1 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.lcssa.i.i.i.ph.1
  store float %i.eo, ptr %i.ex, align 4, !tbaa !63
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.0.lcssa.i.i.i.ph.1
  store i64 %i.eq, ptr %i.ey, align 8, !tbaa !57
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !63 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !57 ; 2 uses
  %i.fd = load float, ptr %i.eh, align 4, !tbaa !63 ; 3 uses
  %i.fe = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.ff = fcmp olt float %i.fa, %i.fd
  br i1 %i.ff, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.2, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.2

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.2:        ; preds = %.lr.ph.i.i.i.preheader.2
  %i.fg = fcmp oeq float %i.fa, %i.fd
  %i.fh = icmp slt i64 %i.fc, %i.fe
  %i.fi = and i1 %i.fg, %i.fh
  br i1 %i.fi, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.2, label %.lr.ph.i.i.i.preheader.3

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.2: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.2, %.lr.ph.i.i.i.preheader.2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store float %i.fd, ptr %i.fj, align 4, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.fe, ptr %i.fk, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.preheader.3

.lr.ph.i.i.i.preheader.3:                         ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.2, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.2
  %.0.lcssa.i.i.i.ph.2 = phi i64 [ 3, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.2 ], [ 1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.2 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.lcssa.i.i.i.ph.2
  store float %i.fa, ptr %i.fl, align 4, !tbaa !63
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.0.lcssa.i.i.i.ph.2
  store i64 %i.fc, ptr %i.fm, align 8, !tbaa !57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !63 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !57 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !63 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !57 ; 2 uses
  %i.fv = fcmp olt float %i.fo, %i.fs
  br i1 %i.fv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3:        ; preds = %.lr.ph.i.i.i.preheader.3
  %i.fw = fcmp oeq float %i.fo, %i.fs
  %i.fx = icmp slt i64 %i.fq, %i.fu
  %i.fy = and i1 %i.fw, %i.fx
  br i1 %i.fy, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3, label %.lr.ph.i.i.i.preheader.4

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3, %.lr.ph.i.i.i.preheader.3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store float %i.fs, ptr %i.fz, align 4, !tbaa !63
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %i.fu, ptr %i.ga, align 8, !tbaa !57
  %i.gb = load float, ptr %i.eh, align 4, !tbaa !63 ; 3 uses
  %i.gc = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.gd = fcmp olt float %i.fo, %i.gb
  br i1 %i.gd, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3.1, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3.1

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3.1:      ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3
  %i.ge = fcmp oeq float %i.fo, %i.gb
  %i.gf = icmp slt i64 %i.fq, %i.gc
  %i.gg = and i1 %i.ge, %i.gf
  br i1 %i.gg, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3.1, label %.lr.ph.i.i.i.preheader.4

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3.1: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3
  store float %i.gb, ptr %i.fr, align 4, !tbaa !63
  store i64 %i.gc, ptr %i.ft, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.preheader.4

.lr.ph.i.i.i.preheader.4:                         ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3
  %.0.lcssa.i.i.i.ph.3 = phi i64 [ 4, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3 ], [ 1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.3.1 ], [ 2, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.3.1 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.lcssa.i.i.i.ph.3
  store float %i.fo, ptr %i.gh, align 4, !tbaa !63
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.0.lcssa.i.i.i.ph.3
  store i64 %i.fq, ptr %i.gi, align 8, !tbaa !57
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !63 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !57 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !63 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !57 ; 2 uses
  %i.gr = fcmp olt float %i.gk, %i.go
  br i1 %i.gr, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4:        ; preds = %.lr.ph.i.i.i.preheader.4
  %i.gs = fcmp oeq float %i.gk, %i.go
  %i.gt = icmp slt i64 %i.gm, %i.gq
  %i.gu = and i1 %i.gs, %i.gt
  br i1 %i.gu, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4, label %.lr.ph.i.i.i.preheader.5

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4, %.lr.ph.i.i.i.preheader.4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store float %i.go, ptr %i.gv, align 4, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i64 %i.gq, ptr %i.gw, align 8, !tbaa !57
  %i.gx = load float, ptr %i.eh, align 4, !tbaa !63 ; 3 uses
  %i.gy = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.gz = fcmp olt float %i.gk, %i.gx
  br i1 %i.gz, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4.1, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4.1

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4.1:      ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4
  %i.ha = fcmp oeq float %i.gk, %i.gx
  %i.hb = icmp slt i64 %i.gm, %i.gy
  %i.hc = and i1 %i.ha, %i.hb
  br i1 %i.hc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4.1, label %.lr.ph.i.i.i.preheader.5

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4.1: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4
  store float %i.gx, ptr %i.gn, align 4, !tbaa !63
  store i64 %i.gy, ptr %i.gp, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.preheader.5

.lr.ph.i.i.i.preheader.5:                         ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4
  %.0.lcssa.i.i.i.ph.4 = phi i64 [ 5, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4 ], [ 1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.4.1 ], [ 2, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.4.1 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.lcssa.i.i.i.ph.4
  store float %i.gk, ptr %i.hd, align 4, !tbaa !63
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.0.lcssa.i.i.i.ph.4
  store i64 %i.gm, ptr %i.he, align 8, !tbaa !57
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !63 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !57 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !63 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !57 ; 2 uses
  %i.hn = fcmp olt float %i.hg, %i.hk
  br i1 %i.hn, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5:        ; preds = %.lr.ph.i.i.i.preheader.5
  %i.ho = fcmp oeq float %i.hg, %i.hk
  %i.hp = icmp slt i64 %i.hi, %i.hm
  %i.hq = and i1 %i.ho, %i.hp
  br i1 %i.hq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5, label %.lr.ph.i.i.i.preheader.6

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5, %.lr.ph.i.i.i.preheader.5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  store float %i.hk, ptr %i.hr, align 4, !tbaa !63
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i64 %i.hm, ptr %i.hs, align 8, !tbaa !57
  %i.ht = load float, ptr %i.eh, align 4, !tbaa !63 ; 3 uses
  %i.hu = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.hv = fcmp olt float %i.hg, %i.ht
  br i1 %i.hv, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5.1, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5.1

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5.1:      ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5
  %i.hw = fcmp oeq float %i.hg, %i.ht
  %i.hx = icmp slt i64 %i.hi, %i.hu
  %i.hy = and i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5.1, label %.lr.ph.i.i.i.preheader.6

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5.1: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5
  store float %i.ht, ptr %i.hj, align 4, !tbaa !63
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.preheader.6

.lr.ph.i.i.i.preheader.6:                         ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5.1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5
  %.0.lcssa.i.i.i.ph.5 = phi i64 [ 6, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5 ], [ 1, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i.5.1 ], [ 3, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i.5.1 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.lcssa.i.i.i.ph.5
  store float %i.hg, ptr %i.hz, align 4, !tbaa !63
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.0.lcssa.i.i.i.ph.5
  store i64 %i.hi, ptr %i.ia, align 8, !tbaa !57
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !63 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !57 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !63 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_122test_search_and_encodeEPKcN5faiss10MetricTypeE:bb.a
  %i.xl = phi i64 [ %i.yo, %bb.bn ], [ 3, %bb.bk ]
  %i.xm = phi i64 [ %i.yn, %bb.bn ], [ 2, %bb.bk ] ; 7 uses
  %.056.i.i277 = phi i64 [ %.1.i.i280, %bb.bn ], [ 1, %bb.bk ] ; 6 uses
  %i.xn = icmp eq i64 %i.xm, 10
  br i1 %i.xn, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i, label %bb.bl

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i276
  %.pre.i.i282 = load float, ptr %.phi.trans.insert.i.i275, align 4, !tbaa !63
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i276
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.xm
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !63 ; 4 uses
  %i.xq = getelementptr [4 x i8], ptr %i.eh, i64 %i.xm
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !63 ; 5 uses
  %i.xs = getelementptr [8 x i8], ptr %i.ei, i64 %i.xm
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !57 ; 3 uses
  %i.xu = fcmp ogt float %i.xp, %i.xr
  br i1 %i.xu, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i:            ; preds = %bb.bl
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.xm
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !57
  %i.xx = fcmp oeq float %i.xp, %i.xr
  %i.xy = icmp sgt i64 %i.xw, %i.xt
  %i.xz = and i1 %i.xx, %i.xy
  br i1 %i.xz, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, label %bb.bm

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i:     ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i, %bb.bl, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i
  %i.ya = phi float [ %.pre.i.i282, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i ], [ %i.xp, %bb.bl ], [ %i.xp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i ] ; 3 uses
  %i.yb = fcmp ogt float %i.xe, %i.ya
  br i1 %i.yb, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i:          ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.xm
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !57 ; 2 uses
  %i.ye = fcmp oeq float %i.xe, %i.ya
  %i.yf = icmp sgt i64 %i.xh, %i.yd
  %i.yg = and i1 %i.ye, %i.yf
  br i1 %i.yg, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.bn

bb.bm:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i
  %i.yh = fcmp ogt float %i.xe, %i.xr
  br i1 %i.yh, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i:          ; preds = %bb.bm
  %i.yi = fcmp oeq float %i.xe, %i.xr
  %i.yj = icmp sgt i64 %i.xh, %i.xt
  %i.yk = and i1 %i.yi, %i.yj
  br i1 %i.yk, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i
  %.sink71.i.i278 = phi float [ %i.ya, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xr, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.sink.i.i279 = phi i64 [ %i.yd, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ]
  %.1.i.i280 = phi i64 [ %i.xm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %i.xl, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ] ; 4 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %.056.i.i277
  store float %.sink71.i.i278, ptr %i.yl, align 4, !tbaa !63
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %.056.i.i277
  store i64 %.sink.i.i279, ptr %i.ym, align 8, !tbaa !57
  %i.yn = shl nuw nsw i64 %.1.i.i280, 1           ; 2 uses
  %i.yo = or disjoint i64 %i.yn, 1
  %i.yp = icmp ugt i64 %.1.i.i280, 5
  br i1 %i.yp, label %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, label %.lr.ph.i.i276, !llvm.loop !68

_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i, %bb.bm, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i, %bb.bn
  %.0.lcssa.i.i281 = phi i64 [ %.056.i.i277, %bb.bm ], [ %.1.i.i280, %bb.bn ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i.i ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i.i ], [ %.056.i.i277, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ] ; 2 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %.0.lcssa.i.i281
  store float %i.xe, ptr %i.yq, align 4, !tbaa !63
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %.0.lcssa.i.i281
  store i64 %i.xh, ptr %i.yr, align 8, !tbaa !57
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN5faiss19maxheap_replace_topIfEEvmPT_PlS1_l.exit, %bb.bk
  %i.ys = add nuw i64 %.0143689, 1                ; 2 uses
  %exitcond703.not = icmp eq i64 %i.ys, %i.uy
  br i1 %exitcond703.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !67

.loopexit:                                        ; preds = %bb.bo, %bb.bj, %bb.be, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond707.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond707.not, label %._crit_edge, label %bb.bc, !llvm.loop !69

.preheader867.a:                                  ; preds = %._crit_edge, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %.041.i.i = phi i64 [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03740.i.i = phi i64 [ %i.aao, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 3 uses
  %i.yt = load float, ptr %i.eh, align 4, !tbaa !63
  %i.yu = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.yv = sub nuw nsw i64 10, %.03740.i.i         ; 4 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.yv ; 3 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !63 ; 5 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.yv ; 2 uses
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !57 ; 3 uses
  %i.za = icmp samesign ugt i64 %.03740.i.i, 8
  br i1 %i.za, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i284

.lr.ph.i.i.i284:                                  ; preds = %.preheader867.a, %bb.br
  %i.zb = phi i64 [ %i.aae, %bb.br ], [ 3, %.preheader867.a ]
  %i.zc = phi i64 [ %i.aad, %bb.br ], [ 2, %.preheader867.a ] ; 7 uses
  %.062.i.i.i = phi i64 [ %.1.i.i.i, %bb.br ], [ 1, %.preheader867.a ] ; 6 uses
  %i.zd = icmp eq i64 %i.zc, %i.yv
  br i1 %i.zd, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.bp

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i284
  %.pre.i.i.i = load float, ptr %i.yw, align 4, !tbaa !63
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290

bb.bp:                                            ; preds = %.lr.ph.i.i.i284
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.zc
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !63 ; 4 uses
  %i.zg = getelementptr [4 x i8], ptr %i.eh, i64 %i.zc
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !63 ; 5 uses
  %i.zi = getelementptr [8 x i8], ptr %i.ei, i64 %i.zc
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !57 ; 3 uses
  %i.zk = fcmp olt float %i.zf, %i.zh
  br i1 %i.zk, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285:       ; preds = %bb.bp
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.zc
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !57
  %i.zn = fcmp oeq float %i.zf, %i.zh
  %i.zo = icmp slt i64 %i.zm, %i.zj
  %i.zp = and i1 %i.zn, %i.zo
  br i1 %i.zp, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290, label %bb.bq

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285, %bb.bp, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.zq = phi float [ %.pre.i.i.i, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.zf, %bb.bp ], [ %i.zf, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285 ] ; 3 uses
  %i.zr = fcmp olt float %i.yx, %i.zq
  br i1 %i.zr, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.zc
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !57 ; 2 uses
  %i.zu = fcmp oeq float %i.yx, %i.zq
  %i.zv = icmp slt i64 %i.yz, %i.zt
  %i.zw = and i1 %i.zu, %i.zv
  br i1 %i.zw, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.br

bb.bq:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i285
  %i.zx = fcmp olt float %i.yx, %i.zh
  br i1 %i.zx, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.bq
  %i.zy = fcmp oeq float %i.yx, %i.zh
  %i.zz = icmp slt i64 %i.yz, %i.zj
  %i.aaa = and i1 %i.zy, %i.zz
  br i1 %i.aaa, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i = phi float [ %i.zq, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zh, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.zt, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zj, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.zc, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.zb, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.062.i.i.i
  store float %.sink79.i.i.i, ptr %i.aab, align 4, !tbaa !63
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.062.i.i.i
  store i64 %.sink.i.i.i, ptr %i.aac, align 8, !tbaa !57
  %i.aad = shl i64 %.1.i.i.i, 1                   ; 3 uses
  %i.aae = or disjoint i64 %i.aad, 1
  %i.aaf = icmp ugt i64 %i.aad, %i.yv
  br i1 %i.aaf, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i284, !llvm.loop !70

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.br, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %bb.bq, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290
  %.0.lcssa.ph.i.i.i = phi i64 [ %.1.i.i.i, %bb.br ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i290 ], [ %.062.i.i.i, %bb.bq ]
  %.pre68.i.i.i = load float, ptr %i.yw, align 4, !tbaa !63
  %.pre69.i.i.i = load i64, ptr %i.yy, align 8, !tbaa !57
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %.preheader867.a
  %i.aag = phi i64 [ %i.yz, %.preheader867.a ], [ %.pre69.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.aah = phi float [ %i.yx, %.preheader867.a ], [ %.pre68.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i286 = phi i64 [ 1, %.preheader867.a ], [ %.0.lcssa.ph.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.0.lcssa.i.i.i286
  store float %i.aah, ptr %i.aai, align 4, !tbaa !63
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.0.lcssa.i.i.i286
  store i64 %i.aag, ptr %i.aaj, align 8, !tbaa !57
  %i.aak = sub i64 9, %.041.i.i                   ; 2 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.aak
  store float %i.yt, ptr %i.aal, align 4, !tbaa !63
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.aak
  store i64 %i.yu, ptr %i.aam, align 8, !tbaa !57
  %.not.i.i287 = icmp ne i64 %i.yu, -1
  %i.aan = zext i1 %.not.i.i287 to i64            ; 3 uses
  %spec.select.i.i = add i64 %.041.i.i, %i.aan    ; 8 uses
  %i.aao = add nuw nsw i64 %.03740.i.i, 1         ; 2 uses
  %exitcond.not.i.i288 = icmp eq i64 %i.aao, 10
  br i1 %exitcond.not.i.i288, label %._crit_edge.i.i, label %.preheader867.a, !llvm.loop !71

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.aaq = sub i64 0, %spec.select.i.i            ; 2 uses
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aap, i64 %i.aaq
  %i.aas = shl i64 %spec.select.i.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 4 %i.aar, i64 %i.aas, i1 false)
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %i.aaq
  %i.aav = shl i64 %spec.select.i.i, 3            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.aau, i64 %i.aav, i1 false)
  %i.aaw = icmp ult i64 %spec.select.i.i, 10
  br i1 %i.aaw, label %.lr.ph44.i.i.preheader, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %scevgep710 = getelementptr i8, ptr %i.ei, i64 %i.aav
  %i.aax = add i64 %.041.i.i, %i.aan
  %i.aay = shl i64 %i.aax, 3
  %i.aaz = sub i64 80, %i.aay
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep710, i8 -1, i64 %i.aaz, i1 false), !tbaa !57
  %i.aba = add i64 %.041.i.i, %i.aan
  %i.abb = sub i64 10, %i.aba                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.abb, 8
  br i1 %min.iters.check, label %.lr.ph44.i.i.preheader885, label %vector.body

vector.body:                                      ; preds = %.lr.ph44.i.i.preheader
  %n.vec = and i64 %i.abb, -8                     ; 2 uses
  %i.abc = add i64 %spec.select.i.i, %n.vec
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %spec.select.i.i ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.abd, align 4, !tbaa !63
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.abe, align 4, !tbaa !63
  %cmp.n = icmp eq i64 %i.abb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i.preheader885

.lr.ph44.i.i.preheader885:                        ; preds = %.lr.ph44.i.i.preheader, %vector.body
  %.242.i.i.ph = phi i64 [ %spec.select.i.i, %.lr.ph44.i.i.preheader ], [ %i.abc, %vector.body ]
  br label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.preheader885, %.lr.ph44.i.i
  %.242.i.i = phi i64 [ %i.abg, %.lr.ph44.i.i ], [ %.242.i.i.ph, %.lr.ph44.i.i.preheader885 ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.242.i.i
  store float f0xFF7FFFFF, ptr %i.abf, align 4, !tbaa !63
  %i.abg = add nuw i64 %.242.i.i, 1               ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.abg, 10
  br i1 %exitcond47.not.i.i, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i, !llvm.loop !72

.preheader869:                                    ; preds = %._crit_edge, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %.041.i.i292 = phi i64 [ %spec.select.i.i305, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03740.i.i293 = phi i64 [ %i.adc, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ], [ 0, %._crit_edge ] ; 3 uses
  %i.abh = load float, ptr %i.eh, align 4, !tbaa !63
  %i.abi = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.abj = sub nuw nsw i64 10, %.03740.i.i293     ; 4 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.abj ; 3 uses
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !63 ; 5 uses
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.abj ; 2 uses
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !57 ; 3 uses
  %i.abo = icmp samesign ugt i64 %.03740.i.i293, 8
  br i1 %i.abo, label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i294

.lr.ph.i.i.i294:                                  ; preds = %.preheader869, %bb.bu
  %i.abp = phi i64 [ %i.acs, %bb.bu ], [ 3, %.preheader869 ]
  %i.abq = phi i64 [ %i.acr, %bb.bu ], [ 2, %.preheader869 ] ; 7 uses
  %.062.i.i.i295 = phi i64 [ %.1.i.i.i299, %bb.bu ], [ 1, %.preheader869 ] ; 6 uses
  %i.abr = icmp eq i64 %i.abq, %i.abj
  br i1 %i.abr, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.bs

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i294
  %.pre.i.i.i313 = load float, ptr %i.abk, align 4, !tbaa !63
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312

bb.bs:                                            ; preds = %.lr.ph.i.i.i294
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.abq
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !63 ; 4 uses
  %i.abu = getelementptr [4 x i8], ptr %i.eh, i64 %i.abq
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !63 ; 5 uses
  %i.abw = getelementptr [8 x i8], ptr %i.ei, i64 %i.abq
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !57 ; 3 uses
  %i.aby = fcmp ogt float %i.abt, %i.abv
  br i1 %i.aby, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i296

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i296:       ; preds = %bb.bs
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.abq
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !57
  %i.acb = fcmp oeq float %i.abt, %i.abv
  %i.acc = icmp sgt i64 %i.aca, %i.abx
  %i.acd = and i1 %i.acb, %i.acc
  br i1 %i.acd, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312, label %bb.bt

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i296, %bb.bs, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.ace = phi float [ %.pre.i.i.i313, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.abt, %bb.bs ], [ %i.abt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i296 ] ; 3 uses
  %i.acf = fcmp ogt float %i.abl, %i.ace
  br i1 %i.acf, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.abq
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !57 ; 2 uses
  %i.aci = fcmp oeq float %i.abl, %i.ace
  %i.acj = icmp sgt i64 %i.abn, %i.ach
  %i.ack = and i1 %i.aci, %i.acj
  br i1 %i.ack, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bu

bb.bt:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i296
  %i.acl = fcmp ogt float %i.abl, %i.abv
  br i1 %i.acl, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.bt
  %i.acm = fcmp oeq float %i.abl, %i.abv
  %i.acn = icmp sgt i64 %i.abn, %i.abx
  %i.aco = and i1 %i.acm, %i.acn
  br i1 %i.aco, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i297 = phi float [ %i.ace, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abv, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i298 = phi i64 [ %i.ach, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abx, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i299 = phi i64 [ %i.abq, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %i.abp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.062.i.i.i295
  store float %.sink79.i.i.i297, ptr %i.acp, align 4, !tbaa !63
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.062.i.i.i295
  store i64 %.sink.i.i.i298, ptr %i.acq, align 8, !tbaa !57
  %i.acr = shl i64 %.1.i.i.i299, 1                ; 3 uses
  %i.acs = or disjoint i64 %i.acr, 1
  %i.act = icmp ugt i64 %i.acr, %i.abj
  br i1 %i.act, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i294, !llvm.loop !75

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.bu, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i, %bb.bt, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312
  %.0.lcssa.ph.i.i.i300 = phi i64 [ %.1.i.i.i299, %bb.bu ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i295, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i312 ], [ %.062.i.i.i295, %bb.bt ]
  %.pre68.i.i.i301 = load float, ptr %i.abk, align 4, !tbaa !63
  %.pre69.i.i.i302 = load i64, ptr %i.abm, align 8, !tbaa !57
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %.preheader869
  %i.acu = phi i64 [ %i.abn, %.preheader869 ], [ %.pre69.i.i.i302, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.acv = phi float [ %i.abl, %.preheader869 ], [ %.pre68.i.i.i301, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i303 = phi i64 [ 1, %.preheader869 ], [ %.0.lcssa.ph.i.i.i300, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %.0.lcssa.i.i.i303
  store float %i.acv, ptr %i.acw, align 4, !tbaa !63
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %.0.lcssa.i.i.i303
  store i64 %i.acu, ptr %i.acx, align 8, !tbaa !57
  %i.acy = sub i64 9, %.041.i.i292                ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.acy
  store float %i.abh, ptr %i.acz, align 4, !tbaa !63
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.acy
  store i64 %i.abi, ptr %i.ada, align 8, !tbaa !57
  %.not.i.i304 = icmp ne i64 %i.abi, -1
  %i.adb = zext i1 %.not.i.i304 to i64            ; 3 uses
  %spec.select.i.i305 = add i64 %.041.i.i292, %i.adb ; 8 uses
  %i.adc = add nuw nsw i64 %.03740.i.i293, 1      ; 2 uses
  %exitcond.not.i.i306 = icmp eq i64 %i.adc, 10
  br i1 %exitcond.not.i.i306, label %._crit_edge.i.i307, label %.preheader869, !llvm.loop !76

._crit_edge.i.i307:                               ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ade = sub i64 0, %spec.select.i.i305         ; 2 uses
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.add, i64 %i.ade
  %i.adg = shl i64 %spec.select.i.i305, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 4 %i.adf, i64 %i.adg, i1 false)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.adi = getelementptr inbounds [8 x i8], ptr %i.adh, i64 %i.ade
  %i.adj = shl i64 %spec.select.i.i305, 3         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.adi, i64 %i.adj, i1 false)
  %i.adk = icmp ult i64 %spec.select.i.i305, 10
  br i1 %i.adk, label %.lr.ph44.i.i309.preheader, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i309.preheader:                        ; preds = %._crit_edge.i.i307
  %scevgep708 = getelementptr i8, ptr %i.ei, i64 %i.adj
  %i.adl = add i64 %.041.i.i292, %i.adb
  %i.adm = shl i64 %i.adl, 3
  %i.adn = sub i64 80, %i.adm
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep708, i8 -1, i64 %i.adn, i1 false), !tbaa !57
  %i.ado = add i64 %.041.i.i292, %i.adb
  %i.adp = sub i64 10, %i.ado                     ; 3 uses
  %min.iters.check874 = icmp ult i64 %i.adp, 8
  br i1 %min.iters.check874, label %.lr.ph44.i.i309.preheader886, label %vector.body877

vector.body877:                                   ; preds = %.lr.ph44.i.i309.preheader
  %n.vec876 = and i64 %i.adp, -8                  ; 2 uses
  %i.adq = add i64 %spec.select.i.i305, %n.vec876
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %spec.select.i.i305 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.adr, align 4, !tbaa !63
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ads, align 4, !tbaa !63
  %cmp.n881 = icmp eq i64 %i.adp, %n.vec876
  br i1 %cmp.n881, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i309.preheader886

.lr.ph44.i.i309.preheader886:                     ; preds = %.lr.ph44.i.i309.preheader, %vector.body877
  %.242.i.i310.ph = phi i64 [ %spec.select.i.i305, %.lr.ph44.i.i309.preheader ], [ %i.adq, %vector.body877 ]
  br label %.lr.ph44.i.i309

.lr.ph44.i.i309:                                  ; preds = %.lr.ph44.i.i309.preheader886, %.lr.ph44.i.i309
  %.242.i.i310 = phi i64 [ %i.adu, %.lr.ph44.i.i309 ], [ %.242.i.i310.ph, %.lr.ph44.i.i309.preheader886 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.242.i.i310
  store float f0x7F7FFFFF, ptr %i.adt, align 4, !tbaa !63
  %i.adu = add nuw i64 %.242.i.i310, 1            ; 2 uses
  %exitcond47.not.i.i311 = icmp eq i64 %i.adu, 10
  br i1 %exitcond47.not.i.i311, label %_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i309, !llvm.loop !77

_ZN5faiss15minheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i309, %.lr.ph44.i.i, %vector.body877, %vector.body, %._crit_edge.i.i307, %._crit_edge.i.i
  %i.adv = add nuw nsw i64 %.0145692, 1           ; 2 uses
  %exitcond711.not = icmp eq i64 %i.adv, 100
  br i1 %exitcond711.not, label %bb.av, label %bb.ba, !llvm.loop !78

bb.bv:                                            ; preds = %bb.av
  %i.adw = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #23
          to label %bb.bw unwind label %bb.cc     ; 4 uses

bb.bw:                                            ; preds = %bb.bv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4000) %i.adw, i8 0, i64 4000, i1 false)
  %i.adx = invoke noalias noundef nonnull dereferenceable(8000) ptr @_Znwm(i64 noundef 8000) #23
          to label %bb.bx unwind label %bb.cd     ; 5 uses

bb.bx:                                            ; preds = %bb.bw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %i.adx, i8 0, i64 8000, i1 false)
  %i.ady = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 72
  %i.aea = load ptr, ptr %i.adz, align 8
  invoke void %i.aea(ptr noundef nonnull align 8 dereferenceable(273) %i.e, i64 noundef 100, ptr noundef nonnull %i.o, i64 noundef 10, ptr noundef nonnull %i.adw, ptr noundef nonnull %i.adx, ptr noundef null)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !79
  %i.aeb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.cf

bb.bz:                                            ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333
  %i.aei = load i32, ptr %i.a, align 4, !tbaa !79
  %i.aej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.aei, i32 noundef 1000) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 5, ptr %i.b, align 4, !tbaa !79
  %i.aek = load i32, ptr %i.a, align 4, !tbaa !79, !noalias !80
  %.not.i = icmp sgt i32 %i.aek, 5
  br i1 %.not.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.17)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.cq

bb.cc:                                            ; preds = %bb.bv
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cd:                                            ; preds = %bb.bw
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit374

bb.ce:                                            ; preds = %bb.bx
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit372

bb.cf:                                            ; preds = %bb.by, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333
  %indvars.iv712 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next713, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit333 ] ; 2 uses
  %i.aeo = mul nuw nsw i64 %indvars.iv712, 10     ; 2 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aeo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %i.aep, ptr noundef nonnull %i.aeq, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit unwind label %bb.ck

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit: ; preds = %bb.cf
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %i.aeo ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IPKlEET_SG_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %i.aer, ptr noundef nonnull %i.aes, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326 unwind label %bb.cl

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326: ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aet = load ptr, ptr %i.aeb, align 8, !tbaa !83 ; 3 uses
  %i.aeu = icmp eq ptr %i.aet, null
  br i1 %i.aeu, label %._crit_edge696, label %.lr.ph695

.lr.ph695:                                        ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326
  %i.aev = load i64, ptr %i.aec, align 8, !tbaa !85
  %.not.not.i.i = icmp eq i64 %i.aev, 0
  %i.aew = load i64, ptr %i.aed, align 8          ; 2 uses
  %i.aex = load ptr, ptr %6, align 8
  br i1 %.not.not.i.i, label %.lr.ph695.split.us, label %.lr.ph695.split

.lr.ph695.split.us:                               ; preds = %.lr.ph695, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us
  %.0694.us = phi i32 [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ 0, %.lr.ph695 ]
  %.sroa.0424.0693.us = phi ptr [ %i.aff, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %i.aet, %.lr.ph695 ] ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.0424.0693.us, i64 8
  %i.aez = load i64, ptr %i.aey, align 8, !tbaa !57
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %.lr.ph695.split.us
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.aee, %.lr.ph695.split.us ], [ %.sroa.06.0.i.i.us, %bb.ch ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !86 ; 3 uses
  %i.afa = icmp eq ptr %.sroa.06.0.i.i.us, null   ; 2 uses
  br i1 %i.afa, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.afb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !57
  %i.afd = icmp eq i64 %i.aez, %i.afc
  br i1 %i.afd, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, label %bb.cg, !llvm.loop !87

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us: ; preds = %bb.ch, %bb.cg
  %i.afe = zext i1 %i.afa to i32
  %spec.select.us = add nuw nsw i32 %.0694.us, %i.afe ; 2 uses
  %i.aff = load ptr, ptr %.sroa.0424.0693.us, align 8, !tbaa !86 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %._crit_edge696, label %.lr.ph695.split.us

._crit_edge696:                                   ; preds = %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326
  %.0.lcssa = phi i32 [ 0, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEEC2IPKlEET_S9_mRKS1_RKS3_RKS4_.exit326 ], [ %spec.select.us, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit.loopexit.us ], [ %spec.select, %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEE4findERKl.exit ]
  %i.afh = load i32, ptr %i.a, align 4, !tbaa !79
  %i.afi = add nsw i32 %i.afh, %.0.lcssa
  store i32 %i.afi, ptr %i.a, align 4, !tbaa !79
  %i.afj = load ptr, ptr %i.aee, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.afj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge696, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.afk, %.lr.ph.i.i.i.i ], [ %i.afj, %._crit_edge696 ] ; 2 uses
  %i.afk = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #21
  %.not.i.i.i.i327 = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i327, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge696
  %i.afl = load ptr, ptr %6, align 8, !tbaa !89
  %i.afm = load i64, ptr %i.aed, align 8, !tbaa !90
  %i.afn = shl i64 %i.afm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afl, i8 0, i64 %i.afn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aee, i8 0, i64 16, i1 false)
  %i.afo = load ptr, ptr %6, align 8, !tbaa !89   ; 2 uses
  %i.afp = icmp eq ptr %i.afo, %i.aef
  br i1 %i.afp, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.afq = load i64, ptr %i.aed, align 8, !tbaa !90
  %i.afr = shl i64 %i.afq, 3
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afr) #21
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.afs = load ptr, ptr %i.aeb, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i328 = icmp eq ptr %i.afs, null
end_hunk_2
