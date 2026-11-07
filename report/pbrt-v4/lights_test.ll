Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights_test?download=true
inline.NumInlined: 975
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7testing8internal11CmpHelperLTIddEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #25
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !44
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.b, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #24, !inline_history !126
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !44
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #26
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23SpotLight_Sampling_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 6 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 17 uses
  %5 = alloca %"class.pbrt::SpotLight", align 8   ; 6 uses
  %6 = alloca %"struct.pbrt::MediumInterface", align 8 ; 4 uses
  %7 = alloca %"class.pbrt::Spectrum", align 8    ; 2 uses
  %8 = alloca %"class.pstd::optional", align 8    ; 11 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = load atomic i8, ptr @_ZGVZN23SpotLight_Sampling_Test8TestBodyEvE1I acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN23SpotLight_Sampling_Test8TestBodyEvE1I) #24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+01, ptr @_ZZN23SpotLight_Sampling_Test8TestBodyEvE1I, align 4, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN23SpotLight_Sampling_Test8TestBodyEvE1I) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store <8 x float> <float 5.950000e+02, float 7.125000e+02, float 8.300000e+02, float 4.775000e+02, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034, float f0x3B0B7034>, ptr %3, align 8, !tbaa !18, !alias.scope !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store float 1.000000e+00, ptr %4, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.l, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !18
  %i.s = or i64 ptrtoint (ptr @_ZZN23SpotLight_Sampling_Test8TestBodyEvE1I to i64), 144115188075855872
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 152 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 148
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %bb.d, %bb.g
  %.030.idx133 = phi i64 [ 0, %bb.d ], [ %.030.add, %bb.g ] ; 2 uses
  %.030.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN23SpotLight_Sampling_Test8TestBodyEv.widthStart, i64 %.030.idx133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i64 %i.s, ptr %7, align 8, !tbaa !21
  %i.ah = load <2 x i32>, ptr %.030.ptr, align 8, !tbaa !22
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>   ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <2 x float> %i.ai, i64 1
  call void @_ZN4pbrt9SpotLightC1ERKNS_9TransformERKNS_15MediumInterfaceENS_8SpectrumEfff(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, float noundef 1.000000e+00, float noundef %i.aj, float noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.h

bb.g:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.030.add = add nuw nsw i64 %.030.idx133, 8     ; 2 uses
  %.not32 = icmp eq i64 %.030.add, 32
  br i1 %.not32, label %bb.e, label %bb.f

bb.h:                                             ; preds = %bb.f, %_ZN7testing15AssertionResultD2Ev.exit103
  %.031132 = phi i32 [ 0, %bb.f ], [ %i.hz, %_ZN7testing15AssertionResultD2Ev.exit103 ]
  %.sroa.0114.0131 = phi i64 [ -8846114313915602277, %bb.f ], [ %i.bf, %_ZN7testing15AssertionResultD2Ev.exit103 ] ; 2 uses
  %i.al = mul i64 %.sroa.0114.0131, 6364136223846793005
  %i.am = add i64 %i.al, -2720673578348880933     ; 2 uses
  %i.an = mul i64 %i.am, 6364136223846793005
  %i.ao = insertelement <2 x i64> poison, i64 %.sroa.0114.0131, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %i.am, i64 1 ; 3 uses
  %i.aq = lshr <2 x i64> %i.ap, splat (i64 45)
  %i.ar = lshr <2 x i64> %i.ap, splat (i64 27)
  %i.as = xor <2 x i64> %i.aq, %i.ar
  %i.at = trunc <2 x i64> %i.as to <2 x i32>      ; 2 uses
  %i.au = lshr <2 x i64> %i.ap, splat (i64 59)
  %i.av = trunc nuw nsw <2 x i64> %i.au to <2 x i32>
  %i.aw = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.at, <2 x i32> %i.at, <2 x i32> %i.av)
  %i.ax = uitofp <2 x i32> %i.aw to <2 x float>
  %i.ay = fmul nnan <2 x float> %i.ax, splat (float f0x2F800000) ; 2 uses
  %i.az = fcmp olt <2 x float> %i.ay, splat (float f0x3F7FFFFF)
  %i.ba = select <2 x i1> %i.az, <2 x float> %i.ay, <2 x float> splat (float f0x3F7FFFFF)
  %i.bb = add i64 %i.an, -2720673578348880933     ; 2 uses
  %i.bc = mul i64 %i.bb, 6364136223846793005
  %i.bd = add i64 %i.bc, -2720673578348880933     ; 2 uses
  %i.be = mul i64 %i.bd, 6364136223846793005
  %i.bf = add i64 %i.be, -2720673578348880933
  %i.bg = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bh = insertelement <2 x i64> %i.bg, i64 %i.bd, i64 1 ; 3 uses
  %i.bi = lshr <2 x i64> %i.bh, splat (i64 45)
  %i.bj = lshr <2 x i64> %i.bh, splat (i64 27)
  %i.bk = xor <2 x i64> %i.bi, %i.bj
  %i.bl = trunc <2 x i64> %i.bk to <2 x i32>      ; 2 uses
  %i.bm = lshr <2 x i64> %i.bh, splat (i64 59)
  %i.bn = trunc nuw nsw <2 x i64> %i.bm to <2 x i32>
  %i.bo = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bl, <2 x i32> %i.bl, <2 x i32> %i.bn)
  %i.bp = uitofp <2 x i32> %i.bo to <2 x float>
  %i.bq = fmul nnan <2 x float> %i.bp, splat (float f0x2F800000) ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bq, splat (float f0x3F7FFFFF)
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bq, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNK4pbrt9SpotLight8SampleLeENS_6Point2IfEES2_RNS_18SampledWavelengthsEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %8, ptr noundef nonnull align 8 dereferenceable(172) %5, <2 x float> %i.ba, <2 x float> %i.bs, ptr noundef nonnull align 4 dereferenceable(32) %3, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bt = load i8, ptr %i.t, align 8, !tbaa !47, !range !31, !noundef !32 ; 2 uses
  store i8 %i.bt, ptr %9, align 8, !tbaa !30
  store ptr null, ptr %i.u, align 8, !tbaa !37
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %12, align 8, !tbaa !41
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef 60, ptr noundef %i.bv)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  %i.bw = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.v
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.by = load i64, ptr %i.v, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ca = load ptr, ptr %10, align 8, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.cb, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.noexc.i.i
  %i.cc = load ptr, ptr %10, align 8, !tbaa !36   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #24, !inline_history !1
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

