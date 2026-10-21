Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN26Math_GaussianIntegral_Test8TestBodyEv:bb.a
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.cx = load ptr, ptr %2, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = fpext float %i.ap to double
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, double noundef %i.cz)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %bb.j
  %i.db = load ptr, ptr %2, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.183, i64 noundef 4)
          to label %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit:        ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.de = load ptr, ptr %2, align 8, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = fpext float %i.ax to double
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.df, double noundef %i.dg)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit36 unwind label %bb.s ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit36:         ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit36
  %i.di = load ptr, ptr %4, align 8, !tbaa !26
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 427, ptr noundef %i.di)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  %i.dj = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.b
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !32
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dn = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.do = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.do, label %bb.o, label %bb.z

bb.o:                                             ; preds = %.noexc.i.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #25, !inline_history !0
  br label %bb.z

bb.q:                                             ; preds = %bb.n
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #26
  unreachable

bb.r:                                             ; preds = %bb.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %_ZN7testing7MessagelsIA5_cEERS0_RKT_.exit, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit36
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.u:                                             ; preds = %bb.k
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.l
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.v ], [ %i.dz, %bb.u ] ; 2 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.b
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.w
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !32
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.dx, %bb.s ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.x ], [ %i.dw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.z:                                             ; preds = %bb.p, %bb.o, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not.i.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i40, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i41 unwind label %bb.ad

.noexc.i.i41:                                     ; preds = %bb.aa
  br i1 %i.ef, label %bb.ab, label %_ZN7testing15AssertionResultD2Ev.exit

bb.ab:                                            ; preds = %.noexc.i.i41
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !21  ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !26 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.e, %bb.z, %.noexc.i.i41, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ep = add nuw nsw i32 %.02867, 1              ; 2 uses
  %exitcond69.not = icmp eq i32 %i.ep, 5
  br i1 %exitcond69.not, label %bb.c, label %bb.d, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SquareMatrix_Basics2_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing15AssertionResultD2Ev.exit:
  %1 = alloca %"class.pbrt::SquareMatrix", align 16 ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.pbrt::SquareMatrix", align 16 ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.pbrt::SquareMatrix", align 16 ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.pbrt::SquareMatrix", align 16 ; 4 uses
  %12 = alloca %"class.pbrt::SquareMatrix", align 8 ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.pbrt::SquareMatrix", align 16 ; 5 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.pbrt::SquareMatrix", align 8 ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.pstd::array", align 8      ; 6 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.pbrt::Vector2", align 8    ; 6 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.pstd::optional", align 4   ; 9 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %40 = alloca %"class.testing::Message", align 8 ; 8 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.pbrt::SquareMatrix", align 16 ; 5 uses
  %43 = alloca %"class.pstd::optional", align 4   ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.testing::Message", align 8 ; 8 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %49 = alloca %"class.pbrt::SquareMatrix", align 16 ; 5 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %52 = alloca %"class.pbrt::SquareMatrix", align 16 ; 5 uses
  %53 = alloca %"class.pstd::optional", align 4   ; 7 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %55 = alloca %"class.testing::Message", align 8 ; 8 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %3, align 16, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi2EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.e = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.i, %bb.c ], [ @.str.324, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 437, ptr noundef %i.j)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.k = load ptr, ptr %4, align 8, !tbaa !29
  %.not.i.i.i130 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i130, label %_ZN7testing7MessageD2Ev.exit132, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i131 unwind label %bb.i

.noexc.i.i131:                                    ; preds = %bb.f
  br i1 %i.l, label %bb.g, label %_ZN7testing7MessageD2Ev.exit132

