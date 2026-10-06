Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing8internal11CmpHelperNEIN4pbrt12SquareMatrixILi3EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_:bb.a

bb.u:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ac

bb.v:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK4pbrt12SquareMatrixILi3EEneERKS1_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.x:                                             ; preds = %bb.n, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.z:                                             ; preds = %bb.p, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.z
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !32
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.cb, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.bz, %bb.x ] ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.aa
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.bx, %bb.v ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ac:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt7InverseILi3EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.35") align 4 %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !37 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !37 ; 6 uses
  %i.i = load float, ptr %i.c, align 4, !tbaa !37 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.b, align 4, !tbaa !37 ; 6 uses
  %i.m = load float, ptr %i.f, align 4, !tbaa !37 ; 7 uses
  %i.n = fmul float %i.m, %i.h                    ; 2 uses
  %i.o = fneg float %i.n
  %i.p = tail call noundef float @llvm.fma.f32(float %i.l, float %i.e, float %i.o)
  %i.q = fneg float %i.m                          ; 2 uses
  %i.r = tail call noundef float @llvm.fma.f32(float %i.q, float %i.h, float %i.n)
  %i.s = fadd float %i.p, %i.r                    ; 2 uses
  %i.t = load float, ptr %i.a, align 4, !tbaa !37 ; 7 uses
  %i.u = fmul float %i.m, %i.i                    ; 2 uses
  %i.v = fneg float %i.u
  %i.w = tail call noundef float @llvm.fma.f32(float %i.t, float %i.e, float %i.v)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.q, float %i.i, float %i.u)
  %i.y = fadd float %i.w, %i.x                    ; 2 uses
  %i.z = fmul float %i.l, %i.i                    ; 2 uses
  %i.aa = fneg float %i.z
  %i.ab = tail call noundef float @llvm.fma.f32(float %i.t, float %i.h, float %i.aa)
  %i.ac = fneg float %i.l
  %i.ad = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.i, float %i.z)
  %i.ae = fadd float %i.ab, %i.ad                 ; 2 uses
  %i.af = load float, ptr %i.j, align 4, !tbaa !37 ; 6 uses
  %i.ag = load float, ptr %1, align 4, !tbaa !37  ; 6 uses
  %i.ah = load float, ptr %i.k, align 4, !tbaa !37 ; 6 uses
  %i.ai = fmul float %i.ah, %i.y                  ; 2 uses
  %i.aj = fneg float %i.ai
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.s, float %i.aj)
  %i.al = fneg float %i.ah                        ; 3 uses
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float %i.y, float %i.ai)
  %i.an = fadd float %i.ak, %i.am
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ae, float %i.an) ; 2 uses
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = fdiv float 1.000000e+00, %i.ao          ; 2 uses
  %i.ar = fmul float %i.t, %i.e                   ; 2 uses
  %i.as = fneg float %i.ar
  %i.at = fneg float %i.t
  %i.au = fmul float %i.ah, %i.e                  ; 2 uses
  %i.av = fneg float %i.au
  %i.aw = tail call noundef float @llvm.fma.f32(float %i.af, float %i.h, float %i.av)
  %i.ax = tail call noundef float @llvm.fma.f32(float %i.al, float %i.e, float %i.au)
  %i.ay = fmul float %i.i, %i.af                  ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = fneg float %i.af                        ; 2 uses
  %i.bb = fmul float %i.ag, %i.h                  ; 2 uses
  %i.bc = fneg float %i.bb
  %i.bd = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.i, float %i.bc)
  %i.be = fneg float %i.ag                        ; 2 uses
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.be, float %i.h, float %i.bb)
  %i.bg = fmul float %i.af, %i.l                  ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = fmul float %i.ag, %i.m                  ; 2 uses
  %i.bj = fneg float %i.bi
  %i.bk = fmul float %i.t, %i.ah                  ; 2 uses
  %i.bl = fneg float %i.bk
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.l, float %i.bl)
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.al, float %i.t, float %i.bk)
  %i.bo = fadd float %i.bn, %i.bm
  %i.bp = fmul float %i.aq, %i.bo
  %i.bq = fadd float %i.ax, %i.aw
  %i.br = fadd float %i.bd, %i.bf
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.m, float %i.i, float %i.as)
  %i.bt = tail call noundef float @llvm.fma.f32(float %i.at, float %i.e, float %i.ar)
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.e, float %i.az)
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.ba, float %i.i, float %i.ay)
  %i.bw = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.m, float %i.bh)
  %i.bx = tail call noundef float @llvm.fma.f32(float %i.ba, float %i.l, float %i.bg)
  %i.by = tail call noundef float @llvm.fma.f32(float %i.af, float %i.t, float %i.bj)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.be, float %i.m, float %i.bi)
  %i.ca = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bs, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.bv, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.by, i64 3
  %i.ce = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.bt, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.bu, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.bz, i64 3
  %i.ci = fadd <4 x float> %i.cd, %i.ch
  %i.cj = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cl = insertelement <8 x float> poison, float %i.s, i64 0
  %i.cm = insertelement <8 x float> %i.cl, float %i.bq, i64 1
  %i.cn = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.cp = insertelement <8 x float> %i.co, float %i.ae, i64 6
  %i.cq = insertelement <8 x float> %i.cp, float %i.br, i64 7
  %i.cr = fmul <8 x float> %i.ck, %i.cq
  store <8 x float> %i.cr, ptr %0, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bp, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sink, ptr %i.cs, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SquareMatrix_Basics4_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing15AssertionResultD2Ev.exit:
  %1 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 14 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 12 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 10 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 6 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.pstd::optional.40", align 4 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.pstd::optional.40", align 4 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %34 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 11 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.pbrt::SquareMatrix.39", align 4 ; 10 uses
  %38 = alloca %"class.pstd::optional.40", align 4 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %40 = alloca %"class.testing::Message", align 8 ; 8 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store float 1.000000e+00, ptr %1, align 4, !tbaa !37
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !37
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store float 1.000000e+00, ptr %3, align 4, !tbaa !37
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !37
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !37
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.g = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ @.str.324, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 516, ptr noundef %i.l)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %4, align 8, !tbaa !29
  %.not.i.i.i106 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i106, label %_ZN7testing7MessageD2Ev.exit108, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i107 unwind label %bb.i

