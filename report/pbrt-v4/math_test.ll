Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math_test?download=true
inline.NumInlined: 3804
inline.NumDeleted: 865
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing8internal11CmpHelperNEIN4pbrt12SquareMatrixILi3EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_:bb.a
bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %.preheader.1.i, %bb.d, %bb.e, %.preheader.2.i, %bb.f, %bb.g
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.ac

_ZNK4pbrt12SquareMatrixILi3EEneERKS1_.exit:       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.335)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %_ZNK4pbrt12SquareMatrixILi3EEneERKS1_.exit
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA7_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(7) @.str.340)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(12) @.str.337)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing13PrintToStringIN4pbrt12SquareMatrixILi3EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(36) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.w

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.m
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.183)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing13PrintToStringIN4pbrt12SquareMatrixILi3EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(36) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15 unwind label %bb.y

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15: ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt12SquareMatrixILi3EEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !32
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bg = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !32
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.bn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.r
  br i1 %i.bn, label %bb.s, label %_ZN7testing15AssertionResultD2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !32
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

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
  %2 = load float, ptr %i.g, align 4, !tbaa !37   ; 6 uses
  %3 = load float, ptr %i.c, align 4, !tbaa !37   ; 8 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.b, align 4, !tbaa !37 ; 6 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !37 ; 7 uses
  %i.j = fmul float %i.i, %2                      ; 2 uses
  %i.k = fneg float %i.j
  %i.l = tail call noundef float @llvm.fma.f32(float %i.h, float %i.e, float %i.k)
  %i.m = fneg float %i.i                          ; 2 uses
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %2, float %i.j)
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %i.p = load float, ptr %i.a, align 4, !tbaa !37 ; 7 uses
  %i.q = fmul float %i.i, %3                      ; 2 uses
  %i.r = fneg float %i.q
  %i.s = tail call noundef float @llvm.fma.f32(float %i.p, float %i.e, float %i.r)
  %i.t = tail call noundef float @llvm.fma.f32(float %i.m, float %3, float %i.q)
  %i.u = fadd float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.h, %3                      ; 2 uses
  %i.w = fneg float %i.v
  %i.x = tail call noundef float @llvm.fma.f32(float %i.p, float %2, float %i.w)
  %i.y = fneg float %i.h
  %i.z = tail call noundef float @llvm.fma.f32(float %i.y, float %3, float %i.v)
  %i.aa = fadd float %i.x, %i.z                   ; 2 uses
  %i.ab = load float, ptr %4, align 4, !tbaa !37  ; 6 uses
  %i.ac = load float, ptr %1, align 4, !tbaa !37  ; 6 uses
  %i.ad = load float, ptr %5, align 4, !tbaa !37  ; 6 uses
  %i.ae = fmul float %i.ad, %i.u                  ; 2 uses
  %i.af = fneg float %i.ae
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.o, float %i.af)
  %i.ah = fneg float %i.ad                        ; 3 uses
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.u, float %i.ae)
  %i.aj = fadd float %i.ag, %i.ai
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.ab, float %i.aa, float %i.aj) ; 2 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.am = fdiv float 1.000000e+00, %i.ak          ; 2 uses
  %i.an = fmul float %i.p, %i.e                   ; 2 uses
  %i.ao = fneg float %i.an
  %i.ap = fneg float %i.p
  %i.aq = fmul float %i.ad, %i.e                  ; 2 uses
  %i.ar = fneg float %i.aq
  %6 = tail call noundef float @llvm.fma.f32(float %i.ab, float %2, float %i.ar)
  %7 = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.e, float %i.aq)
  %i.as = fmul float %3, %i.ab                    ; 2 uses
  %i.at = fneg float %i.as
  %i.au = fneg float %i.ab                        ; 2 uses
  %i.av = fmul float %i.ac, %2                    ; 2 uses
  %i.aw = fneg float %i.av
  %8 = tail call noundef float @llvm.fma.f32(float %i.ad, float %3, float %i.aw)
  %i.ax = fneg float %i.ac                        ; 2 uses
  %9 = tail call noundef float @llvm.fma.f32(float %i.ax, float %2, float %i.av)
  %i.ay = fmul float %i.ab, %i.h                  ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.ac, %i.i                  ; 2 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.p, %i.ad                  ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.h, float %i.bd)
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.p, float %i.bc)
  %i.bg = fadd float %i.bf, %i.be
  %i.bh = fmul float %i.am, %i.bg
  %i.bi = fadd float %7, %6
  %i.bj = fadd float %8, %9
  %i.bk = tail call noundef float @llvm.fma.f32(float %i.i, float %3, float %i.ao)
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.e, float %i.an)
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.ac, float %i.e, float %i.at)
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.au, float %3, float %i.as)
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.i, float %i.az)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.au, float %i.h, float %i.ay)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.ab, float %i.p, float %i.bb)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.i, float %i.ba)
  %i.bs = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bk, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bn, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.bq, i64 3
  %i.bw = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bl, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bm, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.br, i64 3
  %i.ca = fadd <4 x float> %i.bv, %i.bz
  %i.cb = insertelement <8 x float> poison, float %i.am, i64 0
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = insertelement <8 x float> poison, float %i.o, i64 0
  %i.ce = insertelement <8 x float> %i.cd, float %i.bi, i64 1
  %i.cf = shufflevector <4 x float> %i.ca, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <8 x float> %i.ce, <8 x float> %i.cf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.ch = insertelement <8 x float> %i.cg, float %i.aa, i64 6
  %i.ci = insertelement <8 x float> %i.ch, float %i.bj, i64 7
  %i.cj = fmul <8 x float> %i.cc, %i.ci
  store <8 x float> %i.cj, ptr %0, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bh, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sink, ptr %i.ck, align 4, !tbaa !48
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store float 1.000000e+00, ptr %3, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !37
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt12SquareMatrixILi4EEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.m = load i8, ptr %2, align 8, !tbaa !18, !range !19, !noundef !20
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ @.str.324, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 516, ptr noundef %i.r)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.s = load ptr, ptr %4, align 8, !tbaa !29
  %.not.i.i.i106 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i106, label %_ZN7testing7MessageD2Ev.exit108, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i107 unwind label %bb.i