bb.g:                                             ; preds = %.noexc.i.i131
  %i.m = load ptr, ptr %4, align 8, !tbaa !29     ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN7testing7MessageD2Ev.exit132, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit132

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZN7testing7MessageD2Ev.exit132:                  ; preds = %bb.e, %.noexc.i.i131, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn62 = phi { ptr, i32 } [ %i.v, %bb.l ], [ %i.u, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.m ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.jj

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit132
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %.not.i.i.i133 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i133, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i134 unwind label %bb.s

.noexc.i.i134:                                    ; preds = %bb.p
  br i1 %i.y, label %bb.q, label %_ZN7testing15AssertionResultD2Ev.exit138

bb.q:                                             ; preds = %.noexc.i.i134
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing15AssertionResultD2Ev.exit138, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135: ; preds = %bb.r
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i136: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit138

bb.s:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit138:         ; preds = %bb.o, %.noexc.i.i134, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %7, align 16, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperNEIN4pbrt12SquareMatrixILi2EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.191, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ai = load i8, ptr %6, align 8, !tbaa !18, !range !19, !noundef !20
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit138
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.al, null
  br i1 %.not.i.i139, label %_ZNK7testing15AssertionResult15failure_messageEv.exit140, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit140

_ZNK7testing15AssertionResult15failure_messageEv.exit140: ; preds = %bb.v, %bb.u
  %i.an = phi ptr [ %i.am, %bb.v ], [ @.str.324, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 438, ptr noundef %i.an)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ao = load ptr, ptr %8, align 8, !tbaa !29
  %.not.i.i.i141 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i141, label %_ZN7testing7MessageD2Ev.exit143, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ap = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i142 unwind label %bb.ab

.noexc.i.i142:                                    ; preds = %bb.y
  br i1 %i.ap, label %bb.z, label %_ZN7testing7MessageD2Ev.exit143

bb.z:                                             ; preds = %.noexc.i.i142
  %i.aq = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN7testing7MessageD2Ev.exit143, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit143

bb.ab:                                            ; preds = %bb.y
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZN7testing7MessageD2Ev.exit143:                  ; preds = %bb.x, %.noexc.i.i142, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ah

bb.ac:                                            ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn65 = phi { ptr, i32 } [ %i.az, %bb.ae ], [ %i.ay, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.af ], [ %i.ax, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.jj

bb.ah:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit138, %_ZN7testing7MessageD2Ev.exit143
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.not.i.i.i144 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i144, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i145 unwind label %bb.al

.noexc.i.i145:                                    ; preds = %bb.ai
  br i1 %i.bc, label %bb.aj, label %_ZN7testing15AssertionResultD2Ev.exit149

bb.aj:                                            ; preds = %.noexc.i.i145
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN7testing15AssertionResultD2Ev.exit149, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146: ; preds = %bb.ak
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !32
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit149

bb.al:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit149:         ; preds = %bb.ah, %.noexc.i.i145, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store <4 x float> <float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %11, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %12, align 8
  %58 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %58, align 8
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi2EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.193, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bm = load i8, ptr %10, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.ba, label %bb.am

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i150, label %_ZNK7testing15AssertionResult15failure_messageEv.exit151, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit151

_ZNK7testing15AssertionResult15failure_messageEv.exit151: ; preds = %bb.ao, %bb.an
  %i.br = phi ptr [ %i.bq, %bb.ao ], [ @.str.324, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 440, ptr noundef %i.br)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.bs = load ptr, ptr %13, align 8, !tbaa !29
  %.not.i.i.i152 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bt = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i153 unwind label %bb.au

.noexc.i.i153:                                    ; preds = %bb.ar
  br i1 %i.bt, label %bb.as, label %_ZN7testing7MessageD2Ev.exit154

bb.as:                                            ; preds = %.noexc.i.i153
  %i.bu = load ptr, ptr %13, align 8, !tbaa !29   ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN7testing7MessageD2Ev.exit154, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit154

bb.au:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN7testing7MessageD2Ev.exit154:                  ; preds = %bb.aq, %.noexc.i.i153, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ba

bb.av:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn68 = phi { ptr, i32 } [ %i.cd, %bb.ax ], [ %i.cc, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.ay ], [ %i.cb, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.jj

bb.ba:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit149, %_ZN7testing7MessageD2Ev.exit154
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %.not.i.i.i155 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i155, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i156 unwind label %bb.be

.noexc.i.i156:                                    ; preds = %bb.bb
  br i1 %i.cg, label %bb.bc, label %_ZN7testing15AssertionResultD2Ev.exit178

bb.bc:                                            ; preds = %.noexc.i.i156
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !26 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157: ; preds = %bb.bd
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !32
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i158: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit178

bb.be:                                            ; preds = %bb.bb
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i158, %bb.bc, %.noexc.i.i156, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store <4 x float> <float 1.000000e+00, float 3.000000e+00, float 2.000000e+00, float 4.000000e+00>, ptr %15, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store <2 x float> <float 1.000000e+00, float 3.000000e+00>, ptr %17, align 8
  %59 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> <float 2.000000e+00, float 4.000000e+00>, ptr %59, align 8
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi2EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.cq = load i8, ptr %16, align 8, !tbaa !18, !range !19, !noundef !20
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i179, label %_ZNK7testing15AssertionResult15failure_messageEv.exit180, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit180

_ZNK7testing15AssertionResult15failure_messageEv.exit180: ; preds = %bb.bh, %bb.bg
  %i.cv = phi ptr [ %i.cu, %bb.bh ], [ @.str.324, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 445, ptr noundef %i.cv)
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.cw = load ptr, ptr %18, align 8, !tbaa !29
  %.not.i.i.i181 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cx = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i182 unwind label %bb.bn

.noexc.i.i182:                                    ; preds = %bb.bk
  br i1 %i.cx, label %bb.bl, label %_ZN7testing7MessageD2Ev.exit183

bb.bl:                                            ; preds = %.noexc.i.i182
  %i.cy = load ptr, ptr %18, align 8, !tbaa !29   ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN7testing7MessageD2Ev.exit183, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit183

bb.bn:                                            ; preds = %bb.bk
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #26
  unreachable

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.bj, %.noexc.i.i182, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bf
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bi
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn75 = phi { ptr, i32 } [ %i.dh, %bb.bq ], [ %i.dg, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.br ], [ %i.df, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ji

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit178, %_ZN7testing7MessageD2Ev.exit183
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21
  %.not.i.i.i184 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i184, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i185 unwind label %bb.bx

.noexc.i.i185:                                    ; preds = %bb.bu
  br i1 %i.dk, label %bb.bv, label %_ZN7testing15AssertionResultD2Ev.exit189

bb.bv:                                            ; preds = %.noexc.i.i185
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !21 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.bw
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !32
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit189

bb.bx:                                            ; preds = %bb.bu
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %bb.bt, %.noexc.i.i185, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store <2 x float> <float -3.000000e+00, float -5.000000e+00>, ptr %20, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -3, ptr %i.a, align 4, !tbaa !34
  call void @_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.du = load i8, ptr %21, align 8, !tbaa !18, !range !19, !noundef !20
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.cm, label %bb.by

bb.by:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit189
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bz unwind label %bb.ch

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !21 ; 2 uses
  %.not.i.i190 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i190, label %_ZNK7testing15AssertionResult15failure_messageEv.exit191, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit191

_ZNK7testing15AssertionResult15failure_messageEv.exit191: ; preds = %bb.ca, %bb.bz
  %i.dz = phi ptr [ %i.dy, %bb.ca ], [ @.str.324, %bb.bz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 449, ptr noundef %i.dz)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.ea = load ptr, ptr %22, align 8, !tbaa !29
  %.not.i.i.i192 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i192, label %_ZN7testing7MessageD2Ev.exit194, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i193 unwind label %bb.cg

.noexc.i.i193:                                    ; preds = %bb.cd
  br i1 %i.eb, label %bb.ce, label %_ZN7testing7MessageD2Ev.exit194

bb.ce:                                            ; preds = %.noexc.i.i193
  %i.ec = load ptr, ptr %22, align 8, !tbaa !29   ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZN7testing7MessageD2Ev.exit194, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(128) %i.ec) #25, !inline_history !0
end_hunk_0
begin_hunk_1_@_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_:bb.a
  %i.cp = fadd float %i.bq, %i.co
  %i.cq = fadd float %i.bj, %i.ci                 ; 4 uses
  %i.cr = fsub float %i.cq, %i.bj                 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fsub float %i.bj, %i.cs
  %i.cu = fsub float %i.ci, %i.cr
  %i.cv = fadd float %i.cu, %i.ct
  %i.cw = fadd float %i.cv, %i.cp
  %i.cx = fadd float %i.bl, %i.cw
  %i.cy = fadd float %i.be, %i.cq                 ; 4 uses
  %i.cz = fsub float %i.cy, %i.be                 ; 2 uses
  %i.da = fsub float %i.cy, %i.cz
  %i.db = fsub float %i.be, %i.da
  %i.dc = fsub float %i.cq, %i.cz
  %i.dd = fadd float %i.dc, %i.db
  %i.de = fadd float %i.dd, %i.cx
  %i.df = fadd float %i.bg, %i.de
  %i.dg = fadd float %i.ba, %i.cy                 ; 3 uses
  %i.dh = fsub float %i.dg, %i.ba                 ; 2 uses
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fsub float %i.ba, %i.di
  %i.dk = fsub float %i.cy, %i.dh
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = fadd float %i.dl, %i.df
  %i.dn = fadd float %i.bc, %i.dm
  %i.do = fadd float %i.dg, %i.dn                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %0, i8 0, i64 68, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.dq = shufflevector <2 x float> %i.at, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ds = load <2 x float>, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.du = load float, ptr %i.dt, align 4, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !37 ; 2 uses
  %i.dz = fdiv float 1.000000e+00, %i.do
  %i.ea = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 7, i32 2, i32 15, i32 10, i32 3, i32 6, i32 11, i32 14> ; 2 uses
  %i.eb = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 3 uses
  %i.ec = fmul <8 x float> %i.ea, %i.eb           ; 4 uses
  %i.ed = insertelement <2 x float> %i.ds, float %i.dw, i64 1
  %i.ee = fneg <2 x float> %i.ed                  ; 2 uses
  %i.ef = shufflevector <2 x float> %i.m, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.eg = fneg <2 x float> %i.ef
  %i.eh = fneg <16 x float> %i.g
  %i.ei = shufflevector <16 x float> %i.eh, <16 x float> poison, <4 x i32> <i32 2, i32 7, i32 10, i32 15>
  %i.ej = fneg <16 x float> %i.g
  %i.ek = shufflevector <16 x float> %i.ej, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.el, align 4, !tbaa !50
  %i.em = shufflevector <2 x float> %i.at, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.en = shufflevector <16 x float> %i.g, <16 x float> %i.em, <8 x i32> <i32 5, i32 16, i32 17, i32 17, i32 16, i32 16, i32 8, i32 17>
  %i.eo = shufflevector <16 x float> %i.em, <16 x float> %i.g, <8 x i32> <i32 0, i32 poison, i32 29, i32 poison, i32 16, i32 poison, i32 1, i32 poison>
  %i.ep = shufflevector <2 x float> %i.eg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <8 x float> %i.eo, <8 x float> %i.ep, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 poison, i32 6, i32 poison>
  %i.er = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.es = shufflevector <8 x float> %i.eq, <8 x float> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 11, i32 6, i32 10> ; 2 uses
  %i.et = fmul <8 x float> %i.en, %i.es           ; 4 uses
  %i.eu = fneg <8 x float> %i.et
  %i.ev = shufflevector <8 x float> %i.es, <8 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 3, i32 poison, i32 5, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <16 x float> %i.g, <16 x float> %i.ev, <8 x i32> <i32 5, i32 17, i32 13, i32 19, i32 0, i32 21, i32 8, i32 23>
  %i.ex = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ew, <8 x float> %i.dq, <8 x float> %i.eu)
  %i.ey = fneg <8 x float> %i.ec
  %i.ez = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.ea, <8 x float> %i.eb, <8 x float> %i.ey)
  %i.fa = shufflevector <2 x float> %i.ar, <2 x float> %i.ee, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.ei, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x float> %i.fa, <8 x float> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fd = fmul <8 x float> %i.aj, %i.fc           ; 3 uses
  %i.fe = fneg <8 x float> %i.fd
  %i.ff = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.fc, <8 x float> %i.aj, <8 x float> %i.fe)
  %i.fg = fadd <8 x float> %i.fd, %i.ec           ; 4 uses
  %i.fh = fsub <8 x float> %i.fg, %i.ec           ; 2 uses
  %i.fi = fsub <8 x float> %i.fg, %i.fh
  %i.fj = fsub <8 x float> %i.ec, %i.fi
  %i.fk = fsub <8 x float> %i.fd, %i.fh
  %i.fl = fadd <8 x float> %i.fk, %i.fj
  %i.fm = fadd <8 x float> %i.ff, %i.fl
  %i.fn = fadd <8 x float> %i.ez, %i.fm
  %i.fo = fadd <8 x float> %i.et, %i.fg           ; 3 uses
  %i.fp = fsub <8 x float> %i.fo, %i.et           ; 2 uses
  %i.fq = fsub <8 x float> %i.fo, %i.fp
  %i.fr = fsub <8 x float> %i.et, %i.fq
  %i.fs = fsub <8 x float> %i.fg, %i.fp
  %i.ft = fadd <8 x float> %i.fs, %i.fr
  %i.fu = fadd <8 x float> %i.ft, %i.fn
  %i.fv = fadd <8 x float> %i.ex, %i.fu
  %i.fw = fadd <8 x float> %i.fo, %i.fv
  %i.fx = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.fy = shufflevector <8 x float> %i.fx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fz = fmul <8 x float> %i.fw, %i.fy
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %i.ga, ptr %0, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gb = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <16 x float> %i.gb, <16 x float> %i.g, <4 x i32> <i32 3, i32 16, i32 2, i32 24> ; 2 uses
  %i.gd = shufflevector <8 x float> %i.aj, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.ge = shufflevector <2 x float> %i.k, <2 x float> %i.h, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x float> %i.ek, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <8 x float> %i.ge, <8 x float> %i.gf, <8 x i32> <i32 0, i32 8, i32 2, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <8 x float> %i.gg, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gj = shufflevector <8 x float> %i.aj, <8 x float> %i.er, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 10, i32 3>
  %i.gk = fmul <8 x float> %i.gi, %i.gj           ; 4 uses
  %i.gl = fneg <8 x float> %i.gk
  %i.gm = shufflevector <4 x float> %i.gc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <8 x float> %i.gi, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.go = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 1, i32 1, i32 3, i32 3>
  %i.gp = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.gn, <8 x float> %i.go, <8 x float> %i.gl)
  %i.gq = shufflevector <2 x float> %i.aa, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gr = shufflevector <8 x float> %i.eb, <8 x float> %i.gq, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 8, i32 9, i32 9>
  %i.gs = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <8 x float> %i.gs, <8 x float> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.gu = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.gv = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.o, <4 x float> %i.gv, <8 x i32> <i32 1, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.gx = shufflevector <2 x float> %i.m, <2 x float> %i.j, <8 x i32> <i32 poison, i32 0, i32 poison, i32 2, i32 poison, i32 1, i32 poison, i32 3> ; 2 uses
  %i.gy = shufflevector <8 x float> %i.gw, <8 x float> %i.gx, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 poison, i32 13, i32 6, i32 15>
  %i.gz = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ha = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 6, i32 7>
  %i.hb = fmul <8 x float> %i.gt, %i.ha           ; 3 uses
  %i.hc = insertelement <8 x float> %i.gx, float %i.du, i64 0
  %i.hd = insertelement <8 x float> %i.hc, float %i.dy, i64 2
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 9, i32 5, i32 poison, i32 7>
  %i.hf = shufflevector <2 x float> %i.h, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hg = shufflevector <8 x float> %i.he, <8 x float> %i.hf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 7> ; 3 uses
  %i.hh = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 poison, i32 4, i32 poison, i32 6, i32 5, i32 poison, i32 7, i32 poison>
  %i.hi = shufflevector <8 x float> %i.gq, <8 x float> %i.hh, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 0, i32 14, i32 2> ; 2 uses
  %i.hj = shufflevector <8 x float> %i.hg, <8 x float> %i.gt, <8 x i32> <i32 0, i32 13, i32 14, i32 14, i32 13, i32 poison, i32 6, i32 poison>
  %i.hk = shufflevector <8 x float> %i.hj, <8 x float> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 6, i32 9> ; 2 uses
  %i.hl = shufflevector <2 x float> %i.aa, <2 x float> %i.ee, <8 x i32> <i32 0, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hm = insertelement <8 x float> %i.hl, float %i.dy, i64 2
  %i.hn = shufflevector <8 x float> %i.gu, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 15, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ho = shufflevector <8 x float> %i.hm, <8 x float> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hp = fmul <8 x float> %i.hk, %i.ho           ; 3 uses
  %i.hq = fneg <8 x float> %i.hi
  %i.hr = fmul <8 x float> %i.hg, %i.hq
  %i.hs = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hg, <8 x float> %i.hi, <8 x float> %i.hr)
  %i.ht = shufflevector <8 x float> %i.aj, <8 x float> %i.hk, <8 x i32> <i32 4, i32 9, i32 6, i32 10, i32 9, i32 13, i32 10, i32 15> ; 2 uses
  %i.hu = shufflevector <8 x float> %i.er, <8 x float> %i.ho, <8 x i32> <i32 1, i32 9, i32 0, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <8 x float> %i.gu, <8 x float> %i.aj, <8 x i32> <i32 1, i32 13, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = shufflevector <8 x float> %i.hu, <8 x float> %i.hv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hx = fneg <8 x float> %i.hw
  %i.hy = fmul <8 x float> %i.ht, %i.hx
  %i.hz = tail call <8 x float> @llvm.fma.v8f32(<8 x float> %i.hw, <8 x float> %i.ht, <8 x float> %i.hy)
  %i.ia = fadd <8 x float> %i.hp, %i.hb           ; 4 uses
  %i.ib = shufflevector <8 x float> %i.hp, <8 x float> %i.hb, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15> ; 2 uses
  %i.ic = fsub <8 x float> %i.ia, %i.ib           ; 2 uses
  %i.id = fsub <8 x float> %i.ia, %i.ic
  %i.ie = fsub <8 x float> %i.ib, %i.id
  %i.if = shufflevector <8 x float> %i.hb, <8 x float> %i.hp, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 12, i32 13, i32 6, i32 15>
  %i.ig = fsub <8 x float> %i.if, %i.ic
  %i.ih = fadd <8 x float> %i.ig, %i.ie
  %i.ii = fadd <8 x float> %i.hz, %i.ih
  %i.ij = fadd <8 x float> %i.hs, %i.ii
  %i.ik = fadd <8 x float> %i.gk, %i.ia           ; 3 uses
  %i.il = fsub <8 x float> %i.ik, %i.gk           ; 2 uses
  %i.im = fsub <8 x float> %i.ik, %i.il
  %i.in = fsub <8 x float> %i.gk, %i.im
  %i.io = fsub <8 x float> %i.ia, %i.il
  %i.ip = fadd <8 x float> %i.io, %i.in
  %i.iq = fadd <8 x float> %i.ip, %i.ij
  %i.ir = fadd <8 x float> %i.gp, %i.iq
  %i.is = fadd <8 x float> %i.ik, %i.ir
  %i.it = fmul <8 x float> %i.is, %i.fy
  store <8 x float> %i.it, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SquareMatrix_Inverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %19 = alloca %"class.pbrt::SquareMatrix", align 8 ; 11 uses
  %20 = alloca %"class.pstd::optional", align 8   ; 9 uses
  %21 = alloca %"class.pbrt::SquareMatrix", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %23 = alloca %"class.testing::Message", align 8 ; 14 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 14 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.pbrt::SquareMatrix.33", align 16 ; 13 uses
  %30 = alloca %"class.pstd::optional.35", align 16 ; 13 uses
  %31 = alloca %"class.pbrt::SquareMatrix.33", align 4 ; 8 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %33 = alloca %"class.testing::Message", align 8 ; 14 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 14 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 9 uses
  %40 = alloca %"class.pstd::optional.40", align 16 ; 11 uses
  %41 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 8 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %43 = alloca %"class.testing::Message", align 8 ; 14 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 6 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 14 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %19, i64 4
  %gep.1.i.a = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %indvars.iv734.sroa.gep932 = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.b

