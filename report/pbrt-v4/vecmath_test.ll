Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath_test?download=true
inline.NumInlined: 2858
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7testing8internal11CmpHelperNEIN4pbrt7Vector3IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(12) @.str.225)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.q

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.g
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @.str.188)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing13PrintToStringIN4pbrt7Vector3IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit17 unwind label %bb.s

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit17: ; preds = %bb.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit17
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !35
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.w = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !35
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ad = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %bb.l
  br i1 %i.ad, label %bb.m, label %_ZN7testing15AssertionResultD2Ev.exit

bb.m:                                             ; preds = %.noexc.i.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !35
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %.noexc.i.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.w

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.r:                                             ; preds = %bb.h, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.t:                                             ; preds = %bb.j, %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt7Vector3IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit17
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.t
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ar, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ap, %bb.r ] ; 2 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.u
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !35
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.an, %bb.p ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNK4pbrt6Tuple3INS_7Vector3EfEneENS1_IfEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26Point2_InvertBilinear_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %.0192 = phi i32 [ 0, %bb.a ], [ %i.bm, %bb.h ]
  %.sroa.0142.0191 = phi i64 [ -8846114313915602277, %bb.a ], [ %i.l, %bb.h ] ; 2 uses
  %i.i = mul i64 %.sroa.0142.0191, 6364136223846793005
  %i.j = add i64 %i.i, -2720673578348880933       ; 2 uses
  %i.k = mul i64 %i.j, 6364136223846793005
  %i.l = add i64 %i.k, -2720673578348880933       ; 2 uses
  %i.m = insertelement <2 x i64> poison, i64 %.sroa.0142.0191, i64 0
  %i.n = insertelement <2 x i64> %i.m, i64 %i.j, i64 1 ; 3 uses
  %i.o = lshr <2 x i64> %i.n, splat (i64 45)
  %i.p = lshr <2 x i64> %i.n, splat (i64 27)
  %i.q = xor <2 x i64> %i.o, %i.p
  %i.r = trunc <2 x i64> %i.q to <2 x i32>        ; 2 uses
  %i.s = lshr <2 x i64> %i.n, splat (i64 59)
  %i.t = trunc nuw nsw <2 x i64> %i.s to <2 x i32>
  %i.u = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.r, <2 x i32> %i.r, <2 x i32> %i.t)
  %i.v = uitofp <2 x i32> %i.u to <2 x float>
  %i.w = fmul nnan <2 x float> %i.v, splat (float f0x2F800000) ; 2 uses
  %i.x = fcmp olt <2 x float> %i.w, splat (float f0x3F7FFFFF)
  %i.y = select <2 x i1> %i.x, <2 x float> %i.w, <2 x float> splat (float f0x3F7FFFFF) ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1   ; 4 uses
  %1 = fsub float 1.000000e+00, %i.z              ; 2 uses
  %2 = fmul float %1, 0.000000e+00                ; 2 uses
  %3 = fadd ninf float %2, 0.000000e+00
  %4 = fadd float %i.z, %2                        ; 2 uses
  %5 = fadd nnan float %i.z, %1
  %i.aa = extractelement <2 x float> %i.y, i64 0  ; 4 uses
  %6 = fsub float 1.000000e+00, %i.aa             ; 2 uses
  %7 = fmul float %6, %3
  %8 = fmul float %6, %4
  %i.ab = fmul float %i.aa, %5
  %9 = fmul float %i.aa, %4
  %10 = fadd float %i.ab, %7                      ; 4 uses
  %i.ac = fadd float %8, %9                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ad = fsub float %i.aa, %10                   ; 2 uses
  %11 = fsub float %i.z, %i.ac                    ; 2 uses
  %12 = fmul float %i.ad, %i.ad
  %i.ae = fmul float %11, %11
  %i.af = fadd float %12, %i.ae
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.af) ; 2 uses
  store float %sqrt.i.i, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store float f0x3727C5AC, ptr %i.b, align 4, !tbaa !15
  %i.ag = fcmp olt float %sqrt.i.i, f0x3727C5AC
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA16_KcRA6_S1_S3_RfS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 84, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(16) @.str.69, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 1 dereferenceable(16) @.str.69, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ah = fmul float %i.ac, 0.000000e+00          ; 2 uses
  %i.ai = fneg float %i.ah
  %i.aj = tail call noundef float @llvm.fma.f32(float %10, float 0.000000e+00, float %i.ai)
  %i.ak = fneg float %i.ac                        ; 2 uses
  %i.al = tail call noundef float @llvm.fma.f32(float %i.ak, float 0.000000e+00, float %i.ah)
  %i.am = fadd float %i.aj, %i.al
  %i.an = fadd float %i.am, 1.000000e+00          ; 5 uses
  %i.ao = tail call noundef float @llvm.fma.f32(float %10, float 0.000000e+00, float %i.ak)
  %i.ap = fsub float %i.ac, %i.ac
  %i.aq = fadd float %i.ao, %i.ap                 ; 3 uses
  %i.ar = fmul float %i.aq, 0.000000e+00          ; 3 uses
  %i.as = fsub float %i.an, %i.ar                 ; 2 uses
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = fcmp olt float %i.at, f0x3727C5AC
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = fmul float %i.ac, %i.an
  %i.aw = fadd float %i.aq, %i.av
  %i.ax = fmul float %i.an, 0.000000e+00
  %i.ay = fsub float %i.ax, %i.ar
  %i.az = fdiv float %i.aw, %i.ay
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = fmul float %10, %i.an
  %i.bb = fadd float %i.ar, %i.ba
  %i.bc = fdiv float %i.bb, %i.as
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit

_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit: ; preds = %bb.e, %bb.f
  %.sink213 = phi float [ %i.az, %bb.e ], [ %i.bc, %bb.f ]
  %i.bd = fdiv float %i.aq, %i.an
  %i.be = insertelement <2 x float> poison, float %.sink213, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bd, i64 1 ; 2 uses
  %i.bg = fsub <2 x float> %i.y, %i.bf
  %i.bh = fadd <2 x float> %i.y, %i.bf
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi           ; 2 uses
  %shift.a = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x float> %i.bj, %shift.a
  %i.bk = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %sqrt.i.i37 = tail call noundef float @llvm.sqrt.f32(float %i.bk) ; 2 uses
  store float %sqrt.i.i37, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float f0x3727C5AC, ptr %i.d, align 4, !tbaa !15
  %i.bl = fcmp olt float %sqrt.i.i37, f0x3727C5AC
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit
  call void @_ZN4pbrt8LogFatalIJRA45_KcRA6_S1_S3_RfS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 85, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(45) @.str.71, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 1 dereferenceable(45) @.str.71, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #28
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bm = add nuw nsw i32 %.0192, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, 100
  br i1 %exitcond.not, label %.preheader186, label %bb.b, !llvm.loop !79

.preheader186:                                    ; preds = %bb.h, %bb.l
  %.027194 = phi i32 [ %i.ef, %bb.l ], [ 0, %bb.h ]
  %.sroa.0142.1193 = phi i64 [ %i.bq, %bb.l ], [ %i.l, %bb.h ] ; 2 uses
  %i.bn = mul i64 %.sroa.0142.1193, 6364136223846793005
  %i.bo = add i64 %i.bn, -2720673578348880933     ; 2 uses
  %i.bp = mul i64 %i.bo, 6364136223846793005
  %i.bq = add i64 %i.bp, -2720673578348880933     ; 2 uses
  %i.br = insertelement <2 x i64> poison, i64 %.sroa.0142.1193, i64 0
  %i.bs = insertelement <2 x i64> %i.br, i64 %i.bo, i64 1 ; 3 uses
  %i.bt = lshr <2 x i64> %i.bs, splat (i64 45)
  %i.bu = lshr <2 x i64> %i.bs, splat (i64 27)
  %i.bv = xor <2 x i64> %i.bt, %i.bu
  %i.bw = trunc <2 x i64> %i.bv to <2 x i32>      ; 2 uses
  %i.bx = lshr <2 x i64> %i.bs, splat (i64 59)
  %i.by = trunc nuw nsw <2 x i64> %i.bx to <2 x i32>
  %i.bz = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bw, <2 x i32> %i.bw, <2 x i32> %i.by)
  %i.ca = uitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = fmul nnan <2 x float> %i.ca, splat (float f0x2F800000) ; 2 uses
  %i.cc = fcmp olt <2 x float> %i.cb, splat (float f0x3F7FFFFF)
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.cb, <2 x float> splat (float f0x3F7FFFFF) ; 4 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 1 ; 4 uses
  %i.cf = fsub float 1.000000e+00, %i.ce          ; 3 uses
  %i.cg = fmul nnan float %i.cf, 1.000000e+01
  %i.ch = fmul nnan float %i.cf, 4.000000e+00
  %i.ci = fmul nnan float %i.ce, 1.500000e+01
  %i.cj = fmul nnan float %i.ce, -4.000000e+00
  %i.ck = fadd float %i.ci, %i.cg                 ; 2 uses
  %i.cl = fsub float %i.cj, %i.ch
  %i.cm = fmul nnan float %i.cf, 9.000000e+00
  %i.cn = fmul nnan float %i.ce, -9.000000e+00
  %i.co = fsub float %i.cn, %i.cm
  %i.cp = extractelement <2 x float> %i.cd, i64 0 ; 3 uses
  %i.cq = fsub float 1.000000e+00, %i.cp          ; 2 uses
  %i.cr = fmul float %i.cq, %i.ck
  %i.cs = fmul float %i.cq, %i.cl
  %i.ct = fmul float %i.cp, %i.ck
  %i.cu = fmul float %i.cp, %i.co
  %i.cv = fadd float %i.cr, %i.ct
  %i.cw = fadd float %i.cs, %i.cu
  %i.cx = fadd float %i.cv, -1.000000e+01         ; 3 uses
  %i.cy = fadd float %i.cw, 4.000000e+00          ; 3 uses
  %i.cz = fmul float %i.cy, 0.000000e+00          ; 2 uses
  %i.da = fneg float %i.cz                        ; 2 uses
  %i.db = tail call noundef float @llvm.fma.f32(float %i.cx, float 0.000000e+00, float %i.da)
  %i.dc = fneg float %i.cy
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.dc, float 0.000000e+00, float %i.cz) ; 2 uses
  %i.de = fadd float %i.db, %i.dd
  %i.df = fadd float %i.de, 2.500000e+01          ; 5 uses
  %i.dg = tail call noundef float @llvm.fma.f32(float %i.cx, float -5.000000e+00, float %i.da)
  %i.dh = fadd float %i.dg, %i.dd                 ; 3 uses
  %i.di = fmul float %i.df, 0.000000e+00
  %i.dj = fmul float %i.dh, 0.000000e+00          ; 3 uses
  %i.dk = fsub float %i.di, %i.dj                 ; 2 uses
  %i.dl = tail call noundef float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp olt float %i.dl, f0x3727C5AC
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader186
  %i.dn = fmul float %i.cy, %i.df
  %i.do = fadd float %i.dj, %i.dn
  %i.dp = fmul float %i.df, -5.000000e+00
  %i.dq = fsub float %i.dp, %i.dj
  %i.dr = fdiv float %i.do, %i.dq
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit77