.noexc.i.i107:                                    ; preds = %bb.f
  br i1 %i.n, label %bb.g, label %_ZN7testing7MessageD2Ev.exit108

bb.g:                                             ; preds = %.noexc.i.i107
  %i.o = load ptr, ptr %4, align 8, !tbaa !29     ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN7testing7MessageD2Ev.exit108, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit108

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN7testing7MessageD2Ev.exit108:                  ; preds = %bb.e, %.noexc.i.i107, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn52 = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.m ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.gi

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit108
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %.not.i.i.i109 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i109, label %_ZN7testing15AssertionResultD2Ev.exit114, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i110 unwind label %bb.s

.noexc.i.i110:                                    ; preds = %bb.p
  br i1 %i.aa, label %bb.q, label %_ZN7testing15AssertionResultD2Ev.exit114

bb.q:                                             ; preds = %.noexc.i.i110
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !21  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit114, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111: ; preds = %bb.r
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i112: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i111
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit114

bb.s:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit114:         ; preds = %bb.o, %.noexc.i.i110, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.am, align 4, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.an, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperNEIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.227, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ao = load i8, ptr %6, align 8, !tbaa !18, !range !19, !noundef !20
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i115, label %_ZNK7testing15AssertionResult15failure_messageEv.exit116, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit116

_ZNK7testing15AssertionResult15failure_messageEv.exit116: ; preds = %bb.v, %bb.u
  %i.at = phi ptr [ %i.as, %bb.v ], [ @.str.324, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 517, ptr noundef %i.at)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.au = load ptr, ptr %8, align 8, !tbaa !29
  %.not.i.i.i117 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i118 unwind label %bb.ab

.noexc.i.i118:                                    ; preds = %bb.y
  br i1 %i.av, label %bb.z, label %_ZN7testing7MessageD2Ev.exit119

bb.z:                                             ; preds = %.noexc.i.i118
  %i.aw = load ptr, ptr %8, align 8, !tbaa !29    ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN7testing7MessageD2Ev.exit119, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit119

bb.ab:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.x, %.noexc.i.i118, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ah

bb.ac:                                            ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn55 = phi { ptr, i32 } [ %i.bf, %bb.ae ], [ %i.be, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.af ], [ %i.bd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.gi

bb.ah:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit114, %_ZN7testing7MessageD2Ev.exit119
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %.not.i.i.i120 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit125, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bi = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i121 unwind label %bb.al

.noexc.i.i121:                                    ; preds = %bb.ai
  br i1 %i.bi, label %bb.aj, label %_ZN7testing15AssertionResultD2Ev.exit125

bb.aj:                                            ; preds = %.noexc.i.i121
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !21 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN7testing15AssertionResultD2Ev.exit125, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !26 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122: ; preds = %bb.ak
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !32
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit125

bb.al:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit125:         ; preds = %bb.ah, %.noexc.i.i121, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store float 8.000000e+00, ptr %10, align 4, !tbaa !37
  %49 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  store float 2.000000e+00, ptr %i.bs, align 4, !tbaa !37
  %50 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bt, align 4, !tbaa !37
  %51 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %i.bu, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %52 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %52, i8 0, i64 16, i1 false), !alias.scope !115
  %53 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %53, i8 0, i64 16, i1 false), !alias.scope !115
  %54 = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %54, i8 0, i64 16, i1 false), !alias.scope !115
  store float 8.000000e+00, ptr %12, align 4, !tbaa !37, !alias.scope !115
  store float 2.000000e+00, ptr %i.bv, align 4, !tbaa !37, !alias.scope !115
  store float 1.000000e+00, ptr %i.bw, align 4, !tbaa !37, !alias.scope !115
  store float 5.000000e-01, ptr %i.bx, align 4, !tbaa !37, !alias.scope !115
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.229, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(64) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.by = load i8, ptr %11, align 8, !tbaa !18, !range !19, !noundef !20
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ba, label %bb.am

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.ao, %bb.an
  %i.cd = phi ptr [ %i.cc, %bb.ao ], [ @.str.324, %bb.an ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 520, ptr noundef %i.cd)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ce = load ptr, ptr %13, align 8, !tbaa !29
  %.not.i.i.i128 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cf = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i129 unwind label %bb.au