.preheader560:                                    ; preds = %bb.bv
  %i.ab = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %30, i64 36 ; 3 uses
  %gep.1.i245 = getelementptr inbounds nuw i8, ptr %30, i64 12
  %gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %30, i64 20
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  br label %bb.bx

bb.b:                                             ; preds = %bb.a, %bb.bv
  %i.ax = phi i32 [ 0, %bb.a ], [ %i.lo, %bb.bv ] ; 2 uses
  %indvars.iv737 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next738, %bb.bv ] ; 3 uses
  %i.ay = mul i64 %indvars.iv737, 9202493588570546565 ; 2 uses
  %i.az = lshr i64 %i.ay, 27
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -9089707755183418291     ; 2 uses
  %i.bc = lshr i64 %i.bb, 33
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = shl nuw nsw i64 %indvars.iv737, 1
  %i.bf = or disjoint i64 %i.be, 1                ; 5 uses
  %i.bg = add i64 %i.bd, %i.bf
  %i.bh = mul i64 %i.bg, 6364136223846793005
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = mul i64 %i.bi, 6364136223846793005
  %i.bk = add i64 %i.bj, %i.bf                    ; 2 uses
  %i.bl = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bm = insertelement <2 x i64> %i.bl, i64 %i.bk, i64 1 ; 3 uses
  %i.bn = lshr <2 x i64> %i.bm, splat (i64 45)
  %i.bo = lshr <2 x i64> %i.bm, splat (i64 27)
  %i.bp = xor <2 x i64> %i.bn, %i.bo
  %i.bq = trunc <2 x i64> %i.bp to <2 x i32>      ; 2 uses
  %i.br = lshr <2 x i64> %i.bm, splat (i64 59)
  %i.bs = trunc nuw nsw <2 x i64> %i.br to <2 x i32>
  %i.bt = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bq, <2 x i32> %i.bq, <2 x i32> %i.bs)
  %i.bu = uitofp <2 x i32> %i.bt to <2 x float>
  %53 = fmul nnan <2 x float> %i.bu, splat (float f0x2F800000) ; 2 uses
  %54 = fcmp olt <2 x float> %53, splat (float f0x3F7FFFFF)
  %55 = select <2 x i1> %54, <2 x float> %53, <2 x float> splat (float f0x3F7FFFFF)
  %i.bv = fmul nnan <2 x float> %55, splat (float 2.000000e+01)
  %56 = fadd <2 x float> %i.bv, splat (float -1.000000e+01)
  %i.bw = mul i64 %i.bk, 6364136223846793005
  %i.bx = add i64 %i.bw, %i.bf                    ; 2 uses
  %i.by = mul i64 %i.bx, 6364136223846793005
  %i.bz = add i64 %i.by, %i.bf
  %i.ca = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.cb = insertelement <2 x i64> %i.ca, i64 %i.bz, i64 1 ; 3 uses
  %i.cc = lshr <2 x i64> %i.cb, splat (i64 45)
  %i.cd = lshr <2 x i64> %i.cb, splat (i64 27)
  %i.ce = xor <2 x i64> %i.cc, %i.cd
  %i.cf = trunc <2 x i64> %i.ce to <2 x i32>      ; 2 uses
  %i.cg = lshr <2 x i64> %i.cb, splat (i64 59)
  %i.ch = trunc nuw nsw <2 x i64> %i.cg to <2 x i32>
  %i.ci = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.cf, <2 x i32> %i.cf, <2 x i32> %i.ch)
  %i.cj = uitofp <2 x i32> %i.ci to <2 x float>
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float f0x2F800000) ; 2 uses
  %57 = fcmp olt <2 x float> %i.ck, splat (float f0x3F7FFFFF)
  %58 = select <2 x i1> %57, <2 x float> %i.ck, <2 x float> splat (float f0x3F7FFFFF)
  %59 = fmul nnan <2 x float> %58, splat (float 2.000000e+01)
  %60 = fadd <2 x float> %59, splat (float -1.000000e+01)
  store <2 x float> %56, ptr %19, align 8
  store <2 x float> %60, ptr %52, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @_ZN4pbrt7InverseILi2EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %20, ptr noundef nonnull align 4 dereferenceable(16) %19)
  %i.cl = load i8, ptr %i.i, align 8, !tbaa !46, !range !19, !noundef !20
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cn = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !34
  br label %bb.bv

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.co = load <2 x float>, ptr %20, align 8, !tbaa !37 ; 2 uses
  %i.cp = load <2 x float>, ptr %gep.1.i.a, align 8, !tbaa !37 ; 2 uses
  %i.cq = load <1 x float>, ptr %19, align 8
  %i.cr = load float, ptr %i.j, align 4, !tbaa !37
  %i.cs = shufflevector <1 x float> %i.cq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cs, <2 x float> %i.co, <2 x float> zeroinitializer)
  %i.cu = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cv, <2 x float> %i.cp, <2 x float> %i.ct)
  %i.cx = load float, ptr %52, align 8, !tbaa !37
  %i.cy = load float, ptr %i.k, align 4, !tbaa !37
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.da, <2 x float> %i.co, <2 x float> zeroinitializer)
  %i.dc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dd, <2 x float> %i.cp, <2 x float> %i.db)
  store <2 x float> %i.cw, ptr %21, align 8
  store <2 x float> %i.de, ptr %i.l, align 8
  br label %.preheader561