bb.j:                                             ; preds = %.preheader186
  %i.ds = fmul float %i.cx, %i.df
  %i.dt = fmul float %i.dh, 5.000000e+00
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fdiv float %i.du, %i.dk
  br label %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit77

_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit77: ; preds = %bb.i, %bb.j
  %.sink215 = phi float [ %i.dr, %bb.i ], [ %i.dv, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.dw = fdiv float %i.dh, %i.df
  %i.dx = insertelement <2 x float> poison, float %.sink215, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dw, i64 1 ; 2 uses
  %i.dz = fsub <2 x float> %i.cd, %i.dy
  %i.ea = fadd <2 x float> %i.cd, %i.dy
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ec = fmul <2 x float> %i.eb, %i.eb           ; 2 uses
  %shift224 = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fadd <2 x float> %i.ec, %shift224
  %i.ed = extractelement <2 x float> %foldExtExtBinop225, i64 0
  %sqrt.i.i82 = tail call noundef float @llvm.sqrt.f32(float %i.ed) ; 2 uses
  store float %sqrt.i.i82, ptr %i.e, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store float f0x3727C5AC, ptr %i.f, align 4, !tbaa !15
  %i.ee = fcmp olt float %sqrt.i.i82, f0x3727C5AC
  br i1 %i.ee, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit77
  call void @_ZN4pbrt8LogFatalIJRA18_KcRA6_S1_S3_RfS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 94, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(18) @.str.72, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 1 dereferenceable(18) @.str.72, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #28
  unreachable

bb.l:                                             ; preds = %_ZN4pbrt14InvertBilinearENS_6Point2IfEEN4pstd4spanIKS1_EE.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ef = add nuw nsw i32 %.027194, 1             ; 2 uses
  %exitcond203.not = icmp eq i32 %i.ef, 100
  br i1 %exitcond203.not, label %.preheader, label %.preheader186, !llvm.loop !80

.preheader:                                       ; preds = %bb.l, %bb.n
  %.029198 = phi i32 [ %i.eg, %bb.n ], [ 0, %bb.l ]
  %.sroa.0142.2197 = phi i64 [ %i.ek, %bb.n ], [ %i.bq, %bb.l ]
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %bb.s
  %i.eg = add nuw nsw i32 %.029198, 1             ; 2 uses
  %exitcond205.not = icmp eq i32 %i.eg, 100
  br i1 %exitcond205.not, label %bb.m, label %.preheader, !llvm.loop !81

bb.o:                                             ; preds = %.preheader, %bb.s
  %.028196 = phi i32 [ 0, %.preheader ], [ %i.gz, %bb.s ]
  %.sroa.0142.3195 = phi i64 [ %.sroa.0142.2197, %.preheader ], [ %i.ek, %bb.s ] ; 2 uses
  %i.eh = mul i64 %.sroa.0142.3195, 6364136223846793005
  %i.ei = add i64 %i.eh, -2720673578348880933     ; 2 uses
  %i.ej = mul i64 %i.ei, 6364136223846793005
  %i.ek = add i64 %i.ej, -2720673578348880933     ; 2 uses
  %i.el = insertelement <2 x i64> poison, i64 %.sroa.0142.3195, i64 0
  %i.em = insertelement <2 x i64> %i.el, i64 %i.ei, i64 1 ; 3 uses
  %i.en = lshr <2 x i64> %i.em, splat (i64 45)
  %i.eo = lshr <2 x i64> %i.em, splat (i64 27)
  %i.ep = xor <2 x i64> %i.en, %i.eo
  %i.eq = trunc <2 x i64> %i.ep to <2 x i32>      ; 2 uses
  %i.er = lshr <2 x i64> %i.em, splat (i64 59)
  %i.es = trunc nuw nsw <2 x i64> %i.er to <2 x i32>
  %i.et = tail call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.eq, <2 x i32> %i.eq, <2 x i32> %i.es)
  %i.eu = uitofp <2 x i32> %i.et to <2 x float>
  %i.ev = fmul nnan <2 x float> %i.eu, splat (float f0x2F800000) ; 2 uses
  %i.ew = fcmp olt <2 x float> %i.ev, splat (float f0x3F7FFFFF)
  %i.ex = select <2 x i1> %i.ew, <2 x float> %i.ev, <2 x float> splat (float f0x3F7FFFFF) ; 4 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 1 ; 4 uses
  %i.ez = fsub float 1.000000e+00, %i.ey          ; 3 uses
  %i.fa = fmul nnan float %i.ez, 1.000000e+01
  %i.fb = fmul nnan float %i.ez, 4.000000e+00
  %i.fc = fmul nnan float %i.ey, 1.500000e+01
  %i.fd = fmul nnan float %i.ey, -4.000000e+00
  %i.fe = fadd float %i.fc, %i.fa                 ; 2 uses
  %i.ff = fsub float %i.fd, %i.fb
  %i.fg = fmul nnan float %i.ez, 9.000000e+00
  %i.fh = fmul nnan float %i.ey, -9.000000e+00
  %i.fi = fsub float %i.fh, %i.fg
  %i.fj = extractelement <2 x float> %i.ex, i64 0 ; 3 uses
  %i.fk = fsub float 1.000000e+00, %i.fj          ; 2 uses
  %i.fl = fmul float %i.fk, %i.fe
  %i.fm = fmul float %i.fk, %i.ff
  %i.fn = fmul float %i.fj, %i.fe
  %i.fo = fmul float %i.fj, %i.fi
  %i.fp = fadd float %i.fl, %i.fn
  %i.fq = fadd float %i.fm, %i.fo
  %i.fr = fadd float %i.fp, -1.000000e+01         ; 3 uses
  %i.fs = fadd float %i.fq, 4.000000e+00          ; 3 uses
  %i.ft = fmul float %i.fs, 0.000000e+00          ; 2 uses
  %i.fu = fneg float %i.ft                        ; 2 uses
  %i.fv = tail call noundef float @llvm.fma.f32(float %i.fr, float 0.000000e+00, float %i.fu)
  %i.fw = fneg float %i.fs
  %i.fx = tail call noundef float @llvm.fma.f32(float %i.fw, float 0.000000e+00, float %i.ft) ; 2 uses
  %i.fy = fadd float %i.fv, %i.fx
  %i.fz = fadd float %i.fy, 2.500000e+01          ; 5 uses
  %i.ga = tail call noundef float @llvm.fma.f32(float %i.fr, float -5.000000e+00, float %i.fu)
  %i.gb = fadd float %i.ga, %i.fx                 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN30DirectionCone_BoundBounds_Test8TestBodyEv:_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.bw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i152 unwind label %bb.au

