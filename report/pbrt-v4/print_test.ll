Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/print_test?download=true
inline.NumInlined: 1847
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7testing8internal11CmpHelperNEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.r = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.y, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !28   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.al, %bb.t ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.am, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ak, %bb.s ] ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.av = load i64, ptr %i.at, align 8, !tbaa !19
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ai, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

declare noundef double @_ZNK17double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34OperatorLeftShiftPrint_Basics_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %39 = alloca %"class.testing::Message", align 8 ; 8 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.testing::Message", align 8 ; 8 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %47 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.testing::Message", align 8 ; 8 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.testing::Message", align 8 ; 8 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %59 = alloca %"class.testing::Message", align 8 ; 8 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %62 = alloca %"class.pbrt::Quaternion", align 16 ; 5 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %65 = alloca %"class.testing::Message", align 8 ; 8 uses
  %66 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %67 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %68 = alloca %"class.pbrt::Ray", align 8        ; 8 uses
  %69 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %71 = alloca %"class.testing::Message", align 8 ; 8 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %74 = alloca %"class.pbrt::Bounds2", align 16   ; 6 uses
  %75 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %77 = alloca %"class.testing::Message", align 8 ; 8 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %80 = alloca %"class.pbrt::Bounds3", align 8    ; 7 uses
  %81 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %83 = alloca %"class.testing::Message", align 8 ; 8 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %86 = alloca %"class.pbrt::SquareMatrix.24", align 4 ; 6 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %89 = alloca %"class.testing::Message", align 8 ; 8 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %92 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %93 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %94 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %95 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %97 = alloca %"class.testing::Message", align 8 ; 8 uses
  %98 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN4pbrt8internal9ToString2IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, float noundef 1.055000e+02, float noundef -1.275000e+01)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.e = load ptr, ptr %15, align 8, !tbaa !20    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.b:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %15, align 8, !tbaa !20    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.p, ptr %18, align 8, !tbaa !15, !alias.scope !241
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !18, !alias.scope !241
  store i8 0, ptr %i.p, align 8, !tbaa !19, !alias.scope !241
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !noalias !241 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !241 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64, !noalias !241 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %18, align 8, !tbaa !20, !alias.scope !241 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body200, label %.body200.sink.split

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  invoke void @_ZN7testing8internal11CmpHelperEQIA18_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(18) @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIA18_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit unwind label %bb.g

_ZN7testing8internal8EqHelperILb0EE7CompareIA18_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA18_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !19
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA18_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ak = load i8, ptr %17, align 8, !tbaa !25, !range !26, !noundef !27
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.v, label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.p
  br i1 %i.ap, label %.body200, label %.body200.sink.split

.body200.sink.split:                              ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.ad, %bb.d ], [ %i.ao, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %i.an, %bb.g ]
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ar) #22
  br label %.body200

.body200:                                         ; preds = %.body200.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %i.an, %bb.g ], [ %.pn.ph, %.body200.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ae

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.at, null
  br i1 %.not.i.i206, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.av = phi ptr [ %i.au, %bb.j ], [ @.str.112, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 108, ptr noundef %i.av)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.aw = load ptr, ptr %19, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.ax, label %bb.n, label %_ZN7testing7MessageD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ay = load ptr, ptr %19, align 8, !tbaa !31   ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN7testing7MessageD2Ev.exit, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN34OperatorLeftShiftPrint_Basics_Test8TestBodyEv:bb.a

bb.ie:                                            ; preds = %bb.hu, %.body511
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn143.pn, %bb.hu ], [ %.pn141, %.body511 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %.body502

.body502:                                         ; preds = %bb.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i496, %bb.ie
  %.pn143.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn, %bb.ie ], [ %i.aad, %bb.hf ], [ %i.za, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i496 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %56) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.oh

bb.if:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i534
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.body543

bb.ig:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit554
  %i.adj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adk = load ptr, ptr %64, align 8, !tbaa !20  ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.acl
  br i1 %i.adl, label %.body552, label %.body552.sink.split

.body552.sink.split:                              ; preds = %bb.ig, %bb.ic
  %.sink1105 = phi ptr [ %i.acz, %bb.ic ], [ %i.adk, %bb.ig ]
  %.pn148.ph = phi { ptr, i32 } [ %i.acy, %bb.ic ], [ %i.adj, %bb.ig ]
  %i.adm = load i64, ptr %i.acl, align 8, !tbaa !19
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %.sink1105, i64 noundef %i.adn) #22
  br label %.body552