.preheader561:                                    ; preds = %bb.d, %bb.f
  %i.df = phi i1 [ true, %bb.d ], [ false, %bb.f ]
  %indvars.iv734.sroa.phi = phi ptr [ %21, %bb.d ], [ %indvars.iv734.sroa.gep932, %bb.f ] ; 2 uses
  %indvars.iv734 = phi i64 [ 0, %bb.d ], [ 1, %bb.f ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %indvars.iv734.sroa.phi, i64 %indvars.iv734
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.bv

bb.f:                                             ; preds = %bb.bu
  br i1 %i.df, label %.preheader561, label %bb.e, !llvm.loop !119

bb.g:                                             ; preds = %.preheader561, %bb.bu
  %i.dh = phi i1 [ true, %.preheader561 ], [ false, %bb.bu ]
  %indvars.iv = phi i64 [ 0, %.preheader561 ], [ 1, %bb.bu ] ; 2 uses
  %i.di = icmp eq i64 %indvars.iv734, %indvars.iv
  br i1 %i.di, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.dj = load float, ptr %i.dg, align 4, !tbaa !37
  %i.dk = call noundef float @llvm.fabs.f32(float %i.dj) ; 3 uses
  %i.dl = fpext float %i.dk to double
  %i.dm = fcmp olt double %i.dl, 1.000000e-05
  %i.dn = fadd float %i.dk, -1.000000e+00         ; 2 uses
  %i.do = fadd float %i.dk, 1.000000e+00
  %i.dp = fmul float %i.do, 5.000000e-01
  %i.dq = fdiv float %i.dn, %i.dp
  %.0.in.i = select i1 %i.dm, float %i.dn, float %i.dq
  %.0.i = fcmp olt float %.0.in.i, f0x38D1B717    ; 2 uses
  %i.dr = zext i1 %.0.i to i8
  store i8 %i.dr, ptr %22, align 8, !tbaa !18
  store ptr null, ptr %i.t, align 8, !tbaa !21
  br i1 %.0.i, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ds = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %.noexc143 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %18, align 8, !tbaa !26
  %i.dv = load i64, ptr %i.u, align 8, !tbaa !51
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc143
  %i.dx = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.v
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.dz = load i64, ptr %i.v, align 8, !tbaa !32
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc143
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.v
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.k
  %i.ee = load i64, ptr %i.v, align 8, !tbaa !32
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.eg = load ptr, ptr %23, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.233, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ej = load i8, ptr %i.i, align 8, !tbaa !46, !range !19, !noundef !20
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc145 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.l
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit
  %i.el = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %.noexc153 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp

.noexc153:                                        ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %17, align 8, !tbaa !26
  %i.eo = load i64, ptr %i.w, align 8, !tbaa !51
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.en, i64 noundef %i.eo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150 unwind label %bb.m ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150: ; preds = %.noexc153
  %i.eq = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.x
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150
  %i.es = load i64, ptr %i.x, align 8, !tbaa !32
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152

bb.m:                                             ; preds = %.noexc153
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.x
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147: ; preds = %bb.m
  %i.ex = load i64, ptr %i.x, align 8, !tbaa !32
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i148: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ez = load ptr, ptr %23, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.234, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152
  %i.fc = load ptr, ptr %23, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %.noexc165 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp

.noexc165:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %16, align 8, !tbaa !26
  %i.ff = load i64, ptr %i.y, align 8, !tbaa !51
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef %i.fe, i64 noundef %i.ff)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162: ; preds = %.noexc165
  %i.fh = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.z
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162
  %i.fj = load i64, ptr %i.z, align 8, !tbaa !32
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164