.noexc.i.i107:                                    ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %_ZN7testing7MessageD2Ev.exit108

bb.g:                                             ; preds = %.noexc.i.i107
  %i.u = load ptr, ptr %4, align 8, !tbaa !29     ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN7testing7MessageD2Ev.exit108, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit108

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

_ZN7testing7MessageD2Ev.exit108:                  ; preds = %bb.e, %.noexc.i.i107, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn52 = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.m ], [ %i.ab, %bb.j ]
end_hunk_0
begin_hunk_1_@_ZN16Math_TwoSum_Test8TestBodyEv:bb.a

_ZNK7testing15AssertionResult15failure_messageEv.exit28: ; preds = %bb.y, %bb.x
  %i.dg = phi ptr [ %i.df, %bb.y ], [ @.str.324, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 950, ptr noundef %i.dg)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dh = load ptr, ptr %5, align 8, !tbaa !29
  %.not.i.i.i29 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i29, label %_ZN7testing7MessageD2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i30 unwind label %bb.ae

.noexc.i.i30:                                     ; preds = %bb.ab
  br i1 %i.di, label %bb.ac, label %_ZN7testing7MessageD2Ev.exit31

bb.ac:                                            ; preds = %.noexc.i.i30
  %i.dj = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN7testing7MessageD2Ev.exit31, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit31

bb.ae:                                            ; preds = %bb.ab
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #26
  unreachable