.body552:                                         ; preds = %.body552.sink.split, %bb.ig, %bb.ic
  %.pn148 = phi { ptr, i32 } [ %i.acy, %bb.ic ], [ %i.adj, %bb.ig ], [ %.pn148.ph, %.body552.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  br label %bb.je

bb.ih:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.ii unwind label %bb.iq

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  %i.ado = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !28 ; 2 uses
  %.not.i.i562 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i562, label %_ZNK7testing15AssertionResult15failure_messageEv.exit563, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit563

_ZNK7testing15AssertionResult15failure_messageEv.exit563: ; preds = %bb.ij, %bb.ii
  %i.adr = phi ptr [ %i.adq, %bb.ij ], [ @.str.112, %bb.ii ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 156, ptr noundef %i.adr)
          to label %bb.ik unwind label %bb.ir

bb.ik:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit563
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.il unwind label %bb.is

bb.il:                                            ; preds = %bb.ik
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  %i.ads = load ptr, ptr %65, align 8, !tbaa !31
  %.not.i.i.i564 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i564, label %_ZN7testing7MessageD2Ev.exit566, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.adt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i565 unwind label %bb.ip

.noexc.i.i565:                                    ; preds = %bb.im
  br i1 %i.adt, label %bb.in, label %_ZN7testing7MessageD2Ev.exit566

bb.in:                                            ; preds = %.noexc.i.i565
  %i.adu = load ptr, ptr %65, align 8, !tbaa !31  ; 3 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %_ZN7testing7MessageD2Ev.exit566, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.adw = load ptr, ptr %i.adu, align 8, !tbaa !33
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(128) %i.adu) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit566

bb.ip:                                            ; preds = %bb.im
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  call void @__clang_call_terminate(ptr %i.aea) #23
  unreachable

_ZN7testing7MessageD2Ev.exit566:                  ; preds = %bb.il, %.noexc.i.i565, %bb.in, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.iv

bb.iq:                                            ; preds = %bb.ih
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.ir:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit563
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.is:                                            ; preds = %bb.ik
  %i.aed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #21
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn150 = phi { ptr, i32 } [ %i.aed, %bb.is ], [ %i.aec, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #21
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.iq
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.it ], [ %i.aeb, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #21
  br label %bb.je

bb.iv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %_ZN7testing7MessageD2Ev.exit566
  %i.aee = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !28
  %.not.i.i.i567 = icmp eq ptr %i.aef, null
  br i1 %.not.i.i.i567, label %_ZN7testing15AssertionResultD2Ev.exit572, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aeg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i568 unwind label %bb.iz

.noexc.i.i568:                                    ; preds = %bb.iw
  br i1 %i.aeg, label %bb.ix, label %_ZN7testing15AssertionResultD2Ev.exit572

bb.ix:                                            ; preds = %.noexc.i.i568
  %i.aeh = load ptr, ptr %i.aee, align 8, !tbaa !28 ; 4 uses
  %i.aei = icmp eq ptr %i.aeh, null
  br i1 %i.aei, label %_ZN7testing15AssertionResultD2Ev.exit572, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aej = load ptr, ptr %i.aeh, align 8, !tbaa !20 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 16 ; 2 uses
  %i.ael = icmp eq ptr %i.aej, %i.aek
  br i1 %i.ael, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i569: ; preds = %bb.iy
  %i.aem = load i64, ptr %i.aek, align 8, !tbaa !19
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aen) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i570: ; preds = %bb.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i569
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit572

bb.iz:                                            ; preds = %bb.iw
  %i.aeo = landingpad { ptr, i32 }
          catch ptr null
  %i.aep = extractvalue { ptr, i32 } %i.aeo, 0
  call void @__clang_call_terminate(ptr %i.aep) #23
  unreachable