bb.n:                                             ; preds = %.noexc165
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %16, align 8, !tbaa !26   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.z
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159: ; preds = %bb.n
  %i.fo = load i64, ptr %i.z, align 8, !tbaa !32
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i160: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164
  %i.fq = load ptr, ptr %25, align 8, !tbaa !26
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 573, ptr noundef %i.fq)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  %i.fr = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.aa
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.ft = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.fv = load ptr, ptr %23, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.r
  br i1 %i.fw, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %.noexc.i.i
  %i.fx = load ptr, ptr %23, align 8, !tbaa !29   ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ai, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !31
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #25, !inline_history !0
  br label %bb.ai

bb.u:                                             ; preds = %bb.r
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #26
  unreachable

bb.v:                                             ; preds = %bb.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit174

.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i152, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.j, %bb.l
  %lpad.loopexit.split-lp930 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i164
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.x:                                             ; preds = %bb.o
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn130 = phi { ptr, i32 } [ %i.gh, %bb.y ], [ %i.gg, %bb.x ] ; 2 uses
  %i.gi = load ptr, ptr %25, align 8, !tbaa !26   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.aa
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.z
  %i.gk = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.w
  %.pn130.pn = phi { ptr, i32 } [ %i.gf, %bb.w ], [ %.pn130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn130, %bb.z ]