_ZN7testing7MessageD2Ev.exit31:                   ; preds = %bb.aa, %.noexc.i.i30, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit28
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn18 = phi { ptr, i32 } [ %i.ds, %bb.ah ], [ %i.dr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ai ], [ %i.dq, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit31
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !21
  %.not.i.i.i32 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i33 unwind label %bb.ao

.noexc.i.i33:                                     ; preds = %bb.al
  br i1 %i.du, label %bb.am, label %_ZN7testing15AssertionResultD2Ev.exit37

bb.am:                                            ; preds = %.noexc.i.i33
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7testing15AssertionResultD2Ev.exit37, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34: ; preds = %bb.an
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit37

bb.ao:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit37:          ; preds = %bb.ak, %.noexc.i.i33, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !157

bb.ap:                                            ; preds = %bb.aj, %bb.q
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.aj ], [ %.pn.pn, %bb.q ]
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22Math_InnerProduct_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.d = mul i64 %indvars.iv, 9202493588570546565 ; 2 uses
  %i.e = lshr i64 %i.d, 27
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -9089707755183418291       ; 2 uses
  %i.h = lshr i64 %i.g, 33
  %i.i = xor i64 %i.h, %i.g
  %i.j = shl nuw nsw i64 %indvars.iv, 1
  %i.k = or disjoint i64 %i.j, 1                  ; 17 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = mul i64 %i.n, 6364136223846793005
  %i.p = add i64 %i.o, %i.k                       ; 2 uses
  %i.q = mul i64 %i.p, 6364136223846793005
  %i.r = add i64 %i.q, %i.k                       ; 2 uses
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, %i.k                       ; 2 uses
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, %i.k                       ; 2 uses
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = add i64 %i.w, %i.k                       ; 2 uses
  %i.y = mul i64 %i.x, 6364136223846793005
  %i.z = add i64 %i.y, %i.k                       ; 2 uses
  %i.aa = mul i64 %i.z, 6364136223846793005
  %i.ab = add i64 %i.aa, %i.k                     ; 2 uses
  %i.ac = mul i64 %i.ab, 6364136223846793005
  %i.ad = add i64 %i.ac, %i.k                     ; 2 uses
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.k                     ; 2 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.k                     ; 2 uses
  %i.ai = mul i64 %i.ah, 6364136223846793005
  %i.aj = add i64 %i.ai, %i.k                     ; 2 uses
  %i.ak = mul i64 %i.aj, 6364136223846793005
  %i.al = add i64 %i.ak, %i.k                     ; 2 uses
  %i.am = mul i64 %i.al, 6364136223846793005
  %i.an = add i64 %i.am, %i.k                     ; 2 uses
  %i.ao = mul i64 %i.an, 6364136223846793005
  %i.ap = add i64 %i.ao, %i.k                     ; 2 uses
  %i.aq = insertelement <8 x i64> poison, i64 %i.ap, i64 0
  %i.ar = insertelement <8 x i64> %i.aq, i64 %i.al, i64 1
  %i.as = insertelement <8 x i64> %i.ar, i64 %i.ah, i64 2
  %i.at = insertelement <8 x i64> %i.as, i64 %i.ad, i64 3
  %i.au = insertelement <8 x i64> %i.at, i64 %i.z, i64 4
  %i.av = insertelement <8 x i64> %i.au, i64 %i.v, i64 5
  %i.aw = insertelement <8 x i64> %i.av, i64 %i.r, i64 6
  %i.ax = insertelement <8 x i64> %i.aw, i64 %i.n, i64 7 ; 3 uses
  %i.ay = lshr <8 x i64> %i.ax, splat (i64 45)
  %i.az = lshr <8 x i64> %i.ax, splat (i64 27)
  %i.ba = xor <8 x i64> %i.ay, %i.az
  %i.bb = trunc <8 x i64> %i.ba to <8 x i32>      ; 2 uses
  %i.bc = lshr <8 x i64> %i.ax, splat (i64 59)
  %i.bd = trunc nuw nsw <8 x i64> %i.bc to <8 x i32>
  %i.be = call <8 x i32> @llvm.fshr.v8i32(<8 x i32> %i.bb, <8 x i32> %i.bb, <8 x i32> %i.bd)
  %i.bf = uitofp <8 x i32> %i.be to <8 x float>
  %i.bg = fmul nnan <8 x float> %i.bf, splat (float f0x2F800000) ; 2 uses
  %i.bh = fcmp olt <8 x float> %i.bg, splat (float f0x3F7FFFFF)
  %i.bi = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %i.bj = insertelement <4 x i64> %i.bi, i64 %i.ab, i64 1
  %i.bk = insertelement <4 x i64> %i.bj, i64 %i.t, i64 2
  %i.bl = insertelement <4 x i64> %i.bk, i64 %i.p, i64 3 ; 3 uses
  %i.bm = lshr <4 x i64> %i.bl, splat (i64 45)
  %i.bn = lshr <4 x i64> %i.bl, splat (i64 27)
  %i.bo = xor <4 x i64> %i.bm, %i.bn
  %i.bp = trunc <4 x i64> %i.bo to <4 x i32>      ; 2 uses
  %i.bq = lshr <4 x i64> %i.bl, splat (i64 59)
  %i.br = trunc nuw nsw <4 x i64> %i.bq to <4 x i32>
  %i.bs = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> %i.br)
  %i.bt = uitofp <4 x i32> %i.bs to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bt, splat (float f0x2F800000) ; 2 uses
  %i.bv = fcmp olt <4 x float> %i.bu, splat (float f0x3F7FFFFF)
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bu, <4 x float> splat (float f0x3F7FFFFF)
  %i.bx = fcmp olt <4 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = mul i64 %i.ap, 6364136223846793005
  %i.bz = add i64 %i.by, %i.k
  %i.ca = select <8 x i1> %i.bh, <8 x float> %i.bg, <8 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.cb = fsub nnan <8 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = fmul nnan <8 x float> %i.cb, splat (float 1.000000e+01)
  %i.cd = fmul nnan <8 x float> %i.ca, splat (float 1.000000e+01)
  %i.ce = fsub <8 x float> %i.cd, %i.cc
  %i.cf = fpext <8 x float> %i.ce to <8 x double> ; 8 uses
  %i.cg = extractelement <8 x double> %i.cf, i64 7
  %i.ch = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cg) #25
  %i.ci = extractelement <8 x double> %i.cf, i64 6
  %i.cj = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ci) #25
  %i.ck = extractelement <8 x double> %i.cf, i64 5
  %i.cl = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ck) #25
  %i.cm = extractelement <8 x double> %i.cf, i64 4
  %i.cn = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cm) #25
  %i.co = insertelement <4 x double> poison, double %i.cl, i64 0
  %i.cp = insertelement <4 x double> %i.co, double %i.cn, i64 1
  %i.cq = insertelement <4 x double> %i.cp, double %i.cj, i64 2
  %i.cr = insertelement <4 x double> %i.cq, double %i.ch, i64 3
  %i.cs = fptrunc <4 x double> %i.cr to <4 x float> ; 2 uses
  %i.ct = fneg <4 x float> %i.cs
  %i.cu = select <4 x i1> %i.bx, <4 x float> %i.ct, <4 x float> %i.cs ; 3 uses
  %i.cv = extractelement <8 x double> %i.cf, i64 3
  %i.cw = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cv) #25
  %i.cx = extractelement <8 x double> %i.cf, i64 2
  %i.cy = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cx) #25
  %i.cz = extractelement <8 x double> %i.cf, i64 1
  %i.da = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.cz) #25
  %i.db = extractelement <8 x double> %i.cf, i64 0
  %i.dc = call noundef double @pow(double noundef 1.000000e+01, double noundef %i.db) #25
  %i.dd = insertelement <4 x double> poison, double %i.da, i64 0
  %i.de = insertelement <4 x double> %i.dd, double %i.dc, i64 1
  %i.df = insertelement <4 x double> %i.de, double %i.cy, i64 2
  %i.dg = insertelement <4 x double> %i.df, double %i.cw, i64 3
  %i.dh = fptrunc <4 x double> %i.dg to <4 x float> ; 2 uses
  %i.di = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %i.dj = insertelement <4 x i64> %i.di, i64 %i.bz, i64 1
  %i.dk = insertelement <4 x i64> %i.dj, i64 %i.aj, i64 2
  %i.dl = insertelement <4 x i64> %i.dk, i64 %i.af, i64 3 ; 3 uses
  %i.dm = lshr <4 x i64> %i.dl, splat (i64 45)
  %i.dn = lshr <4 x i64> %i.dl, splat (i64 27)
  %i.do = xor <4 x i64> %i.dm, %i.dn
  %i.dp = trunc <4 x i64> %i.do to <4 x i32>      ; 2 uses
  %i.dq = lshr <4 x i64> %i.dl, splat (i64 59)
  %i.dr = trunc nuw nsw <4 x i64> %i.dq to <4 x i32>
  %i.ds = call <4 x i32> @llvm.fshr.v4i32(<4 x i32> %i.dp, <4 x i32> %i.dp, <4 x i32> %i.dr)
  %i.dt = uitofp <4 x i32> %i.ds to <4 x float>
  %i.du = fmul nnan <4 x float> %i.dt, splat (float f0x2F800000) ; 2 uses
  %i.dv = fcmp olt <4 x float> %i.du, splat (float f0x3F7FFFFF)
  %i.dw = select <4 x i1> %i.dv, <4 x float> %i.du, <4 x float> splat (float f0x3F7FFFFF)
  %i.dx = fcmp olt <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.dy = fneg <4 x float> %i.dh
  %i.dz = select <4 x i1> %i.dx, <4 x float> %i.dy, <4 x float> %i.dh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ea = fmul <4 x float> %i.cu, %i.dz           ; 5 uses
  %i.eb = extractelement <4 x float> %i.ea, i64 0 ; 3 uses
  %i.ec = extractelement <4 x float> %i.ea, i64 1 ; 2 uses
  %4 = fneg <4 x float> %i.ea
  %5 = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.cu, <4 x float> %i.dz, <4 x float> %4) ; 4 uses
  %i.ed = fadd float %i.eb, %i.ec                 ; 4 uses
  %i.ee = fsub float %i.ed, %i.eb                 ; 2 uses
  %i.ef = fsub float %i.ed, %i.ee
  %6 = fsub float %i.eb, %i.ef
  %7 = fsub float %i.ec, %i.ee
  %8 = fadd float %7, %6
  %9 = extractelement <4 x float> %5, i64 1
  %10 = fadd float %9, %8
  %i.eg = extractelement <4 x float> %5, i64 0
  %11 = fadd float %i.eg, %10
  %i.eh = extractelement <4 x float> %i.ea, i64 2 ; 3 uses
  %i.ei = fadd float %i.eh, %i.ed                 ; 4 uses
  %12 = fsub float %i.ei, %i.eh                   ; 2 uses
  %13 = fsub float %i.ei, %12
  %14 = fsub float %i.eh, %13
  %15 = fsub float %i.ed, %12
  %16 = fadd float %15, %14
  %i.ej = fadd float %16, %11
  %i.ek = extractelement <4 x float> %5, i64 2
  %i.el = fadd float %i.ek, %i.ej
  %i.em = extractelement <4 x float> %i.ea, i64 3 ; 3 uses
  %i.en = fadd float %i.em, %i.ei                 ; 3 uses
  %i.eo = fsub float %i.en, %i.em                 ; 2 uses
  %i.ep = fsub float %i.en, %i.eo
  %i.eq = fsub float %i.em, %i.ep
  %i.er = fsub float %i.ei, %i.eo
  %i.es = fadd float %i.er, %i.eq
  %i.et = fadd float %i.es, %i.el
  %i.eu = extractelement <4 x float> %5, i64 3
  %i.ev = fadd float %i.eu, %i.et
  %i.ew = fadd float %i.en, %i.ev
  store float %i.ew, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ex = fpext <4 x float> %i.cu to <4 x double>
  %i.ey = fpext <4 x float> %i.dz to <4 x double>
  %i.ez = fmul <4 x double> %i.ex, %i.ey          ; 4 uses
  %17 = shufflevector <4 x double> %i.ez, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x double> %i.ez, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift65.a = fadd <4 x double> %17, %18
  %foldExtExtBinop66.a = fadd <4 x double> %shift65.a, %i.ez
  %shift68 = shufflevector <4 x double> %i.ez, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop69 = fadd <4 x double> %foldExtExtBinop66.a, %shift68
  %i.fa = extractelement <4 x double> %foldExtExtBinop69, i64 0
  %i.fb = fptrunc double %i.fa to float
  store float %i.fb, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.fc = load i8, ptr %1, align 8, !tbaa !18, !range !19, !noundef !20
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.fg = phi ptr [ %i.ff, %bb.f ], [ @.str.324, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 971, ptr noundef %i.fg)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fh = load ptr, ptr %2, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.fi, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.fj = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.fs, %bb.o ], [ %i.fr, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.fq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn.pn

bb.r:                                             ; preds = %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i42 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i42, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fu = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i43 unwind label %bb.v

.noexc.i.i43:                                     ; preds = %bb.s
  br i1 %i.fu, label %bb.t, label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %.noexc.i.i43
  %i.fv = load ptr, ptr %i.c, align 8, !tbaa !21  ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !26 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !32
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %.noexc.i.i43, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !158
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29PermutationElement_Valid_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.testing::Message", align 8  ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 2, ptr %i.a, align 4, !tbaa !34
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %bb.a
  %i.h = phi i32 [ 2, %bb.a ], [ %.be, %.preheader.backedge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.be, %.preheader.backedge ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit99, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.preheader
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = add nsw i64 %i.i, 63                     ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 2305843009213693944
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29 ; 5 uses
  %i.n = lshr i64 %i.j, 6                         ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %.idx.i, i1 false)
  %.pre242 = load i32, ptr %i.a, align 4, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !34
  %.not192 = icmp sgt i32 %.pre242, 0
  br i1 %.not192, label %.lr.ph, label %.loopexit295

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.o = and i32 %i.h, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sdiv i32 %i.h, 64
  %.sext = sext i32 %i.q to i64
  %i.r = and i64 %i.i, -9223372036854775745
end_hunk_1