_ZN7testing15AssertionResultD2Ev.exit572:         ; preds = %bb.iv, %.noexc.i.i568, %bb.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  store ptr %i.bu, ptr %61, align 8, !tbaa !33
  %i.aeq = load i64, ptr %i.bw, align 8
  %i.aer = getelementptr inbounds i8, ptr %61, i64 %i.aeq
  store ptr %i.bv, ptr %i.aer, align 8, !tbaa !33
  %i.aes = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aes, align 8, !tbaa !33
  %i.aet = getelementptr inbounds nuw i8, ptr %61, i64 80
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !20 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %61, i64 96 ; 2 uses
  %i.aew = icmp eq ptr %i.aeu, %i.aev
  br i1 %i.aew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i573: ; preds = %_ZN7testing15AssertionResultD2Ev.exit572
  %i.aex = load i64, ptr %i.aev, align 8, !tbaa !19
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aey) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i574: ; preds = %_ZN7testing15AssertionResultD2Ev.exit572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i573
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aes, align 8, !tbaa !33
  %i.aez = getelementptr inbounds nuw i8, ptr %61, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aez) #21
  %i.afa = getelementptr inbounds nuw i8, ptr %61, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.afa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  store <2 x float> <float -5.500000e+00, float 2.750000e+00>, ptr %68, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %68, i64 8
  store float 0.000000e+00, ptr %i.afb, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %68, i64 12
  store <4 x float> <float 1.000000e+00, float -8.750000e+00, float 2.250000e+00, float 2.500000e-01>, ptr %.sroa.23.0..sroa_idx.i, align 4
  %i.afc = getelementptr inbounds nuw i8, ptr %68, i64 32
  store i64 0, ptr %i.afc, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK4pbrt3Ray8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %68)
          to label %.noexc582 unwind label %bb.jf

.noexc582:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i574
  %i.afd = load ptr, ptr %5, align 8, !tbaa !20
  %i.afe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !18
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %i.afd, i64 noundef %i.aff)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i579 unwind label %bb.ja ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i579: ; preds = %.noexc582
  %i.afh = load ptr, ptr %5, align 8, !tbaa !20   ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.afj = icmp eq ptr %i.afh, %i.afi
  br i1 %i.afj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i580: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i579
  %i.afk = load i64, ptr %i.afi, align 8, !tbaa !19
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afl) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i581

bb.ja:                                            ; preds = %.noexc582
  %i.afm = landingpad { ptr, i32 }
          cleanup
  %i.afn = load ptr, ptr %5, align 8, !tbaa !20   ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.afp = icmp eq ptr %i.afn, %i.afo
  br i1 %i.afp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i577, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i576: ; preds = %bb.ja
  %i.afq = load i64, ptr %i.afo, align 8, !tbaa !19
  %i.afr = add i64 %i.afq, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i577

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i577: ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i581: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.afs = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 7 uses
  store ptr %i.afs, ptr %70, align 8, !tbaa !15, !alias.scope !273
  %i.aft = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i64 0, ptr %i.aft, align 8, !tbaa !18, !alias.scope !273
  store i8 0, ptr %i.afs, align 8, !tbaa !19, !alias.scope !273
  %i.afu = getelementptr inbounds nuw i8, ptr %67, i64 48
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !63, !noalias !273 ; 3 uses
  %.not.i.not.i.i585 = icmp eq ptr %i.afv, null
  %i.afw = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.afx = load ptr, ptr %i.afw, align 8, !noalias !273 ; 2 uses
  %i.afy = icmp ugt ptr %i.afv, %i.afx
  %.08.i.i.i586 = select i1 %i.afy, ptr %i.afv, ptr %i.afx ; 2 uses
  %.not5.i.i587 = icmp eq ptr %.08.i.i.i586, null
  %.not.i.i588 = select i1 %.not.i.not.i.i585, i1 true, i1 %.not5.i.i587
  br i1 %.not.i.i588, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i581
  %i.afz = getelementptr inbounds nuw i8, ptr %67, i64 40
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !64, !noalias !273 ; 2 uses
  %i.agb = ptrtoint ptr %.08.i.i.i586 to i64
  %i.agc = ptrtoint ptr %i.aga to i64
  %i.agd = sub i64 %i.agb, %i.agc
  %i.age = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %70, i64 noundef 0, i64 noundef 0, ptr noundef %i.aga, i64 noundef %i.agd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit594 unwind label %bb.jc ; 0 uses

bb.jc:                                            ; preds = %bb.jd, %bb.jb
  %i.agf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agg = load ptr, ptr %70, align 8, !tbaa !20, !alias.scope !273 ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.afs
  br i1 %i.agh, label %.body592, label %.body592.sink.split