.noexc.i.i152:                                    ; preds = %bb.ar
  br i1 %i.bw, label %bb.as, label %_ZN7testing7MessageD2Ev.exit153

bb.as:                                            ; preds = %.noexc.i.i152
  %i.bx = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN7testing7MessageD2Ev.exit153, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit153

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

_ZN7testing7MessageD2Ev.exit153:                  ; preds = %bb.aq, %.noexc.i.i152, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ba

bb.av:                                            ; preds = %bb.am
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit150
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn89 = phi { ptr, i32 } [ %i.cg, %bb.ax ], [ %i.cf, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.ay ], [ %i.ce, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.dv

bb.ba:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit148, %_ZN7testing7MessageD2Ev.exit153
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24
  %.not.i.i.i154 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i154, label %_ZN7testing15AssertionResultD2Ev.exit159, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cj = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i155 unwind label %bb.be

.noexc.i.i155:                                    ; preds = %bb.bb
  br i1 %i.cj, label %bb.bc, label %_ZN7testing15AssertionResultD2Ev.exit159

bb.bc:                                            ; preds = %.noexc.i.i155
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !24 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN7testing15AssertionResultD2Ev.exit159, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !29 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156: ; preds = %bb.bd
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit159

bb.be:                                            ; preds = %bb.bb
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit159:         ; preds = %bb.ba, %.noexc.i.i155, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  br label %bb.bg

bb.bf:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.bg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159, %.loopexit
  %.082364 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit159 ], [ %i.ry, %.loopexit ]
  %.sroa.0298.0363 = phi i64 [ -4562248660610836917, %_ZN7testing15AssertionResultD2Ev.exit159 ], [ %.sroa.0298.2, %.loopexit ] ; 2 uses
  %i.cy = mul i64 %.sroa.0298.0363, 6364136223846793005
  %i.cz = add i64 %i.cy, 1025                     ; 2 uses
  %i.da = mul i64 %i.cz, 6364136223846793005
  %i.db = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.dc = insertelement <2 x i64> poison, i64 %.sroa.0298.0363, i64 0
  %i.dd = add i64 %i.da, 1025                     ; 2 uses
  %i.de = mul i64 %i.dd, 6364136223846793005
  %i.df = add i64 %i.de, 1025                     ; 2 uses
  %i.dg = mul i64 %i.df, 6364136223846793005
  %i.dh = add i64 %i.dg, 1025                     ; 2 uses
  %i.di = mul i64 %i.dh, 6364136223846793005
  %i.dj = add i64 %i.di, 1025                     ; 2 uses
  %i.dk = insertelement <2 x i64> %i.db, i64 %i.dh, i64 1 ; 3 uses
  %i.dl = lshr <2 x i64> %i.dk, splat (i64 45)
  %i.dm = lshr <2 x i64> %i.dk, splat (i64 27)
  %i.dn = xor <2 x i64> %i.dl, %i.dm
  %i.do = trunc <2 x i64> %i.dn to <2 x i32>      ; 2 uses
  %i.dp = lshr <2 x i64> %i.dk, splat (i64 59)
  %i.dq = trunc nuw nsw <2 x i64> %i.dp to <2 x i32>
  %i.dr = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.do, <2 x i32> %i.do, <2 x i32> %i.dq)
  %i.ds = uitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = fmul nnan <2 x float> %i.ds, splat (float f0x2F800000) ; 2 uses
  %i.du = fcmp olt <2 x float> %i.dt, splat (float f0x3F7FFFFF)
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.dt, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.dw = fadd <2 x float> %i.dv, splat (float -1.000000e+00)
  %i.dx = fadd <2 x float> %i.dv, %i.dw           ; 4 uses
  %i.dy = mul i64 %i.dj, 6364136223846793005
  %i.dz = add i64 %i.dy, 1025                     ; 4 uses
  %i.ea = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.eb = insertelement <2 x i64> %i.ea, i64 %i.dj, i64 1 ; 3 uses
  %i.ec = lshr <2 x i64> %i.eb, splat (i64 45)
  %i.ed = lshr <2 x i64> %i.eb, splat (i64 27)
  %i.ee = xor <2 x i64> %i.ec, %i.ed
  %i.ef = trunc <2 x i64> %i.ee to <2 x i32>      ; 2 uses
  %i.eg = lshr <2 x i64> %i.eb, splat (i64 59)
  %i.eh = trunc nuw nsw <2 x i64> %i.eg to <2 x i32>
  %i.ei = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.ef, <2 x i32> %i.ef, <2 x i32> %i.eh)
  %i.ej = uitofp <2 x i32> %i.ei to <2 x float>
  %i.ek = fmul nnan <2 x float> %i.ej, splat (float f0x2F800000) ; 2 uses
  %i.el = fcmp olt <2 x float> %i.ek, splat (float f0x3F7FFFFF)
  %i.em = select <2 x i1> %i.el, <2 x float> %i.ek, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.en = fadd <2 x float> %i.em, splat (float -1.000000e+00)
  %i.eo = fadd <2 x float> %i.em, %i.en           ; 4 uses
  %i.ep = insertelement <2 x i64> %i.dc, i64 %i.df, i64 1 ; 3 uses
  %i.eq = lshr <2 x i64> %i.ep, splat (i64 45)
  %i.er = lshr <2 x i64> %i.ep, splat (i64 27)
  %i.es = xor <2 x i64> %i.eq, %i.er
  %i.et = trunc <2 x i64> %i.es to <2 x i32>      ; 2 uses
  %i.eu = lshr <2 x i64> %i.ep, splat (i64 59)
  %i.ev = trunc nuw nsw <2 x i64> %i.eu to <2 x i32>
  %i.ew = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.et, <2 x i32> %i.et, <2 x i32> %i.ev)
  %i.ex = uitofp <2 x i32> %i.ew to <2 x float>
  %i.ey = fmul nnan <2 x float> %i.ex, splat (float f0x2F800000) ; 2 uses
  %i.ez = fcmp olt <2 x float> %i.ey, splat (float f0x3F7FFFFF)
  %i.fa = select <2 x i1> %i.ez, <2 x float> %i.ey, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.fb = fadd <2 x float> %i.fa, splat (float -1.000000e+00)
  %i.fc = fadd <2 x float> %i.fa, %i.fb           ; 4 uses
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = fcmp olt <2 x float> %i.fc, %i.fd
  %i.ff = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = select <2 x i1> %i.fe, <2 x float> %i.ff, <2 x float> %i.fg ; 6 uses
  %i.fi = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = fcmp olt <2 x float> %i.dx, %i.fi
  %i.fk = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = select <2 x i1> %i.fj, <2 x float> %i.fk, <2 x float> %i.fl ; 6 uses
  %i.fn = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = fcmp olt <2 x float> %i.eo, %i.fn
  %i.fp = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = select <2 x i1> %i.fo, <2 x float> %i.fp, <2 x float> %i.fq ; 5 uses
  %i.fs = mul i64 %i.dz, 6364136223846793005
  %i.ft = lshr i64 %i.dz, 45
  %i.fu = lshr i64 %i.dz, 27
  %i.fv = xor i64 %i.ft, %i.fu
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = lshr i64 %i.dz, 59
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = call noundef i32 @llvm.fshr.i32(i32 %i.fw, i32 %i.fw, i32 %i.fy)
  %i.ga = uitofp i32 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x2F800000      ; 2 uses
  %i.gc = fcmp olt float %i.gb, f0x3F7FFFFF
  %.sroa.speculated.i177 = select i1 %i.gc, float %i.gb, float f0x3F7FFFFF ; 2 uses
  %i.gd = fsub nnan float 1.000000e+00, %.sroa.speculated.i177
  %i.ge = fmul nnan float %i.gd, 4.000000e+00
  %i.gf = fmul nnan float %.sroa.speculated.i177, 4.000000e+00
  %i.gg = fsub float %i.gf, %i.ge                 ; 5 uses
  %i.gh = add i64 %i.fs, 1025                     ; 2 uses
  %i.gi = mul i64 %i.gh, 6364136223846793005
  %i.gj = add i64 %i.gi, 1025                     ; 2 uses
  %i.gk = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %i.gl = insertelement <2 x i64> %i.gk, i64 %i.gj, i64 1 ; 3 uses
  %i.gm = lshr <2 x i64> %i.gl, splat (i64 45)
  %i.gn = lshr <2 x i64> %i.gl, splat (i64 27)
  %i.go = xor <2 x i64> %i.gm, %i.gn
  %i.gp = trunc <2 x i64> %i.go to <2 x i32>      ; 2 uses
  %i.gq = lshr <2 x i64> %i.gl, splat (i64 59)
  %i.gr = trunc nuw nsw <2 x i64> %i.gq to <2 x i32>
  %i.gs = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gp, <2 x i32> %i.gp, <2 x i32> %i.gr)
  %i.gt = uitofp <2 x i32> %i.gs to <2 x float>
  %i.gu = fmul nnan <2 x float> %i.gt, splat (float f0x2F800000) ; 2 uses
  %i.gv = fcmp olt <2 x float> %i.gu, splat (float f0x3F7FFFFF)
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.gu, <2 x float> splat (float f0x3F7FFFFF)
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gy = fsub nnan <4 x float> splat (float 1.000000e+00), %i.gx
  %i.gz = fmul nnan <4 x float> %i.gy, splat (float 4.000000e+00)
  %i.ha = fmul nnan <4 x float> %i.gx, splat (float 4.000000e+00)
  %i.hb = mul i64 %i.gj, 6364136223846793005
  %i.hc = add i64 %i.hb, 1025                     ; 2 uses
  %i.hd = fsub <4 x float> %i.ha, %i.gz           ; 7 uses
  %i.he = extractelement <2 x float> %i.fh, i64 0
  %i.hf = extractelement <2 x float> %i.fh, i64 1 ; 2 uses
  %i.hg = extractelement <2 x float> %i.fr, i64 0 ; 2 uses
  %i.hh = extractelement <2 x float> %i.fr, i64 1 ; 2 uses
  %i.hi = fadd float %i.hg, %i.hh
  %i.hj = shufflevector <2 x float> %i.fh, <2 x float> %i.fm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hk = shufflevector <2 x float> %i.fh, <2 x float> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.hl = fadd <2 x float> %i.hj, %i.hk
  %i.hm = fmul <2 x float> %i.hl, splat (float 5.000000e-01) ; 6 uses
  %i.hn = fmul float %i.hi, 5.000000e-01          ; 4 uses
  %i.ho = extractelement <2 x float> %i.hm, i64 0 ; 2 uses
  %i.hp = fcmp ult float %i.ho, %i.hf
  %i.hq = fcmp ugt <2 x float> %i.hm, %i.fh
  %i.hr = extractelement <2 x i1> %i.hq, i64 0
  %or.cond.i.i.i185 = select i1 %i.hp, i1 true, i1 %i.hr
  br i1 %or.cond.i.i.i185, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hs = shufflevector <2 x float> %i.hm, <2 x float> %i.fm, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float %i.hn, i64 1 ; 2 uses
  %i.hu = insertelement <4 x float> %i.ht, float %i.hh, i64 3
  %i.hv = shufflevector <2 x float> %i.fm, <2 x float> %i.fr, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hx = fcmp ugt <4 x float> %i.hu, %i.hw
  %i.hy = freeze <4 x i1> %i.hx
  %i.hz = bitcast <4 x i1> %i.hy to i4
  %.not = icmp eq i4 %i.hz, 0
  br i1 %.not, label %bb.bi, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190

