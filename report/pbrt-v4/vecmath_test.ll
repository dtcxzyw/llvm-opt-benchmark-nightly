Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath_test?download=true
inline.NumInlined: 2858
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.t = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !35
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !24  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN28Vector_CoordinateSystem_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.pbrt::Vector3", align 8     ; 12 uses
  %6 = alloca %"class.pbrt::Vector3", align 8     ; 12 uses
  %7 = alloca [6 x %"class.pbrt::Vector3"], align 4 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca double, align 8                   ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 14 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 12 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %7, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.k, align 4, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store <2 x float> <float f0x3F7FFFFF, float f0xB39F1A59>, ptr %5, align 8
  store float f0x39C9FE7D, ptr %i.h, align 8
  store <2 x float> <float f0x339F1A59, float f0xBF7FFFFF>, ptr %6, align 8
  store float f0xB9C9A429, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %20 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> <float 1.000000e+00, float 1.000000e+00, float undef, float undef>)
  %21 = shufflevector <4 x float> %20, <4 x float> <float poison, float poison, float f0x39C9FE7B, float f0x341F1A58>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %22 = fadd <4 x float> %21, <float -1.000000e+00, float -1.000000e+00, float f0xB9C9FE7B, float f0xB41F1A58> ; 2 uses
  %23 = fmul <4 x float> %22, %22                 ; 4 uses
  %shift = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %23, %shift
  %shift231 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop232 = fadd <4 x float> %shift231, %foldExtExtBinop
  %shift234 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop235 = fadd <4 x float> %shift234, %foldExtExtBinop232
  %24 = extractelement <4 x float> %foldExtExtBinop235, i64 0
  %25 = fdiv float %24, 6.000000e+00
  store float %25, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store double 1.000000e-10, ptr %i.d, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.t = load i8, ptr %14, align 8, !tbaa !21, !range !22, !noundef !23
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.by, label %bb.bk