bb.jd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i581
  %i.agi = getelementptr inbounds nuw i8, ptr %67, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(32) %i.agi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit594 unwind label %bb.jc

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit594: ; preds = %bb.jd, %bb.jb
  invoke void @_ZN7testing8internal11CmpHelperEQIA77_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %69, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(77) @.str.103, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIA77_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit unwind label %bb.jg

_ZN7testing8internal8EqHelperILb0EE7CompareIA77_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit594
  %i.agj = load ptr, ptr %70, align 8, !tbaa !20  ; 2 uses
  %i.agk = icmp eq ptr %i.agj, %i.afs
  br i1 %i.agk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA77_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit
  %i.agl = load i64, ptr %i.afs, align 8, !tbaa !19
  %i.agm = add i64 %i.agl, 1
  call void @_ZdlPvm(ptr noundef %i.agj, i64 noundef %i.agm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA77_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  %i.agn = load i8, ptr %69, align 8, !tbaa !25, !range !26, !noundef !27
  %i.ago = trunc nuw i8 %i.agn to i1
  br i1 %i.ago, label %bb.jv, label %bb.jh

bb.je:                                            ; preds = %bb.iu, %.body552
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.iu ], [ %.pn148, %.body552 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  br label %.body543

.body543:                                         ; preds = %bb.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i537, %bb.je
  %.pn150.pn.pn.pn = phi { ptr, i32 } [ %.pn150.pn.pn, %bb.je ], [ %i.acf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i537 ], [ %i.adi, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %61) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.oh

bb.jf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i574
  %i.agp = landingpad { ptr, i32 }
          cleanup
  br label %.body583

bb.jg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit594
  %i.agq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agr = load ptr, ptr %70, align 8, !tbaa !20  ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.afs
  br i1 %i.ags, label %.body592, label %.body592.sink.split

.body592.sink.split:                              ; preds = %bb.jg, %bb.jc
  %.sink1108 = phi ptr [ %i.agg, %bb.jc ], [ %i.agr, %bb.jg ]
  %.pn155.ph = phi { ptr, i32 } [ %i.agf, %bb.jc ], [ %i.agq, %bb.jg ]
  %i.agt = load i64, ptr %i.afs, align 8, !tbaa !19
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %.sink1108, i64 noundef %i.agu) #22
  br label %.body592

.body592:                                         ; preds = %.body592.sink.split, %bb.jg, %bb.jc
  %.pn155 = phi { ptr, i32 } [ %i.agf, %bb.jc ], [ %i.agq, %bb.jg ], [ %.pn155.ph, %.body592.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #21
  br label %bb.kf

bb.jh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.ji unwind label %bb.jq

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  %i.agv = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !28 ; 2 uses
  %.not.i.i602 = icmp eq ptr %i.agw, null
  br i1 %.not.i.i602, label %_ZNK7testing15AssertionResult15failure_messageEv.exit603, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit603

_ZNK7testing15AssertionResult15failure_messageEv.exit603: ; preds = %bb.jj, %bb.ji
  %i.agy = phi ptr [ %i.agx, %bb.jj ], [ @.str.112, %bb.ji ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 164, ptr noundef %i.agy)
          to label %bb.jk unwind label %bb.jr

bb.jk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit603
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %bb.jl unwind label %bb.js

bb.jl:                                            ; preds = %bb.jk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  %i.agz = load ptr, ptr %71, align 8, !tbaa !31
  %.not.i.i.i604 = icmp eq ptr %i.agz, null
  br i1 %.not.i.i.i604, label %_ZN7testing7MessageD2Ev.exit606, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aha = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i605 unwind label %bb.jp

.noexc.i.i605:                                    ; preds = %bb.jm
  br i1 %i.aha, label %bb.jn, label %_ZN7testing7MessageD2Ev.exit606

bb.jn:                                            ; preds = %.noexc.i.i605
  %i.ahb = load ptr, ptr %71, align 8, !tbaa !31  ; 3 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %_ZN7testing7MessageD2Ev.exit606, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ahd = load ptr, ptr %i.ahb, align 8, !tbaa !33
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load ptr, ptr %i.ahe, align 8
  call void %i.ahf(ptr noundef nonnull align 8 dereferenceable(128) %i.ahb) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit606

bb.jp:                                            ; preds = %bb.jm
  %i.ahg = landingpad { ptr, i32 }
          catch ptr null
  %i.ahh = extractvalue { ptr, i32 } %i.ahg, 0
  call void @__clang_call_terminate(ptr %i.ahh) #23
  unreachable

_ZN7testing7MessageD2Ev.exit606:                  ; preds = %bb.jl, %.noexc.i.i605, %bb.jn, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  br label %bb.jv

bb.jq:                                            ; preds = %bb.jh
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.jr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit603
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.js:                                            ; preds = %bb.jk
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #21
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %.pn157 = phi { ptr, i32 } [ %i.ahk, %bb.js ], [ %i.ahj, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #21
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %71) #21
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.jq
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.jt ], [ %i.ahi, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %69) #21
  br label %bb.kf