end_hunk_1
begin_hunk_2_@_ZN25SquareMatrix_Inverse_Test8TestBodyEv:bb.a
  %.not.i.i.i172 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i172, label %_ZN7testing7MessageD2Ev.exit174, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.gn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i173 unwind label %bb.ad

.noexc.i.i173:                                    ; preds = %bb.aa
  br i1 %i.gn, label %bb.ab, label %_ZN7testing7MessageD2Ev.exit174

bb.ab:                                            ; preds = %.noexc.i.i173
  %i.go = load ptr, ptr %23, align 8, !tbaa !29   ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_ZN7testing7MessageD2Ev.exit174, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !31
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(128) %i.go) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit174

bb.ad:                                            ; preds = %bb.aa
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #26
  unreachable

_ZN7testing7MessageD2Ev.exit174:                  ; preds = %bb.ac, %bb.ab, %.noexc.i.i173, %.body, %bb.v
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.v ], [ %.pn130.pn.pn, %.body ], [ %.pn130.pn.pn, %.noexc.i.i173 ], [ %.pn130.pn.pn, %bb.ab ], [ %.pn130.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i.i175 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i175, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit174
  %i.gw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i176 unwind label %bb.ah

.noexc.i.i176:                                    ; preds = %bb.ae
  br i1 %i.gw, label %bb.af, label %_ZN7testing15AssertionResultD2Ev.exit

bb.af:                                            ; preds = %.noexc.i.i176
  %i.gx = load ptr, ptr %i.t, align 8, !tbaa !21  ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !26 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !32
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.ah:                                            ; preds = %bb.ae
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #26
  unreachable

bb.ai:                                            ; preds = %bb.t, %bb.s, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  %.pr = load ptr, ptr %i.t, align 8, !tbaa !21
  %.not.i.i.i177 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i177, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i178 unwind label %bb.am

.noexc.i.i178:                                    ; preds = %bb.aj
  br i1 %i.hg, label %bb.ak, label %_ZN7testing15AssertionResultD2Ev.exit182

bb.ak:                                            ; preds = %.noexc.i.i178
  %i.hh = load ptr, ptr %i.t, align 8, !tbaa !21  ; 4 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN7testing15AssertionResultD2Ev.exit182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !26 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179: ; preds = %bb.al
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !32
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i179
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit182

bb.am:                                            ; preds = %bb.aj
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit182:         ; preds = %bb.h, %bb.ai, %.noexc.i.i178, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bu

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.af, %.noexc.i.i176, %_ZN7testing7MessageD2Ev.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %bb.bw

bb.an:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %indvars.iv734.sroa.phi, i64 %indvars.iv
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !37
  %i.hs = call noundef float @llvm.fabs.f32(float %i.hr)
  store float %i.hs, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 1.000000e-04, ptr %i.c, align 8, !tbaa !39
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.164, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ht = load i8, ptr %26, align 8, !tbaa !18, !range !19, !noundef !20
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.bp, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit232

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  %i.hw = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(16) %19)
          to label %.noexc191 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %15, align 8, !tbaa !26
  %i.hz = load i64, ptr %i.m, align 8, !tbaa !51
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef %i.hy, i64 noundef %i.hz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188 unwind label %bb.as ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188: ; preds = %.noexc191
  %i.ib = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.n
  br i1 %i.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188
  %i.id = load i64, ptr %i.n, align 8, !tbaa !32
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190