bb.c:                                             ; preds = %bb.a, %bb.d
  %.0.idx182 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.d ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %.0.idx182 ; 2 uses
  %.sroa.0173.0.copyload = load <2 x float>, ptr %.0.ptr, align 4 ; 4 uses
  %.sroa.7.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..0.sroa_idx, align 4 ; 3 uses
  %i.v = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.7.0.copyload) ; 5 uses
  %i.w = fadd float %.sroa.7.0.copyload, %i.v
  %i.x = fdiv float -1.000000e+00, %i.w           ; 3 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %.sroa.0173.0.copyload, i64 0 ; 3 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %.sroa.0173.0.copyload, i64 1 ; 5 uses
  %i.y = fmul float %.sroa.012.0.vec.extract.i, %.sroa.012.4.vec.extract.i
  %i.z = fmul float %i.y, %i.x                    ; 2 uses
  %foldExtExtBinop237 = fmul <2 x float> %.sroa.0173.0.copyload, %.sroa.0173.0.copyload
  %i.aa = extractelement <2 x float> %foldExtExtBinop237, i64 0
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = fmul float %i.ab, %i.x
  %i.ad = fadd float %i.ac, 1.000000e+00
  %i.ae = fmul float %i.v, %i.z
  %i.af = fneg float %i.v
  %i.ag = fmul float %.sroa.012.0.vec.extract.i, %i.af
  store float %i.ad, ptr %5, align 8
  store float %i.ae, ptr %i.g, align 4
  store float %i.ag, ptr %i.h, align 8
  %i.ah = fmul float %.sroa.012.4.vec.extract.i, %.sroa.012.4.vec.extract.i
  %i.ai = fmul float %i.ah, %i.x
  %i.aj = fadd float %i.v, %i.ai
  %i.ak = fneg float %.sroa.012.4.vec.extract.i
  store float %i.z, ptr %6, align 8
  store float %i.aj, ptr %i.i, align 4
  store float %i.ak, ptr %i.j, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.bi
  %.0.add = add nuw nsw i64 %.0.idx182, 12        ; 2 uses
  %.not = icmp eq i64 %.0.add, 72
  br i1 %.not, label %bb.b, label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.bi
  %.062181 = phi i32 [ 0, %bb.c ], [ %i.ee, %bb.bi ] ; 4 uses
  switch i32 %.062181, label %bb.g [
    i32 0, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit

bb.g:                                             ; preds = %bb.e
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:          ; preds = %bb.e, %bb.f, %bb.g
  %.0.i.sroa.speculated = phi float [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.012.4.vec.extract.i, %bb.f ], [ %.sroa.012.0.vec.extract.i, %bb.e ]
  %i.al = fcmp une float %.0.i.sroa.speculated, 0.000000e+00
  br i1 %i.al, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !36
  switch i32 %.062181, label %bb.j [
    i32 0, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91

bb.j:                                             ; preds = %bb.h
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91:        ; preds = %bb.h, %bb.i, %bb.j
  %.0.i90 = phi ptr [ %i.h, %bb.j ], [ %i.g, %bb.i ], [ %5, %bb.h ] ; 2 uses
  %i.am = load float, ptr %.0.i90, align 4, !tbaa !15, !noalias !103
  %i.an = fcmp oeq float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
  br label %_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.l:                                             ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !103
  call void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !103
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %.0.i90)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIfiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.n, !noalias !103

_ZN7testing8internal33FormatForComparisonFailureMessageIfiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.l
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIfiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ao = load ptr, ptr %4, align 8, !tbaa !29, !noalias !103 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.m
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !103
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !103
  %i.as = load ptr, ptr %3, align 8, !tbaa !29, !noalias !103 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.n
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.au = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !103
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !103
  br label %_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.o:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIfiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !29, !noalias !103 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.m
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.o
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !103
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.ax, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !103
  %i.bc = load ptr, ptr %3, align 8, !tbaa !29, !noalias !103 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.n
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.be = load i64, ptr %i.n, align 8, !tbaa !35, !noalias !103
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

common.resume:                                    ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %.pn.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i155 ], [ %.pn85.pn.pn.pn, %bb.dk ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !103
  br label %common.resume

_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bg = load i8, ptr %8, align 8, !tbaa !21, !range !22, !noundef !23
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.r, %bb.q
  %i.bk = phi ptr [ %i.bj, %bb.r ], [ @.str.218, %bb.q ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 195, ptr noundef %i.bk)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
end_hunk_0
begin_hunk_1_@_ZN28Vector_CoordinateSystem_Test8TestBodyEv:bb.a

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %bb.bb ], [ %i.dq, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bj

bb.bd:                                            ; preds = %_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit166, %_ZN7testing7MessageD2Ev.exit100
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !24
  %.not.i.i.i101 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i101, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i102 unwind label %bb.bh

.noexc.i.i102:                                    ; preds = %bb.be
  br i1 %i.du, label %bb.bf, label %_ZN7testing15AssertionResultD2Ev.exit106

bb.bf:                                            ; preds = %.noexc.i.i102
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !24  ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bg
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit106

bb.bh:                                            ; preds = %bb.be
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.bd, %.noexc.i.i102, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit, %_ZN7testing15AssertionResultD2Ev.exit106
  %i.ee = add nuw nsw i32 %.062181, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, 3
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !101

bb.bj:                                            ; preds = %bb.bc, %bb.ac
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %bb.bc ], [ %.pn82.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.dk

bb.bk:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bl unwind label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i113, label %_ZNK7testing15AssertionResult15failure_messageEv.exit114, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit114

_ZNK7testing15AssertionResult15failure_messageEv.exit114: ; preds = %bb.bm, %bb.bl
  %i.eh = phi ptr [ %i.eg, %bb.bm ], [ @.str.218, %bb.bl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 205, ptr noundef %i.eh)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit114
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.ei = load ptr, ptr %15, align 8, !tbaa !32
  %.not.i.i.i115 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ej = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i116 unwind label %bb.bs

.noexc.i.i116:                                    ; preds = %bb.bp
  br i1 %i.ej, label %bb.bq, label %_ZN7testing7MessageD2Ev.exit117

bb.bq:                                            ; preds = %.noexc.i.i116
  %i.ek = load ptr, ptr %15, align 8, !tbaa !32   ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZN7testing7MessageD2Ev.exit117, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.ek) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit117

bb.bs:                                            ; preds = %bb.ci, %bb.bp
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #26
  unreachable

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %bb.bo, %.noexc.i.i116, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.by

