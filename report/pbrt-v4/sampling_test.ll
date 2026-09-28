Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN7testing8internal11CmpHelperLTIffEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.s = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !42
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.z = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.z, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !31  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit15
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.u
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.t
  %.pn = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.al, %bb.s ] ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !42
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27Sampling_SphericalQuad_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit:
  %i.a = alloca float, align 4                    ; 4 uses
  %1 = alloca %"class.pbrt::Point2", align 8      ; 2 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 12 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = load i32, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !20 ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = udiv i64 -1, %i.e
  %i.g = sub nuw i64 %i.f, %i.e
  %i.h = uitofp i32 %i.d to float
  %i.i = fdiv nnan float 1.000000e+00, %i.h
  br label %bb.b

bb.a:                                             ; preds = %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit
  %i.j = fmul <2 x float> %i.cf, splat (float f0x35800000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.l = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.m = fsub float %i.k, %i.l
  %i.n = call noundef float @llvm.fabs.f32(float %i.m)
  store float %i.n, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store double 1.000000e-03, ptr %i.c, align 8, !tbaa !58
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.o = load i8, ptr %2, align 8, !tbaa !28, !range !29, !noundef !30
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.s, label %bb.c

bb.b:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit, %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit
  %indvars.iv = phi i64 [ 0, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit ], [ %indvars.iv.next, %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit ] ; 4 uses
  %i.q = phi <2 x float> [ zeroinitializer, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit ], [ %i.cf, %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit ]
  %.not.i.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i.i, label %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.01922.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.02021.i.i = phi float [ %i.t, %.lr.ph.i.i ], [ 1.000000e+00, %bb.b ]
  %i.r = udiv i64 %.023.i.i, %i.e                 ; 2 uses
  %reass.add.i.i = sub i64 %.01922.i.i, %i.r
  %reass.mul.i.i = mul i64 %reass.add.i.i, %i.e
  %i.s = add i64 %reass.mul.i.i, %.023.i.i        ; 3 uses
  %i.t = fmul float %i.i, %.02021.i.i             ; 2 uses
  %i.u = icmp samesign uge i64 %.023.i.i, %i.e
  %i.v = icmp ult i64 %i.s, %i.g
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.x = uitofp i64 %i.s to float
  %i.y = fmul float %i.t, %i.x
  br label %_ZN4pbrt6detail16Hammersley2DIterdeEv.exit

_ZN4pbrt6detail16Hammersley2DIterdeEv.exit:       ; preds = %bb.b, %._crit_edge.loopexit.i.i
  %i.z = phi float [ 0.000000e+00, %bb.b ], [ %i.y, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = uitofp nneg i32 %i.aa to float
  %5 = fmul nnan float %i.ab, f0x35800000         ; 6 uses
  %6 = fcmp ogt float %i.z, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %6, float f0x3F7FFFFF, float %i.z ; 5 uses
  %.sroa.0.0.vec.insert.i224 = insertelement <2 x float> poison, float %5, i64 0
  %.sroa.0.4.vec.insert.i225.a = insertelement <2 x float> %.sroa.0.0.vec.insert.i224, float %.sroa.speculated.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i225.a, ptr %1, align 8
  %i.ac = call { <2 x float>, float } @_ZN4pbrt24SampleSphericalRectangleENS_6Point3IfEES1_NS_7Vector3IfEES3_NS_6Point2IfEEPf(<2 x float> <float 5.000000e-01, float -4.000000e-01>, float f0x3F333333, <2 x float> <float 4.000000e+00, float 1.000000e+00>, float 1.000000e+00, <2 x float> <float 2.000000e+00, float 0.000000e+00>, float -3.000000e+00, <2 x float> <float 0.000000e+00, float 3.000000e+00>, float 0.000000e+00, ptr noundef nonnull byval(%"class.pbrt::Point2") align 8 %1, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract78 = extractvalue { <2 x float>, float } %i.ac, 0 ; 2 uses
  %.fca.1.extract79 = extractvalue { <2 x float>, float } %i.ac, 1
  %i.ad = load float, ptr %i.a, align 4, !tbaa !22
  %7 = fmul nnan float %5, -2.000000e+00
  %i.ae = fsub float 1.000000e+00, %.sroa.speculated.i.i ; 3 uses
  %8 = shufflevector <2 x float> %.fca.0.extract78, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %9 = fsub float 1.000000e+00, %5                ; 3 uses
  %i.af = fmul nnan float %9, 4.000000e+00        ; 2 uses
  %i.ag = fmul nnan float %5, 6.000000e+00
  %i.ah = fadd float %i.af, %i.ag                 ; 2 uses
  %i.ai = fadd nnan float %9, %5
  %i.aj = fadd float %7, %9                       ; 2 uses
  %i.ak = fmul nnan float %5, 4.000000e+00
  %i.al = fadd float %i.af, %i.ak
  %i.am = fmul float %i.ae, %i.ah
  %i.an = fmul float %i.ae, %i.ai
  %i.ao = fmul float %i.aj, %i.ae
  %i.ap = fmul float %.sroa.speculated.i.i, %i.ah
  %i.aq = fmul float %.sroa.speculated.i.i, %i.al
  %i.ar = fmul float %.sroa.speculated.i.i, %i.aj
  %i.as = fadd float %i.am, %i.ap                 ; 3 uses
  %i.at = fadd float %i.an, %i.aq                 ; 3 uses
  %i.au = insertelement <2 x float> poison, float %i.as, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = fadd <2 x float> %i.av, <float -5.000000e-01, float 4.000000e-01> ; 3 uses
  %i.ax = fmul <2 x float> %i.aw, %i.aw           ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ax, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.az = fsub float 5.000000e-01, %i.as          ; 2 uses
  %i.ba = fsub float -4.000000e-01, %i.at         ; 2 uses
  %i.bb = fmul float %i.az, %i.az
  %i.bc = fmul float %i.ba, %i.ba
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = fadd float %i.ao, %i.ar                 ; 3 uses
  %i.bf = fmul float %i.as, %i.at
  %i.bg = insertelement <2 x float> %8, float %i.be, i64 0
  %i.bh = insertelement <2 x float> %.fca.0.extract78, float %i.bf, i64 0
  %i.bi = fmul <2 x float> %i.bg, %i.bh
  %i.bj = fadd float %i.be, f0xBF333333           ; 3 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = fadd float %i.bk, %i.ay
  %sqrt.i.i268 = call noundef float @llvm.sqrt.f32(float %i.bl) ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %sqrt.i.i268, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.aw, %i.bn
  %i.bp = fdiv float %i.bj, %sqrt.i.i268
  %i.bq = fmul <2 x float> %i.bo, <float f0x3F55013F, float 0.000000e+00> ; 2 uses
  %shift332 = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop333 = fadd <2 x float> %i.bq, %shift332
  %i.br = extractelement <2 x float> %foldExtExtBinop333, i64 0
  %i.bs = fmul float %i.bp, f0x3F0E00D5
  %i.bt = fadd float %i.bs, %i.br
  %i.bu = call noundef float @llvm.fabs.f32(float %i.bt)
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %.fca.1.extract79, i64 1
  %i.bx = fmul <2 x float> %i.bi, %i.bw
  %i.by = fsub float f0x3F333333, %i.be           ; 2 uses
  %i.bz = fmul float %i.by, %i.by
  %i.ca = fadd float %i.bz, %i.bd
  %i.cb = fmul float %i.ca, f0x3DBD5671
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.ad, i64 1
  %i.ce = fdiv <2 x float> %i.bx, %i.cd
  %i.cf = fadd <2 x float> %i.q, %i.ce            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 1048576
  br i1 %.not, label %bb.a, label %bb.b

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.cg = load ptr, ptr %3, align 8, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.171, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit:        ; preds = %bb.d
  %i.cj = load ptr, ptr %3, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = fpext float %i.k to double
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %i.cl)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit
  %i.cn = load ptr, ptr %3, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.172, i64 noundef 5)
          to label %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit275 unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit275:     ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.cq = load ptr, ptr %3, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = fpext float %i.l to double
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, double noundef %i.cs)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit276 unwind label %bb.m ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit276:        ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !31 ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i277, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit276
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %_ZN7testing7MessagelsIfEERS0_RKT_.exit276
  %i.cx = phi ptr [ %i.cw, %bb.e ], [ @.str.360, %_ZN7testing7MessagelsIfEERS0_RKT_.exit276 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 509, ptr noundef %i.cx)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.cy = load ptr, ptr %3, align 8, !tbaa !39
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.cz, label %bb.i, label %_ZN7testing7MessageD2Ev.exit

bb.i:                                             ; preds = %.noexc.i.i
  %i.da = load ptr, ptr %3, align 8, !tbaa !39    ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.da) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %.noexc.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit275, %_ZN7testing7MessagelsIfEERS0_RKT_.exit, %_ZN7testing7MessagelsIA6_cEERS0_RKT_.exit, %bb.d
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.o ], [ %i.dj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.di, %bb.m ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.dh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn.pn

bb.s:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !31
  %.not.i.i.i278 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i278, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i279 unwind label %bb.w

.noexc.i.i279:                                    ; preds = %bb.t
  br i1 %i.dn, label %bb.u, label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %.noexc.i.i279
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !31 ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !36 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !42
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #31
  unreachable

end_hunk_0