bb.jv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, %_ZN7testing7MessageD2Ev.exit606
  %i.ahl = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !28
  %.not.i.i.i607 = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i607, label %_ZN7testing15AssertionResultD2Ev.exit612, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.ahn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i608 unwind label %bb.jz

.noexc.i.i608:                                    ; preds = %bb.jw
  br i1 %i.ahn, label %bb.jx, label %_ZN7testing15AssertionResultD2Ev.exit612

bb.jx:                                            ; preds = %.noexc.i.i608
  %i.aho = load ptr, ptr %i.ahl, align 8, !tbaa !28 ; 4 uses
  %i.ahp = icmp eq ptr %i.aho, null
  br i1 %i.ahp, label %_ZN7testing15AssertionResultD2Ev.exit612, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ahq = load ptr, ptr %i.aho, align 8, !tbaa !20 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 16 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahq, %i.ahr
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i609

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i609: ; preds = %bb.jy
  %i.aht = load i64, ptr %i.ahr, align 8, !tbaa !19
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahq, i64 noundef %i.ahu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i610: ; preds = %bb.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i609
  call void @_ZdlPvm(ptr noundef nonnull %i.aho, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit612

bb.jz:                                            ; preds = %bb.jw
  %i.ahv = landingpad { ptr, i32 }
          catch ptr null
  %i.ahw = extractvalue { ptr, i32 } %i.ahv, 0
  call void @__clang_call_terminate(ptr %i.ahw) #23
  unreachable

_ZN7testing15AssertionResultD2Ev.exit612:         ; preds = %bb.jv, %.noexc.i.i608, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i610
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  store ptr %i.bu, ptr %67, align 8, !tbaa !33
  %i.ahx = load i64, ptr %i.bw, align 8
  %i.ahy = getelementptr inbounds i8, ptr %67, i64 %i.ahx
  store ptr %i.bv, ptr %i.ahy, align 8, !tbaa !33
  %i.ahz = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ahz, align 8, !tbaa !33
  %i.aia = getelementptr inbounds nuw i8, ptr %67, i64 80
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !20 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %67, i64 96 ; 2 uses
  %i.aid = icmp eq ptr %i.aib, %i.aic
  br i1 %i.aid, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i613: ; preds = %_ZN7testing15AssertionResultD2Ev.exit612
  %i.aie = load i64, ptr %i.aic, align 8, !tbaa !19
  %i.aif = add i64 %i.aie, 1
  call void @_ZdlPvm(ptr noundef %i.aib, i64 noundef %i.aif) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i614: ; preds = %_ZN7testing15AssertionResultD2Ev.exit612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i613
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ahz, align 8, !tbaa !33
  %i.aig = getelementptr inbounds nuw i8, ptr %67, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aig) #21
  %i.aih = getelementptr inbounds nuw i8, ptr %67, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aih) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %73)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  %i.aii = getelementptr inbounds nuw i8, ptr %74, i64 8
  store <4 x float> <float -8.000000e+00, float -5.000000e+00, float 2.000000e+00, float 3.000000e+00>, ptr %74, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aij = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.aij, ptr %4, align 8, !tbaa !15, !alias.scope !274
  %i.aik = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.aik, align 8, !tbaa !18, !alias.scope !274
  store i8 0, ptr %i.aij, align 8, !tbaa !19, !alias.scope !274
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point2IfEEJS5_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.144, ptr noundef nonnull align 4 dereferenceable(16) %74, ptr noundef nonnull align 4 dereferenceable(8) %i.aii)
          to label %_ZNK4pbrt7Bounds2IfE8ToStringB5cxx11Ev.exit.i unwind label %bb.ka