bb.r:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.t:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %i.cl, %bb.t ] ; 2 uses
  %i.cn = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.v
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.v
  %i.cp = load i64, ptr %i.v, align 8, !tbaa !44
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.cj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.cz

bb.x:                                             ; preds = %bb.p, %bb.o, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.pr = load ptr, ptr %i.u, align 8, !tbaa !37
  %.not.i.i.i60 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i60, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i61 unwind label %bb.ab

.noexc.i.i61:                                     ; preds = %bb.y
  br i1 %i.cr, label %bb.z, label %_ZN7testing15AssertionResultD2Ev.exit

bb.z:                                             ; preds = %.noexc.i.i61
  %i.cs = load ptr, ptr %i.u, align 8, !tbaa !37  ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !41 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !44
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #25
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.h, %bb.x, %.noexc.i.i61, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %23 = load i8, ptr %i.t, align 8, !tbaa !47, !range !31, !noundef !32
  %i.db = trunc nuw i8 %23 to i1
  br i1 %i.db, label %_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 235, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(4) @.str.63) #27
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ac
  unreachable

_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dc = load float, ptr %i.w, align 8, !tbaa !49
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  %i.de = load float, ptr %i.x, align 4
  %i.df = fcmp oeq float %i.de, 0.000000e+00
  %or.cond.i = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond.i, label %bb.ad, label %.thread122

.thread122:                                       ; preds = %_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit
  store i8 0, ptr %13, align 8, !tbaa !30
  store ptr null, ptr %i.y, align 8, !tbaa !37
  br label %bb.af

bb.ad:                                            ; preds = %_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit
  %i.dg = load float, ptr %i.z, align 8, !tbaa !50
  %i.dh = fcmp oeq float %i.dg, 0.000000e+00      ; 2 uses
  %i.di = zext i1 %i.dh to i8
  store i8 %i.di, ptr %13, align 8, !tbaa !30
  store ptr null, ptr %i.y, align 8, !tbaa !37
  br i1 %i.dh, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.af:                                            ; preds = %.thread122, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %16, align 8, !tbaa !41
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef 61, ptr noundef %i.dk)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  %i.dl = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.aa
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.aj
  %i.dn = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.dp = load ptr, ptr %14, align 8, !tbaa !36
  %.not.i.i.i65 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i65, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i66 unwind label %bb.an

.noexc.i.i66:                                     ; preds = %bb.ak
  br i1 %i.dq, label %bb.al, label %bb.au

bb.al:                                            ; preds = %.noexc.i.i66
  %i.dr = load ptr, ptr %14, align 8, !tbaa !36   ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.dr) #24, !inline_history !1
  br label %bb.au

bb.an:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #25
  unreachable

bb.ao:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %bb.ag
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.aq:                                            ; preds = %bb.ah
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn37 = phi { ptr, i32 } [ %i.eb, %bb.ar ], [ %i.ea, %bb.aq ] ; 2 uses
  %i.ec = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.aa
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.as
  %i.ee = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.ap
  %.pn37.pn = phi { ptr, i32 } [ %i.dz, %bb.ap ], [ %.pn37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn37, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.ao
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.dy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #24
  br label %bb.bf

bb.au:                                            ; preds = %bb.am, %bb.al, %.noexc.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %.pr123 = load ptr, ptr %i.y, align 8, !tbaa !37
  %.not.i.i.i71 = icmp eq ptr %.pr123, null
  br i1 %.not.i.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i72 unwind label %bb.ay

.noexc.i.i72:                                     ; preds = %bb.av
  br i1 %i.eg, label %bb.aw, label %_ZN7testing15AssertionResultD2Ev.exit76

bb.aw:                                            ; preds = %.noexc.i.i72
  %i.eh = load ptr, ptr %i.y, align 8, !tbaa !37  ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !41 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73: ; preds = %bb.ax
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !44
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit76

bb.ay:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #25
  unreachable

_ZN7testing15AssertionResultD2Ev.exit76:          ; preds = %bb.ad, %bb.au, %.noexc.i.i72, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !22
  %i.eq = load i8, ptr %i.t, align 8, !tbaa !47, !range !31, !noundef !32
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit78, label %bb.az

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit76
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 235, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(4) @.str.63) #27
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.az
  unreachable

_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit78: ; preds = %_ZN7testing15AssertionResultD2Ev.exit76
  %i.es = load float, ptr %i.ab, align 8, !tbaa !18, !noalias !133
  %i.et = fcmp oeq float %i.es, 1.000000e+00
  br i1 %i.et, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4pstd8optionalIN4pbrt13LightLeSampleEEptEv.exit78
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
end_hunk_0
