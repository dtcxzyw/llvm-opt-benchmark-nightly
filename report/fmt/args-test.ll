Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/args-test?download=true
inline.NumInlined: 1795
inline.NumDeleted: 826
begin_hunk_0_@_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci:bb.a
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.80, i32 noundef 3907)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.81, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.82, i64 noundef 106)
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
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.83, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.80, i32 noundef 3928)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.81, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.84, i64 noundef 111)
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
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.83, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN20args_test_basic_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 17 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.noexc26 unwind label %bb.g   ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  store i32 42, ptr %i.c, align 16, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1, ptr %i.d, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !28
  store ptr %i.e, ptr %i.a, align 8, !tbaa !31
  store ptr %i.e, ptr %i.b, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.3)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc26
  %i.h = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA5_cEEvRKT_.exit unwind label %bb.h ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA5_cEEvRKT_.exit: ; preds = %.noexc
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i27 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i27, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA5_cEEvRKT_.exit
  store float 1.500000e+00, ptr %i.i, align 16, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 9, ptr %i.k, align 16, !tbaa !24
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !31
  %.pre = load ptr, ptr %1, align 8
  br label %bb.e

bb.b:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA5_cEEvRKT_.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !28     ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775776
  br i1 %i.r, label %bb.c, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i28

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc39 unwind label %bb.i

.noexc39:                                         ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.b
  %i.s = ashr exact i64 %i.q, 5                   ; 3 uses
  %.sroa.speculated.i.i.i29 = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i29, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 288230376151711743)
  %i.w = select i1 %i.u, i64 288230376151711743, i64 %i.v ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i30)
  %i.x = shl nuw nsw i64 %i.w, 5
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #18
          to label %.noexc40 unwind label %bb.i   ; 6 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store float 1.500000e+00, ptr %i.z, align 16, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 9, ptr %i.aa, align 16, !tbaa !24
  %.not10.i.i.i.i.i31 = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i31, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i36, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %.noexc40, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i32 ], [ %i.y, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i34 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i32 ], [ %i.n, %.noexc40 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i33, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i34, i64 32, i1 false), !tbaa.struct !33, !alias.scope !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i34, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i33, i64 32 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ab, %i.i
  br i1 %.not.i.i.i.i.i35, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i36, label %.lr.ph.i.i.i.i.i32, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i36: ; preds = %.lr.ph.i.i.i.i.i32, %.noexc40
  %.0.lcssa.i.i.i.i.i37 = phi ptr [ %i.y, %.noexc40 ], [ %i.ac, %.lr.ph.i.i.i.i.i32 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i37, i64 32 ; 2 uses
  %.not.i33.i.i38 = icmp eq ptr %i.n, null
  br i1 %.not.i33.i.i38, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i36
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i36
  store ptr %i.y, ptr %1, align 8, !tbaa !28
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.ai = phi ptr [ %i.m, %bb.a ], [ %i.ad, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.aj = phi ptr [ %.pre, %bb.a ], [ %i.y, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ao = icmp eq ptr %i.al, %i.an                ; 2 uses
  %.idx.i.i = select i1 %i.ao, i64 0, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 5
  %i.au = and i64 %i.at, 4294967295
  %i.av = select i1 %i.ao, i64 -9223372036854775808, i64 -4611686018427387904
  %i.aw = or disjoint i64 %i.au, %i.av
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 16, i64 %i.aw, ptr %i.ap)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !43, !noalias !47
  %i.az = icmp eq i64 %i.ay, 19
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.f
  %i.ba = load ptr, ptr %3, align 8, !tbaa !52, !noalias !47 ; 2 uses
  %i.bb = load i128, ptr %i.ba, align 1
  %i.bc = xor i128 %i.bb, 43056764311122183271667842926635921972
  %i.bd = getelementptr i8, ptr %i.ba, i64 3
  %i.be = load i128, ptr %i.bd, align 1
  %i.bf = xor i128 %i.be, 70688925836546864208819314530556604001
  %i.bg = or i128 %i.bc, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.f
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(20) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.k

_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.bk = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelper7CompareIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bp = load i8, ptr %2, align 8, !tbaa !53, !range !63, !noundef !64
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.u, label %bb.l

bb.g:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %.noexc, %.noexc26
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i28, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.k
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.j ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.y

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.ce = phi ptr [ %i.cd, %bb.n ], [ @.str.19, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 19, ptr noundef %i.ce)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cf = load ptr, ptr %4, align 8, !tbaa !66    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

end_hunk_0
begin_hunk_1_@_ZN20args_test_basic_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #17, !inline_history !71
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit
  %i.db = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.w, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.dh = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.y:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i, %bb.h, %bb.g
  %.pn7.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn, %bb.y ], [ %i.bt, %bb.i ], [ %i.bs, %bb.h ], [ %i.br, %bb.g ]
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn7.pn.pn.pn
}

declare void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #0

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !23
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #20
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !75
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit:    ; preds = %bb.a, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit: ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31args_test_strings_and_refs_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 18 uses
  %i.a = alloca [11 x i8], align 1                ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @__const._ZN28args_test_named_strings_Test8TestBodyEv.str, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(11) %i.a)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  %i.d = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit unwind label %bb.m ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit: ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  store ptr %i.a, ptr %i.f, align 16, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 12, ptr %i.i, align 16, !tbaa !24
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !31
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %bb.f