bb.bt:                                            ; preds = %bb.cd, %bb.bk
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit114.1, %_ZNK7testing15AssertionResult15failure_messageEv.exit114
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.cg, %bb.bn
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #25
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn79 = phi { ptr, i32 } [ %i.et, %bb.bv ], [ %i.es, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn79.pn = phi { ptr, i32 } [ %.pn79, %bb.bw ], [ %i.er, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.dk

bb.by:                                            ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit117
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !24
  %.not.i.i.i118 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit123, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ev = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i119 unwind label %bb.cc

.noexc.i.i119:                                    ; preds = %bb.bz
  br i1 %i.ev, label %bb.ca, label %_ZN7testing15AssertionResultD2Ev.exit123

bb.ca:                                            ; preds = %.noexc.i.i119
  %i.ew = load ptr, ptr %i.s, align 8, !tbaa !24  ; 4 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN7testing15AssertionResultD2Ev.exit123, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !29 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120: ; preds = %bb.cb
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !35
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit123

bb.cc:                                            ; preds = %bb.cm, %bb.bz
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit123:         ; preds = %bb.by, %.noexc.i.i119, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  store <2 x float> <float 1.000000e+00, float f0xB21845DA>, ptr %5, align 8
  store float f0xB94FC2AD, ptr %i.h, align 8
  store <2 x float> <float f0x321845DA, float -1.000000e+00>, ptr %6, align 8
  store float f0x38BBA0FA, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %26 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> <float 1.000000e+00, float 1.000000e+00, float undef, float undef>)
  %27 = shufflevector <4 x float> %26, <4 x float> <float poison, float poison, float f0xB94FC2AD, float f0x329845DA>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %28 = fadd <4 x float> %27, <float -1.000000e+00, float -1.000000e+00, float f0x394FC2AB, float f0xB29845D9> ; 2 uses
  %29 = fmul <4 x float> %28, %28                 ; 4 uses
  %30 = extractelement <4 x float> %29, i64 0
  %31 = fadd float %30, f0x28800000
  %32 = extractelement <4 x float> %29, i64 1
  %33 = fadd float %31, %32
  %34 = extractelement <4 x float> %29, i64 2
  %35 = fadd float %34, %33
  %36 = extractelement <4 x float> %29, i64 3
  %37 = fadd float %36, %35
  %38 = fadd float %37, f0x1A800000
  %39 = fdiv float %38, 6.000000e+00
  store float %39, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store double 1.000000e-10, ptr %i.d, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ff = load i8, ptr %14, align 8, !tbaa !21, !range !22, !noundef !23
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.cl, label %bb.cd

bb.cd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ce unwind label %bb.bt

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %.not.i.i113.1 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i113.1, label %_ZNK7testing15AssertionResult15failure_messageEv.exit114.1, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit114.1

_ZNK7testing15AssertionResult15failure_messageEv.exit114.1: ; preds = %bb.cf, %bb.ce
  %i.fj = phi ptr [ %i.fi, %bb.cf ], [ @.str.218, %bb.ce ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 205, ptr noundef %i.fj)
          to label %bb.cg unwind label %bb.bu

bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit114.1
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ch unwind label %bb.bv

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.fk = load ptr, ptr %15, align 8, !tbaa !32
  %.not.i.i.i115.1 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i115.1, label %_ZN7testing7MessageD2Ev.exit117.1, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fl = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i116.1 unwind label %bb.bs

.noexc.i.i116.1:                                  ; preds = %bb.ci
  br i1 %i.fl, label %bb.cj, label %_ZN7testing7MessageD2Ev.exit117.1

bb.cj:                                            ; preds = %.noexc.i.i116.1
  %i.fm = load ptr, ptr %15, align 8, !tbaa !32   ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_ZN7testing7MessageD2Ev.exit117.1, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit117.1

_ZN7testing7MessageD2Ev.exit117.1:                ; preds = %bb.ck, %bb.cj, %.noexc.i.i116.1, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit117.1, %_ZN7testing15AssertionResultD2Ev.exit123
  %i.fr = load ptr, ptr %i.s, align 8, !tbaa !24
  %.not.i.i.i118.1 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i118.1, label %_ZN7testing15AssertionResultD2Ev.exit123.1, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fs = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i119.1 unwind label %bb.cc

.noexc.i.i119.1:                                  ; preds = %bb.cm
  br i1 %i.fs, label %bb.cn, label %_ZN7testing15AssertionResultD2Ev.exit123.1

bb.cn:                                            ; preds = %.noexc.i.i119.1
  %i.ft = load ptr, ptr %i.s, align 8, !tbaa !24  ; 4 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_ZN7testing15AssertionResultD2Ev.exit123.1, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !29 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120.1: ; preds = %bb.co
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !35
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121.1: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i120.1
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit123.1

_ZN7testing15AssertionResultD2Ev.exit123.1:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i121.1, %bb.cn, %.noexc.i.i119.1, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  br label %bb.cq

bb.cp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.cq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit123.1, %_ZN7testing15AssertionResultD2Ev.exit151
  %.075185 = phi i32 [ 0, %_ZN7testing15AssertionResultD2Ev.exit123.1 ], [ %i.ko, %_ZN7testing15AssertionResultD2Ev.exit151 ]
  %.sroa.0168.0184 = phi i64 [ -8846114313915602277, %_ZN7testing15AssertionResultD2Ev.exit123.1 ], [ %i.ge, %_ZN7testing15AssertionResultD2Ev.exit151 ] ; 2 uses
  %i.gb = mul i64 %.sroa.0168.0184, 6364136223846793005
  %i.gc = add i64 %i.gb, -2720673578348880933     ; 2 uses
  %i.gd = mul i64 %i.gc, 6364136223846793005
  %i.ge = add i64 %i.gd, -2720673578348880933
  %i.gf = insertelement <2 x i64> poison, i64 %i.gc, i64 0
  %i.gg = insertelement <2 x i64> %i.gf, i64 %.sroa.0168.0184, i64 1 ; 3 uses
  %i.gh = lshr <2 x i64> %i.gg, splat (i64 45)
  %i.gi = lshr <2 x i64> %i.gg, splat (i64 27)
  %i.gj = xor <2 x i64> %i.gh, %i.gi
  %i.gk = trunc <2 x i64> %i.gj to <2 x i32>      ; 2 uses
  %i.gl = lshr <2 x i64> %i.gg, splat (i64 59)
  %i.gm = trunc nuw nsw <2 x i64> %i.gl to <2 x i32>
  %i.gn = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gk, <2 x i32> %i.gk, <2 x i32> %i.gm)
  %i.go = uitofp <2 x i32> %i.gn to <2 x float>
  %i.gp = fmul nnan <2 x float> %i.go, splat (float f0x2F800000) ; 3 uses
  %i.gq = fcmp olt <2 x float> %i.gp, splat (float f0x3F7FFFFF) ; 2 uses
  %i.gr = extractelement <2 x i1> %i.gq, i64 1
  %i.gs = extractelement <2 x float> %i.gp, i64 1
  %i.gt = extractelement <2 x i1> %i.gq, i64 0
  %i.gu = extractelement <2 x float> %i.gp, i64 0
  %i.gv = fmul nnan float %i.gs, 2.000000e+00
  %i.gw = fsub float 1.000000e+00, %i.gv
  %i.gx = select i1 %i.gr, float %i.gw, float f0xBF7FFFFE ; 6 uses
  %i.gy = fmul float %i.gx, %i.gx                 ; 2 uses
  %i.gz = fsub float 1.000000e+00, %i.gy          ; 2 uses
  %i.ha = fcmp ogt float %i.gz, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ha, float %i.gz, float 0.000000e+00
  %sqrt.i.i125 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.hb = fmul nnan float %i.gu, f0x40C90FDB
  %i.hc = select i1 %i.gt, float %i.hb, float f0x40C90FDA ; 2 uses
  %i.hd = call noundef float @cosf(float noundef %i.hc) #25
  %i.he = fmul float %sqrt.i.i125, %i.hd          ; 6 uses
  %i.hf = call noundef float @sinf(float noundef %i.hc) #25
  %i.hg = fmul float %sqrt.i.i125, %i.hf          ; 8 uses
  %i.hh = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.gx) ; 5 uses
  %i.hi = fadd float %i.gx, %i.hh
  %i.hj = fdiv float -1.000000e+00, %i.hi         ; 3 uses
  %i.hk = fmul float %i.he, %i.hg
  %i.hl = fmul float %i.hj, %i.hk                 ; 2 uses
  %i.hm = fmul float %i.he, %i.he                 ; 2 uses
  %i.hn = fmul float %i.hh, %i.hm
  %i.ho = fmul float %i.hj, %i.hn
  %i.hp = fadd float %i.ho, 1.000000e+00
  %i.hq = fmul float %i.hh, %i.hl
  %i.hr = fneg float %i.hh
  %i.hs = fmul float %i.he, %i.hr                 ; 5 uses
  store float %i.hp, ptr %5, align 8
  store float %i.hq, ptr %i.g, align 4
  store float %i.hs, ptr %i.h, align 8
  %i.ht = fmul float %i.hg, %i.hg                 ; 3 uses
  %i.hu = fmul float %i.hj, %i.ht
  %i.hv = fadd float %i.hh, %i.hu
  %i.hw = fneg float %i.hg
  store float %i.hl, ptr %6, align 8
  store float %i.hv, ptr %i.i, align 4
  store float %i.hw, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %.sroa.07.0.copyload = load <2 x float>, ptr %5, align 8 ; 5 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %6, align 8 ; 5 uses
  %i.hx = fadd float %i.hm, %i.ht
  %i.hy = fadd float %i.gy, %i.hx
  %sqrt.i.i134 = call noundef float @llvm.sqrt.f32(float %i.hy)
  %i.hz = fadd float %sqrt.i.i134, -1.000000e+00  ; 2 uses
  %i.ia = fmul float %i.hz, %i.hz
  %.sroa.01.0.vec.extract.i.i52.i135 = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %foldExtExtBinop239 = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.07.0.copyload
  %i.ib = extractelement <2 x float> %foldExtExtBinop239, i64 0
  %.sroa.01.4.vec.extract.i.i53.i136 = extractelement <2 x float> %.sroa.07.0.copyload, i64 1 ; 4 uses
  %i.ic = fmul float %.sroa.01.4.vec.extract.i.i53.i136, %.sroa.01.4.vec.extract.i.i53.i136
  %i.id = fadd float %i.ib, %i.ic
  %i.ie = fmul float %i.hs, %i.hs
  %i.if = fadd float %i.ie, %i.id
  %sqrt.i54.i137 = call noundef float @llvm.sqrt.f32(float %i.if)
  %i.ig = fadd float %sqrt.i54.i137, -1.000000e+00 ; 2 uses
  %i.ih = fmul float %i.ig, %i.ig
  %i.ii = fadd float %i.ia, %i.ih
  %.sroa.01.0.vec.extract.i.i55.i138 = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %foldExtExtBinop241 = fmul <2 x float> %.sroa.05.0.copyload, %.sroa.05.0.copyload
  %i.ij = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %.sroa.01.4.vec.extract.i.i56.i139 = extractelement <2 x float> %.sroa.05.0.copyload, i64 1 ; 4 uses
  %i.ik = fmul float %.sroa.01.4.vec.extract.i.i56.i139, %.sroa.01.4.vec.extract.i.i56.i139
  %i.il = fadd float %i.ij, %i.ik
  %i.im = fadd float %i.ht, %i.il
  %sqrt.i57.i140 = call noundef float @llvm.sqrt.f32(float %i.im)
  %i.in = fadd float %sqrt.i57.i140, -1.000000e+00 ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = fadd float %i.ii, %i.io
  %i.iq = fmul float %i.he, %.sroa.01.0.vec.extract.i.i52.i135
  %i.ir = fmul float %i.hg, %.sroa.01.4.vec.extract.i.i53.i136
  %i.is = fadd float %i.iq, %i.ir