.noexc.i.i129:                                    ; preds = %bb.ar
  br i1 %i.cf, label %bb.as, label %_ZN7testing7MessageD2Ev.exit130

bb.as:                                            ; preds = %.noexc.i.i129
  %i.cg = load ptr, ptr %13, align 8, !tbaa !29   ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN7testing7MessageD2Ev.exit130, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.cg) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit130

bb.au:                                            ; preds = %bb.ar
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #26
  unreachable

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %bb.aq, %.noexc.i.i129, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ba

bb.av:                                            ; preds = %bb.am
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ap
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn58 = phi { ptr, i32 } [ %i.cp, %bb.ax ], [ %i.co, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.ay ], [ %i.cn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.gh

bb.ba:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit125, %_ZN7testing7MessageD2Ev.exit130
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %.not.i.i.i131 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i131, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cs = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i132 unwind label %bb.be

.noexc.i.i132:                                    ; preds = %bb.bb
  br i1 %i.cs, label %bb.bc, label %_ZN7testing15AssertionResultD2Ev.exit162

bb.bc:                                            ; preds = %.noexc.i.i132
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133: ; preds = %bb.bd
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit162

bb.be:                                            ; preds = %bb.bb
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i134, %bb.bc, %.noexc.i.i132, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store <8 x float> <float 1.000000e+00, float 5.000000e+00, float 9.000000e+00, float 1.300000e+01, float 2.000000e+00, float 6.000000e+00, float 1.000000e+01, float 1.400000e+01>, ptr %15, align 4, !tbaa !37
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 32
  store <8 x float> <float 3.000000e+00, float 7.000000e+00, float 1.100000e+01, float 1.500000e+01, float 4.000000e+00, float 8.000000e+00, float 1.200000e+01, float 1.600000e+01>, ptr %i.dc, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store <8 x float> <float 1.000000e+00, float 5.000000e+00, float 9.000000e+00, float 1.300000e+01, float 2.000000e+00, float 6.000000e+00, float 1.000000e+01, float 1.400000e+01>, ptr %17, align 4, !tbaa !37, !alias.scope !116
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <8 x float> <float 3.000000e+00, float 7.000000e+00, float 1.100000e+01, float 1.500000e+01, float 4.000000e+00, float 8.000000e+00, float 1.200000e+01, float 1.600000e+01>, ptr %i.dd, align 4, !tbaa !37, !alias.scope !116
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(64) %17, ptr noundef nonnull align 4 dereferenceable(64) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.de = load i8, ptr %16, align 8, !tbaa !18, !range !19, !noundef !20
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !21 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i163, label %_ZNK7testing15AssertionResult15failure_messageEv.exit164, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit164

_ZNK7testing15AssertionResult15failure_messageEv.exit164: ; preds = %bb.bh, %bb.bg
  %i.dj = phi ptr [ %i.di, %bb.bh ], [ @.str.324, %bb.bg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 525, ptr noundef %i.dj)
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.dk = load ptr, ptr %18, align 8, !tbaa !29
  %.not.i.i.i165 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dl = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i166 unwind label %bb.bn

.noexc.i.i166:                                    ; preds = %bb.bk
  br i1 %i.dl, label %bb.bl, label %_ZN7testing7MessageD2Ev.exit167

bb.bl:                                            ; preds = %.noexc.i.i166
  %i.dm = load ptr, ptr %18, align 8, !tbaa !29   ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN7testing7MessageD2Ev.exit167, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_ZN25SquareMatrix_Basics4_Test8TestBodyEv:_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.40") align 4 %28, ptr noundef nonnull align 4 dereferenceable(64) %10)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit200
  %i.hb = load i8, ptr %i.ei, align 4, !tbaa !50, !range !19, !noundef !20
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5valueEv.exit.i.i, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5valueEv.exit.i.i: ; preds = %bb.do
  store i8 0, ptr %i.ei, align 4, !tbaa !50
  br label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i: ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5valueEv.exit.i.i, %bb.do
  %i.hd = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !50, !range !19, !noundef !20
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %.thread, label %bb.dr

.thread:                                          ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %20, ptr noundef nonnull align 4 dereferenceable(65) %28, i64 64, i1 false), !tbaa.struct !117
  store i8 1, ptr %i.ei, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  br label %.thread279