bb.c:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !28     ; 5 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775776
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743)
  %i.u = select i1 %i.s, i64 288230376151711743, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.u, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18
          to label %.noexc14 unwind label %bb.m   ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.a, ptr %i.x, align 16, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 12, ptr %i.y, align 16, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !76
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc14 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i33.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !28
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.af, ptr %i.g, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %i.ag = phi ptr [ %.pre, %bb.b ], [ %i.af, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 4 uses
  %i.ah = phi ptr [ %i.k, %bb.b ], [ %i.ab, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 5 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.a, ptr %i.ah, align 16, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 13, ptr %i.ak, align 16, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.e, align 8, !tbaa !31
  %.pre35 = load ptr, ptr %1, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %1, align 8, !tbaa !28    ; 5 uses
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775776
  br i1 %i.aq, label %bb.i, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ar = ashr exact i64 %i.ap, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 288230376151711743)
  %i.av = select i1 %i.at, i64 288230376151711743, i64 %i.au ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i27)
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #18
          to label %.noexc30 unwind label %bb.n   ; 6 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 3 uses
  store ptr %i.a, ptr %i.ay, align 16, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.ai, ptr %i.az, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 13, ptr %i.ba, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc30, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc30 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !80
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bb, %i.ag
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc30 ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ax, ptr %1, align 8, !tbaa !28
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bi = phi ptr [ %i.al, %bb.g ], [ %i.bd, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bj = phi ptr [ %.pre35, %bb.g ], [ %i.ax, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNS1_17basic_string_viewIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  store i8 88, ptr %i.a, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %.idx.i.i = select i1 %i.bo, i64 0, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i
  %i.bq = ptrtoint ptr %i.bi to i64
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr exact i64 %i.bs, 5
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = select i1 %i.bo, i64 -9223372036854775808, i64 -4611686018427387904
  %i.bw = or disjoint i64 %i.bu, %i.bv
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.7, i64 16, i64 %i.bw, ptr %i.bp)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !43, !noalias !84
  %i.bz = icmp eq i64 %i.by, 40
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.l
  %i.ca = load ptr, ptr %2, align 8, !tbaa !52, !noalias !84
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.ca, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, i64 40), !noalias !84
  %i.cb = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.l
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.cc = load i8, ptr %3, align 8, !tbaa !53, !range !63, !noundef !64
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %bb.q

bb.m:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.d, %.noexc, %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.o:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.s, %bb.r
  %i.cl = phi ptr [ %i.ck, %bb.s ], [ @.str.19, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 32, ptr noundef %i.cl)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cm = load ptr, ptr %4, align 8, !tbaa !66    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit21

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.x ], [ %i.cr, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ct = load ptr, ptr %4, align 8, !tbaa !66    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit21, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20: ; preds = %bb.y
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit21

_ZN7testing7MessageD2Ev.exit21:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20, %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.v ], [ %.pn, %bb.y ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %bb.ad

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !65 ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i22, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !23
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.de = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !23
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !69  ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i23, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #17, !inline_history !71
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = load ptr, ptr %i.bk, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !74
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.ab, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.dt = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.ad:                                            ; preds = %_ZN7testing7MessageD2Ev.exit21, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit21 ], [ %i.ch, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dy = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ad
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !23
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.o ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.n, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.cf, %bb.n ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN28args_test_custom_format_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 17 uses
  %2 = alloca %struct.custom_type, align 4        ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeI11custom_typeEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !91
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !69
  store ptr %i.e, ptr %i.c, align 8, !tbaa !69
  store ptr %i.b, ptr %i.a, align 8, !tbaa !69
  %i.f = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK11custom_typeEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit unwind label %bb.h ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit: ; preds = %.noexc
  %i.g = load i32, ptr %2, align 4, !tbaa !89
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %2, align 4, !tbaa !89
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc13 unwind label %bb.h   ; 4 uses

.noexc13:                                         ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeI11custom_typeEE, i64 16), ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.l = load i32, ptr %2, align 4, !tbaa !91
  store i32 %i.l, ptr %i.k, align 8, !tbaa !91
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !69
  store ptr %i.m, ptr %i.j, align 8, !tbaa !69
  store ptr %i.i, ptr %i.a, align 8, !tbaa !69
  %i.n = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK11custom_typeEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit15 unwind label %bb.h ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit15: ; preds = %.noexc13
  %i.o = load i32, ptr %2, align 4, !tbaa !89
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.p, ptr %2, align 4, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit15
  store ptr %2, ptr %i.r, align 16, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI11custom_typeEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 15, ptr %i.v, align 16, !tbaa !24
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.q, align 8, !tbaa !31
  %.pre30 = load ptr, ptr %1, align 8
  br label %bb.f

bb.c:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit15
  %i.y = load ptr, ptr %1, align 8, !tbaa !28     ; 5 uses
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc28.a unwind label %bb.h