bb.bi:                                            ; preds = %bb.bh
  %i.ia = fsub float %i.hn, %i.hg                 ; 2 uses
  %i.ib = fsub <2 x float> %i.hm, %i.hj           ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %i.ib           ; 2 uses
  %shift = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ic, %shift
  %i.id = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ie = fmul float %i.ia, %i.ia
  %i.if = fadd float %i.id, %i.ie
  %sqrt.i.i.i.i189 = call noundef float @llvm.sqrt.f32(float %i.if) ; 2 uses
  %i.ig = fmul float %sqrt.i.i.i.i189, %sqrt.i.i.i.i189
  br label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190: ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.ih = phi float [ %i.ig, %bb.bi ], [ 0.000000e+00, %bb.bh ], [ 0.000000e+00, %bb.bg ] ; 2 uses
  %i.ii = fsub float %i.gg, %i.ho                 ; 2 uses
  %i.ij = extractelement <4 x float> %i.hd, i64 0
  %i.ik = extractelement <2 x float> %i.hm, i64 1
  %i.il = fsub float %i.ij, %i.ik                 ; 2 uses
  %i.im = extractelement <4 x float> %i.hd, i64 1 ; 2 uses
  %i.in = fsub float %i.im, %i.hn                 ; 2 uses
  %i.io = fmul float %i.ii, %i.ii
  %i.ip = fmul float %i.il, %i.il
  %i.iq = fadd float %i.io, %i.ip
  %i.ir = fmul float %i.in, %i.in
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fcmp olt float %i.is, %i.ih
  br i1 %i.it, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit205, label %bb.bj