end_hunk_1
begin_hunk_2_@_ZN4pbrt20DifferenceOfProductsENS_8IntervalES0_S0_S0_:.lr.ph.i.i
  br label %_ZN4pbrt13NextFloatDownEf.exit91

_ZN4pbrt13NextFloatDownEf.exit91:                 ; preds = %.lr.ph.i.i, %_ZN4pbrt13NextFloatDownEf.exit, %bb.a
  %.09.i90 = phi float [ %i.bz, %bb.a ], [ -inf, %_ZN4pbrt13NextFloatDownEf.exit ], [ -inf, %.lr.ph.i.i ] ; 4 uses
  %or.cond.i92 = fcmp oeq float %i.br, +inf
  br i1 %or.cond.i92, label %_ZN4pbrt11NextFloatUpEf.exit101, label %_ZN4pbrt11NextFloatUpEf.exit

_ZN4pbrt11NextFloatUpEf.exit:                     ; preds = %_ZN4pbrt13NextFloatDownEf.exit91
  %i.ca = fcmp oeq float %i.br, 0.000000e+00
  %spec.store.select.i93 = select i1 %i.ca, float 0.000000e+00, float %i.br ; 2 uses
  %i.cb = bitcast float %spec.store.select.i93 to i32
  %i.cc = fcmp ult float %spec.store.select.i93, 0.000000e+00
  %.0.v.i94 = select i1 %i.cc, i32 -1, i32 1
  %.0.i95 = add i32 %.0.v.i94, %i.cb
  %i.cd = bitcast i32 %.0.i95 to float            ; 3 uses
  %or.cond.i96 = fcmp oeq float %i.cd, +inf
  br i1 %or.cond.i96, label %_ZN4pbrt11NextFloatUpEf.exit101, label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt11NextFloatUpEf.exit
  %i.ce = fcmp oeq float %i.cd, 0.000000e+00
  %spec.store.select.i97 = select i1 %i.ce, float 0.000000e+00, float %i.cd ; 2 uses
  %i.cf = bitcast float %spec.store.select.i97 to i32
  %i.cg = fcmp ult float %spec.store.select.i97, 0.000000e+00
  %.0.v.i98 = select i1 %i.cg, i32 -1, i32 1
  %.0.i99 = add i32 %.0.v.i98, %i.cf
  %i.ch = bitcast i32 %.0.i99 to float
  br label %_ZN4pbrt11NextFloatUpEf.exit101