.noexc28.a:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ad = ashr exact i64 %i.ab, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 288230376151711743)
  %i.ah = select i1 %i.af, i64 288230376151711743, i64 %i.ag ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i27)
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #18
          to label %.noexc29 unwind label %bb.h   ; 6 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 3 uses
  store ptr %2, ptr %i.ak, align 16, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI11custom_typeEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 15, ptr %i.am, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc29, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.aj, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc29 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !92
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc29
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %.noexc29 ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.as) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !28
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.at, ptr %i.s, align 8, !tbaa !32
  %.pre = load i32, ptr %2, align 4, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.au = phi ptr [ %i.x, %bb.b ], [ %i.ap, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.av = phi ptr [ %.pre30, %bb.b ], [ %i.aj, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.aw = phi i32 [ %i.p, %bb.b ], [ %.pre, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %2, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = icmp eq ptr %i.az, %i.bb                ; 2 uses
  %.idx.i.i = select i1 %i.bc, i64 0, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i
  %i.be = ptrtoint ptr %i.au to i64
  %i.bf = ptrtoint ptr %i.av to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 5
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = select i1 %i.bc, i64 -9223372036854775808, i64 -4611686018427387904
  %i.bk = or disjoint i64 %i.bi, %i.bj
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 16, i64 %i.bk, ptr %i.bd)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43, !noalias !96
  %i.bn = icmp eq i64 %i.bm, 28
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.g
  %i.bo = load ptr, ptr %3, align 8, !tbaa !52, !noalias !96 ; 2 uses
  %i.bp = load i128, ptr %i.bo, align 1
  %i.bq = xor i128 %i.bp, 81687555955947518234397632501185213795
  %i.br = getelementptr i8, ptr %i.bo, i64 12
  %i.bs = load i128, ptr %i.br, align 1
  %i.bt = xor i128 %i.bs, 68109719800483629511197275830550295413
  %i.bu = or i128 %i.bq, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.g
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.j

_ZN7testing8internal8EqHelper7CompareIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.by = load i8, ptr %4, align 8, !tbaa !53, !range !63, !noundef !64
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.t, label %bb.k

bb.h:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.d, %.noexc13, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI11custom_typeEEvRKT_.exit, %.noexc, %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.i:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.cg = phi ptr [ %i.cf, %bb.m ], [ @.str.19, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef %i.cg)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ch = load ptr, ptr %5, align 8, !tbaa !66    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.r ], [ %i.cm, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.co = load ptr, ptr %5, align 8, !tbaa !66    ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.co, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.s
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.x

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65 ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i23, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !23
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cz = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !23
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #17, !inline_history !71
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.di = load ptr, ptr %i.ay, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !74
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.v, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.do = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %i.cc, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.dt = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.x
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !23
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.ca, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN38args_test_to_string_and_formatter_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 16 uses
  %2 = alloca %struct.to_stringable, align 1      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i8 0, ptr %2, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeI13to_stringableEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !69
  store ptr %i.b, ptr %i.a, align 8, !tbaa !69
  %i.e = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK13to_stringableEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI13to_stringableEEvRKT_.exit unwind label %bb.j ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI13to_stringableEEvRKT_.exit: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI13to_stringableEEvRKT_.exit
  store ptr %2, ptr %i.g, align 16, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI13to_stringableEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 15, ptr %i.k, align 16, !tbaa !24
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !31
  %.pre = load ptr, ptr %1, align 8
  br label %bb.f

bb.c:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backI13to_stringableEEvRKT_.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !28     ; 5 uses
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775776
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc5.a unwind label %bb.j

.noexc5.a:                                        ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 288230376151711743)
  %i.w = select i1 %i.u, i64 288230376151711743, i64 %i.v ; 3 uses
  %.not.i.i.i4 = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i4)
  %i.x = shl nuw nsw i64 %i.w, 5
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #18
          to label %.noexc6 unwind label %bb.j    ; 6 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 3 uses
  store ptr %2, ptr %i.z, align 16, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI13to_stringableEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 15, ptr %i.ab, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc6, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc6 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.n, %.noexc6 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !101
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc6
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %.noexc6 ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.y, ptr %1, align 8, !tbaa !28
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.aj = phi ptr [ %i.m, %bb.b ], [ %i.ae, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ak = phi ptr [ %.pre, %bb.b ], [ %i.y, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = icmp eq ptr %i.am, %i.ao                ; 2 uses
  %.idx.i.i = select i1 %i.ap, i64 0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = ptrtoint ptr %i.ak to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 5
  %i.av = and i64 %i.au, 4294967295
  %i.aw = select i1 %i.ap, i64 -9223372036854775808, i64 -4611686018427387904
  %i.ax = or disjoint i64 %i.av, %i.aw
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.19, i64 0, i64 %i.ax, ptr %i.aq)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !69  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #17, !inline_history !71
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !74
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.h, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.bn = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.j:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.d, %.noexc, %bb.a, %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN24args_test_named_int_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 5 uses
  %2 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 14 uses
  %3 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 42, ptr %i.a, align 4, !tbaa !91
  store ptr @.str.22, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IPKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8, !tbaa !69
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !inline_history !105
  %.pr.i.i = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !69
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i
  %i.k = load ptr, ptr %.pr.i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !inline_history !106
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

bb.c:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #20
  br label %.body

_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !107, !nonnull !64, !align !110
  store ptr %i.p, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.r, align 8
  invoke void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argIiEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
end_hunk_1
begin_hunk_2_@_ZN20args_test_clear_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(10) @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42
  %i.ch = load i8, ptr %7, align 8, !tbaa !53, !range !63, !noundef !64
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ai, label %bb.z

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bn

bb.w:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i113.preheader
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bn

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i48, label %_ZNK7testing15AssertionResult15failure_messageEv.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit49

_ZNK7testing15AssertionResult15failure_messageEv.exit49: ; preds = %bb.ab, %bb.aa
  %i.cp = phi ptr [ %i.co, %bb.ab ], [ @.str.19, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef %i.cp)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cq = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit52, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit52

_ZN7testing7MessageD2Ev.exit52:                   ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit55

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn20 = phi { ptr, i32 } [ %i.cw, %bb.ag ], [ %i.cv, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cx = load ptr, ptr %8, align 8, !tbaa !66    ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i53, label %_ZN7testing7MessageD2Ev.exit55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54: ; preds = %bb.ah
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit55

_ZN7testing7MessageD2Ev.exit55:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54, %bb.ah, %bb.ae
  %.pn20.pn = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %.pn20, %bb.ah ], [ %.pn20, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.av

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit52
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !65 ; 4 uses
  %.not.i.i56 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i56, label %_ZN7testing15AssertionResultD2Ev.exit60, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57: ; preds = %bb.aj
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !23
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit60

_ZN7testing15AssertionResultD2Ev.exit60:          ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.di = load ptr, ptr %1, align 8, !tbaa !28    ; 9 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, %i.di
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit60
  store ptr %i.di, ptr %i.a, align 8, !tbaa !31
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit60
  %i.dk = phi ptr [ %i.di, %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i ], [ %i.dj, %_ZN7testing15AssertionResultD2Ev.exit60 ] ; 7 uses
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !168
  %.not.i.i1.i = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !168
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !69 ; 3 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17, !inline_history !169
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !32
  %.not.i124 = icmp eq ptr %i.dk, %i.ds
  br i1 %.not.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  store i32 44, ptr %i.dk, align 16, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 1, ptr %i.dt, align 16, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  store ptr %i.du, ptr %i.a, align 8, !tbaa !31
  br label %bb.ao

bb.al:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  %i.dv = ptrtoint ptr %i.dk to i64
  %i.dw = ptrtoint ptr %i.di to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775776
  br i1 %i.dy, label %bb.am, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc137 unwind label %bb.aw

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125: ; preds = %bb.al
  %i.dz = ashr exact i64 %i.dx, 5                 ; 3 uses
  %.sroa.speculated.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i126, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 288230376151711743)
  %i.ed = select i1 %i.eb, i64 288230376151711743, i64 %i.ec ; 3 uses
  %.not.i.i.i127 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i127)
  %i.ee = shl nuw nsw i64 %i.ed, 5
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #18
          to label %.noexc138 unwind label %bb.aw ; 6 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx ; 2 uses
  store i32 44, ptr %i.eg, align 16, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i32 1, ptr %i.eh, align 16, !tbaa !24
  %.not10.i.i.i.i.i128 = icmp eq ptr %i.di, %i.dk
  br i1 %.not10.i.i.i.i.i128, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129