bb.dp:                                            ; preds = %bb.di, %bb.cu
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %bb.di ], [ %i.fy, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.gf

bb.dq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit200
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.gf

bb.dr:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  store i8 0, ptr %29, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store ptr null, ptr %i.hh, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.ds unwind label %bb.ea

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2)
          to label %bb.dt unwind label %bb.eb

bb.dt:                                            ; preds = %bb.ds
  %i.hi = load ptr, ptr %32, align 8, !tbaa !26
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 532, ptr noundef %i.hi)
          to label %bb.du unwind label %bb.ec

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.dv unwind label %bb.ed

bb.dv:                                            ; preds = %bb.du
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #25
  %i.hj = load ptr, ptr %32, align 8, !tbaa !26   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.dv
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !32
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  %i.ho = load ptr, ptr %30, align 8, !tbaa !29
  %.not.i.i.i206 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i206, label %bb.eg, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.hp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i207 unwind label %bb.dz

.noexc.i.i207:                                    ; preds = %bb.dw
  br i1 %i.hp, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %.noexc.i.i207
  %i.hq = load ptr, ptr %30, align 8, !tbaa !29   ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.eg, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.hs = load ptr, ptr %i.hq, align 8, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hq) #25, !inline_history !0
  br label %bb.eg

bb.dz:                                            ; preds = %bb.dw
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #26
  unreachable

bb.ea:                                            ; preds = %bb.dr
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.eb:                                            ; preds = %bb.ds
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.ec:                                            ; preds = %bb.dt
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.du
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #25
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn79 = phi { ptr, i32 } [ %i.ia, %bb.ed ], [ %i.hz, %bb.ec ] ; 2 uses
  %i.ib = load ptr, ptr %32, align 8, !tbaa !26   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.ee
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !32
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.eb
  %.pn79.pn = phi { ptr, i32 } [ %i.hy, %bb.eb ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %.pn79, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #25
  br label %bb.ef

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.ea
  %.pn79.pn.pn = phi { ptr, i32 } [ %.pn79.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.hx, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.gf

bb.eg:                                            ; preds = %bb.dy, %bb.dx, %.noexc.i.i207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %.pr278 = load ptr, ptr %i.hh, align 8, !tbaa !21
  %.not.i.i.i212 = icmp eq ptr %.pr278, null
  br i1 %.not.i.i.i212, label %.thread279, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ig = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i213 unwind label %bb.ek

.noexc.i.i213:                                    ; preds = %bb.eh
  br i1 %i.ig, label %bb.ei, label %.thread279

bb.ei:                                            ; preds = %.noexc.i.i213
  %i.ih = load ptr, ptr %i.hh, align 8, !tbaa !21 ; 4 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %.thread279, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !26 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214: ; preds = %bb.ej
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !32
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i215: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i214
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 32) #27
  br label %.thread279

bb.ek:                                            ; preds = %bb.eh
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #26
  unreachable

.thread279:                                       ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i215, %bb.ei, %.noexc.i.i213, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %55 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %34, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %55, i8 0, i64 16, i1 false), !alias.scope !118
  %56 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %34, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %56, i8 0, i64 16, i1 false), !alias.scope !118
  %57 = getelementptr inbounds nuw i8, ptr %34, i64 44
  %i.is = getelementptr inbounds nuw i8, ptr %34, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %57, i8 0, i64 16, i1 false), !alias.scope !118
  store float 1.250000e-01, ptr %34, align 4, !tbaa !37, !alias.scope !118
  store float 5.000000e-01, ptr %i.iq, align 4, !tbaa !37, !alias.scope !118
  store float 1.000000e+00, ptr %i.ir, align 4, !tbaa !37, !alias.scope !118
  store float 2.000000e+00, ptr %i.is, align 4, !tbaa !37, !alias.scope !118
  %i.it = load i8, ptr %i.ei, align 4, !tbaa !50, !range !19, !noundef !20
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit220, label %bb.el

bb.el:                                            ; preds = %.thread279
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.341, i32 noundef 235, ptr noundef nonnull @.str.326, ptr noundef nonnull align 1 dereferenceable(4) @.str.342) #28
          to label %.noexc219 unwind label %bb.em

.noexc219:                                        ; preds = %bb.el
  unreachable

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit220: ; preds = %.thread279
  invoke void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.204, ptr noundef nonnull align 4 dereferenceable(64) %34, ptr noundef nonnull align 4 dereferenceable(64) %20)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt12SquareMatrixILi4EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit222 unwind label %bb.em

_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt12SquareMatrixILi4EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit222: ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.iv = load i8, ptr %33, align 8, !tbaa !18, !range !19, !noundef !20
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.fb, label %bb.en