_ZN4pbrt11NextFloatUpEf.exit101:                  ; preds = %_ZN4pbrt13NextFloatDownEf.exit91, %_ZN4pbrt11NextFloatUpEf.exit, %bb.b
  %.010.i100 = phi float [ %i.ch, %bb.b ], [ +inf, %_ZN4pbrt11NextFloatUpEf.exit ], [ +inf, %_ZN4pbrt13NextFloatDownEf.exit91 ] ; 4 uses
  %i.ci = fcmp olt float %.010.i100, %.09.i90
  %.sroa.speculated5.i = select i1 %i.ci, float %.010.i100, float %.09.i90
  %.sroa.0145.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated5.i, i64 0
  %i.cj = fcmp olt float %.09.i90, %.010.i100
  %.sroa.speculated.i = select i1 %i.cj, float %.010.i100, float %.09.i90
  %.sroa.0145.4.vec.insert = insertelement <2 x float> %.sroa.0145.0.vec.insert, float %.sroa.speculated.i, i64 1
  ret <2 x float> %.sroa.0145.4.vec.insert
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_vecmath_test.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !15
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !15
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !15
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !15
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Vector2_Basics_TestEE, i64 16), ptr %i.d, align 8, !tbaa !34
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN19Vector2_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Vector2_Basics_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI19Vector3_Basics_TestEE, i64 16), ptr %i.h, align 8, !tbaa !34
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN19Vector3_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN19Vector3_Basics_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Point2_InvertBilinear_TestEE, i64 16), ptr %i.l, align 8, !tbaa !34
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN26Point2_InvertBilinear_Test10test_info_E, align 8, !tbaa !472
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Point2_InvertBilinear_Test10test_info_E) ; 0 uses
  %i.o = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI24Vector_AngleBetween_TestEE, i64 16), ptr %i.p, align 8, !tbaa !34
  %i.q = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.p)
  store ptr %i.q, ptr @_ZN24Vector_AngleBetween_Test10test_info_E, align 8, !tbaa !472
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN24Vector_AngleBetween_Test10test_info_E) ; 0 uses
  %i.s = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI28Vector_CoordinateSystem_TestEE, i64 16), ptr %i.t, align 8, !tbaa !34
  %i.u = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr @_ZN28Vector_CoordinateSystem_Test10test_info_E, align 8, !tbaa !472
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN28Vector_CoordinateSystem_Test10test_info_E) ; 0 uses
  %i.w = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Bounds2_IteratorBasic_TestEE, i64 16), ptr %i.x, align 8, !tbaa !34
  %i.y = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr @_ZN26Bounds2_IteratorBasic_Test10test_info_E, align 8, !tbaa !472
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Bounds2_IteratorBasic_Test10test_info_E) ; 0 uses
  %i.aa = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31Bounds2_IteratorDegenerate_TestEE, i64 16), ptr %i.ab, align 8, !tbaa !34
  %i.ac = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ab)
  store ptr %i.ac, ptr @_ZN31Bounds2_IteratorDegenerate_Test10test_info_E, align 8, !tbaa !472
  %i.ad = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31Bounds2_IteratorDegenerate_Test10test_info_E) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI26Bounds3_PointDistance_TestEE, i64 16), ptr %i.af, align 8, !tbaa !34
  %i.ag = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, ptr noundef %i.ae, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.af)
  store ptr %i.ag, ptr @_ZN26Bounds3_PointDistance_Test10test_info_E, align 8, !tbaa !472
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN26Bounds3_PointDistance_Test10test_info_E) ; 0 uses
  %i.ai = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.aj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18Bounds2_Union_TestEE, i64 16), ptr %i.aj, align 8, !tbaa !34
  %i.ak = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, ptr noundef %i.ai, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.aj)
  store ptr %i.ak, ptr @_ZN18Bounds2_Union_Test10test_info_E, align 8, !tbaa !472
  %i.al = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN18Bounds2_Union_Test10test_info_E) ; 0 uses
  %i.am = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.an = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI18Bounds3_Union_TestEE, i64 16), ptr %i.an, align 8, !tbaa !34
  %i.ao = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, ptr noundef %i.am, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.an)
  store ptr %i.ao, ptr @_ZN18Bounds3_Union_Test10test_info_E, align 8, !tbaa !472
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN18Bounds3_Union_Test10test_info_E) ; 0 uses
  %i.aq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ar = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22EqualArea_Randoms_TestEE, i64 16), ptr %i.ar, align 8, !tbaa !34
  %i.as = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef null, ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ar)
  store ptr %i.as, ptr @_ZN22EqualArea_Randoms_Test10test_info_E, align 8, !tbaa !472
  %i.at = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22EqualArea_Randoms_Test10test_info_E) ; 0 uses
  %i.au = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25EqualArea_RemapEdges_TestEE, i64 16), ptr %i.av, align 8, !tbaa !34
  %i.aw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, ptr noundef %i.au, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.av)
  store ptr %i.aw, ptr @_ZN25EqualArea_RemapEdges_Test10test_info_E, align 8, !tbaa !472
  %i.ax = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25EqualArea_RemapEdges_Test10test_info_E) ; 0 uses
  %i.ay = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.az = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30DirectionCone_UnionBasics_TestEE, i64 16), ptr %i.az, align 8, !tbaa !34
  %i.ba = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef null, ptr noundef %i.ay, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.az)
  store ptr %i.ba, ptr @_ZN30DirectionCone_UnionBasics_Test10test_info_E, align 8, !tbaa !472
  %i.bb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30DirectionCone_UnionBasics_Test10test_info_E) ; 0 uses
  %i.bc = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31DirectionCone_UnionRandoms_TestEE, i64 16), ptr %i.bd, align 8, !tbaa !34
  %i.be = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef null, ptr noundef %i.bc, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bd)
  store ptr %i.be, ptr @_ZN31DirectionCone_UnionRandoms_Test10test_info_E, align 8, !tbaa !472
  %i.bf = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31DirectionCone_UnionRandoms_Test10test_info_E) ; 0 uses
  %i.bg = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bh = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30DirectionCone_BoundBounds_TestEE, i64 16), ptr %i.bh, align 8, !tbaa !34
  %i.bi = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, ptr noundef %i.bg, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bh)
  store ptr %i.bi, ptr @_ZN30DirectionCone_BoundBounds_Test10test_info_E, align 8, !tbaa !472
  %i.bj = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30DirectionCone_BoundBounds_Test10test_info_E) ; 0 uses
  %i.bk = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31DirectionCone_VectorInCone_TestEE, i64 16), ptr %i.bl, align 8, !tbaa !34
  %i.bm = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef null, ptr noundef %i.bk, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bl)
  store ptr %i.bm, ptr @_ZN31DirectionCone_VectorInCone_Test10test_info_E, align 8, !tbaa !472
  %i.bn = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31DirectionCone_VectorInCone_Test10test_info_E) ; 0 uses
  %i.bo = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bp = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI33SphericalTriangleArea_Basics_TestEE, i64 16), ptr %i.bp, align 8, !tbaa !34
  %i.bq = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, ptr noundef %i.bo, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bp)
  store ptr %i.bq, ptr @_ZN33SphericalTriangleArea_Basics_Test10test_info_E, align 8, !tbaa !472
  %i.br = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN33SphericalTriangleArea_Basics_Test10test_info_E) ; 0 uses
  %i.bs = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bt = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI41SphericalTriangleArea_RandomSampling_TestEE, i64 16), ptr %i.bt, align 8, !tbaa !34
  %i.bu = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.197, ptr noundef null, ptr noundef null, ptr noundef %i.bs, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bt)
  store ptr %i.bu, ptr @_ZN41SphericalTriangleArea_RandomSampling_Test10test_info_E, align 8, !tbaa !472
  %i.bv = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN41SphericalTriangleArea_RandomSampling_Test10test_info_E) ; 0 uses
  %i.bw = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.bx = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25PointVector_Interval_TestEE, i64 16), ptr %i.bx, align 8, !tbaa !34
  %i.by = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, ptr noundef %i.bw, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.bx)
  store ptr %i.by, ptr @_ZN25PointVector_Interval_Test10test_info_E, align 8, !tbaa !472
  %i.bz = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25PointVector_Interval_Test10test_info_E) ; 0 uses
  %i.ca = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.cb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI34OctahedralVector_EncodeDecode_TestEE, i64 16), ptr %i.cb, align 8, !tbaa !34
  %i.cc = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef null, ptr noundef %i.ca, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.cb)
  store ptr %i.cc, ptr @_ZN34OctahedralVector_EncodeDecode_Test10test_info_E, align 8, !tbaa !472
  %i.cd = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN34OctahedralVector_EncodeDecode_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.sqrt.f80(x86_fp80) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshr.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, i1 false, !"_ZNK4pbrt6Tuple2INS_6Point2EfE8ToStringB5cxx11Ev"}