.lr.ph.i.i.i.i.i129:                              ; preds = %.noexc138, %.lr.ph.i.i.i.i.i129
  %.012.i.i.i.i.i130 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i129 ], [ %i.ef, %.noexc138 ] ; 2 uses
  %.0911.i.i.i.i.i131 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i129 ], [ %i.di, %.noexc138 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i130, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i131, i64 32, i1 false), !tbaa.struct !33, !alias.scope !170
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i131, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.ei, %i.dk
  br i1 %.not.i.i.i.i.i132, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133: ; preds = %.lr.ph.i.i.i.i.i129, %.noexc138
  %.0.lcssa.i.i.i.i.i134 = phi ptr [ %i.ef, %.noexc138 ], [ %i.ej, %.lr.ph.i.i.i.i.i129 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i134, i64 32 ; 2 uses
  %.not.i33.i.i135 = icmp eq ptr %i.di, null
  br i1 %.not.i33.i.i135, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dx) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136: ; preds = %bb.an, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  store ptr %i.ef, ptr %1, align 8, !tbaa !28
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !31
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.el, ptr %i.b, align 8, !tbaa !32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136
  %i.em = phi ptr [ %i.du, %bb.ak ], [ %i.ek, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ]
  %i.en = phi ptr [ %i.di, %bb.ak ], [ %i.ef, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = lshr exact i64 %i.eq, 5
  %i.es = and i64 %i.er, 4294967295
  %i.et = or disjoint i64 %i.es, -9223372036854775808
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.49, i64 2, i64 %i.et, ptr %i.en)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load ptr, ptr %2, align 8, !tbaa !52    ; 6 uses
  %i.ev = icmp eq ptr %i.eu, %i.aw
  %i.ew = load ptr, ptr %10, align 8, !tbaa !52   ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex                ; 2 uses
  br i1 %i.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71: ; preds = %bb.ap
  br i1 %i.ey, label %bb.aq, label %.thread.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66: ; preds = %bb.ap
  br i1 %i.ey, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !43 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  switch i64 %i.fa, label %bb.as [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !23
  store i8 %i.fc, ptr %i.eu, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ew, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fd = load i64, ptr %i.ez, align 8, !tbaa !43 ; 2 uses
  store i64 %i.fd, ptr %i.h, align 8, !tbaa !43
  %i.fe = load ptr, ptr %2, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd
  store i8 0, ptr %i.ff, align 1, !tbaa !23
  %.pre.i70 = load ptr, ptr %10, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

.thread.i72:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  store ptr %i.ew, ptr %2, align 8, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fh = load <2 x i64>, ptr %i.fg, align 8, !tbaa !23
  store <2 x i64> %i.fh, ptr %i.h, align 8, !tbaa !23
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66
  %i.fi = load i64, ptr %i.aw, align 8, !tbaa !23
  store ptr %i.ew, ptr %2, align 8, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fk = load <2 x i64>, ptr %i.fj, align 8, !tbaa !23
  store <2 x i64> %i.fk, ptr %i.h, align 8, !tbaa !23
  %.not.i68 = icmp eq ptr %i.eu, null
  br i1 %.not.i68, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67
  store ptr %i.eu, ptr %10, align 8, !tbaa !52
  store i64 %i.fi, ptr %i.ex, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67, %.thread.i72
  store ptr %i.ex, ptr %10, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69, %bb.at, %bb.au
  %i.fl = phi ptr [ %.pre.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69 ], [ %i.eu, %bb.at ], [ %i.ex, %bb.au ]
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fm, align 8, !tbaa !43
  store i8 0, ptr %i.fl, align 1, !tbaa !23
  %i.fn = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !23
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.fs = load i64, ptr %i.h, align 8, !tbaa !43, !noalias !174
  %i.ft = icmp eq i64 %i.fs, 2
  br i1 %i.ft, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fu = load ptr, ptr %2, align 8, !tbaa !52, !noalias !174
  %i.fv = load i16, ptr %i.fu, align 1
  %i.fw = icmp ne i16 %i.fv, 13364
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(3) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ay

_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77
  %i.fz = load i8, ptr %11, align 8, !tbaa !53, !range !63, !noundef !64
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bi, label %bb.az

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.y
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.cl, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bn

bb.aw:                                            ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125, %bb.am
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ax:                                            ; preds = %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bn

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i84, label %_ZNK7testing15AssertionResult15failure_messageEv.exit85, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit85

_ZNK7testing15AssertionResult15failure_messageEv.exit85: ; preds = %bb.bb, %bb.ba
end_hunk_2
begin_hunk_3_@_ZN20args_test_clear_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #17, !inline_history !71
  br label %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i

_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i:  ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.hi = load ptr, ptr %i.f, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !74
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i: ; preds = %bb.bk, %_ZN3fmt3v126detail16dynamic_arg_listD2Ev.exit.i
  %i.ho = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i1.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i
  %i.hp = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit91, %bb.ay
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %i.gd, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.ax, %bb.aw, %bb.av, %bb.x, %bb.w, %bb.v
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.bm ], [ %i.gc, %bb.ax ], [ %i.gb, %bb.aw ], [ %.pn20.pn.pn, %bb.av ], [ %i.ck, %bb.x ], [ %i.cj, %bb.w ], [ %.pn.pn.pn, %bb.v ] ; 2 uses
  %i.ht = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.bn
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.c
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn24.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn24.pn.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.b
  %.pn24.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.r, %bb.b ]
  call void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN22args_test_reserve_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i:
  %1 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 5 uses
  %2 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 19 uses
  %3 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %.noexc unwind label %bb.l     ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.e = load ptr, ptr %2, align 8, !tbaa !28     ; 5 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.d, %.noexc ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.e, %.noexc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !179
  %i.g = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %.not.i8.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.l) #20
  br label %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.a, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !28
  store ptr %i.d, ptr %i.c, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.m, ptr %i.b, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread

_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !168
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.s
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %.noexc11 unwind label %bb.l   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !72   ; 4 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !168
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i

bb.b:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %bb.b, %.noexc11
  %.not.i8.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i4.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #20
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, %bb.c
  store ptr %i.x, ptr %i.n, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store ptr %i.ah, ptr %i.t, align 8, !tbaa !168
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !74
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %.pre36 = load ptr, ptr %i.b, align 8, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %.pre, %.pre36
  br i1 %.not.i, label %bb.d, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread: ; preds = %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit
  %i.aj = phi ptr [ %.pre, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit ], [ %i.d, %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ] ; 2 uses
  store float 1.500000e+00, ptr %i.aj, align 16, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 9, ptr %i.ak, align 16, !tbaa !24
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.c, align 8, !tbaa !31
  br label %bb.g

bb.d:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !28    ; 5 uses
  %i.ao = ptrtoint ptr %.pre36 to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775776
  br i1 %i.ar, label %bb.e, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc33.a unwind label %bb.m

.noexc33.a:                                       ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.as = ashr exact i64 %i.aq, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 288230376151711743)
  %i.aw = select i1 %i.au, i64 288230376151711743, i64 %i.av ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  %i.ax = shl nuw nsw i64 %i.aw, 5
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #18
          to label %.noexc34 unwind label %bb.m   ; 5 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store float 1.500000e+00, ptr %i.az, align 16, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 9, ptr %i.ba, align 16, !tbaa !24
  %.not10.i.i.i.i.i28 = icmp eq ptr %i.an, %.pre36
  br i1 %.not10.i.i.i.i.i28, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.noexc34, %.lr.ph.i.i.i.i.i29
  %.012.i.i.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i29 ], [ %i.ay, %.noexc34 ] ; 2 uses
  %.0911.i.i.i.i.i31 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i29 ], [ %i.an, %.noexc34 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i30, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i31, i64 32, i1 false), !tbaa.struct !33, !alias.scope !183
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i31, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bb, %.pre36
  br i1 %.not.i.i.i.i.i32, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i29, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i29, %.noexc34
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ay, %.noexc34 ], [ %i.bc, %.lr.ph.i.i.i.i.i29 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i33.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ay, ptr %2, align 8, !tbaa !28
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE7reserveEmm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 42, ptr %i.a, align 4, !tbaa !91
  store ptr @.str.57, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.bk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
          to label %.noexc14 unwind label %bb.n   ; 6 uses

.noexc14:                                         ; preds = %bb.g
  invoke void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IPKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !69
  store ptr null, ptr %i.bj, align 8, !tbaa !69
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !69 ; 3 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !69
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i: ; preds = %bb.h
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !69
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i: ; preds = %bb.h
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #17, !inline_history !105
  %.pr.i.i = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !69
  %.not.i.i.i.i.i13 = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i.i13, label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i
  %i.br = load ptr, ptr %.pr.i.i, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i) #17, !inline_history !106
  br label %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i

bb.i:                                             ; preds = %.noexc14
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 48) #20
  br label %.body

_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !107, !nonnull !64, !align !110
  store ptr %i.bw, ptr %1, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  invoke void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argIiEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bz = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41
  %i.cc = icmp eq ptr %i.bz, %i.cb                ; 2 uses
  %i.cd = load ptr, ptr %2, align 8               ; 2 uses
  %.idx.i.i = select i1 %i.cc, i64 0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = lshr exact i64 %i.ci, 5
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = select i1 %i.cc, i64 -9223372036854775808, i64 -4611686018427387904
  %i.cm = or disjoint i64 %i.ck, %i.cl
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.58, i64 10, i64 %i.cm, ptr %i.ce)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !43, !noalias !187
  %i.cp = icmp eq i64 %i.co, 10
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.k
  %i.cq = load ptr, ptr %4, align 8, !tbaa !52, !noalias !187 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = xor i64 %i.cr, 2334111870315998769
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  %i.cu = load i16, ptr %i.ct, align 1
  %i.cv = zext i16 %i.cu to i64
  %i.cw = xor i64 %i.cv, 12852
  %i.cx = or i64 %i.cs, %i.cw
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.k
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(11) @.str.60, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.p