bb.ka:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i614
  %i.ail = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aim = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !274 ; 2 uses
  %i.ain = icmp eq ptr %i.aim, %i.aij
  br i1 %i.ain, label %.body624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i616: ; preds = %bb.ka
  %i.aio = load i64, ptr %i.aij, align 8, !tbaa !19, !alias.scope !274
  %i.aip = add i64 %i.aio, 1
  call void @_ZdlPvm(ptr noundef %i.aim, i64 noundef %i.aip) #22
  br label %.body624

_ZNK4pbrt7Bounds2IfE8ToStringB5cxx11Ev.exit.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i614
  %i.aiq = load ptr, ptr %4, align 8, !tbaa !20
  %i.air = load i64, ptr %i.aik, align 8, !tbaa !18
  %i.ais = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %i.aiq, i64 noundef %i.air)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i621 unwind label %bb.kb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i621: ; preds = %_ZNK4pbrt7Bounds2IfE8ToStringB5cxx11Ev.exit.i
  %i.ait = load ptr, ptr %4, align 8, !tbaa !20   ; 2 uses
  %i.aiu = icmp eq ptr %i.ait, %i.aij
  br i1 %i.aiu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i622: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i621
  %i.aiv = load i64, ptr %i.aij, align 8, !tbaa !19
  %i.aiw = add i64 %i.aiv, 1
  call void @_ZdlPvm(ptr noundef %i.ait, i64 noundef %i.aiw) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i623

bb.kb:                                            ; preds = %_ZNK4pbrt7Bounds2IfE8ToStringB5cxx11Ev.exit.i
  %i.aix = landingpad { ptr, i32 }
          cleanup
  %i.aiy = load ptr, ptr %4, align 8, !tbaa !20   ; 2 uses
  %i.aiz = icmp eq ptr %i.aiy, %i.aij
  br i1 %i.aiz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i618: ; preds = %bb.kb
  %i.aja = load i64, ptr %i.aij, align 8, !tbaa !19
  %i.ajb = add i64 %i.aja, 1
  call void @_ZdlPvm(ptr noundef %i.aiy, i64 noundef %i.ajb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i619

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i619: ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i618
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i623: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ajc = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 7 uses
  store ptr %i.ajc, ptr %76, align 8, !tbaa !15, !alias.scope !277
  %i.ajd = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 0, ptr %i.ajd, align 8, !tbaa !18, !alias.scope !277
  store i8 0, ptr %i.ajc, align 8, !tbaa !19, !alias.scope !277
  %i.aje = getelementptr inbounds nuw i8, ptr %73, i64 48
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !63, !noalias !277 ; 3 uses
  %.not.i.not.i.i626 = icmp eq ptr %i.ajf, null
  %i.ajg = getelementptr inbounds nuw i8, ptr %73, i64 32
  %i.ajh = load ptr, ptr %i.ajg, align 8, !noalias !277 ; 2 uses
  %i.aji = icmp ugt ptr %i.ajf, %i.ajh
  %.08.i.i.i627 = select i1 %i.aji, ptr %i.ajf, ptr %i.ajh ; 2 uses
  %.not5.i.i628 = icmp eq ptr %.08.i.i.i627, null
  %.not.i.i629 = select i1 %.not.i.not.i.i626, i1 true, i1 %.not5.i.i628
  br i1 %.not.i.i629, label %bb.ke, label %bb.kc

bb.kc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i623
  %i.ajj = getelementptr inbounds nuw i8, ptr %73, i64 40
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !64, !noalias !277 ; 2 uses
  %i.ajl = ptrtoint ptr %.08.i.i.i627 to i64
  %i.ajm = ptrtoint ptr %i.ajk to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  %i.ajo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %76, i64 noundef 0, i64 noundef 0, ptr noundef %i.ajk, i64 noundef %i.ajn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit635 unwind label %bb.kd ; 0 uses

bb.kd:                                            ; preds = %bb.ke, %bb.kc
  %i.ajp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajq = load ptr, ptr %76, align 8, !tbaa !20, !alias.scope !277 ; 2 uses
  %i.ajr = icmp eq ptr %i.ajq, %i.ajc
  br i1 %i.ajr, label %.body633, label %.body633.sink.split

bb.ke:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i623
  %i.ajs = getelementptr inbounds nuw i8, ptr %73, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(32) %i.ajs)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit635 unwind label %bb.kd

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit635: ; preds = %bb.ke, %bb.kc
  invoke void @_ZN7testing8internal11CmpHelperEQIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %75, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(26) @.str.105, ptr noundef nonnull align 8 dereferenceable(32) %76)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit unwind label %bb.kg