bb.as:                                            ; preds = %.noexc191
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.n
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185: ; preds = %bb.as
  %i.ii = load i64, ptr %i.n, align 8, !tbaa !32
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ik = load ptr, ptr %27, align 8, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull @.str.233, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190
  %i.in = load i8, ptr %i.i, align 8, !tbaa !46, !range !19, !noundef !20
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198, label %bb.at

bb.at:                                            ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc197 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc197:                                        ; preds = %bb.at
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit196
  %i.ip = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %.noexc205 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc205:                                        ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %14, align 8, !tbaa !26
  %i.is = load i64, ptr %i.o, align 8, !tbaa !51
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef %i.ir, i64 noundef %i.is)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202 unwind label %bb.au ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202: ; preds = %.noexc205
  %i.iu = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.p
  br i1 %i.iv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202
  %i.iw = load i64, ptr %i.p, align 8, !tbaa !32
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204

bb.au:                                            ; preds = %.noexc205
  %i.iy = landingpad { ptr, i32 }
          cleanup
  %i.iz = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.p
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199: ; preds = %bb.au
  %i.jb = load i64, ptr %i.p, align 8, !tbaa !32
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jd = load ptr, ptr %27, align 8, !tbaa !29
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.234, i64 noundef 6)
          to label %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204
  %i.jg = load ptr, ptr %27, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNK4pbrt12SquareMatrixILi2EE8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %.noexc217 unwind label %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc217:                                        ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %13, align 8, !tbaa !26
  %i.jj = load i64, ptr %i.q, align 8, !tbaa !51
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.ji, i64 noundef %i.jj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214 unwind label %bb.av ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214: ; preds = %.noexc217
  %i.jl = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.r
  br i1 %i.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214
  %i.jn = load i64, ptr %i.r, align 8, !tbaa !32
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216