_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.db = load i8, ptr %5, align 8, !tbaa !53, !range !63, !noundef !64
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.z, label %bb.q

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_M_allocateEm.exit.i.i, %_ZNSt12_Vector_baseIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.m:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.e
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEERKT_RKT0_.exit.i, %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.n ], [ %i.bu, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ae

bb.o:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt10unique_ptrIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEESt14default_deleteIS4_EED2Ev:bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #20
  br label %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit

_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #20
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN3fmt3v1224dynamic_format_arg_storeINS1_7contextEEEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN19args_test_size_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::dynamic_format_arg_store", align 8 ; 19 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %i.h = load i8, ptr %2, align 8, !tbaa !53, !range !63, !noundef !64
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.l, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.m, %bb.e ], [ @.str.19, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 192, ptr noundef %i.n)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.o = load ptr, ptr %3, align 8, !tbaa !66     ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.o, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit35

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.v = load ptr, ptr %3, align 8, !tbaa !66     ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.v, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.k
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  br label %bb.t

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65  ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i36, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !31  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  store i32 42, ptr %i.ag, align 16, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 1, ptr %i.aj, align 16, !tbaa !24
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !31
  %.pre = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !28    ; 5 uses
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775776
  br i1 %i.aq, label %bb.p, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc90.a unwind label %bb.u

.noexc90.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ar = ashr exact i64 %i.ap, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 288230376151711743)
  %i.av = select i1 %i.at, i64 288230376151711743, i64 %i.au ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.aw = shl nuw nsw i64 %i.av, 5
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #18
          to label %.noexc91 unwind label %bb.u   ; 6 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i32 42, ptr %i.ay, align 16, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 1, ptr %i.az, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !209
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc91 ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ax, ptr %1, align 8, !tbaa !28
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bg, ptr %i.ah, align 8, !tbaa !32
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit: ; preds = %bb.n, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bh = phi ptr [ %.pre, %bb.n ], [ %i.ax, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.bi = phi ptr [ %i.al, %bb.n ], [ %i.bc, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 5
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 1, ptr %i.b, align 4, !tbaa !91
  %i.bn = icmp eq i64 %i.bl, 32
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40 unwind label %bb.v

bb.s:                                             ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIiEEvRKT_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40 unwind label %bb.v

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bo = load i8, ptr %5, align 8, !tbaa !53, !range !63, !noundef !64
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.af, label %bb.w

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.bp

bb.u:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.aj

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i41, label %_ZNK7testing15AssertionResult15failure_messageEv.exit42, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit42

_ZNK7testing15AssertionResult15failure_messageEv.exit42: ; preds = %bb.y, %bb.x
  %i.bv = phi ptr [ %i.bu, %bb.y ], [ @.str.19, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 195, ptr noundef %i.bv)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit42
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.bw = load ptr, ptr %6, align 8, !tbaa !66    ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %bb.aa
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit48

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit42
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn18 = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cd = load ptr, ptr %6, align 8, !tbaa !66    ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i46, label %_ZN7testing7MessageD2Ev.exit48, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47: ; preds = %bb.ae
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #17, !inline_history !68
  br label %_ZN7testing7MessageD2Ev.exit48

_ZN7testing7MessageD2Ev.exit48:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47, %bb.ae, %bb.ab
  %.pn18.pn = phi { ptr, i32 } [ %i.ca, %bb.ab ], [ %.pn18, %bb.ae ], [ %.pn18, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #17
  br label %bb.aj

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit40, %_ZN7testing7MessageD2Ev.exit45
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !65 ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i49, label %_ZN7testing15AssertionResultD2Ev.exit53, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !52 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50: ; preds = %bb.ag
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit53

_ZN7testing15AssertionResultD2Ev.exit53:          ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 1 dereferenceable(11) @.str.77)
          to label %.noexc54 unwind label %bb.ak

.noexc54:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit53
  %i.cq = invoke noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit unwind label %bb.ak ; 0 uses

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE9push_backIA11_cEEvRKT_.exit: ; preds = %.noexc54
end_hunk_4
begin_hunk_5_@_ZN7testing8internal15TestFactoryImplI34args_test_named_custom_format_TestE10CreateTestEv:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV34args_test_named_custom_format_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI20args_test_clear_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI20args_test_clear_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV20args_test_clear_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI22args_test_reserve_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI22args_test_reserve_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22args_test_reserve_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI28args_test_throw_on_copy_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI28args_test_throw_on_copy_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV28args_test_throw_on_copy_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI31args_test_move_constructor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI31args_test_move_constructor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV31args_test_move_constructor_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI19args_test_size_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI19args_test_size_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19args_test_size_Test, i64 16), ptr %i.a, align 8, !tbaa !10
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKiEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.e, ptr %i.b, align 16, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %i.f, align 16, !tbaa !24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !91
  store i32 %i.v, ptr %i.u, align 16, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 1, ptr %i.w, align 16, !tbaa !24
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !214
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i33.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.b
  %i.ae = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ], [ %i.g, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEERKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !218
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !192
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.f, ptr %i.a, align 8, !tbaa !213
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !52
  %i.i = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.i, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(5) %1, i64 %i.f, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.body, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #17, !inline_history !220
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.u = load ptr, ptr %0, align 8, !tbaa !69
  store ptr null, ptr %0, align 8, !tbaa !69
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread: ; preds = %bb.e
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17, !inline_history !221
  %.pr = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit
  %i.z = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #17, !inline_history !222
  br label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread
  ret ptr %i.d

.body:                                            ; preds = %bb.d, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43
  store ptr %i.e, ptr %i.b, align 16, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 13, ptr %i.i, align 16, !tbaa !24
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775776
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743)
  %i.u = select i1 %i.s, i64 288230376151711743, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #18 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !43
  store ptr %i.y, ptr %i.x, align 16, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 13, ptr %i.ac, align 16, !tbaa !24
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.l, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !223
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.ae, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i33.i = icmp eq ptr %i.l, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ai) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, %bb.e
  store ptr %i.w, ptr %0, align 8, !tbaa !28
  store ptr %i.af, ptr %i.a, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.b
  %i.ak = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ], [ %i.j, %bb.b ]
  ret ptr %i.ak
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4nodeIvED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !inline_history !227
  br label %_ZN3fmt3v126detail4nodeIvED2Ev.exit