!3 = distinct !{!3, !2, !"_ZNK4pbrt6Tuple2INS_6Point2EfE8ToStringB5cxx11Ev: argument 0"}
!4 = !{i32 1, !"long-double-type", !"x86_fp80"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"float", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"bool", !10, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!19 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !18, i64 0}
!20 = !{!"_ZTSN7testing15AssertionResultE", !16, i64 0, !19, i64 8}
!21 = !{!20, !16, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!19, !18, i64 0}
!25 = !{!"p1 omnipotent char", !17, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"long", !10, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !27, i64 8, !10, i64 16}
!29 = !{!28, !25, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!31 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"vtable pointer", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!10, !10, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!"_ZTSN4pbrt6Tuple2INS_7Vector2EfEE", !14, i64 0, !14, i64 4}
!38 = !{!37, !14, i64 0}
!39 = !{!37, !14, i64 4}
!40 = !{!25, !25, i64 0}
!41 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!42 = !{!41, !14, i64 8}
!43 = !{!41, !14, i64 0}
!44 = !{!41, !14, i64 4}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!26, !25, i64 0}
!47 = !{!28, !27, i64 8}
!48 = !{!"double", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!27, !27, i64 0}
!51 = !{!"_ZTSN4pbrt7Vector3IfEE", !41, i64 0}
!52 = !{!"_ZTSN4pbrt13DirectionConeE", !51, i64 0, !14, i64 12}
!53 = !{!52, !14, i64 12}
!54 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!55 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!56 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!57 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !27, i64 8}
!58 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!59 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!60 = !{!"_ZTSSt6locale", !59, i64 0}
!61 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !54, i64 24, !55, i64 28, !55, i64 32, !56, i64 40, !57, i64 48, !10, i64 64, !11, i64 192, !58, i64 200, !60, i64 208}
!62 = !{!"_ZTSSi", !27, i64 8}
!63 = !{!62, !27, i64 8}
!64 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !14, i64 0, !14, i64 4, !14, i64 8}
!65 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !60, i64 56}
!66 = !{!65, !25, i64 40}
!67 = !{!65, !25, i64 32}
!68 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EiEE", !11, i64 0, !11, i64 4}
!69 = !{!68, !11, i64 0}
!70 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !14, i64 0, !14, i64 4}
!71 = !{!70, !14, i64 0}
!72 = !{!3}
!73 = !{!70, !14, i64 4}
!74 = !{!61, !55, i64 32}
!75 = !{!64, !14, i64 8}
!76 = !{!64, !14, i64 0}
!77 = !{!64, !14, i64 4}
!78 = distinct !{null, null}
!79 = distinct !{!79, !45}
!80 = distinct !{!80, !45}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45}
!83 = distinct !{!83, i1 false, !"_ZN4pbrt12StringPrintfIJRA16_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!84 = distinct !{!84, !83, !"_ZN4pbrt12StringPrintfIJRA16_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, i1 false, !"_ZN4pbrt12StringPrintfIJRA45_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!87 = distinct !{!87, !86, !"_ZN4pbrt12StringPrintfIJRA45_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!88 = !{!87}
!89 = distinct !{!89, i1 false, !"_ZN4pbrt12StringPrintfIJRA18_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_"}
!90 = distinct !{!90, !89, !"_ZN4pbrt12StringPrintfIJRA18_KcRA6_S1_S3_RfS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, !45}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, i1 false, !"_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!95 = distinct !{!95, !94, !"_ZN4pbrt12StringPrintfIJRfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!96 = !{!95}
!97 = distinct !{!97, i1 false, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!98 = distinct !{!98, !97, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!99 = distinct !{!99, i1 false, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!100 = distinct !{!100, !99, !"_ZN7testing8internal11CmpHelperEQIifEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45}
!103 = !{!98}
!104 = !{!100}
!105 = distinct !{!105, i1 false, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!106 = distinct !{!106, !105, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!107 = distinct !{!107, i1 false, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!108 = distinct !{!108, !107, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!109 = distinct !{!109, i1 false, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_"}
!110 = distinct !{!110, !109, !"_ZN4pbrt5UnionIfEENS_7Bounds3IT_EERKS3_S5_: argument 0"}
!111 = !{!106}
!112 = !{!108}
!113 = !{!110}
!114 = !{!"_ZTSN4pbrt3RNGE", !27, i64 0, !27, i64 8}
!115 = !{!114, !27, i64 0}
!116 = !{!114, !27, i64 8}
!117 = !{!61, !27, i64 8}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !45}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, i1 false, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!126 = distinct !{!126, !125, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, i1 false, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE"}
!129 = distinct !{!129, !128, !"_ZN4pbrt6RotateEfNS_7Vector3IfEE: argument 0"}
!130 = distinct !{!130, !45}
!131 = !{!126}
!132 = !{!129}
!133 = distinct !{!133, !45}
!134 = !{!"_ZTSN4pbrt6Point3IfEE", !64, i64 0}
!135 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !27, i64 0}
!136 = !{!"_ZTSN4pbrt6MediumE", !135, i64 0}
!137 = !{!"_ZTSN4pbrt3RayE", !134, i64 0, !51, i64 12, !14, i64 24, !136, i64 32}
!138 = !{!137, !14, i64 24}
!139 = !{!135, !27, i64 0}
!140 = !{!"_ZTSN4pstd8optionalIN4pbrt20TriangleIntersectionEEE", !10, i64 0, !16, i64 16}
!141 = !{!140, !16, i64 16}
!142 = distinct !{!142, i1 false, !"_ZN4pbrtmlINS_7Vector3ENS_8IntervalES2_EET_IDTmltlT0_EtlT1_EEES5_NS_6Tuple3IS3_S4_EE"}
!143 = distinct !{!143, !142, !"_ZN4pbrtmlINS_7Vector3ENS_8IntervalES2_EET_IDTmltlT0_EtlT1_EEES5_NS_6Tuple3IS3_S4_EE: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZNK4pbrt6Tuple3INS_7Vector3ENS_8IntervalEEmlIS2_EENS1_IDTmltlS2_EtlT_EEEES5_"}
!145 = distinct !{!145, !144, !"_ZNK4pbrt6Tuple3INS_7Vector3ENS_8IntervalEEmlIS2_EENS1_IDTmltlS2_EtlT_EEEES5_: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZNK4pbrt6Point3INS_8IntervalEEmiIS1_EENS_7Vector3IDTmitlS1_EtlT_EEEENS0_IS5_EE"}
!147 = distinct !{!147, !146, !"_ZNK4pbrt6Point3INS_8IntervalEEmiIS1_EENS_7Vector3IDTmitlS1_EtlT_EEEENS0_IS5_EE: argument 0"}
!148 = distinct !{!148, i1 false, !"_ZN4pbrt5CrossINS_8IntervalEEENS_7Vector3IT_EES4_S4_"}
!149 = distinct !{!149, !148, !"_ZN4pbrt5CrossINS_8IntervalEEENS_7Vector3IT_EES4_S4_: argument 0"}
!150 = !{!143}
!151 = !{!145, !143}
!152 = !{!147}
!153 = !{!149}
!154 = !{!"_ZTSN4pbrt8IntervalE", !14, i64 0, !14, i64 4}
!155 = !{!154, !14, i64 0}
end_hunk_2