bb.av:                                            ; preds = %.noexc217
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.r
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211: ; preds = %bb.av
  %i.js = load i64, ptr %i.r, align 8, !tbaa !32
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.ju = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216
  %i.jw = phi ptr [ %i.jv, %bb.aw ], [ @.str.324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i216 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 576, ptr noundef %i.jw)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.jx = load ptr, ptr %27, align 8, !tbaa !29
  %.not.i.i.i221 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i221, label %_ZN7testing7MessageD2Ev.exit223, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jy = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i222 unwind label %bb.bc

.noexc.i.i222:                                    ; preds = %bb.az
  br i1 %i.jy, label %bb.ba, label %_ZN7testing7MessageD2Ev.exit223

bb.ba:                                            ; preds = %.noexc.i.i222
  %i.jz = load ptr, ptr %27, align 8, !tbaa !29   ; 3 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %_ZN7testing7MessageD2Ev.exit223, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = load ptr, ptr %i.jz, align 8, !tbaa !31
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(128) %i.jz) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit223

bb.bc:                                            ; preds = %bb.az
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #26
  unreachable

_ZN7testing7MessageD2Ev.exit223:                  ; preds = %bb.ay, %.noexc.i.i222, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.bp

bb.bd:                                            ; preds = %bb.aq
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit226

.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN7testing7MessagelsIA7_cEERS0_RKT_.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i204, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEdeEv.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i190, %bb.ar, %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body192

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ax
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn125 = phi { ptr, i32 } [ %i.ki, %bb.bf ], [ %i.kh, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.body192

.body192:                                         ; preds = %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200, %bb.bg
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %bb.bg ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i186 ], [ %i.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i200 ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i212 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %i.kj = load ptr, ptr %27, align 8, !tbaa !29
  %.not.i.i.i224 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i224, label %_ZN7testing7MessageD2Ev.exit226, label %bb.bh

bb.bh:                                            ; preds = %.body192
  %i.kk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i225 unwind label %bb.bk

.noexc.i.i225:                                    ; preds = %bb.bh
  br i1 %i.kk, label %bb.bi, label %_ZN7testing7MessageD2Ev.exit226

bb.bi:                                            ; preds = %.noexc.i.i225
  %i.kl = load ptr, ptr %27, align 8, !tbaa !29   ; 3 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %_ZN7testing7MessageD2Ev.exit226, label %bb.bj

end_hunk_2