_ZN3fmt3v126detail4nodeIvED2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20, !inline_history !228
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !inline_history !229
  br label %_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail4nodeIvED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4nodeIvED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !227
  br label %_ZN3fmt3v126detail4nodeIvED2Ev.exit

_ZN3fmt3v126detail4nodeIvED2Ev.exit:              ; preds = %bb.a, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA20_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !230
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !235
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA20_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail16dynamic_arg_list4pushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEERKT_RKT0_:bb.a
._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.k, ptr %i.j, align 1, !tbaa !23
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(11) %1, i64 %i.f, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.body, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #17, !inline_history !257
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.u = load ptr, ptr %0, align 8, !tbaa !69
  store ptr null, ptr %0, align 8, !tbaa !69
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !69
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread, label %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread: ; preds = %bb.e
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #17, !inline_history !221
  %.pr = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !69
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5: ; preds = %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit
  %i.z = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #17, !inline_history !222
  br label %_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteISB_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i5, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit, %_ZNSt10unique_ptrIN3fmt3v126detail4nodeIvEESt14default_deleteIS4_EEaSEOS7_.exit.thread
  ret ptr %i.d

.body:                                            ; preds = %bb.d, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA41_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !263
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA41_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK11custom_typeEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 16, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI11custom_typeEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 15, ptr %i.f, align 16, !tbaa !24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 16, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI11custom_typeEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 15, ptr %i.w, align 16, !tbaa !24
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !266
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i33.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.b
  %i.ae = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK11custom_typeEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ], [ %i.g, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI11custom_typeEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = load i32, ptr %0, align 4, !tbaa !91
  store i32 %i.a, ptr %3, align 16, !tbaa !23
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, ptr nonnull @.str.90, i64 7, i64 1, ptr nonnull %3, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

declare void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeI11custom_typeED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4nodeIvED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !227
  br label %_ZN3fmt3v126detail4nodeIvED2Ev.exit

_ZN3fmt3v126detail4nodeIvED2Ev.exit:              ; preds = %bb.a, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA29_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(29) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !277
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA29_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA29_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA29_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA29_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK13to_stringableEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 16, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI13to_stringableEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 15, ptr %i.f, align 16, !tbaa !24
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 16, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI13to_stringableEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 15, ptr %i.w, align 16, !tbaa !24
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !280
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i33.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i, %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !28
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.b
  %i.ae = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRK13to_stringableEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ], [ %i.g, %bb.b ]
  ret ptr %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customI13to_stringableEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeI13to_stringableED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4nodeIvED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !227
  br label %_ZN3fmt3v126detail4nodeIvED2Ev.exit

