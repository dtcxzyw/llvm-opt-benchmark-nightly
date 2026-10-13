Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OgreStructs?download=true
inline.NumInlined: 1851
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp4Ogre4BoneC2Ev:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i16 @_ZNK6Assimp4Ogre4Bone8ParentIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = trunc i32 %i.b to i16
  ret i16 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre4Bone8AddChildEPS1_(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp ne i32 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.d, null
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA48_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(48) @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #28
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.b
  store ptr %0, ptr %i.c, align 8
  %i.j = load i16, ptr %0, align 8
  %i.k = zext i16 %i.j to i32
  store i32 %i.k, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i8 = icmp eq ptr %i.n, %i.p
  br i1 %.not.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr %1, align 8
  store i16 %i.q, ptr %i.n, align 2
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.m, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775806
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.y = ashr exact i64 %i.w, 1                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add i64 %.sroa.speculated.i.i.i, %i.y    ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 4611686018427387903)
  %i.ac = select i1 %i.aa, i64 4611686018427387903, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #30 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  %i.ag = load i16, ptr %1, align 8
  store i16 %i.ag, ptr %i.af, align 2
  %i.ah = icmp sgt i64 %i.w, 0
  br i1 %i.ah, label %bb.j, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ae, ptr align 2 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.aj = load ptr, ptr %i.o, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.al) #31
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.ae, ptr %i.l, align 8
  store ptr %i.ai, ptr %i.m, align 8
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.am, ptr %i.o, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA48_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA48_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(248) initializes((120, 248)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiMatrix4x4t, align 16       ; 7 uses
  %3 = alloca %class.aiMatrix4x4t, align 16       ; 7 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp ne i32 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %i.g = select i1 %.not.i, i1 %i.f, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.m = load float, ptr %i.h, align 4, !noalias !76 ; 4 uses
  %i.n = fneg float %i.m                          ; 3 uses
  %i.o = load <4 x float>, ptr %i.l, align 8      ; 6 uses
  %i.p = load float, ptr %i.i, align 8
  %i.q = shufflevector <4 x float> %i.o, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.r = insertelement <4 x float> %i.o, float -0.000000e+00, i64 3
  %i.s = extractelement <4 x float> %i.o, i64 0   ; 2 uses
  %i.t = fmul float %i.s, %i.n
  %i.u = fmul float %i.s, %i.m
  %i.v = shufflevector <4 x float> %i.o, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load float, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aa = load <2 x float>, ptr %i.j, align 4, !noalias !76 ; 3 uses
  %i.ab = load float, ptr %i.k, align 8, !noalias !76 ; 5 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.m, i64 1
  %i.ae = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.af = insertelement <2 x float> %i.ae, float %i.n, i64 0
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ah, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.p, i64 3
  %i.ak = fmul float %i.ab, %i.m
  %i.al = load float, ptr %i.z, align 4
  %i.am = shufflevector <4 x float> %i.o, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %4 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> %4, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ao = insertelement <4 x float> %4, float -0.000000e+00, i64 3
  %i.ap = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.t, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.al, i64 3
  %i.as = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.x, i64 0
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = insertelement <2 x float> %i.ae, float %i.ab, i64 0 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %5 = shufflevector <2 x float> %i.ay, <2 x float> %i.aa, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.ba = insertelement <4 x float> %5, float %i.n, i64 3
  %i.bb = fmul <4 x float> %i.az, %i.ba
  %6 = shufflevector <4 x float> %i.o, <4 x float> %4, <4 x i32> <i32 0, i32 0, i32 4, i32 0> ; 2 uses
  %i.bc = insertelement <4 x float> %6, float %i.ab, i64 3
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %i.bc, <4 x float> %i.bb) ; 4 uses
  %7 = shufflevector <4 x float> %i.ao, <4 x float> %i.bd, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %7, <4 x float> %i.ar)
  %i.bf = fmul <4 x float> %i.be, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %8 = fmul <4 x float> %i.at, %i.bf
  store <4 x float> %8, ptr %i.y, align 16
  %9 = shufflevector <4 x float> %i.r, <4 x float> %i.bd, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %9, <4 x float> %i.aj)
  %11 = fmul <4 x float> %10, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.bg = fmul <4 x float> %11, %i.v
  store <4 x float> %i.bg, ptr %2, align 16
  %12 = shufflevector <4 x float> %4, <4 x float> %i.bd, <2 x i32> <i32 0, i32 5>
  %i.bh = insertelement <2 x float> <float poison, float -2.000000e+00>, float %i.ab, i64 0
  %i.bi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.u, i64 0
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.bh, <2 x float> %i.bi)
  %i.bk = load float, ptr %i.ax, align 8
  %13 = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x float> %13, <4 x float> %i.bl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bn = insertelement <4 x float> %i.bm, float %i.bk, i64 3
  %i.bo = fmul <4 x float> %i.bn, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.av, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.br = fmul <4 x float> %i.bq, %i.bo
  store <4 x float> %i.br, ptr %i.aw, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bs, align 16
  %i.bt = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 4 dereferenceable(64) %i.bt, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bv = load float, ptr %i.h, align 4, !noalias !77 ; 4 uses
  %i.bw = fneg float %i.bv                        ; 3 uses
  %i.bx = load <4 x float>, ptr %i.l, align 8     ; 6 uses
  %i.by = load float, ptr %i.i, align 8
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.ca = insertelement <4 x float> %i.bx, float -0.000000e+00, i64 3
  %i.cb = extractelement <4 x float> %i.bx, i64 0 ; 2 uses
  %i.cc = fmul float %i.cb, %i.bw
  %i.cd = fmul float %i.cb, %i.bv
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = load float, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cj = load <2 x float>, ptr %i.j, align 4, !noalias !77 ; 3 uses
  %i.ck = load float, ptr %i.k, align 8, !noalias !77 ; 5 uses
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.bv, i64 1
  %i.cn = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.co = insertelement <2 x float> %i.cn, float %i.bw, i64 0
  %i.cp = fmul <2 x float> %i.cm, %i.co
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %i.by, i64 3
  %i.ct = fmul float %i.ck, %i.bv
  %i.cu = load float, ptr %i.ci, align 4
  %i.cv = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %14 = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cx = insertelement <4 x float> %14, float -0.000000e+00, i64 3
  %i.cy = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ct, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cc, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.cu, i64 3
  %i.db = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cg, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.de = load float, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = insertelement <2 x float> %i.cn, float %i.ck, i64 0 ; 2 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %15 = shufflevector <2 x float> %i.dh, <2 x float> %i.cj, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.dj = insertelement <4 x float> %15, float %i.bw, i64 3
  %i.dk = fmul <4 x float> %i.di, %i.dj
  %16 = shufflevector <4 x float> %i.bx, <4 x float> %14, <4 x i32> <i32 0, i32 0, i32 4, i32 0> ; 2 uses
  %i.dl = insertelement <4 x float> %16, float %i.ck, i64 3
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.dl, <4 x float> %i.dk) ; 4 uses
  %17 = shufflevector <4 x float> %i.cx, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %17, <4 x float> %i.da)
  %i.do = fmul <4 x float> %i.dn, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %18 = fmul <4 x float> %i.dc, %i.do
  store <4 x float> %18, ptr %i.ch, align 16
  %19 = shufflevector <4 x float> %i.ca, <4 x float> %i.dm, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %19, <4 x float> %i.cs)
  %21 = fmul <4 x float> %20, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.dp = fmul <4 x float> %21, %i.ce
  store <4 x float> %i.dp, ptr %3, align 16
  %22 = shufflevector <4 x float> %14, <4 x float> %i.dm, <2 x i32> <i32 0, i32 5>
  %i.dq = insertelement <2 x float> <float poison, float -2.000000e+00>, float %i.ck, i64 0
  %i.dr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cd, i64 0
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.dq, <2 x float> %i.dr)
  %i.dt = load float, ptr %i.dg, align 8
  %23 = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %23, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float %i.dt, i64 3
  %i.dx = fmul <4 x float> %i.dw, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.dy = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.de, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ea = fmul <4 x float> %i.dz, %i.dx
  store <4 x float> %i.ea, ptr %i.df, align 16
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.eb, align 16
  %i.ec = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %3) ; 4 uses
  %i.ed = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %.sroa.1224.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 152
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 168
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ej = load <4 x float>, ptr %i.ec, align 4    ; 4 uses
  %i.ek = load <4 x float>, ptr %i.ee, align 4    ; 4 uses
  %i.el = load <4 x float>, ptr %i.ef, align 4    ; 4 uses
  %i.em = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.en = fmul <4 x float> %i.em, %i.el
  %i.eo = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.eo, <4 x float> %i.en)
  %i.eq = load <4 x float>, ptr %i.eg, align 4    ; 4 uses
  %i.er = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = load <4 x float>, ptr %i.eh, align 4    ; 4 uses
  %i.eu = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.es)
  %.sroa.1224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ew = load <4 x float>, ptr %.sroa.1224.0..sroa_idx25, align 4 ; 4 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ey = fmul <4 x float> %i.ex, %i.el
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.ez, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.fb, <4 x float> %i.fa)
  %i.fd = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fd, <4 x float> %i.fc)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ff = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4 ; 4 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fh = fmul <4 x float> %i.fg, %i.el
  %i.fi = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.fi, <4 x float> %i.fh)
  %i.fk = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.fk, <4 x float> %i.fj)
  %i.fm = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fm, <4 x float> %i.fl)
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fo = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4 ; 4 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fq = fmul <4 x float> %i.fp, %i.el
  %i.fr = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.fr, <4 x float> %i.fq)
  %i.ft = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fv, <4 x float> %i.fu)
  store <4 x float> %i.ev, ptr %i.ei, align 8
  store <4 x float> %i.fe, ptr %.sroa.1224.0..sroa_idx, align 8
  store <4 x float> %i.fn, ptr %.sroa.20.0..sroa_idx, align 8
  store <4 x float> %i.fw, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gb = load float, ptr %i.fx, align 4, !noalias !78 ; 4 uses
  %i.gc = fneg float %i.gb                        ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ge = load float, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.gh = load float, ptr %i.gg, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gk = load <4 x float>, ptr %i.ga, align 8    ; 8 uses
  %i.gl = load float, ptr %i.fy, align 8
  %i.gm = shufflevector <4 x float> %i.gk, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.gn = insertelement <4 x float> %i.gk, float -0.000000e+00, i64 3
  %i.go = shufflevector <4 x float> %i.gk, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gp = load float, ptr %i.gf, align 4
  %i.gq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ge, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gs = load float, ptr %i.gi, align 8
  %i.gt = load <2 x float>, ptr %i.fz, align 4, !noalias !78 ; 9 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 1
  %i.gv = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gc, i64 1
  %i.gx = fmul <2 x float> %i.gt, %i.gw
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ha = insertelement <4 x float> %i.gz, float %i.gl, i64 3
  %24 = fmul float %i.gu, %i.gb
  %25 = extractelement <4 x float> %i.gk, i64 0   ; 3 uses
  %i.hb = fmul float %25, %i.gb
  %i.hc = insertelement <2 x float> %i.gt, float -2.000000e+00, i64 1
  %i.hd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %24, i64 0
  %i.he = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> %i.gk, <4 x i32> <i32 1, i32 1, i32 4, i32 0>
  %i.hg = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.hh = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.hj = shufflevector <4 x float> %i.hg, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hk = fmul <4 x float> %i.hf, %i.hj
  %i.hl = shufflevector <4 x float> %i.he, <4 x float> %i.gk, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %i.hm = shufflevector <4 x float> %i.he, <4 x float> %i.gk, <4 x i32> <i32 0, i32 4, i32 1, i32 1>
  %i.hn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.hm, <4 x float> %i.hk) ; 4 uses
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> %i.gn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.ho, <4 x float> %i.ha)
  %i.hq = fmul <4 x float> %i.hp, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.hr = shufflevector <4 x float> %i.gk, <4 x float> %i.hn, <2 x i32> <i32 0, i32 5>
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.hc, <2 x float> %i.hd)
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.hv = insertelement <4 x float> %i.hu, float %i.gp, i64 3
  %i.hw = fmul <4 x float> %i.hv, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %foldExtExtBinop = fmul <2 x float> %i.gt, %i.gt
  %i.hx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hy = call float @llvm.fmuladd.f32(float %25, float %25, float %i.hx)
  %i.hz = insertelement <2 x float> %i.gt, float %i.hy, i64 1
  %i.ia = shufflevector <2 x float> <float poison, float -2.000000e+00>, <2 x float> %i.gt, <2 x i32> <i32 3, i32 1>
  %i.ib = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hb, i64 0
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.ia, <2 x float> %i.ib)
  %i.id = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ie = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.if = shufflevector <4 x float> %i.id, <4 x float> %i.ie, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ig = insertelement <4 x float> %i.if, float %i.gs, i64 3
  %i.ih = fmul <4 x float> %i.ig, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ii = fmul <4 x float> %i.hq, %i.go
  %i.ij = fmul <4 x float> %i.gr, %i.hw
  %i.ik = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.gh, i64 0
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.im = fmul <4 x float> %i.il, %i.ih
  store <4 x float> %i.ii, ptr %i.gj, align 8
  store <4 x float> %i.ij, ptr %.sroa.7.0..sroa_idx, align 8
  store <4 x float> %i.im, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.io, %i.iq
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit
  %.sroa.09.056 = phi ptr [ %i.io, %.lr.ph ], [ %i.jc, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.is = load i16, ptr %.sroa.09.056, align 2    ; 2 uses
  store i16 %i.is, ptr %i.a, align 2
  %i.it = load ptr, ptr %1, align 8               ; 2 uses
  %i.iu = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not10.i = icmp eq ptr %i.it, %i.iu
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i, i64 8 ; 2 uses
  %.not.i8 = icmp eq ptr %i.iv, %i.iu
  br i1 %.not.i8, label %.loopexit, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.sroa.04.011.i = phi ptr [ %i.iv, %bb.f ], [ %i.it, %bb.e ] ; 2 uses
  %i.iw = load ptr, ptr %.sroa.04.011.i, align 8  ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 8
  %i.iy = icmp eq i16 %i.ix, %i.is
  br i1 %i.iy, label %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, label %bb.f

.loopexit:                                        ; preds = %bb.e, %bb.f
  %i.iz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA63_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 1 dereferenceable(63) @.str.46, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.47, ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 1 dereferenceable(2) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.ja)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit
  call void @__cxa_throw(ptr nonnull %i.iz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.h:                                             ; preds = %.loopexit
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.jb

_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit:        ; preds = %.lr.ph.i
  call void @_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE(ptr noundef nonnull align 8 dereferenceable(248) %i.iw, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.09.056, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.jc, %i.iq
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.y = fneg <4 x float> %i.x                    ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <4 x float> %i.y, i64 3  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %i.ak
  %i.ay = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.az = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ba = load float, ptr %i.o, align 4           ; 6 uses
  %i.bb = fneg float %i.ba                        ; 4 uses
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 8 uses
  %i.bd = load float, ptr %i.p, align 4           ; 5 uses
  %i.be = fmul float %i.af, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.be, %i.ad
  %i.bg = extractelement <2 x float> %i.az, i64 0
  %i.bh = fmul float %i.a, %i.bg                  ; 2 uses
  %i.bi = fmul float %i.ab, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.w, float %i.av)
  %i.bk = fmul float %i.bh, %i.ad
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aa, float %i.bj)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.n, float %i.bl)
  %i.bn = fmul float %i.aw, %i.ba
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.e, float %i.bm)
  %foldExtExtBinop47 = fmul <2 x float> %i.az, %i.ae ; 2 uses
  %i.bp = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bq = fmul float %i.bp, %i.bb
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.w, float %i.bo)
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %foldExtExtBinop47
  %i.bs = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.n, float %i.br)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.e, float %i.bt)
  %i.bv = fmul float %i.aj, %i.be
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.w, float %i.bu)
  %i.bx = extractelement <2 x float> %i.ay, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.az, %i.ay
  %i.by = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bz = fmul float %i.ba, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aa, float %i.bw)
  %i.cb = fmul float %i.by, %i.ac
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.n, float %i.ca)
  %i.cd = fmul float %i.bd, %i.bx                 ; 2 uses
  %i.ce = fmul float %i.ab, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.e, float %i.cc)
  %i.cg = fmul float %i.cd, %i.ak
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.aa, float %i.cf)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.ay
  %i.ci = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.cj = fmul float %i.aj, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.n, float %i.ch)
  %i.cl = fmul float %i.ci, %i.bb
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.e, float %i.ck)
  %i.cn = extractelement <2 x float> %i.bc, i64 0
  %i.co = fmul float %i.bd, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.co, %i.ac
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.w, float %i.cm)
  %i.cr = fmul float %i.al, %i.co
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.cq)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.bc
  %i.ct = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ad
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.n, float %i.cs)
  %i.cw = fmul float %i.ba, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.w, float %i.cv)
  %foldExtExtBinop57 = fmul <2 x float> %i.ah, %i.bc ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cz = fmul float %i.cy, %i.bb
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aa, float %i.cx)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.db = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.n, float %i.da) ; 2 uses
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = fdiv float 1.000000e+00, %i.dc          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.hj, <4 x float> %i.hi)
  %i.hl = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hm = fmul <4 x float> %i.hk, %i.hl
  %i.hn = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ho = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hp = phi <4 x float> [ %i.ep, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hq = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hm, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hp, ptr %0, align 4
  store <4 x float> %i.hq, ptr %i.p, align 4
  store <4 x float> %i.hr, ptr %i.o, align 4
  store <4 x float> %i.hs, ptr %i.m, align 4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA63_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(63) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  invoke void @_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA63_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(63) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %7, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %7, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA48_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  invoke void @_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA48_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %7, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %7, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre20VertexAnimationTrackC2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 6)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_KcERA73_S8_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp4Ogre17TransformKeyFrame9TransformEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.b, align 4, !noalias !81 ; 4 uses
  %i.g = fneg float %i.f                          ; 3 uses
  %i.h = load float, ptr %i.a, align 4
  %i.i = load <4 x float>, ptr %i.e, align 4      ; 6 uses
  %i.j = extractelement <4 x float> %i.i, i64 0   ; 2 uses
  %i.k = fmul float %i.j, %i.g
  %i.l = fmul float %i.j, %i.f
  %i.m = shufflevector <4 x float> %i.i, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.n = insertelement <4 x float> %i.i, float -0.000000e+00, i64 3
  %i.o = insertelement <4 x float> %i.i, float 1.000000e+00, i64 0
  %i.p = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load <2 x float>, ptr %i.c, align 4, !noalias !81 ; 3 uses
  %i.w = load float, ptr %i.d, align 4, !noalias !81 ; 5 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.f, i64 1
  %i.z = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.aa = insertelement <2 x float> %i.z, float %i.g, i64 0
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = fmul float %i.w, %i.f
  %i.ad = load float, ptr %i.u, align 4
  %i.ae = shufflevector <4 x float> %i.i, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %2 = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ag = insertelement <4 x float> %2, float -0.000000e+00, i64 3
  %i.ah = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ac, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.k, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ad, i64 3
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.o, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.am = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.s, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.as = insertelement <2 x float> %i.z, float %i.w, i64 0 ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %3 = shufflevector <2 x float> %i.as, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.au = insertelement <4 x float> %3, float %i.g, i64 3
  %i.av = fmul <4 x float> %i.at, %i.au
  %4 = shufflevector <4 x float> %i.i, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 4, i32 0> ; 2 uses
  %i.aw = insertelement <4 x float> %4, float %i.w, i64 3
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %i.aw, <4 x float> %i.av) ; 4 uses
  %5 = shufflevector <4 x float> %i.ag, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %5, <4 x float> %i.aj)
  %i.az = fmul <4 x float> %i.ay, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %6 = fmul <4 x float> %i.an, %i.az
  store <4 x float> %6, ptr %i.t, align 4
  %7 = shufflevector <4 x float> %i.n, <4 x float> %i.ax, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %7, <4 x float> %i.al)
  %9 = fmul <4 x float> %8, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.ba = fmul <4 x float> %9, %i.q
  store <4 x float> %i.ba, ptr %0, align 4
  %10 = shufflevector <4 x float> %2, <4 x float> %i.ax, <2 x i32> <i32 0, i32 5>
  %i.bb = insertelement <2 x float> <float poison, float -2.000000e+00>, float %i.w, i64 0
  %i.bc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.l, i64 0
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.bb, <2 x float> %i.bc)
  %i.be = load float, ptr %i.ar, align 4
  %11 = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %11, <4 x float> %i.bf, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float %i.be, i64 3
  %i.bi = fmul <4 x float> %i.bh, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bj = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ap, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bl = fmul <4 x float> %i.bk, %i.bi
  store <4 x float> %i.bl, ptr %i.aq, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bm, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %0, align 4              ; 3 uses
  %i.w = load float, ptr %i.c, align 4            ; 2 uses
  %i.x = load float, ptr %i.g, align 4            ; 3 uses
  %i.y = load float, ptr %i.k, align 4            ; 4 uses
  %i.z = load float, ptr %i.l, align 4            ; 4 uses
  %i.aa = load float, ptr %i.m, align 4           ; 4 uses
  %i.ab = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.w, i64 1 ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ac
  %i.ae = insertelement <2 x float> %i.p, float %i.v, i64 1 ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ae, <2 x float> %i.ad)
  %i.ag = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.x, i64 1 ; 2 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ai) ; 4 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  store float %i.ak, ptr %1, align 4
  %i.al = fmul float %i.z, %i.z
  %i.am = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.al)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.am)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.an) ; 3 uses
  store float %sqrt.i31, ptr %i.u, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.aj, i64 0
  store float %i.ap, ptr %i.ao, align 4
  %i.aq = load float, ptr %0, align 4             ; 3 uses
  %i.ar = load float, ptr %i.l, align 4           ; 3 uses
  %i.as = fmul float %i.aq, %i.ar                 ; 2 uses
  %i.at = load float, ptr %i.s, align 4           ; 4 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = load float, ptr %i.h, align 4           ; 5 uses
  %i.ay = fmul float %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load float, ptr %i.az, align 4          ; 6 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.bc)
  %i.be = load float, ptr %i.q, align 4           ; 3 uses
  %i.bf = fmul float %i.aq, %i.be                 ; 2 uses
  %i.bg = fmul float %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load float, ptr %i.bh, align 4          ; 6 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bd)
  %i.bk = load float, ptr %i.m, align 4           ; 4 uses
  %i.bl = fneg float %i.bk                        ; 3 uses
  %i.bm = fmul float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.aw, float %i.bj)
  %i.bo = load float, ptr %i.d, align 4           ; 3 uses
  %i.bp = fmul float %i.aq, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ba, float %i.bn)
  %i.bs = fneg float %i.at                        ; 3 uses
  %i.bt = fmul float %i.bp, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bi, float %i.br)
  %i.bv = load float, ptr %i.k, align 4           ; 3 uses
  %i.bw = fmul float %i.be, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load float, ptr %i.bx, align 4          ; 6 uses
  %i.bz = fneg float %i.ax                        ; 2 uses
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.by, float %i.bu)
  %i.cc = load float, ptr %i.g, align 4           ; 4 uses
  %i.cd = fmul float %i.bw, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.aw, float %i.cb)
  %i.cf = fmul float %i.bo, %i.bv                 ; 2 uses
  %i.cg = fneg float %i.cc                        ; 3 uses
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ba, float %i.ce)
  %i.cj = fmul float %i.at, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.by, float %i.ci)
  %i.cl = load float, ptr %i.c, align 4           ; 3 uses
  %i.cm = fmul float %i.bv, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.bs
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.aw, float %i.ck)
  %i.cp = fmul float %i.ax, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ba, float %i.co)
  %i.cr = load float, ptr %i.n, align 4           ; 3 uses
  %i.cs = fmul float %i.bo, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cc, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bi, float %i.cq)
  %i.cv = fmul float %i.cs, %i.bl
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.by, float %i.cu)
  %i.cx = fmul float %i.cl, %i.cr                 ; 2 uses
  %i.cy = fmul float %i.bk, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.aw, float %i.cw)
  %i.da = fmul float %i.cx, %i.bz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.bi, float %i.cz)
  %i.dc = fmul float %i.ar, %i.cr                 ; 2 uses
  %i.dd = fmul float %i.ax, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.by, float %i.db)
  %i.df = fmul float %i.dc, %i.cg
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.aw, float %i.de)
  %i.dh = load float, ptr %i.a, align 4           ; 3 uses
  %i.di = fmul float %i.cl, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.bl
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ba, float %i.dg)
  %i.dl = fmul float %i.at, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bi, float %i.dk)
  %i.dn = fmul float %i.ar, %i.dh                 ; 2 uses
  %i.do = fmul float %i.dn, %i.bs
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.by, float %i.dm)
  %i.dq = fmul float %i.cc, %i.dn
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ba, float %i.dp)
  %i.ds = fmul float %i.be, %i.dh                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.cg
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bi, float %i.dr)
  %i.dv = fmul float %i.bk, %i.ds
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dy = insertelement <2 x float> %i.aj, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dz = fneg <2 x float> %i.aj                  ; 3 uses
  %i.ea = fneg float %sqrt.i31                    ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  store float %i.ec, ptr %i.ao, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.v, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.v ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.z, %i.el
  %i.en = fmul float %i.aa, %i.el
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.aa ; 4 uses
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.z ; 6 uses
  %i.eo = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eg
  %i.eq = fmul float %i.x, %i.eh
  %.sroa.1260.0 = select i1 %i.ej, float %i.eq, float %i.x ; 4 uses
  %i.er = fmul float %i.y, %i.el
  %.sroa.17.0 = select i1 %i.ek, float %i.er, float %i.y ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.ev, float %i.eu, float %i.t ; 6 uses
  %.sroa.37.0 = select i1 %i.ev, float %i.et, float %i.r ; 4 uses
  %i.ew = select <2 x i1> %i.ef, <2 x float> %i.ep, <2 x float> %i.eo ; 6 uses
  %i.ex = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ey = fadd float %i.ex, %.sroa.42.0           ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
