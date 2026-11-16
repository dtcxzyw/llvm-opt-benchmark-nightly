Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/bspline_interpolant?download=true
inline.NumInlined: 2124
inline.NumDeleted: 740
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZN6casadi7Options5EntryD2Ev.exit

_ZN6casadi7Options5EntryD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #24
  br label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi18BSplineInterpolantD2Ev(ptr noundef nonnull align 8 dead_on_return(1520) dereferenceable(1520) initializes((0, 8), (1312, 1320)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 936) (i8, ptr @_ZTVN6casadi18BSplineInterpolantE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi18BSplineInterpolantE, i64 968), ptr %i.a, align 8, !tbaa !50
  invoke void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1440
  tail call void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  tail call void @_ZN6casadi11InterpolantD2Ev(ptr noundef nonnull align 8 dead_on_return(1440) dereferenceable(1440) %0) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #27
  unreachable
}

declare void @_ZN6casadi13ProtoFunction9clear_memEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6casadi8FunctionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN6casadi11InterpolantD2Ev(ptr noundef nonnull align 8 dead_on_return(1440) dereferenceable(1440)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi18BSplineInterpolantD0Ev(ptr noundef nonnull align 8 dereferenceable(1520) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6casadi18BSplineInterpolantD1Ev(ptr noundef nonnull align 8 dead_on_return(1520) dereferenceable(1520) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1520) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi18BSplineInterpolantC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERKS9_IxSaIxEESD_x(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6casadi11InterpolantC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERKS9_IxSaIxEESD_x(ptr noundef nonnull align 8 dereferenceable(1440) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5)
  store ptr getelementptr inbounds nuw inrange(-16, 936) (i8, ptr @_ZTVN6casadi18BSplineInterpolantE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6casadi18BSplineInterpolantE, i64 968), ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440
  invoke void @_ZN6casadi8FunctionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i64 0, ptr %i.e, align 8, !tbaa !29
  store i8 0, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6casadi11InterpolantD2Ev(ptr noundef nonnull align 8 dead_on_return(1440) dereferenceable(1440) %0) #25
  resume { ptr, i32 } %i.g
}

declare void @_ZN6casadi11InterpolantC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEERKS9_IxSaIxEESD_x(ptr noundef nonnull align 8 dereferenceable(1440), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #6

declare void @_ZN6casadi8FunctionC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi18BSplineInterpolant10not_a_knotERKSt6vectorIdSaIdEEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.43") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::vector.27", align 8   ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::vector.27", align 8   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = and i64 %2, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %2, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %22 = and i64 %2, -2                            ; 2 uses
  %i.j = add nsw i64 %22, 2
  %.not64 = icmp ult i64 %i.i, %i.j
  br i1 %.not64, label %bb.c, label %.preheader168

.preheader168:                                    ; preds = %bb.b
  %.not73173 = icmp slt i64 %2, 0                 ; 2 uses
  br i1 %.not73173, label %.preheader164, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader168
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !209
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #26
          to label %bb.az unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.m:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.n:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.o:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.p:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.k, %bb.j
  %.027 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !28
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn65 = phi { ptr, i32 } [ %i.s, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %bb.q ] ; 2 uses
  %.128 = phi i1 [ true, %bb.p ], [ %.027, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.027, %bb.q ] ; 2 uses
  %i.z = load ptr, ptr %8, align 8, !tbaa !25     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.o
  %.pn65.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.229 = phi i1 [ true, %bb.o ], [ %.128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ae = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.n
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.q, %bb.n ], [ %.pn65.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn65.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 2 uses
  %.330 = phi i1 [ true, %bb.n ], [ %.229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 2 uses
  %i.aj = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.m
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.m ], [ %.pn65.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn65.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 2 uses
  %.431 = phi i1 [ true, %bb.m ], [ %.330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ao = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.l
  %.pn65.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.l ], [ %.pn65.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.pn65.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 4 uses
  %.532 = phi i1 [ true, %bb.l ], [ %.431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !28
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.ay = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !28
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bi) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.532, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.532, label %bb.r, label %_ZNSt6vectorIdSaIdEED2Ev.exit

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread
  %.pn65.pn.pn.pn.pn.pn.pn138.ph = phi { ptr, i32 } [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pn65.pn.pn.pn.pn.pn.pn138 = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %.pn65.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn65.pn.pn.pn.pn.pn.pn138.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.preheader164.loopexit:                           ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %.pre204 = load ptr, ptr %1, align 8, !tbaa !58 ; 2 uses
  %.pre207 = ptrtoint ptr %.pre to i64
  %.pre208 = ptrtoint ptr %.pre204 to i64
  %.pre210 = sub i64 %.pre207, %.pre208
  %.pre212 = ashr exact i64 %.pre210, 3
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.loopexit, %.preheader168
  %.pre-phi213 = phi i64 [ %.pre212, %.preheader164.loopexit ], [ %i.i, %.preheader168 ]
  %i.bj = phi ptr [ %i.cl, %.preheader164.loopexit ], [ null, %.preheader168 ] ; 2 uses
  %i.bk = phi ptr [ %i.cm, %.preheader164.loopexit ], [ null, %.preheader168 ] ; 2 uses
  %i.bl = phi ptr [ %.pre204, %.preheader164.loopexit ], [ %i.e, %.preheader168 ]
  %i.bm = phi ptr [ %.pre, %.preheader164.loopexit ], [ %i.d, %.preheader168 ]
  %.lcssa = phi ptr [ %i.cn, %.preheader164.loopexit ], [ null, %.preheader168 ] ; 3 uses
  store ptr %.lcssa, ptr %0, align 8
  %23 = sub nuw nsw i64 -2, %22                   ; 2 uses
  %24 = sub nsw i64 0, %.pre-phi213
  %.not190 = icmp eq i64 %23, %24
  br i1 %.not190, label %.preheader, label %.lr.ph180

.lr.ph180:                                        ; preds = %.preheader164
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.y

bb.s:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.bp = phi ptr [ null, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %i.bq = phi ptr [ null, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %.026174 = phi i64 [ 0, %.lr.ph ], [ %i.co, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.br = phi ptr [ null, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 9 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !60
  store double %i.bt, ptr %i.bq, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !57
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.v, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.br, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #23
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load double, ptr %i.bs, align 8, !tbaa !60
  store double %i.ch, ptr %i.cg, align 8, !tbaa !60
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.br, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc96
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bx) #24
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.cj, ptr %i.k, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.ck, ptr %i.l, align 8, !tbaa !61
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.t
  %i.cl = phi ptr [ %i.ck, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.bp, %bb.t ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.bu, %bb.t ] ; 2 uses
  %i.cn = phi ptr [ %i.cf, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.br, %bb.t ] ; 2 uses
  %i.co = add nuw i64 %.026174, 1
  %exitcond.not = icmp eq i64 %.026174, %2
  br i1 %exitcond.not, label %.preheader164.loopexit, label %bb.s, !llvm.loop !204

.preheader:                                       ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106, %.preheader164
  %i.cp = phi ptr [ %i.bj, %.preheader164 ], [ %i.dv, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ]
  %i.cq = phi ptr [ %i.bk, %.preheader164 ], [ %i.dw, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ]
  %.lcssa176 = phi ptr [ %.lcssa, %.preheader164 ], [ %i.dx, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 3 uses
  store ptr %.lcssa176, ptr %0, align 8
  br i1 %.not73173, label %._crit_edge, label %.lr.ph188

.lr.ph188:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ae

bb.y:                                             ; preds = %.lr.ph180, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106
  %i.ct = phi ptr [ %i.bl, %.lr.ph180 ], [ %i.dt, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 2 uses
  %i.cu = phi ptr [ %i.bm, %.lr.ph180 ], [ %i.du, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ]
  %i.cv = phi ptr [ %i.bj, %.lr.ph180 ], [ %i.dv, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 5 uses
  %i.cw = phi ptr [ %i.bk, %.lr.ph180 ], [ %i.dw, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 3 uses
  %.025179 = phi i64 [ 0, %.lr.ph180 ], [ %i.dy, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 2 uses
  %i.cx = phi ptr [ %.lcssa, %.lr.ph180 ], [ %i.dx, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106 ] ; 9 uses
  %i.cy = getelementptr [8 x i8], ptr %i.ct, i64 %i.b
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %.025179 ; 2 uses
  %.not.i97 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i97, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = load double, ptr %i.da, align 8, !tbaa !60
  store double %i.db, ptr %i.cw, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.bn, align 8, !tbaa !57
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106

bb.aa:                                            ; preds = %bb.y
  %i.dd = ptrtoint ptr %i.cv to i64
  %i.de = ptrtoint ptr %i.cx to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.ab, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i98

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cx, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.aa
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i99, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #23
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i98
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  %i.dp = load double, ptr %i.da, align 8, !tbaa !60
  store double %i.dp, ptr %i.do, align 8, !tbaa !60
  %i.dq = icmp sgt i64 %i.df, 0
  br i1 %i.dq, label %bb.ac, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i101

bb.ac:                                            ; preds = %.noexc105
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %i.cx, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i101

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i101: ; preds = %bb.ac, %.noexc105
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %.not.i17.i.i102 = icmp eq ptr %i.cx, null
  br i1 %.not.i17.i.i102, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i101
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.df) #24
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103: ; preds = %bb.ad, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i101
  store ptr %i.dr, ptr %i.bn, align 8, !tbaa !57
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl ; 2 uses
  store ptr %i.ds, ptr %i.bo, align 8, !tbaa !61
  %.pre205 = load ptr, ptr %i.c, align 8, !tbaa !57
  %.pre206 = load ptr, ptr %1, align 8, !tbaa !58
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit106

_ZNSt6vectorIdSaIdEE9push_backERKd.exit106:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103, %bb.z
  %i.dt = phi ptr [ %.pre206, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103 ], [ %i.ct, %bb.z ] ; 2 uses
  %i.du = phi ptr [ %.pre205, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103 ], [ %i.cu, %bb.z ] ; 2 uses
  %i.dv = phi ptr [ %i.ds, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103 ], [ %i.cv, %bb.z ] ; 2 uses
  %i.dw = phi ptr [ %i.dr, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103 ], [ %i.dc, %bb.z ] ; 2 uses
  %i.dx = phi ptr [ %i.dn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i103 ], [ %i.cx, %bb.z ] ; 2 uses
  %i.dy = add nuw nsw i64 %.025179, 1             ; 2 uses
  %i.dz = ptrtoint ptr %i.du to i64
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3
  %i.ed = add i64 %23, %i.ec
  %i.ee = icmp ult i64 %i.dy, %i.ed
  br i1 %i.ee, label %bb.y, label %.preheader, !llvm.loop !205

bb.ae:                                            ; preds = %.lr.ph188, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116
  %i.ef = phi ptr [ %i.cp, %.lr.ph188 ], [ %i.fh, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116 ] ; 5 uses
  %i.eg = phi ptr [ %i.cq, %.lr.ph188 ], [ %i.fi, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116 ] ; 3 uses
  %.024187 = phi i64 [ 0, %.lr.ph188 ], [ %i.fk, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116 ] ; 2 uses
  %i.eh = phi ptr [ %.lcssa176, %.lr.ph188 ], [ %i.fj, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116 ] ; 9 uses
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ej = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = getelementptr i8, ptr %i.ej, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -8     ; 2 uses
  %.not.i107 = icmp eq ptr %i.eg, %i.ef
  br i1 %.not.i107, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !60
  store double %i.ep, ptr %i.eg, align 8, !tbaa !60
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.cr, align 8, !tbaa !57
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116

bb.ag:                                            ; preds = %bb.ae
  %i.er = ptrtoint ptr %i.ef to i64
  %i.es = ptrtoint ptr %i.eh to i64
  %i.et = sub i64 %i.er, %i.es                    ; 6 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.ah, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i108

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.eh, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.ag
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i109 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i109, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i110)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #23
          to label %.noexc115 unwind label %.loopexit ; 4 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i108
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 2 uses
  %i.fd = load double, ptr %i.eo, align 8, !tbaa !60
  store double %i.fd, ptr %i.fc, align 8, !tbaa !60
  %i.fe = icmp sgt i64 %i.et, 0
  br i1 %i.fe, label %bb.ai, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i111

bb.ai:                                            ; preds = %.noexc115
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %i.eh, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i111

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i111: ; preds = %bb.ai, %.noexc115
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %.not.i17.i.i112 = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i112, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i111
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.et) #24
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113: ; preds = %bb.aj, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i111
  store ptr %i.ff, ptr %i.cr, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  store ptr %i.fg, ptr %i.cs, align 8, !tbaa !61
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit116

_ZNSt6vectorIdSaIdEE9push_backERKd.exit116:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113, %bb.af
  %i.fh = phi ptr [ %i.fg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113 ], [ %i.ef, %bb.af ]
  %i.fi = phi ptr [ %i.ff, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113 ], [ %i.eq, %bb.af ]
  %i.fj = phi ptr [ %i.fb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i113 ], [ %i.eh, %bb.af ] ; 2 uses
  %i.fk = add nuw i64 %.024187, 1
  %exitcond203.not = icmp eq i64 %.024187, %2
  br i1 %exitcond203.not, label %._crit_edge, label %bb.ae, !llvm.loop !206

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i108
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.eh, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i98
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cx, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.br, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.ab, %bb.ah
  %i.fl = phi ptr [ %i.bp, %bb.v ], [ %i.cv, %bb.ab ], [ %i.ef, %bb.ah ]
  %i.fm = phi ptr [ %i.br, %bb.v ], [ %i.cx, %bb.ab ], [ %i.eh, %bb.ah ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.a
  %i.fn = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.12)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !alias.scope !210
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.fn, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #26
          to label %bb.az unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread: ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split293

bb.as:                                            ; preds = %bb.am
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.at:                                            ; preds = %bb.an
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

bb.au:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.av:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.aw
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !28
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.av
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.av ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.ft, %bb.aw ] ; 2 uses
  %.1 = phi i1 [ true, %bb.av ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.0, %bb.aw ] ; 2 uses
  %i.fz = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
end_hunk_0