bb.bj:                                            ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190
  %i.iu = fsub float %i.hn, %i.im                 ; 3 uses
  %i.iv = fmul float %i.iu, %i.iu
  %i.iw = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ix = insertelement <2 x float> %i.iw, float %i.gg, i64 0
  %i.iy = fsub <2 x float> %i.hm, %i.ix           ; 3 uses
  %i.iz = fmul <2 x float> %i.iy, %i.iy           ; 2 uses
  %shift451 = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop452 = fadd <2 x float> %i.iz, %shift451
  %i.ja = extractelement <2 x float> %foldExtExtBinop452, i64 0
  %i.jb = fadd float %i.ja, %i.iv                 ; 2 uses
  %sqrt.i.i.i193 = call noundef float @llvm.sqrt.f32(float %i.jb) ; 2 uses
  %i.jc = insertelement <2 x float> poison, float %sqrt.i.i.i193, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fdiv <2 x float> %i.iy, %i.jd           ; 3 uses
  %i.jf = fdiv float %i.iu, %sqrt.i.i.i193        ; 3 uses
  %i.jg = fdiv float %i.ih, %i.jb
  %i.jh = fsub float 1.000000e+00, %i.jg          ; 2 uses
  %i.ji = fcmp ogt float %i.jh, 0.000000e+00
  %.sroa.speculated.i.i194 = select i1 %i.ji, float %i.jh, float 0.000000e+00
  %sqrt.i.i195 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i194)
  %i.jj = fmul <2 x float> %i.je, %i.je           ; 2 uses
  %shift454 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop455 = fadd <2 x float> %i.jj, %shift454
  %i.jk = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.jl = fmul float %i.jf, %i.jf
  %i.jm = fadd float %i.jl, %i.jk
  %sqrt.i.i.i48.i196 = call noundef float @llvm.sqrt.f32(float %i.jm) ; 2 uses
  %i.jn = insertelement <2 x float> poison, float %sqrt.i.i.i48.i196, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fdiv <2 x float> %i.je, %i.jo
  %i.jq = fdiv float %i.jf, %sqrt.i.i.i48.i196
  %.sroa.3.8.vec.insert.i199 = insertelement <2 x float> poison, float %i.jq, i64 0
  %.sroa.3.12.vec.insert.i200 = insertelement <2 x float> %.sroa.3.8.vec.insert.i199, float %sqrt.i.i195, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit205

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit205: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190, %bb.bj
  %.sroa.3.0.i201 = phi <2 x float> [ %.sroa.3.12.vec.insert.i200, %bb.bj ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190 ]
  %.sroa.054.0.i202 = phi <2 x float> [ %i.jp, %bb.bj ], [ zeroinitializer, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i190 ]
  store <2 x float> %.sroa.054.0.i202, ptr %1, align 8
  store <2 x float> %.sroa.3.0.i201, ptr %i.f, align 8
  %i.jr = fcmp ult float %i.gg, %i.hf
  %i.js = fcmp ugt float %i.gg, %i.he
  %or.cond.i206 = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond.i206, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit205
  %i.jt = shufflevector <2 x float> %i.fm, <2 x float> %i.fr, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.ju = fcmp ole <4 x float> %i.hd, %i.jt
  %i.jv = fcmp oge <4 x float> %i.hd, %i.jt
  %i.jw = shufflevector <4 x i1> %i.ju, <4 x i1> %i.jv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jx = freeze <4 x i1> %i.jw
  %i.jy = bitcast <4 x i1> %i.jx to i4
  %i.jz = icmp eq i4 %i.jy, -1
  br i1 %i.jz, label %bb.bl, label %_ZN4pbrt6InsideIfEEbNS_6Point3IT_EERKNS_7Bounds3IS2_EE.exit.thread

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store float -1.000000e+00, ptr %i.e, align 4, !tbaa !15
  call void @_ZN7testing8internal11CmpHelperEQIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.162, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ka = load i8, ptr %11, align 8, !tbaa !21, !range !22, !noundef !23
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.ca, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.kc = load ptr, ptr %i.ct, align 8, !tbaa !24 ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i207, label %_ZNK7testing15AssertionResult15failure_messageEv.exit208, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit208

_ZNK7testing15AssertionResult15failure_messageEv.exit208: ; preds = %bb.bo, %bb.bn
  %i.ke = phi ptr [ %i.kd, %bb.bo ], [ @.str.218, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 451, ptr noundef %i.ke)
          to label %bb.bp unwind label %bb.bw

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit208
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.kf = load ptr, ptr %12, align 8, !tbaa !32
  %.not.i.i.i209 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i209, label %_ZN7testing7MessageD2Ev.exit211, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i210 unwind label %bb.bu

.noexc.i.i210:                                    ; preds = %bb.br
  br i1 %i.kg, label %bb.bs, label %_ZN7testing7MessageD2Ev.exit211

bb.bs:                                            ; preds = %.noexc.i.i210
  %i.kh = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_ZN7testing7MessageD2Ev.exit211, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kj = load ptr, ptr %i.kh, align 8, !tbaa !34
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(128) %i.kh) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit211

bb.bu:                                            ; preds = %bb.br
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #26
  unreachable

_ZN7testing7MessageD2Ev.exit211:                  ; preds = %bb.bq, %.noexc.i.i210, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bm
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit208
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

end_hunk_1