bb.em:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit220, %bb.el
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %bb.fi

bb.en:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt12SquareMatrixILi4EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit222
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.eo unwind label %bb.ew

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %i.iy = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !21 ; 2 uses
  %.not.i.i223 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i223, label %_ZNK7testing15AssertionResult15failure_messageEv.exit224, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit224

_ZNK7testing15AssertionResult15failure_messageEv.exit224: ; preds = %bb.ep, %bb.eo
  %i.jb = phi ptr [ %i.ja, %bb.ep ], [ @.str.324, %bb.eo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 533, ptr noundef %i.jb)
          to label %bb.eq unwind label %bb.ex

bb.eq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit224
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %bb.eq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  %i.jc = load ptr, ptr %35, align 8, !tbaa !29
  %.not.i.i.i225 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i225, label %_ZN7testing7MessageD2Ev.exit227, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.jd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i226 unwind label %bb.ev

.noexc.i.i226:                                    ; preds = %bb.es
  br i1 %i.jd, label %bb.et, label %_ZN7testing7MessageD2Ev.exit227

bb.et:                                            ; preds = %.noexc.i.i226
  %i.je = load ptr, ptr %35, align 8, !tbaa !29   ; 3 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %_ZN7testing7MessageD2Ev.exit227, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !31
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.je) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit227

bb.ev:                                            ; preds = %bb.es
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #26
  unreachable

_ZN7testing7MessageD2Ev.exit227:                  ; preds = %bb.er, %.noexc.i.i226, %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %bb.fb

bb.ew:                                            ; preds = %bb.en
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ex:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit224
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.eq
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #25
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn84 = phi { ptr, i32 } [ %i.jn, %bb.ey ], [ %i.jm, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ew
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.ez ], [ %i.jl, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #25
  br label %bb.fi

bb.fb:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt12SquareMatrixILi4EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit222, %_ZN7testing7MessageD2Ev.exit227
  %i.jo = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !21
  %.not.i.i.i228 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i228, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i229 unwind label %bb.ff

.noexc.i.i229:                                    ; preds = %bb.fc
  br i1 %i.jq, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %.noexc.i.i229
  %i.jr = load ptr, ptr %i.jo, align 8, !tbaa !21 ; 4 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !26 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230: ; preds = %bb.fe
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !32
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i231: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 32) #27
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #26
  unreachable

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i231, %bb.fd, %.noexc.i.i229, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  store float 2.000000e+00, ptr %37, align 4, !tbaa !37
  %i.ka = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ka, i8 0, i64 16, i1 false)
  store <4 x float> <float 4.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.kb, align 4, !tbaa !37
  %i.kc = getelementptr inbounds nuw i8, ptr %37, i64 36
  store <2 x float> <float -3.000000e+00, float 0.000000e+00>, ptr %i.kc, align 4, !tbaa !37
  %i.kd = getelementptr inbounds nuw i8, ptr %37, i64 44
  store float 1.000000e+00, ptr %i.kd, align 4, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %37, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ke, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  invoke void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.40") align 4 %38, ptr noundef nonnull align 4 dereferenceable(64) %37)
          to label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i234 unwind label %bb.fj

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i234: ; preds = %bb.fg
  %i.kf = getelementptr inbounds nuw i8, ptr %38, i64 64
  %i.kg = load i8, ptr %i.kf, align 4, !tbaa !50, !range !19, !noundef !20
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit255