_ZN7testing8internal8EqHelperILb0EE7CompareIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit635
  %i.ajt = load ptr, ptr %76, align 8, !tbaa !20  ; 2 uses
  %i.aju = icmp eq ptr %i.ajt, %i.ajc
  br i1 %i.aju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit
  %i.ajv = load i64, ptr %i.ajc, align 8, !tbaa !19
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSD_RKT_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  %i.ajx = load i8, ptr %75, align 8, !tbaa !25, !range !26, !noundef !27
  %i.ajy = trunc nuw i8 %i.ajx to i1
  br i1 %i.ajy, label %bb.kv, label %bb.kh

bb.kf:                                            ; preds = %bb.ju, %.body592
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.ju ], [ %.pn155, %.body592 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #21
  br label %.body583

.body583:                                         ; preds = %bb.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i577, %bb.kf
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %bb.kf ], [ %i.agp, %bb.jf ], [ %i.afm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i577 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %67) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  br label %bb.oh

bb.kg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit635
  %i.ajz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aka = load ptr, ptr %76, align 8, !tbaa !20  ; 2 uses
  %i.akb = icmp eq ptr %i.aka, %i.ajc
  br i1 %i.akb, label %.body633, label %.body633.sink.split

.body633.sink.split:                              ; preds = %bb.kg, %bb.kd
  %.sink1111 = phi ptr [ %i.ajq, %bb.kd ], [ %i.aka, %bb.kg ]
  %.pn162.ph = phi { ptr, i32 } [ %i.ajp, %bb.kd ], [ %i.ajz, %bb.kg ]
  %i.akc = load i64, ptr %i.ajc, align 8, !tbaa !19
  %i.akd = add i64 %i.akc, 1
  call void @_ZdlPvm(ptr noundef %.sink1111, i64 noundef %i.akd) #22
  br label %.body633

.body633:                                         ; preds = %.body633.sink.split, %bb.kg, %bb.kd
  %.pn162 = phi { ptr, i32 } [ %i.ajp, %bb.kd ], [ %i.ajz, %bb.kg ], [ %.pn162.ph, %.body633.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #21
  br label %bb.lf

bb.kh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.ki unwind label %bb.kq

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #21
  %i.ake = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !28 ; 2 uses
  %.not.i.i643 = icmp eq ptr %i.akf, null
  br i1 %.not.i.i643, label %_ZNK7testing15AssertionResult15failure_messageEv.exit644, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !20
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit644

_ZNK7testing15AssertionResult15failure_messageEv.exit644: ; preds = %bb.kj, %bb.ki
  %i.akh = phi ptr [ %i.akg, %bb.kj ], [ @.str.112, %bb.ki ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %78, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 170, ptr noundef %i.akh)
          to label %bb.kk unwind label %bb.kr

bb.kk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit644
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %bb.kl unwind label %bb.ks

bb.kl:                                            ; preds = %bb.kk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #21
  %i.aki = load ptr, ptr %77, align 8, !tbaa !31
  %.not.i.i.i645 = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i645, label %_ZN7testing7MessageD2Ev.exit647, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.akj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i646 unwind label %bb.kp

.noexc.i.i646:                                    ; preds = %bb.km
  br i1 %i.akj, label %bb.kn, label %_ZN7testing7MessageD2Ev.exit647

bb.kn:                                            ; preds = %.noexc.i.i646
  %i.akk = load ptr, ptr %77, align 8, !tbaa !31  ; 3 uses
  %i.akl = icmp eq ptr %i.akk, null
  br i1 %i.akl, label %_ZN7testing7MessageD2Ev.exit647, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.akm = load ptr, ptr %i.akk, align 8, !tbaa !33
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8
end_hunk_1