_ZN3fmt3v126detail4nodeIvED2Ev.exit:              ; preds = %bb.a, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argIiEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107, !nonnull !64, !align !110
  %i.j = call noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKiEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !285    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 5
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -2                         ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !168  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.u, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !168
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 576460752303423487)
  %i.ah = select i1 %i.af, i64 576460752303423487, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 3 uses
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx12, align 8, !tbaa !91
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ap) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !72
  store ptr %i.am, ptr %i.c, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aq, ptr %i.v, align 8, !tbaa !74
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %i.ar = phi ptr [ %i.am, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.x, %bb.d ]
  %i.as = phi ptr [ %i.aj, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  store ptr %i.as, ptr %i.ax, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argIiEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IPKcEERKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !218
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail16dynamic_arg_list10typed_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !193    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !192
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.g, ptr %i.a, align 8, !tbaa !213
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.g    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !52
  %i.j = load i64, ptr %i.a, align 8, !tbaa !213
  store i64 %i.j, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc3, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc3 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !23
  store i8 %i.l, ptr %i.k, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.d, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.g:                                             ; preds = %.noexc.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3fmt3v126detail4nodeIvEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4nodeIvED2Ev.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i: ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #17, !inline_history !227
  br label %_ZN3fmt3v126detail4nodeIvED2Ev.exit

_ZN3fmt3v126detail4nodeIvED2Ev.exit:              ; preds = %bb.g, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 16 dereferenceable(20) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 7 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !33
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.e, align 8, !tbaa !31
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) %i.m, i64 32, i1 false), !tbaa.struct !33
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.e, align 8, !tbaa !31
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -32 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 5                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !286

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.v, ptr align 16 %i.l, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 32
  br i1 %i.w, label %bb.g, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.p, ptr noundef nonnull align 16 dereferenceable(20) %i.l, i64 20, i1 false), !tbaa.struct !33
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.l, ptr noundef nonnull align 16 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !33
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = sub i64 %i.y, %i.c                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775776
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 5                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711743)
  %i.af = select i1 %i.ad, i64 288230376151711743, i64 %i.ae ; 3 uses
  %.not.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #18 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ai, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !33
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.a, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !287
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.ak, %.lr.ph.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.an, %.lr.ph.i.i.i17.i ], [ %i.al, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.am, %.lr.ph.i.i.i17.i ], [ %i.x, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i18.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i19.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !291
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 32 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.am, %i.f
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.al, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ], [ %i.an, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.j
  store ptr %i.ah, ptr %0, align 8, !tbaa !28
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.e, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_.exit, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !28
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.d
  ret ptr %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !300
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !303, !nonnull !64, !align !121
  %i.j = call noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !305    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 5
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -2                         ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !168  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.u, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !168
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 576460752303423487)
  %i.ah = select i1 %i.af, i64 576460752303423487, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 3 uses
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx12, align 8, !tbaa !91
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ap) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !72
  store ptr %i.am, ptr %i.c, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aq, ptr %i.v, align 8, !tbaa !74
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %i.ar = phi ptr [ %i.am, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.x, %bb.d ]
  %i.as = phi ptr [ %i.aj, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  store ptr %i.as, ptr %i.ax, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118, !nonnull !64, !align !121
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !306  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.l, align 16, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 12, ptr %i.o, align 16, !tbaa !24
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA11_KcEEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775776
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711743)
  %i.aa = select i1 %i.y, i64 288230376151711743, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 5
  %i.ac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #18 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.j, ptr %i.ad, align 16, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 12, ptr %i.ae, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !308
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ak) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !28
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.al, ptr %i.m, align 8, !tbaa !32
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA11_KcEEERS4_DpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA11_KcEEERS4_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.ac, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.an = phi ptr [ %i.q, %bb.d ], [ %i.ah, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ao = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 5
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -2                       ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !168 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA11_KcEEERS4_DpOT_.exit
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !193
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.au, ptr %.sroa.612.0..sroa_idx, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !168
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA11_KcEEERS4_DpOT_.exit
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !72  ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 3 uses
  store ptr %i.ao, ptr %i.bl, align 8, !tbaa !193
  %.sroa.612.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.au, ptr %.sroa.612.0..sroa_idx13, align 8, !tbaa !91
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.k, %.noexc6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bq) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !72
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !168
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !74
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.h
  %i.bs = phi ptr [ %.pre24, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.bt = phi ptr [ %i.bn, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ]
  %i.bu = phi ptr [ %i.bk, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre23, %bb.h ] ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4
  store ptr %i.bu, ptr %i.bs, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.by, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA11_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -32
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !31
  resume { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !318
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133, !nonnull !64, !align !121
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !321  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.l, align 16, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 12, ptr %i.o, align 16, !tbaa !24
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA15_KcEEERS4_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775776
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711743)
  %i.aa = select i1 %i.y, i64 288230376151711743, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 5
  %i.ac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #18 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.j, ptr %i.ad, align 16, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 12, ptr %i.ae, align 16, !tbaa !24
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !33, !alias.scope !323
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ak) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !28
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.al, ptr %i.m, align 8, !tbaa !32
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA15_KcEEERS4_DpOT_.exit

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA15_KcEEERS4_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.ac, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.an = phi ptr [ %i.q, %bb.d ], [ %i.ah, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.ao = load ptr, ptr %1, align 8, !tbaa !327   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 5
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -2                       ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !168 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA15_KcEEERS4_DpOT_.exit
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !193
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.au, ptr %.sroa.612.0..sroa_idx, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !168
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRA15_KcEEERS4_DpOT_.exit
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !72  ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 3 uses
  store ptr %i.ao, ptr %i.bl, align 8, !tbaa !193
  %.sroa.612.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.au, ptr %.sroa.612.0..sroa_idx13, align 8, !tbaa !91
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.k, %.noexc6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bq) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !72
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !168
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !74
  %.pre24 = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.h
  %i.bs = phi ptr [ %.pre24, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.bt = phi ptr [ %i.bn, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ay, %bb.h ]
  %i.bu = phi ptr [ %i.bk, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre23, %bb.h ] ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4
  store ptr %i.bu, ptr %i.bs, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.by, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIA15_KcEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit9: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -32
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !31
  resume { ptr, i32 } %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA15_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(15) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  store ptr %4, ptr %i.a, align 8, !tbaa !193, !noalias !333
  invoke void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argI11custom_typeEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151, !nonnull !64, !align !110
  %i.j = call noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK11custom_typeEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !336    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 5
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -2                         ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !168  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.u, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.c, align 8, !tbaa !168
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775792
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 576460752303423487)
  %i.ah = select i1 %i.af, i64 576460752303423487, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 3 uses
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.t, ptr %.sroa.611.0..sroa_idx12, align 8, !tbaa !91
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ap) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !72
  store ptr %i.am, ptr %i.c, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aq, ptr %i.v, align 8, !tbaa !74
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %i.ar = phi ptr [ %i.am, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.x, %bb.d ]
  %i.as = phi ptr [ %i.aj, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  store ptr %i.as, ptr %i.ax, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argI11custom_typeEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !31
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS0_6detail9named_argIT_cEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::basic_format_arg", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = call ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.f, ptr noundef nonnull align 16 dereferenceable(20) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143, !nonnull !64, !align !121
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !337
  %i.k = call noundef nonnull align 16 dereferenceable(20) ptr @_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12emplace_backIJRK11custom_typeEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !339    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = load ptr, ptr %0, align 8, !tbaa !28
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 5
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -2                         ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !168  ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.v, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.u, ptr %.sroa.611.0..sroa_idx, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.c, align 8, !tbaa !168
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775792
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 576460752303423487)
  %i.ai = select i1 %i.ag, i64 576460752303423487, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #18
          to label %.noexc6 unwind label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8 ; 5 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 3 uses
  store ptr %i.l, ptr %i.al, align 8, !tbaa !193
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.u, ptr %.sroa.611.0..sroa_idx12, align 8, !tbaa !91
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc6
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !72
  store ptr %i.an, ptr %i.c, align 8, !tbaa !168
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !74
  br label %_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %i.as = phi ptr [ %i.an, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.y, %bb.d ]
  %i.at = phi ptr [ %i.ak, %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4
  %i.ay = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  store ptr %i.at, ptr %i.ay, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  ret void

_ZNSt10unique_ptrISt6vectorIN3fmt3v1216basic_format_argINS2_7contextEEESaIS5_EEZNS2_24dynamic_format_arg_storeIS4_E11emplace_argISt17reference_wrapperIK11custom_typeEEEvRKNS2_6detail9named_argIT_cEEEUlPS7_E_ED2Ev.exit8: ; preds = %_ZNKSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !31
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !345
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA10_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA10_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA10_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA10_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !348
  store ptr %3, ptr %i.a, align 8, !tbaa !193, !noalias !353
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
end_hunk_6