bb.fi:                                            ; preds = %bb.fa, %bb.em
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %bb.fa ], [ %i.ix, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  br label %bb.gf

bb.fj:                                            ; preds = %bb.fg
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.ge

bb.fk:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEE5resetEv.exit.i234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %20, ptr noundef nonnull align 4 dereferenceable(65) %38, i64 64, i1 false), !tbaa.struct !117
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_math_test.cpp:bb.a
  %i.au = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, ptr noundef %i.as, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.at)
  store ptr %i.au, ptr @_ZN16Math_ErfInv_Test10test_info_E, align 8, !tbaa !464
  %i.av = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Math_ErfInv_Test10test_info_E) ; 0 uses
  %i.aw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ax = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30Math_DifferenceOfProducts_TestEE, i64 16), ptr %i.ax, align 8, !tbaa !31
  %i.ay = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, ptr noundef %i.aw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ax)
  store ptr %i.ay, ptr @_ZN30Math_DifferenceOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.az = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30Math_DifferenceOfProducts_Test10test_info_E) ; 0 uses
  %i.ba = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23Math_SumOfProducts_TestEE, i64 16), ptr %i.bb, align 8, !tbaa !31
  %i.bc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, ptr noundef %i.ba, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bb)
  store ptr %i.bc, ptr @_ZN23Math_SumOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.bd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23Math_SumOfProducts_Test10test_info_E) ; 0 uses
  %i.be = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bf = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI21FastExp_Accuracy_TestEE, i64 16), ptr %i.bf, align 8, !tbaa !31
  %i.bg = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, ptr noundef %i.be, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bf)
  store ptr %i.bg, ptr @_ZN21FastExp_Accuracy_Test10test_info_E, align 8, !tbaa !464
  %i.bh = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN21FastExp_Accuracy_Test10test_info_E) ; 0 uses
  %i.bi = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Math_GaussianIntegral_TestEE, i64 16), ptr %i.bj, align 8, !tbaa !31
  %i.bk = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, ptr noundef %i.bi, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bj)
  store ptr %i.bk, ptr @_ZN26Math_GaussianIntegral_Test10test_info_E, align 8, !tbaa !464
  %i.bl = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Math_GaussianIntegral_Test10test_info_E) ; 0 uses
  %i.bm = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics2_TestEE, i64 16), ptr %i.bn, align 8, !tbaa !31
  %i.bo = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef null, ptr noundef %i.bm, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bn)
  store ptr %i.bo, ptr @_ZN25SquareMatrix_Basics2_Test10test_info_E, align 8, !tbaa !464
  %i.bp = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics2_Test10test_info_E) ; 0 uses
  %i.bq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.br = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics3_TestEE, i64 16), ptr %i.br, align 8, !tbaa !31
  %i.bs = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, ptr noundef %i.bq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.br)
  store ptr %i.bs, ptr @_ZN25SquareMatrix_Basics3_Test10test_info_E, align 8, !tbaa !464
  %i.bt = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics3_Test10test_info_E) ; 0 uses
  %i.bu = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Basics4_TestEE, i64 16), ptr %i.bv, align 8, !tbaa !31
  %i.bw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.223, ptr noundef null, ptr noundef null, ptr noundef %i.bu, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bv)
  store ptr %i.bw, ptr @_ZN25SquareMatrix_Basics4_Test10test_info_E, align 8, !tbaa !464
  %i.bx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Basics4_Test10test_info_E) ; 0 uses
  %i.by = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25SquareMatrix_Inverse_TestEE, i64 16), ptr %i.bz, align 8, !tbaa !31
  %i.ca = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, ptr noundef %i.by, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bz)
  store ptr %i.ca, ptr @_ZN25SquareMatrix_Inverse_Test10test_info_E, align 8, !tbaa !464
  %i.cb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25SquareMatrix_Inverse_Test10test_info_E) ; 0 uses
  %i.cc = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24FindInterval_Basics_TestEE, i64 16), ptr %i.cd, align 8, !tbaa !31
  %i.ce = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef %i.cc, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cd)
  store ptr %i.ce, ptr @_ZN24FindInterval_Basics_Test10test_info_E, align 8, !tbaa !464
  %i.cf = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24FindInterval_Basics_Test10test_info_E) ; 0 uses
  %i.cg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ch = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Abs_TestEE, i64 16), ptr %i.ch, align 8, !tbaa !31
  %i.ci = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.249, ptr noundef null, ptr noundef null, ptr noundef %i.cg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ch)
  store ptr %i.ci, ptr @_ZN22FloatInterval_Abs_Test10test_info_E, align 8, !tbaa !464
  %i.cj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Abs_Test10test_info_E) ; 0 uses
  %i.ck = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI23FloatInterval_Sqrt_TestEE, i64 16), ptr %i.cl, align 8, !tbaa !31
  %i.cm = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.254, ptr noundef null, ptr noundef null, ptr noundef %i.ck, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cl)
  store ptr %i.cm, ptr @_ZN23FloatInterval_Sqrt_Test10test_info_E, align 8, !tbaa !464
  %i.cn = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN23FloatInterval_Sqrt_Test10test_info_E) ; 0 uses
  %i.co = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Add_TestEE, i64 16), ptr %i.cp, align 8, !tbaa !31
  %i.cq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.256, ptr noundef null, ptr noundef null, ptr noundef %i.co, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cp)
  store ptr %i.cq, ptr @_ZN22FloatInterval_Add_Test10test_info_E, align 8, !tbaa !464
  %i.cr = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Add_Test10test_info_E) ; 0 uses
  %i.cs = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ct = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Sub_TestEE, i64 16), ptr %i.ct, align 8, !tbaa !31
  %i.cu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.258, ptr noundef null, ptr noundef null, ptr noundef %i.cs, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ct)
  store ptr %i.cu, ptr @_ZN22FloatInterval_Sub_Test10test_info_E, align 8, !tbaa !464
  %i.cv = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Sub_Test10test_info_E) ; 0 uses
  %i.cw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Mul_TestEE, i64 16), ptr %i.cx, align 8, !tbaa !31
  %i.cy = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.260, ptr noundef null, ptr noundef null, ptr noundef %i.cw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cx)
  store ptr %i.cy, ptr @_ZN22FloatInterval_Mul_Test10test_info_E, align 8, !tbaa !464
  %i.cz = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Mul_Test10test_info_E) ; 0 uses
  %i.da = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.db = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Div_TestEE, i64 16), ptr %i.db, align 8, !tbaa !31
  %i.dc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.262, ptr noundef null, ptr noundef null, ptr noundef %i.da, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.db)
  store ptr %i.dc, ptr @_ZN22FloatInterval_Div_Test10test_info_E, align 8, !tbaa !464
  %i.dd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Div_Test10test_info_E) ; 0 uses
  %i.de = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.df = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_FMA_TestEE, i64 16), ptr %i.df, align 8, !tbaa !31
  %i.dg = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.264, ptr noundef null, ptr noundef null, ptr noundef %i.de, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.df)
  store ptr %i.dg, ptr @_ZN22FloatInterval_FMA_Test10test_info_E, align 8, !tbaa !464
  %i.dh = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_FMA_Test10test_info_E) ; 0 uses
  %i.di = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22FloatInterval_Sqr_TestEE, i64 16), ptr %i.dj, align 8, !tbaa !31
  %i.dk = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.272, ptr noundef null, ptr noundef null, ptr noundef %i.di, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dj)
  store ptr %i.dk, ptr @_ZN22FloatInterval_Sqr_Test10test_info_E, align 8, !tbaa !464
  %i.dl = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22FloatInterval_Sqr_Test10test_info_E) ; 0 uses
  %i.dm = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dn = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29FloatInterval_SumSquares_TestEE, i64 16), ptr %i.dn, align 8, !tbaa !31
  %i.do = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.282, ptr noundef null, ptr noundef null, ptr noundef %i.dm, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dn)
  store ptr %i.do, ptr @_ZN29FloatInterval_SumSquares_Test10test_info_E, align 8, !tbaa !464
  %i.dp = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29FloatInterval_SumSquares_Test10test_info_E) ; 0 uses
  %i.dq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dr = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI39FloatInterval_DifferenceOfProducts_TestEE, i64 16), ptr %i.dr, align 8, !tbaa !31
  %i.ds = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, ptr noundef %i.dq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dr)
  store ptr %i.ds, ptr @_ZN39FloatInterval_DifferenceOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.dt = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN39FloatInterval_DifferenceOfProducts_Test10test_info_E) ; 0 uses
  %i.du = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI32FloatInterval_SumOfProducts_TestEE, i64 16), ptr %i.dv, align 8, !tbaa !31
  %i.dw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, ptr noundef %i.du, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dv)
  store ptr %i.dw, ptr @_ZN32FloatInterval_SumOfProducts_Test10test_info_E, align 8, !tbaa !464
  %i.dx = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN32FloatInterval_SumOfProducts_Test10test_info_E) ; 0 uses
  %i.dy = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.dz = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI17Math_TwoProd_TestEE, i64 16), ptr %i.dz, align 8, !tbaa !31
  %i.ea = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.295, ptr noundef null, ptr noundef null, ptr noundef %i.dy, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.dz)
  store ptr %i.ea, ptr @_ZN17Math_TwoProd_Test10test_info_E, align 8, !tbaa !464
  %i.eb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN17Math_TwoProd_Test10test_info_E) ; 0 uses
  %i.ec = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ed = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI16Math_TwoSum_TestEE, i64 16), ptr %i.ed, align 8, !tbaa !31
  %i.ee = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.301, ptr noundef null, ptr noundef null, ptr noundef %i.ec, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ed)
  store ptr %i.ee, ptr @_ZN16Math_TwoSum_Test10test_info_E, align 8, !tbaa !464
  %i.ef = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16Math_TwoSum_Test10test_info_E) ; 0 uses
  %i.eg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.eh = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Math_InnerProduct_TestEE, i64 16), ptr %i.eh, align 8, !tbaa !31
  %i.ei = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.305, ptr noundef null, ptr noundef null, ptr noundef %i.eg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.eh)
  store ptr %i.ei, ptr @_ZN22Math_InnerProduct_Test10test_info_E, align 8, !tbaa !464
  %i.ej = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Math_InnerProduct_Test10test_info_E) ; 0 uses
  %i.ek = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.el = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29PermutationElement_Valid_TestEE, i64 16), ptr %i.el, align 8, !tbaa !31
  %i.em = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.310, ptr noundef null, ptr noundef null, ptr noundef %i.ek, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.el)
  store ptr %i.em, ptr @_ZN29PermutationElement_Valid_Test10test_info_E, align 8, !tbaa !464
  %i.en = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29PermutationElement_Valid_Test10test_info_E) ; 0 uses
  %i.eo = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ep = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31PermutationElement_Uniform_TestEE, i64 16), ptr %i.ep, align 8, !tbaa !31
  %i.eq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.315, ptr noundef null, ptr noundef null, ptr noundef %i.eo, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ep)
  store ptr %i.eq, ptr @_ZN31PermutationElement_Uniform_Test10test_info_E, align 8, !tbaa !464
  %i.er = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31PermutationElement_Uniform_Test10test_info_E) ; 0 uses
  %i.es = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.et = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI36PermutationElement_UniformDelta_TestEE, i64 16), ptr %i.et, align 8, !tbaa !31
  %i.eu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.320, ptr noundef null, ptr noundef null, ptr noundef %i.es, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.et)
  store ptr %i.eu, ptr @_ZN36PermutationElement_UniformDelta_Test10test_info_E, align 8, !tbaa !464
  %i.ev = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN36PermutationElement_UniformDelta_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #16

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshr.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshr.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{!1, !33}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"bool", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!16 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !15, i64 0}
!17 = !{!"_ZTSN7testing15AssertionResultE", !12, i64 0, !16, i64 8}
!18 = !{!17, !12, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!16, !15, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !8, i64 16}
!26 = !{!25, !22, i64 0}
!27 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!28 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!8, !8, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!9, !9, i64 0}
!35 = !{!24, !24, i64 0}
!36 = !{!"float", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"double", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!41 = !{!"_ZTSSt6locale", !40, i64 0}
!42 = !{!"_ZTSSi", !24, i64 8}
!43 = !{!42, !24, i64 8}
!44 = !{!22, !22, i64 0}
!45 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi2EEEEE", !8, i64 0, !12, i64 16}
!46 = !{!45, !12, i64 16}
!47 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi3EEEEE", !8, i64 0, !12, i64 36}
!48 = !{!47, !12, i64 36}
!49 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEE", !8, i64 0, !12, i64 64}
!50 = !{!49, !12, i64 64}
!51 = !{!25, !24, i64 8}
!52 = !{!"_ZTSN4pbrt3RNGE", !24, i64 0, !24, i64 8}
!53 = !{!52, !24, i64 8}
!54 = !{!52, !24, i64 0}
!55 = !{!"_ZTSN4pbrt8IntervalE", !36, i64 0, !36, i64 4}
!56 = !{!55, !36, i64 0}
!57 = !{!55, !36, i64 4}
!58 = !{!23, !22, i64 0}
!59 = !{!"llvm.loop.unswitch.partial.disable"}
!60 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !41, i64 56}
!61 = !{!60, !22, i64 40}
!62 = !{!60, !22, i64 32}
!63 = distinct !{!63, !33}
!64 = distinct !{null, null}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{!"branch_weights", i32 1, i32 1048575}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !24, i64 8}
!79 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!80 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !77, i64 40, !78, i64 48, !8, i64 64, !9, i64 192, !79, i64 200, !41, i64 208}
!81 = !{!80, !24, i64 8}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = !{i64 0, i64 16, !32}
!102 = distinct !{!102, i1 false, !"_ZN4pbrt12SquareMatrixILi3EE4DiagIJiiEEES1_fDpT_"}
!103 = distinct !{!103, !102, !"_ZN4pbrt12SquareMatrixILi3EE4DiagIJiiEEES1_fDpT_: argument 0"}
!104 = distinct !{!104, i1 false, !"_ZN4pbrt9TransposeILi3EEENS_12SquareMatrixIXT_EEERKS2_"}
!105 = distinct !{!105, !104, !"_ZN4pbrt9TransposeILi3EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!106 = !{!103}
!107 = !{!105}
!108 = !{i64 0, i64 36, !32}
!109 = distinct !{!109, i1 false, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJiidEEES1_fDpT_"}
!110 = distinct !{!110, !109, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJiidEEES1_fDpT_: argument 0"}
!111 = distinct !{!111, i1 false, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!112 = distinct !{!112, !111, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!113 = distinct !{!113, i1 false, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJdiiEEES1_fDpT_"}
!114 = distinct !{!114, !113, !"_ZN4pbrt12SquareMatrixILi4EE4DiagIJdiiEEES1_fDpT_: argument 0"}
!115 = !{!110}
!116 = !{!112}
!117 = !{i64 0, i64 64, !32}
!118 = !{!114}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, i1 false, !"_ZL12randomMatrixILi3EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE"}
!123 = distinct !{!123, !122, !"_ZL12randomMatrixILi3EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE: argument 0"}
!124 = distinct !{!124, i1 false, !"_ZN4pbrtmlILi3EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!125 = distinct !{!125, !124, !"_ZN4pbrtmlILi3EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, i1 false, !"_ZL12randomMatrixILi4EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE"}
!130 = distinct !{!130, !129, !"_ZL12randomMatrixILi4EEN4pbrt12SquareMatrixIXT_EEERNS0_3RNGE: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!132 = distinct !{!132, !131, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = !{!123}
!137 = !{!125}
!138 = !{!130}
!139 = !{!132}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
end_hunk_2
